/** Definitions of taint steps in the googlegson framework */

import java
private import semmle.code.java.dataflow.ExternalFlow

private class GooglegsonSummaryCsv extends SummaryModelCsv {
  override predicate row(string row) {
    row =
      [
        "com.google.gson.internal.bind;ArrayTypeAdapter;false;ArrayTypeAdapter;(Gson,TypeAdapter,Class);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;ArrayTypeAdapter;false;ArrayTypeAdapter;(Gson,TypeAdapter,Class);;Argument[1];Argument[-1];taint",
        "com.google.gson.internal.bind;CollectionTypeAdapterFactory;false;CollectionTypeAdapterFactory;(ConstructorConstructor);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;JsonAdapterAnnotationTypeAdapterFactory;false;JsonAdapterAnnotationTypeAdapterFactory;(ConstructorConstructor);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;JsonTreeReader;false;JsonTreeReader;(JsonElement);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;JsonTreeWriter;false;get;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal.bind;MapTypeAdapterFactory;false;MapTypeAdapterFactory;(ConstructorConstructor,boolean);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;ReflectiveTypeAdapterFactory;false;ReflectiveTypeAdapterFactory;(ConstructorConstructor,FieldNamingStrategy,Excluder,JsonAdapterAnnotationTypeAdapterFactory);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;ReflectiveTypeAdapterFactory;false;ReflectiveTypeAdapterFactory;(ConstructorConstructor,FieldNamingStrategy,Excluder,JsonAdapterAnnotationTypeAdapterFactory);;Argument[1];Argument[-1];taint",
        "com.google.gson.internal.bind;ReflectiveTypeAdapterFactory;false;ReflectiveTypeAdapterFactory;(ConstructorConstructor,FieldNamingStrategy,Excluder,JsonAdapterAnnotationTypeAdapterFactory);;Argument[2];Argument[-1];taint",
        "com.google.gson.internal.bind;ReflectiveTypeAdapterFactory;false;ReflectiveTypeAdapterFactory;(ConstructorConstructor,FieldNamingStrategy,Excluder,JsonAdapterAnnotationTypeAdapterFactory);;Argument[3];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;TreeTypeAdapter;(JsonSerializer,JsonDeserializer,Gson,TypeToken,TypeAdapterFactory);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;TreeTypeAdapter;(JsonSerializer,JsonDeserializer,Gson,TypeToken,TypeAdapterFactory);;Argument[1];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;TreeTypeAdapter;(JsonSerializer,JsonDeserializer,Gson,TypeToken,TypeAdapterFactory);;Argument[2];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;TreeTypeAdapter;(JsonSerializer,JsonDeserializer,Gson,TypeToken,TypeAdapterFactory);;Argument[3];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;TreeTypeAdapter;(JsonSerializer,JsonDeserializer,Gson,TypeToken,TypeAdapterFactory);;Argument[4];Argument[-1];taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;newFactory;(TypeToken,Object);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;newFactory;(TypeToken,Object);;Argument[1];ReturnValue;taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;newFactoryWithMatchRawType;(TypeToken,Object);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;newFactoryWithMatchRawType;(TypeToken,Object);;Argument[1];ReturnValue;taint",
        "com.google.gson.internal.bind;TreeTypeAdapter;false;newTypeHierarchyFactory;(Class,Object);;Argument[1];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Preconditions;false;checkNotNull;(Object);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;arrayOf;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;canonicalize;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;newParameterizedTypeWithOwner;(Type,Type,Type[]);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;newParameterizedTypeWithOwner;(Type,Type,Type[]);;Argument[1];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;newParameterizedTypeWithOwner;(Type,Type,Type[]);;ArrayElement of Argument[2];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;resolve;(Type,Class,Type);;Argument[2];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;subtypeOf;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;$Gson$Types;false;supertypeOf;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;ConstructorConstructor;false;ConstructorConstructor;(Map);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal;Excluder;false;disableInnerClassSerialization;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;Excluder;false;excludeFieldsWithoutExposeAnnotation;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;Excluder;false;withExclusionStrategy;(ExclusionStrategy,boolean,boolean);;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;Excluder;false;withExclusionStrategy;(ExclusionStrategy,boolean,boolean);;Argument[0];ReturnValue;taint",
        "com.google.gson.internal;Excluder;false;withModifiers;(int[]);;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;Excluder;false;withVersion;(double);;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;LazilyParsedNumber;false;LazilyParsedNumber;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal;LazilyParsedNumber;false;toString;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.internal;LinkedHashTreeMap;false;LinkedHashTreeMap;(Comparator);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal;LinkedTreeMap;false;LinkedTreeMap;(Comparator);;Argument[0];Argument[-1];taint",
        "com.google.gson.internal;Streams;false;writerForAppendable;(Appendable);;Argument[0];ReturnValue;taint",
        "com.google.gson.reflect;TypeToken;true;get;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.reflect;TypeToken;true;getArray;(Type);;Argument[0];ReturnValue;taint",
        "com.google.gson.reflect;TypeToken;true;getParameterized;(Type,Type[]);;Argument[0];ReturnValue;taint",
        "com.google.gson.reflect;TypeToken;true;getParameterized;(Type,Type[]);;ArrayElement of Argument[1];ReturnValue;taint",
        "com.google.gson.reflect;TypeToken;true;getType;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonReader;true;JsonReader;(Reader);;Argument[0];Argument[-1];taint",
        "com.google.gson.stream;JsonReader;true;getPath;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonReader;true;nextName;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonReader;true;nextString;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonReader;true;toString;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;JsonWriter;(Writer);;Argument[0];Argument[-1];taint",
        "com.google.gson.stream;JsonWriter;true;beginArray;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;beginArray;();;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;beginObject;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;beginObject;();;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;endArray;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;endArray;();;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;endObject;();;Argument[-1];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;endObject;();;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;jsonValue;(String);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;name;(String);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;name;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson.stream;JsonWriter;true;name;(String);;Argument[0];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;nullValue;();;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;setIndent;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson.stream;JsonWriter;true;value;(Boolean);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;value;(Number);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;value;(String);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;value;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson.stream;JsonWriter;true;value;(String);;Argument[0];ReturnValue;taint",
        "com.google.gson.stream;JsonWriter;true;value;(boolean);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;value;(double);;Argument[-1];ReturnValue;value",
        "com.google.gson.stream;JsonWriter;true;value;(long);;Argument[-1];ReturnValue;value",
        "com.google.gson;FieldAttributes;false;FieldAttributes;(Field);;Argument[0];Argument[-1];taint",
        "com.google.gson;Gson;false;excluder;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fieldNamingStrategy;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fromJson;(JsonElement,Type);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fromJson;(JsonElement,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;fromJson;(JsonReader,Type);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fromJson;(JsonReader,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;fromJson;(Reader,Type);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fromJson;(Reader,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;fromJson;(String,Type);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;fromJson;(String,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;getAdapter;(Class);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;getAdapter;(TypeToken);;Argument[-1];ReturnValue;taint",
        "com.google.gson;Gson;false;getAdapter;(TypeToken);;Argument[0];Argument[-1];taint",
        "com.google.gson;Gson;false;getAdapter;(TypeToken);;Argument[0];ReturnValue;taint",
        "com.google.gson;Gson;false;getDelegateAdapter;(TypeAdapterFactory,TypeToken);;Argument[1];ReturnValue;taint",
        "com.google.gson;Gson;false;newJsonReader;(Reader);;Argument[0];ReturnValue;taint",
        "com.google.gson;Gson;false;newJsonWriter;(Writer);;Argument[0];ReturnValue;taint",
        "com.google.gson;Gson;false;toJson;(Object,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;toJson;(Object,Type,Appendable);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;toJson;(Object,Type,JsonWriter);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;toJsonTree;(Object,Type);;Argument[1];Argument[-1];taint",
        "com.google.gson;Gson;false;toString;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;addDeserializationExclusionStrategy;(ExclusionStrategy);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;addDeserializationExclusionStrategy;(ExclusionStrategy);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;addDeserializationExclusionStrategy;(ExclusionStrategy);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;addSerializationExclusionStrategy;(ExclusionStrategy);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;addSerializationExclusionStrategy;(ExclusionStrategy);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;addSerializationExclusionStrategy;(ExclusionStrategy);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;disableHtmlEscaping;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;disableInnerClassSerialization;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;enableComplexMapKeySerialization;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;excludeFieldsWithModifiers;(int[]);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;excludeFieldsWithoutExposeAnnotation;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;generateNonExecutableJson;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;registerTypeAdapter;(Type,Object);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;registerTypeAdapter;(Type,Object);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;registerTypeAdapter;(Type,Object);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;registerTypeAdapter;(Type,Object);;Argument[1];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;registerTypeAdapter;(Type,Object);;Argument[1];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;registerTypeAdapterFactory;(TypeAdapterFactory);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;registerTypeAdapterFactory;(TypeAdapterFactory);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;registerTypeAdapterFactory;(TypeAdapterFactory);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;registerTypeHierarchyAdapter;(Class,Object);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;registerTypeHierarchyAdapter;(Class,Object);;Argument[1];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;registerTypeHierarchyAdapter;(Class,Object);;Argument[1];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;serializeNulls;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;serializeSpecialFloatingPointValues;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setDateFormat;(String);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setDateFormat;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;setDateFormat;(String);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;setDateFormat;(int);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setDateFormat;(int,int);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setExclusionStrategies;(ExclusionStrategy[]);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setExclusionStrategies;(ExclusionStrategy[]);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;setExclusionStrategies;(ExclusionStrategy[]);;ArrayElement of Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;setFieldNamingPolicy;(FieldNamingPolicy);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setFieldNamingStrategy;(FieldNamingStrategy);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setFieldNamingStrategy;(FieldNamingStrategy);;Argument[0];Argument[-1];taint",
        "com.google.gson;GsonBuilder;false;setFieldNamingStrategy;(FieldNamingStrategy);;Argument[0];ReturnValue;taint",
        "com.google.gson;GsonBuilder;false;setLenient;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setLongSerializationPolicy;(LongSerializationPolicy);;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setPrettyPrinting;();;Argument[-1];ReturnValue;value",
        "com.google.gson;GsonBuilder;false;setVersion;(double);;Argument[-1];ReturnValue;value",
        "com.google.gson;JsonArray;false;add;(JsonElement);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonArray;false;add;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonArray;false;get;(int);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonArray;false;remove;(int);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonArray;false;set;(int,JsonElement);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonArray;false;set;(int,JsonElement);;Argument[1];Argument[-1];taint",
        "com.google.gson;JsonElement;true;deepCopy;();;Argument[-1];ReturnValue;value",
        "com.google.gson;JsonElement;true;getAsJsonArray;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonElement;true;getAsJsonNull;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonElement;true;getAsJsonObject;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonElement;true;getAsJsonPrimitive;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonElement;true;getAsString;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;add;(String,JsonElement);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonObject;false;add;(String,JsonElement);;Argument[1];Argument[-1];taint",
        "com.google.gson;JsonObject;false;addProperty;(String,Boolean);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonObject;false;addProperty;(String,Character);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonObject;false;addProperty;(String,Number);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonObject;false;addProperty;(String,String);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonObject;false;addProperty;(String,String);;Argument[1];Argument[-1];taint",
        "com.google.gson;JsonObject;false;entrySet;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;get;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;getAsJsonArray;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;getAsJsonObject;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;getAsJsonPrimitive;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;keySet;();;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonObject;false;remove;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;JsonPrimitive;false;JsonPrimitive;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonStreamParser;false;JsonStreamParser;(Reader);;Argument[0];Argument[-1];taint",
        "com.google.gson;JsonStreamParser;false;JsonStreamParser;(String);;Argument[0];Argument[-1];taint",
        "com.google.gson;TypeAdapter;true;fromJson;(Reader);;Argument[-1];ReturnValue;taint",
        "com.google.gson;TypeAdapter;true;fromJson;(String);;Argument[-1];ReturnValue;taint",
        "com.google.gson;TypeAdapter;true;fromJsonTree;(JsonElement);;Argument[-1];ReturnValue;taint",
        "com.google.gson;TypeAdapterFactory;true;create;(Gson,TypeToken);;Argument[0];ReturnValue;taint",
        "com.google.gson;TypeAdapterFactory;true;create;(Gson,TypeToken);;Argument[1];ReturnValue;taint"
      ]
  }
}
