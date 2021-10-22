import java

from ControlFlowNode n, ControlFlowNode succ
where
  succ = n.getASuccessor() and
  n.getLocation().getFile().hasExtension("java")nd
  not n.getFile().getStem() = "PopulateRuntimeException"
select n, succ
