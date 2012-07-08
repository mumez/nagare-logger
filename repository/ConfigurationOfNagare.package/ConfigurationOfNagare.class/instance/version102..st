versions
version102: spec 
	<version: '1.0.2' imports: #('1.0-baseline') >
	
	spec for: #common do: [
		spec blessing: #beta.
		spec author: 'Masashi Umezawa'.
		spec 
			project: 'MessagePack Core' with: '1.0.4';
			project: 'MessagePack Test' with: '1.0.4'.
		spec 
			package: 'Nagare-Core' with: 'Nagare-Core-mu.11';
			package: 'NagareTest-Core' with: 'NagareTest-Core-mu.3'].
	spec for: #squeakCommon do: [
		spec 
			package: 'Nagare-Squeak-Core' with: 'Nagare-Squeak-Core-mu.5']