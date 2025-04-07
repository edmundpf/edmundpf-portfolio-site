React = require('react')
EmailCard = require('./EmailCard.cjsx')
languageItems = require('../../assets/json/languages.json')
techItems = require('../../assets/json/allTech.json')
artItems = require('../../assets/json/art.json')

nonCoding =
	title: "What I do when I'm not coding 👀"
	text: """
	I create digital art and I'm into all things crypto. I really enjoy music and like everything from EDM to Hip-Hop to Rock and pretty much everything in between.
	I also lift weights semi-religiously for fun. Lastly, I enjoy long drives, long walks, and a good hamburger.
	"""

languages =
	title: 'Languages 📜'
	items:
		'Web Technology': languageItems.web
		'Web Frameworks': languageItems.frameworks
		'Server-Side Langugages': languageItems.server
		'Data Technology': languageItems.data

tech =
	title: 'Technologies ⚙️'
	items: techItems

art =
	title: 'Art 🎨'
	items: artItems

docs =
	title: 'Documents 📄'
	items:
		'Resume': 'assets/pdf/Edmund Pfeil - Resume.pdf'
		'Cover Letter': 'assets/pdf/Edmund Pfeil - Cover Letter.pdf'
		'References': 'assets/pdf/Edmund Pfeil - References.pdf'

module.exports = class extends React.Component

	constructor: (props) ->

	render: ->
		<div class="container -content _f-white _mt-4">

			<a name="about" class="_f-white">
				<h4 class="card-title">{ nonCoding.title }</h4>
			</a>
			<hr class="card-div" />
			<p class="_mb-4">{ nonCoding.text }</p>

			<a name="languages" class="_f-white">
				<h4 class="card-title">{ languages.title }</h4>
			</a>
			<hr class="card-div" />
			<p class="_mb-4">
				{
					Object.keys(languages.items).map((key, index) =>
						<div>
							<h5 class="_mb-1">{ key }</h5>
							<blockquote class="_mb-2">{ languages.items[key].join(', ') }</blockquote>
						</div>
					)
				}
			</p>

			<a name="technology" class="_f-white">
				<h4 class="card-title">{ tech.title }</h4>
			</a>
			<hr class="card-div" />
			<p>
				<ul>
				{
					tech.items.map((value, index) =>
						<li>{ value }</li>
					)
				}
				</ul>
			</p>

			<a name="documents" class="_f-white">
				<h4 class="card-title">{ docs.title }</h4>
			</a>
			<hr class="card-div" />
			<p>
				<ul>
				{
					Object.keys(docs.items).map((key, index) =>
						<li>
							<h5>
								<a href={ docs.items[key] }>{key}</a>
							</h5>
						</li>
					)
				}
				</ul>
			</p>

			<a name="art" class="_f-white">
				<h4 class="card-title">{ art.title }</h4>
			</a>
			<hr class="card-div" />
			<div class="row">
				{
					art.items.map((name, index) =>
						<div class="col f4">
							<img src="assets/images/#{name}" />
						</div>
					)
				}
			</div>

			<EmailCard />

		</div>

#::: End Program :::