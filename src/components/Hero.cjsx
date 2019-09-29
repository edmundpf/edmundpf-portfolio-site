React = require('react')
SocialLinks = require('./SocialLinks.cjsx')
AboutLinks = require('./AboutLinks.cjsx')

module.exports = class extends React.Component

	constructor: (props) ->
		super(props)
		this.state =
			hasSocial: this.props.socialLinks or false

	render: ->
		<div class="container _force-full-width jumbo _alignCenter _theme-primary">
			<div class="container jumbo">
				<h1 class="_f-white">{ this.props.title }</h1>
				<h5 class="_f-white">{ this.props.tagline }</h5>
				{
					if this.state.hasSocial
					then <SocialLinks />
					else <AboutLinks />
				}
			</div>
		</div>

#::: End Program :::