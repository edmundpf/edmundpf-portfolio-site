React = require('react')

links =
	Languages:
		link: '#languages'
		class: '_mr-2'
	Tech:
		link: '#technology'
		class: '_mr-2'
	Docs:
		link: '#documents'
		class: null

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div class="_mt-2 _alignCenter">
			{
				Object.keys(links).map((key, index) =>
					<span>
						<a href={ links[key].link } class={ if links[key].class? then links[key].class else null }>
							<strong class="hero-link">{ key }</strong>
						</a>
					</span>
				)
			}
		</div>

#::: End Program :::