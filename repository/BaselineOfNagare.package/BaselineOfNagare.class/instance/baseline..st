baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		self stomp: spec.
		spec 
			package: 'Nagare-Core' with: [spec requires: #('MessagePack')];
			package: 'NagareTest-Core' with: [ spec requires: #('Nagare-Core')];
			package: 'NagareTest-StOMP' with: [ spec requires: #('StOMP' 'NagareTest-Core')].
		spec
			group: 'default' with: #('Core' 'Tests');
			group: 'Core' with: #('Nagare-Core');
			group: 'Tests' with: #('NagareTest-Core');
			group: 'ExtraTests' with: #('NagareTest-StOMP'). ].
	spec for: #squeak do: [
		spec 
			package: 'Nagare-Squeak-Core'.
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Squeak-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Squeak-Core')].
	spec for: #pharo do: [
		spec postLoadDoIt: #postLoadForPharo.
		spec 
			package: 'Nagare-Pharo-Core'.
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Pharo-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Pharo-Core')]

