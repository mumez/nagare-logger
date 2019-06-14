nagare-logger
=============

Nagare is a new flexible logger which connects to fluentd (http://fluentd.org).

* Simple log interfaces with reliable backend
* Semi-structured logging (Not only String, you can store structured records in log)
* Portable (runs on VW, Squeak, and Pharo)

## Installation

```smalltalk
Metacello new
  configuration: 'Nagare';
  repository: 'github://mumez/nagare-logger/repository';
  load.
```

This repository is mainly for sources, for binary packages see the site:
https://github.com/mumez/nagare-logger-packages (migrating from google code)
