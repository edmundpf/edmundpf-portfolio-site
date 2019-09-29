React = require('react')
techItems = require('../../assets/json/tech.json')
projectItems = require('../../assets/json/projects.json')
experienceItems = require('../../assets/json/experience.json')
Card = require('./Card.cjsx')
Icon = require('./Icon.cjsx')
EmailCard = require('./EmailCard.cjsx')

emailLink = 'mailto:edmundpf@buffalo.edu.com'

techCard =
	title: 'Technologies ⚙️'
	items: techItems

projectCard =
	title: 'Recent Projects ✏️'
	items: projectItems

experienceCard =
	title: 'Experience 🎓'
	items: experienceItems

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->

		<div class="container _pt-2">

			<div class="row _alignCenter">
				<div class="col">
					<Card
						title={ techCard.title }
						buttonText='See More'
						buttonLink='/about#languages'
						content=
						{
							Object.keys(techCard.items).map((key, index) =>
								<div class="_mb-2">
									<strong>{ "#{key}: " }</strong>
									<br />
									{ techCard.items[key].join(', ') }
								</div>
							)
						}
					/>
				</div>
			</div>

			<div class="row _alignCenter">
				<div class="col">
					<Card
						title={ projectCard.title }
						buttonText='See More'
						buttonLink='https://github.com/edmundpf?utf8=%E2%9C%93&tab=repositories&q=&type=public&language='
						content=
						{
							Object.keys(projectCard.items).map((key, index) =>
								<div class="_mb-2">
									<strong>{ "#{key}: " }</strong>
									{
										if projectCard.items[key].git?
										then <Icon tooltip="Github" type="github" href={ projectCard.items[key].git } />
										else null
									}
									{
										if projectCard.items[key].npm?
										then <span style="margin-top: 1px"> <Icon tooltip="NPM" type="npm" href={ projectCard.items[key].npm } /></span>
										else null
									}
									{
										if projectCard.items[key].python?
										then <span> <Icon tooltip="PyPi" type="python" href={ projectCard.items[key].python } /></span>
										else null
									}
									<br />
									{ projectCard.items[key].text }
								</div>
							)
						}
					/>
				</div>
			</div>

			<div class="row _alignCenter">
				<div class="col">
					<Card
						title={ experienceCard.title }
						buttonText='See More'
						buttonLink='assets/pdf/Edmund Pfeil - Resume.pdf'
						content=
						{
							experienceCard.items.map((value, index) =>
								<div class="_mb-2">
									<strong>{ "#{value.title}: " }</strong>
									<br />
									{ value.description }
								</div>
							)
						}
					/>
				</div>
			</div>

			<EmailCard />

		</div>

#::: End Program :::