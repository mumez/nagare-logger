private
heartbeatTo: host port: port
	"override"
	"| udpSock |
	udpSock := Socket newUDP.
	udpSock sendData: '' toHost: (NetNameResolver addressForName: host) port: port."