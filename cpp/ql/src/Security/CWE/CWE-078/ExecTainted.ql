/**
 * @name Uncontrolled data used in OS command
 * @description Using user-supplied data in an OS command, without
 *              neutralizing special elements, can make code vulnerable
 *              to command injection.
 * @kind path-problem
 * @problem.severity error
 * @precision low
 * @id cpp/command-line-injection
 * @tags security
 *       external/cwe/cwe-078
 *       external/cwe/cwe-088
 */

import cpp
import semmle.code.cpp.security.CommandExecution
import semmle.code.cpp.security.Security
import DataFlow::PathGraph
import semmle.code.cpp.ir.dataflow.TaintTracking
import semmle.code.cpp.ir.IR
import semmle.code.cpp.security.FlowSources

Expr sinkAsArgumentIndirection(DataFlow::Node sink) {
  result = sink.asOperand()
      .(SideEffectOperand)
      .getAddressOperand()
      .getAnyDef()
      .getUnconvertedResultExpression()
}

class ExecTaintConfiguration extends TaintTracking::Configuration {
  ExecTaintConfiguration() { this = "ExecTaintConfiguration" }

  override predicate isSource(DataFlow::Node source) { 
    source instanceof FlowSource
  }

  override predicate isSink(DataFlow::Node sink) {
    shellCommand(sinkAsArgumentIndirection(sink), _)
  }

  override predicate isSanitizer(DataFlow::Node node) {
    exists(FormattingFunctionCall call, int index, FormatLiteral literal |
      node.asExpr() = call.getConversionArgument(index) and
      literal = call.getFormat() and
      (
        // This is a numeric conversion, so it can't contain the special characters that allow injections
        not (
          literal.getConversionType(index) instanceof CharPointerType
          or
          literal.getConversionType(index).(PointerType).getBaseType() instanceof Wchar_t
        )
        or
        // This is at the beginning of the string, so the command injection is a deliberate
        // feature (like $CC in Makefiles)
        literal.getConvSpecOffset(index) = 0
      )
    )
    or
    exists(FormattingFunctionCall call | node.asExpr() = call.getMinFieldWidthArgument(_))
  }

  override predicate isSanitizerOut(DataFlow::Node node) {
    isSink(node) // Prevent duplicates along a call chain, since `shellCommand` will include wrappers
  }
}

from
 DataFlow::PathNode sourceNode, DataFlow::PathNode sinkNode,
  string taintCause, string callChain, ExecTaintConfiguration conf
where
  shellCommand(sinkAsArgumentIndirection(sinkNode.getNode()), callChain) and
  conf.hasFlowPath(sourceNode, sinkNode) and
  taintCause = sourceNode.getNode().(FlowSource).getSourceType()
select sinkAsArgumentIndirection(sinkNode.getNode()), sourceNode, sinkNode,
  "This argument to an OS command is derived from $@ and then passed to " + callChain, sourceNode,
  "user input (" + taintCause + ")"
