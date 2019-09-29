React = require('react')
Header = require('../components/AboutHeader.cjsx')
Footer = require('../components/Footer.cjsx')
Content = require('../components/AboutContent.cjsx')

#: Index Page

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div>
			<Header />
			<Content />
			<Footer />
		</div>

#::: End Program :::