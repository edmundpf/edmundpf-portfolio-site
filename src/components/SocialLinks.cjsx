React = require('react')
Icon = require('./Icon.cjsx')

github = 'https://github.com/edmundpf'
npm = 'https://www.npmjs.com/~edmundpf'
python = 'https://pypi.org/user/edmundpf/'

links =
	github:
		link: github
		tooltip: 'Github'
		class: '_mr-2'
	npm:
		link: npm
		tooltip: 'NPM'
		class: '_mr-2'
	python:
		link: python
		tooltip: 'PyPi'
		class: null

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div class="_mt-2">
			{
				Object.keys(links).map((key, index) =>
					<Icon
						href={ links[key].link }
						class={ if links[key].class? then links[key].class else null }
						width="32"
						height="32"
						type={ key }
						tooltip={ links[key].tooltip }
					/>
				)
			}
		</div>

#::: End Program :::