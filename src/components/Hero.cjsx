React = require('react')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)

	render: ->
		<div class="hero-section mb-4">
			<div class="hero-section-text">
				<h1>{ this.props.title }</h1>
				<h5>{ this.props.tagline }</h5>
			</div>
		</div>

#::: End Program :::