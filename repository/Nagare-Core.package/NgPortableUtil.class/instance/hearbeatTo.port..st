private
hearbeatTo: host port: port
	"override"
	"| udpSock |
	udpSock := Socket newUDP.
	udpSock sendData: '' toHost: host port: port."