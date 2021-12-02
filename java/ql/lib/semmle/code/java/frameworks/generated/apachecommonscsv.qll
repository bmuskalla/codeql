/** Definitions of taint steps in the apachecommonscsv framework */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class ApachecommonscsvSinksCsv extends SinkModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.csv;CSVFormat;false;print;(File,Charset);;Argument[0];create-file",
        "org.apache.commons.csv;CSVParser;false;parse;(URL,Charset,CSVFormat);;Argument[0];open-url"
      ]
  }
}

private class ApachecommonscsvSummaryCsv extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.csv;CSVFormat$Builder;true;setAllowDuplicateHeaderNames;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setAllowMissingColumnNames;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setAutoFlush;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setCommentMarker;(Character);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setCommentMarker;(char);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setDelimiter;(String);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setDelimiter;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setDelimiter;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setDelimiter;(char);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setEscape;(Character);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setEscape;(char);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(Class);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(ResultSet);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(ResultSetMetaData);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(String[]);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(String[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeader;(String[]);;ArrayElement of Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeaderComments;(Object[]);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeaderComments;(String[]);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeaderComments;(String[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setHeaderComments;(String[]);;ArrayElement of Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setIgnoreEmptyLines;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setIgnoreHeaderCase;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setIgnoreSurroundingSpaces;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setNullString;(String);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setNullString;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setNullString;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setQuote;(Character);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setQuote;(char);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setQuoteMode;(QuoteMode);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setRecordSeparator;(String);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setRecordSeparator;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setRecordSeparator;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat$Builder;true;setRecordSeparator;(char);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setSkipHeaderRecord;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setTrailingDelimiter;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat$Builder;true;setTrim;(boolean);;Argument[-1];ReturnValue;value",
        "org.apache.commons.csv;CSVFormat;false;getDelimiterString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;getHeader;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;getHeaderComments;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;getNullString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;getRecordSeparator;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;parse;(Reader);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;print;(Appendable);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;withHeader;(String[]);;ArrayElement of Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;withNullString;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVFormat;false;withRecordSeparator;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;CSVParser;(Reader,CSVFormat);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVParser;false;CSVParser;(Reader,CSVFormat,long,long);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVParser;false;getFirstEndOfLine;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;getHeaderMap;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;getHeaderNames;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;parse;(InputStream,Charset,CSVFormat);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;parse;(Reader,CSVFormat);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVParser;false;parse;(String,CSVFormat);;Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVPrinter;false;CSVPrinter;(Appendable,CSVFormat);;Argument[0];Argument[-1];taint",
        "org.apache.commons.csv;CSVPrinter;false;getOut;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;get;(Enum);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;get;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;get;(int);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;getComment;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;getParser;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;putIn;(Map);;Element of Argument[0];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;stream;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;toList;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.csv;CSVRecord;false;values;();;Argument[-1];ReturnValue;taint"
      ]
  }
}
