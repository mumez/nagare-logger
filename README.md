# nagare-logger

[![CI](https://github.com/mumez/nagare-logger/actions/workflows/main.yml/badge.svg)](https://github.com/mumez/nagare-logger/actions/workflows/main.yml)

Nagare is a new flexible logger which connects to [fluentd](http://fluentd.org).

* Simple log interfaces with reliable backend
* Semi-structured logging (Not only String, you can store structured records in log)
* Portable (runs on VW, Squeak, and Pharo)

## Installation

```smalltalk
Metacello new
  baseline: 'Nagare';
  repository: 'github://mumez/nagare-logger/repository';
  load.
```

## Usage


```smalltalk
"Basic log"
NgLog default info: 'Hello World!'.
NgLog default warn: 'Nagare!'.

"Structured log"
NgLog default debug: {'msg'->'Hello World!'. 'code' -> 200}.

"You can even log an error object directly"
[#() at: 1] on: Error do: [:ex | NgLog default error: ex ].
```

```smalltalk
"You can set log destination - only stdout in this case"
NgLog default settings sendToFluentd: false.
NgLog default settings writeToStandardOutput: true.
```

For more info: [HowToUse.md](./doc/HowToUse.md), [Logging.md](./doc/Logging.md)

## Note

This repository is mainly for sources, for binary packages see the site:
https://github.com/mumez/nagare-logger-packages (migrating from google code)
