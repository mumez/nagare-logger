### Setting up fluentd:

First, install fluentd and make the first configuration:
```
fluentd --setup ./fluent
```

Edit fluent.conf which was made in ./fluent.
Add a "st" tag match section for specifying output location.
(See: http://fluentd.org/doc/config.html#config for more details on fluent.conf).

```
<match st.**>
  type file
  path <your log path>
</match>
```

Run fluentd.
```
fluentd -c ./fluent/fluent.conf -vv &
```

### Setting up Nagare:

Set the host parameter to point to the fluentd host (default is 'localhost')
```
NgSettings default host: '<hostname>'.
```
Set the log level you would like to use (default is 5).
```
NgSettings default logLevel: 5.
```

For other setting parameters, please see NgSettings class.

### Hello log world:

```
NgLog default info: 'Hello World!'.
NgLog default warn: 'Nagare!'.
```

In st.YYYYMMDD\_N.log file, you can see the entry like:

```
2012-05-13T17:00:58+09:00 st.info "Hello World!"
2012-05-13T17:00:59+09:00 st.warn "Nagare!"
```

If you prefer, you can write more shortly:
```
self ng info: 'Hello Nagare!'.
```

For more usages, please see [Logging](Logging.md)