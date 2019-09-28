React = require('react')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)

	render: ->
		<div class="card">
			<header>
				<h4>{ this.props.title }</h4>
			</header>
			<p>{ this.props.content }</p>
		</div>

#::: End Program :::