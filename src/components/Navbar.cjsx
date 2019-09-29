React = require('react')

hideMobileClasses = 'topnav _theme-primary'
showMobileClasses = 'topnav _theme-primary responsive'

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)
		this.state =
			showMobileNav: false

	handleMenuClick: (e) =>
		this.setState(showMobileNav: !this.state.showMobileNav)

	render: ->

		<ul class={ if this.state.showMobileNav then showMobileClasses else hideMobileClasses }>
			<li>
				<a href="/" class="brand">{ this.props.title }</a>
			</li>
				{
					Object.keys(this.props.links).map((key, index) =>
						<li>
							<a href={ this.props.links[key].link }>{ key }</a>
						</li>
					)
				}
			<li class="-icon">
				<a href="javascript:" onClick={ this.handleMenuClick }>☰</a>
			</li>
		</ul>

#::: End Program :::