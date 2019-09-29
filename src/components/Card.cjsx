React = require('react')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)

	render: ->
		<div class="card card-standard _white _mt-2">
			<div class="-content">
				<h4 class="card-title">{ this.props.title }</h4>
				<hr class="card-div" />
				<p>{ this.props.content }</p>
				<a
					class="button _theme-secondary _f-white _large _desktopWidth50 _mb-2"
					href={ this.props.buttonLink }
				>
					{ this.props.buttonText }
				</a>
			</div>
		</div>

#::: End Program :::