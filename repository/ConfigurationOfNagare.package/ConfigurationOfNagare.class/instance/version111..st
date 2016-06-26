versions
version111: spec 
	<version: '1.1.1' imports: #('1.1-baseline') >
	
	spec for: #common do: [
		spec blessing: #beta.
		spec author: 'Masashi Umezawa'.
		spec 
			project: 'MessagePack Core' with: '1.2.3';
			project: 'MessagePack Test' with: '1.2.3'.
		spec 
			package: 'Nagare-Core' with: 'Nagare-Core-MasashiUmezawa.16';
			package: 'NagareTest-Core' with: 'NagareTest-Core-MasashiUmezawa.4'].
	spec for: #squeakCommon do: [
		spec 
			package: 'Nagare-Squeak-Core' with: 'Nagare-Squeak-Core-MasashiUmezawa.8']