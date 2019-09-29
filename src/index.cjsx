React = require('react')
Router = require('preact-router').Router

About = require('./pages/About.cjsx')
Home = require('./pages/Home.cjsx')

#: Index Page

class Index extends React.Component

	constructor: (props) ->

	render: ->
		<Router>
			<Home path="/" />
			<About path="/about" />
		</Router>

React.render(<Index />, document.body)

#::: End Program :::