React = require('react')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)

	render: ->
		<nav class="nav bg-primary">
			<div class="nav-left">
				<a class="brand text-white">
					{ this.props.title }
				</a>
			</div>
			<div class="nav-right">
				{
					Object.keys(this.props.links).map((key, index) =>
						<a href={ this.props.links[key].link } class="text-white">{ key }</a>
					)
				}
			</div>
		</nav>

#::: End Program :::