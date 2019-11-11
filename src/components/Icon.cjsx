React = require('react')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)

		if this.props.type == 'github'
			this.iconSrc = 'assets/images/github.svg'
		else if this.props.type == 'npm'
			this.iconSrc = 'assets/images/npm.svg'
		else if this.props.type == 'python'
			this.iconSrc = 'assets/images/python.svg'

	render: ->
		<a href={ this.props.href } class={ this.props.class }>
			<div class="tooltip -tooltip-top">
				<img
					height={ this.props.height or 16 }
					width={ this.props.width or 16}
					src={ this.iconSrc }
				/>
				<span class="tooltiptext">{ this.props.tooltip or 'Github' }</span>
			</div>
		</a>


#::: End Program :::