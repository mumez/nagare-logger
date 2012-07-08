private
prepareHeartbeatProcess
	| port host process |
	host := self settings host.
	port := self settings port.
	process := [
		[self hearbeatTo: host port: port.
		(Delay forSeconds: self settings heartbeatInterval) wait] repeat.
	] newProcess.
	process priority: Processor userBackgroundPriority.
	process resume.
	
	self heartbeatProcess: process