React = require('react')
Header = require('../components/HomeHeader.cjsx')
Footer = require('../components/Footer.cjsx')
InfoCards = require('../components/InfoCards.cjsx')

#: Index Page

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div>
			<Header />
			<InfoCards />
			<Footer />
		</div>

#::: End Program :::