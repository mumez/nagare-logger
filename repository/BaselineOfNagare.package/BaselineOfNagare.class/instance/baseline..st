baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		spec 
			package: 'Nagare-Core' with: [spec requires: #('MessagePack')];
			package: 'NagareTest-Core' with: [ spec requires: #('Nagare-Core') ].
		spec
			group: 'default' with: #('Core');
			group: 'Core' with: #('Nagare-Core');
			group: 'Tests' with: #('NagareTest-Core'). ].
	spec for: #squeak do: [
		spec 
			package: 'Nagare-Squeak-Core'.
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Squeak-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Squeak-Core')].
	spec for: #pharo do: [
		spec 
			package: 'Nagare-Pharo-Core'.
		spec 
			package: 'Nagare-Core' with: [ spec includes: #('Nagare-Pharo-Core') ]. 
		spec
			group: 'Core' with: #('Nagare-Pharo-Core')]

