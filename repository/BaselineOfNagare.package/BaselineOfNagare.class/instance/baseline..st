baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		self stomp: spec.
		spec 
			package: 'Nagare-Core' with: [spec requires: #('MessagePack')];
			package: 'NagareTest-Core' with: [ spec requires: #('Nagare-Core' 'StOMP') ].
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Nagare-Core');
			group: 'Tests' with: #('NagareTest-Core'). ].
	spec for: #squeakCommon do: [
		spec 
			package: 'Nagare-Squeak-Core'.
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Squeak-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Squeak-Core')]
