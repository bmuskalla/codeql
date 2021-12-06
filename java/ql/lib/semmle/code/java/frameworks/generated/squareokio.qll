/** Definitions of taint steps in the squareokio framework */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class SquareokioSummaryCsv extends SummaryModelCsv {
  override predicate row(string row) {
    row = ["okio.samples;SourceMarker;false;source;();;Argument[-1];ReturnValue;taint"]
  }
}
