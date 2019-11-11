React = require('react')
Navbar = require('./Navbar.cjsx')
Hero = require('./Hero.cjsx')

if window.MSCompatibleInfo?
	navbarTitle ="Home"
else
	navbarTitle ="Home 🖥️"

heroTitle = '⚡ Edmund Pfeil 💻'
heroTagline = "Hi there 👋 I'm a software/web developer that enjoys creating lightweight, fast, and mobile-friendly applications using the latest technologies"
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
				tagline={ heroTagline }
				socialLinks={ true }
			/>
		</div>

#::: End Program :::