versions
version114: spec 
	<version: '1.1.4' imports: #('1.1-baseline') >
	
	spec for: #common do: [
		spec blessing: #stable.
		spec author: 'Masashi Umezawa'.
		spec 
			project: 'MessagePack Core' with: '1.3.0';
			project: 'MessagePack Test' with: '1.3.0'.
		spec 
			package: 'Nagare-Core' with: 'Nagare-Core-MasashiUmezawa.17';
			package: 'NagareTest-Core' with: 'NagareTest-Core-MasashiUmezawa.4'].
	spec for: #squeakCommon do: [
		spec 
			package: 'Nagare-Squeak-Core' with: 'Nagare-Squeak-Core-MasashiUmezawa.8']