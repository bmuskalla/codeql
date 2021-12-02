/** Definitions of taint steps in the apachecommonslogging framework */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class ApachecommonsloggingSummaryCsv extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.logging.impl;AvalonLogger;true;AvalonLogger;(Logger);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;AvalonLogger;true;getLogger;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging.impl;Jdk13LumberjackLogger;true;Jdk13LumberjackLogger;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;Jdk13LumberjackLogger;true;getLogger;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging.impl;Jdk14Logger;true;Jdk14Logger;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;Jdk14Logger;true;getLogger;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging.impl;Log4JLogger;true;Log4JLogger;(Logger);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;Log4JLogger;true;Log4JLogger;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;Log4JLogger;true;getLogger;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging.impl;LogKitLogger;true;LogKitLogger;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging.impl;LogKitLogger;true;getLogger;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging.impl;SimpleLog;true;SimpleLog;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;debug;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;debug;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;debug;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;error;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;error;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;error;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;fatal;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;fatal;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;fatal;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;info;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;info;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;info;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;trace;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;trace;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;trace;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;warn;(Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;warn;(Object,Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;Log;true;warn;(Object,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;LogConfigurationException;true;LogConfigurationException;(String,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.logging;LogConfigurationException;true;LogConfigurationException;(Throwable);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;LogFactory;true;getAttribute;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging;LogFactory;true;getAttributeNames;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging;LogFactory;true;getInstance;(Class);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging;LogFactory;true;getInstance;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.logging;LogFactory;true;getInstance;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;LogFactory;true;setAttribute;(String,Object);;Argument[0];Argument[-1];taint",
        "org.apache.commons.logging;LogFactory;true;setAttribute;(String,Object);;Argument[1];Argument[-1];taint"
      ]
  }
}
