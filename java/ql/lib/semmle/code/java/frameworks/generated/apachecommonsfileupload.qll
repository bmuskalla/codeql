/** Definitions of taint steps in the apachecommonsfileupload framework */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class ApachecommonsfileuploadSinksCsv extends SinkModelCsv {
  override predicate row(string row) {
    row = ["org.apache.commons.fileupload2;FileItem;true;write;(File);;Argument[0];create-file"]
  }
}

private class ApachecommonsfileuploadSourcesCsv extends SourceModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.fileupload2;RequestContext;true;getInputStream;();;ReturnValue;remote",
        "org.apache.commons.fileupload2;UploadContext;true;contentLength;();;ReturnValue;remote"
      ]
  }
}

private class ApachecommonsfileuploadSummaryCsv extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;DiskFileItem;(String,String,boolean,String,int,File);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;DiskFileItem;(String,String,boolean,String,int,File);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;DiskFileItem;(String,String,boolean,String,int,File);;Argument[3];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;DiskFileItem;(String,String,boolean,String,int,File);;Argument[5];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;getCharSet;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;getDefaultCharset;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;setDefaultCharset;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItem;true;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;DiskFileItemFactory;(int,File);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;getDefaultCharset;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;getFileCleaningTracker;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;getRepository;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;setDefaultCharset;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;setFileCleaningTracker;(FileCleaningTracker);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.disk;DiskFileItemFactory;true;setRepository;(File);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemIteratorImpl;true;FileItemIteratorImpl;(FileUploadBase,RequestContext);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemIteratorImpl;true;FileItemIteratorImpl;(FileUploadBase,RequestContext);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemIteratorImpl;true;getMultiPartStream;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.impl;FileItemStreamImpl;true;FileItemStreamImpl;(FileItemIteratorImpl,String,String,String,boolean,long);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemStreamImpl;true;FileItemStreamImpl;(FileItemIteratorImpl,String,String,String,boolean,long);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemStreamImpl;true;FileItemStreamImpl;(FileItemIteratorImpl,String,String,String,boolean,long);;Argument[2];Argument[-1];taint",
        "org.apache.commons.fileupload2.impl;FileItemStreamImpl;true;FileItemStreamImpl;(FileItemIteratorImpl,String,String,String,boolean,long);;Argument[3];Argument[-1];taint",
        "org.apache.commons.fileupload2.jaksrvlt;JakSrvltFileUpload;true;JakSrvltFileUpload;(FileItemFactory);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.jaksrvlt;JakSrvltFileUpload;true;getItemIterator;(HttpServletRequest);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.jaksrvlt;JakSrvltRequestContext;true;JakSrvltRequestContext;(HttpServletRequest);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.jaksrvlt;JakSrvltRequestContext;true;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.portlet;PortletFileUpload;true;PortletFileUpload;(FileItemFactory);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.portlet;PortletFileUpload;true;getItemIterator;(ActionRequest);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.portlet;PortletRequestContext;true;PortletRequestContext;(ActionRequest);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.portlet;PortletRequestContext;true;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.pub;FileSizeLimitExceededException;true;getFieldName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.pub;FileSizeLimitExceededException;true;getFileName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.pub;FileSizeLimitExceededException;true;setFieldName;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.pub;FileSizeLimitExceededException;true;setFileName;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.pub;FileUploadIOException;true;FileUploadIOException;(FileUploadException);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.pub;IOFileUploadException;true;IOFileUploadException;(String,IOException);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.pub;InvalidContentTypeException;true;InvalidContentTypeException;(String,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2.servlet;ServletFileUpload;true;ServletFileUpload;(FileItemFactory);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.servlet;ServletFileUpload;true;getItemIterator;(HttpServletRequest);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.servlet;ServletRequestContext;true;ServletRequestContext;(HttpServletRequest);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2.servlet;ServletRequestContext;true;toString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2.util.mime;MimeUtility;false;decodeText;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util.mime;RFC2231Utility;false;decodeText;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util.mime;RFC2231Utility;false;stripDelimiter;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util;Streams;false;asString;(InputStream);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util;Streams;false;asString;(InputStream,String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util;Streams;false;checkFileName;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2.util;Streams;false;copy;(InputStream,OutputStream,boolean,byte[]);;Argument[0];Argument[3];taint",
        "org.apache.commons.fileupload2;FileItem;true;get;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getContentType;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getFieldName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getInputStream;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getOutputStream;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getString;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;getString;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItem;true;setFieldName;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileItemFactory;true;createItem;(String,String,boolean,String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemFactory;true;createItem;(String,String,boolean,String);;Argument[1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemFactory;true;createItem;(String,String,boolean,String);;Argument[3];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemHeaders;true;getHeader;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemHeaders;true;getHeaderNames;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemHeaders;true;getHeaders;(String);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemHeadersSupport;true;getHeaders;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemHeadersSupport;true;setHeaders;(FileItemHeaders);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileItemIterator;true;next;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemStream;true;getContentType;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemStream;true;getFieldName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemStream;true;getName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileItemStream;true;openStream;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUpload;true;FileUpload;(FileItemFactory);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;getBoundary;(String);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;getFileItemFactory;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;getHeaderEncoding;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;getItemIterator;(RequestContext);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;getProgressListener;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;setFileItemFactory;(FileItemFactory);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;setHeaderEncoding;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileUploadBase;true;setProgressListener;(ProgressListener);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;FileUploadException;true;FileUploadException;(String,Throwable);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2;InvalidFileNameException;true;InvalidFileNameException;(String,String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;InvalidFileNameException;true;getName;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;MultipartStream$ProgressNotifier;true;ProgressNotifier;(ProgressListener,long);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[]);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],ProgressNotifier);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],ProgressNotifier);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],ProgressNotifier);;Argument[2];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],int);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],int);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],int,ProgressNotifier);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],int,ProgressNotifier);;Argument[1];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;MultipartStream;(InputStream,byte[],int,ProgressNotifier);;Argument[3];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;getHeaderEncoding;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;MultipartStream;true;readHeaders;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;MultipartStream;true;setBoundary;(byte[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;MultipartStream;true;setHeaderEncoding;(String);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char[]);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char[]);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(String,char[]);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],char);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],char);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],int,int,char);;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],int,int,char);;Argument[0];Argument[-1];taint",
        "org.apache.commons.fileupload2;ParameterParser;true;parse;(char[],int,int,char);;Argument[0];ReturnValue;taint",
        "org.apache.commons.fileupload2;RequestContext;true;getCharacterEncoding;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;RequestContext;true;getContentType;();;Argument[-1];ReturnValue;taint",
        "org.apache.commons.fileupload2;RequestContext;true;getInputStream;();;Argument[-1];ReturnValue;taint"
      ]
  }
}
