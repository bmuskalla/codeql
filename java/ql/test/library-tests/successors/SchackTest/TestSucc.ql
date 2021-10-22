import java

from ControlFlowNode n, ControlFlowNode succ
where
  succ = n.getASuccessor() and
  n.getLocation().getFile().hasExtension("java")
  not n.getFile().getStem() = "PopulateRuntimeException"
select n, succ
