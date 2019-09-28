React = require('react')
Navbar = require('./components/Navbar.cjsx')
Hero = require('./components/Hero.cjsx')
Card = require('./components/Card.cjsx')

#: Navbar

navbarTitle ="Edmund Pfeil"

navbarLinks =
	About:
		link: '#'
	Contact:
		link: '#'

#: Hero

heroTitle = 'Software/Web Developer'
heroTagline = "Developing lightweight, fast, and mobile-friendly applications using the latest technologies"

#: Cards

languageCard =
	title: 'Languages'
	items: [
		'Vue'
		'React'
		'Python'
		'Flask'
	]

techCard =
	title: 'Technologies'
	items: [
		'Sublime'
		'Git'
		'Npm'
	]



#: Index Page

class Index extends React.Component

	constructor: (props) ->

	render: ->
		<div>
			<Navbar
				title={ navbarTitle }
				links={ navbarLinks }
			/>
			<Hero
				title={ heroTitle }
				tagline={ heroTagline }
			/>
			<section class="container">
				<div class="row is-center">

					<div class="col">
						<Card
							title={ languageCard.title }
							content=
							{
								<ul>
									{
										languageCard.items.map((value, index) =>
											<li>{ value }</li>
										)
									}
								</ul>
							}
						/>
					</div>

					<div class="col">
						<Card
							title={ techCard.title }
							content=
							{
								<ul>
									{
										techCard.items.map((value, index) =>
											<li>{ value }</li>
										)
									}
								</ul>
							}
						/>
					</div>

				</div>
			</section>
		</div>

React.render(<Index />, document.body)

#::: End Program :::