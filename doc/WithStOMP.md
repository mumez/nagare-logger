# With StOMP

Nagare supports logging complex records. The records are encoded as MessagePack. So, basic dictionaries and arrays are supported by default.

However, sometimes you would like to go further - storing the domain objects in log.

For that purpose, [StOMP](http://stomp.smalltalk-users.jp) can be used with Nagare. If NgSettings>>useStomp is true,
Nagare can store any complex domain objects in a simple manner:

```
self ng debug: yourDomainObject
```

It is convenient because you do not have to send some conversion messages like:
```
self ng debug: yourDomainObject asDictionary
```

Example:
```
NgSettings default useStomp: true.
self ng debug: NgSettings default. "'NgSettings default' object will be logged"
```

The output will be:
```
2012-05-13T23:05:30+09:00	st.debug	["\u0002",{"17":"NgSettings"},{"[\"settingsDict\"]":[["\u0002",-8,{"[\"\\u0005\", \"host\"]":["\u0004","192.168.176.129"],"[\"\\u0005\", \"warningClasses\"]":["\u0002",-14,[]],"[\"\\u0005\", \"limitedStringSize\"]":40,"[\"\\u0005\", \"useStOMP\"]":false,"[\"\\u0005\", \"logLevel\"]":5,"[\"\\u0005\", \"defaultTagPrefix\"]":["\u0004","st"],"[\"\\u0005\", \"heartbeatInterval\"]":1,"[\"\\u0005\", \"useStomp\"]":true,"[\"\\u0005\", \"fatalClasses\"]":["\u0002",-14,[]],"[\"\\u0005\", \"host:\"]":["\u0004","192.168.1.11"],"[\"\\u0005\", \"port\"]":24224}]]}]
```

Since StOMP serialization data is a mere instance of MessagePack, you are still able to read the data as an array in console.
The data can be analyzed with normal fluentd tools.