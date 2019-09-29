React = require('react')
Card = require('./Card.cjsx')

emailLink = 'mailto:edmundpf@buffalo.edu.com'
emailTagline = "Send me an email for questions, project collaborations, job inquiries, or freelance work 😃"

contactCard =
	title: 'Get in Touch ✉️'

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->

		<div class="row _alignCenter">
			<div class="col">
				<Card
					title={ contactCard.title }
					buttonText='Email Me'
					buttonLink={ emailLink }
					content=
					{
						<div>
							{ emailTagline }
						</div>
					}
				/>
			</div>
		</div>

#::: End Program :::