## How to install

### Squeak:

Hosted on SqueakSource3 Repository.
(http://ss3.gemstone.com/ss/Nagare.html).

From Monticello:
```
MCHttpRepository
    location: 'http://ss3.gemstone.com/ss/Nagare'
    user: ''
    password: ''
```

You can also use Installer:
```
Installer squeaksource
    project: 'MetacelloRepository';
    install: 'ConfigurationOfNagare'. 
(Smalltalk at: #ConfigurationOfNagare) perform: #load.
```
### Pharo:
You can use Gofer:
```
Gofer it
    squeaksource3: 'Nagare';
    package: 'ConfigurationOfNagare';
    load.
(Smalltalk at: #ConfigurationOfNagare) perform: #load.
```
### VisualWorks:

Hosted on [Public Store Repository](http://www.cincomsmalltalk.com/CincomSmalltalkWiki/PostgreSQL+Access+Page).
http://www.cincomsmalltalk.com/publicRepository/Nagare-All(Bundle).html

You can also download parcels:
http://code.google.com/p/nagare-logger/source/browse/#hg%2FVisualWorks