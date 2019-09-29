React = require('react')
SocialLinks = require('./SocialLinks.cjsx')

preact = 'https://preactjs.com/'
beauter = 'https://beauter.io/'

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div class="_mt-4 _width100 _alignCenter _cream">
			<div class="container jumbo">
				<p>
					Designed with ❤️ and ☕
					<br />

					Made with <a href={ preact }>preact.js</a>
					 and <a href={ beauter }>beauter.css</a>
					<SocialLinks />
				</p>
			</div>
		</div>

#::: End Program :::