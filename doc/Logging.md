# Predefined tags

Nagare has predefined 8 log types:

  * access
    * to indicate access to a resource occurred
  * admin
    * to indicate administrative action was taken
  * debug
    * to put any info for debugging
  * error
    * to indicate standard error (not so fatal)
  * fatal
    * to indicate fatal error
  * info
    * to put any info for tracing
  * perf
    * to put performance info
  * warn
    * to indicate warning error

You can use these tags like:

```
self ng access: 'read a file'.
self ng admin: 'login'
self ng debug: ((#serialized->data), (#original->obj)).
self ng error: ((#lastError->anError), (#receiver->recv)).
self ng fatal: 'This is fatal'.
self ng info: 'just info'.
self ng perf: (#totalMilliSecs-> msecs).
self ng warn: 'just warning'
```

By subclassing NgLog, it is possible to add user-defined tags.

# Error logging

For convenience, Error >> ngLog is defined, so you can write as follows:
```
[1 / 0] on: Error do: [:ex | ex ngLog]
```

The result will be written to a log file:
```
2012-05-13T21:31:15+09:00	st.error	{"stack":"SmallInteger>>/\\[] in UndefinedObject>>DoIt\\BlockClosure>>on:do:\\UndefinedObject>>DoIt\\Compiler>>evaluate:in:to:notifying:ifFail:logged:\\[] in SmalltalkEditor(TextEditor)>>evaluateSelection\\BlockClosure>>on:do:\\SmalltalkEditor(TextEditor)>>evaluateSelection\\SmalltalkEditor(TextEditor)>>doIt\\SmalltalkEditor(TextEditor)>>doIt:\\SmalltalkEditor(TextEditor)>>dispatchOnCharacter:with:\\SmalltalkEditor(TextEditor)>>readKeyboard\\[] in [] in TextMorphForEditView(TextMorph)>>keyStroke:\\TextMorphForEditView(TextMorph)>>handleInteraction:fromEvent:\\TextMorphForEditView>>handleInteraction:fromEvent:\\[] in TextMorphForEditView(TextMorph)>>keyStroke:\\StandardToolSet class>>codeCompletionAround:textMorph:keyStroke:\\ToolSet class>>codeCompletionAround:textMorph:keyStroke:\\TextMorphForEditView(TextMorph)>>keyStroke:\\TextMorphForEditView>>keyStroke:\\","description":"ZeroDivide: ","receiver":"1"}
```

By default, Warning subclasses are logged with 'warn' tag. Other normal errors are logged with 'error' tag. You can add 'fatal' errors by adding entries to NgSettings >> fatalClasses.

Error info is saved as a MessagePack map, having #stack, #receiver, and #description data.

# Perf logging

For recording performance related info, you can also use these convenient methods:
  * BlockClosure>>ngLogTime
  * BlockClosure>>ngLogTimeAt: tracePoint
  * BlockClosure>>ngLogTimeAt: tracePoint description: description

For example, you can write:
```
[10000 factorial] ngLogTimeAt: 'factorial-1'.
```

The result will be written to a log file:
```
2012-05-13T21:42:37+09:00	st.perf	{"msecs":341,"tracePoint":"factorial-1"}
```

# Logging structured data
Sometimes, logging strings is not so useful.
Nagare supports logging structured data. It is good for analyzing, filterling, and processing logged data later.

For logging structured data, just construct a dictionary and pass it to Nagare.
```
self ng debug: (#price -> (3*450)), (#title->'吾輩は猫'), (#volume->'three').
```

```
2012-05-13T21:56:12+09:00	st.debug	{"price":1350,"title":"吾輩は猫","volume":"three"}
```

You can avoid such awkwardness:
```
self ng debug: (('price:', (3*450) printString), ', ', ('title:', '吾輩は猫'), ', ', ('volume:', 'three')).
```

If string was used, you have to parse logged data again in analysis:
```
2012-05-13T22:02:22+09:00	st.debug	"price:1350, title:吾輩は猫, volume:three"
```

For logging any domain object, see [WithStOMP](WithStOMP.md).

# Filtering log output by log level
Log level can be set for controlling which log-types are logged(or not).
For a global setting, NgSettings>>loglevel: can be used.
```
NgSettings logLevel: 0. "disable all logging"
```

Log level can be specified by each logger like:
```
NgLogFactory defaultLogger settings logLevel: 3. "Default logger's log level is 3"
(NgLogFactory @ 'st.web') settings logLevel: 5. "Web app logger's log level is 5"
```

# Default logger and application specific loggers
Nagare supports many logger instances on one image. If you would like to divide application-level logs and library-level logs, you can use specific loggers.

```
(NgLogFactory @ 'st.web') access: 'web GET access'.
(NgLogFactory @ 'st.db') access: 'SELECT ...'.
(NgLogFactory defaultLogger) debug: 'Some debug info...'.
```

Output will be:
```
2012-05-13T22:19:37+09:00	st.web.access	"web GET access"
2012-05-13T22:20:08+09:00	st.db.access	"SELECT ..."
2012-05-13T22:20:47+09:00	st.debug	"Some debug info..."
```

If you hate '...Factory' phrases, you can write in short form.
```
self >@ 'st.web' access: 'web GET access'.
self >@ 'st.db' access: 'SELECT ...'.
self ng debug: 'Some debug info...'.
```