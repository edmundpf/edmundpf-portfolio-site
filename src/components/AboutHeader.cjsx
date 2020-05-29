React = require('react')
Navbar = require('./Navbar.cjsx')
Hero = require('./Hero.cjsx')

if window.MSCompatibleInfo?
	navbarTitle ="Home"
else
	navbarTitle ="Home 🖥️"

heroTitle = 'About Me'
emailLink = 'mailto:edmundpf@buffalo.edu.com'

navbarLinks =
	About:
		link: '/about'
	Contact:
		link: emailLink

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div class="_theme-primary">
			<Navbar
				title={ navbarTitle }
				links={ navbarLinks }
			/>
			<Hero
				title={ heroTitle }
				socialLinks={ false }
			/>
		</div>

#::: End Program :::