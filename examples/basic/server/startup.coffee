Meteor.startup ->
	if Things.find().count() is 0
		# add a particular thing
		Things.insert
			name:"Particular Thing"

		for thing in [0..10]
			subthing = SubThings.insert
				name:"Subthing #{thing}"
				property:Random.id()
				quantity:Math.ceil Math.random() * 10

			deepthing = DeepThings.insert
				name:"Deepthing #{thing}"
				property:Random.id()

			otherthing = OtherThings.insert
				name:"Otherthing #{thing}"
				property:Random.id()

			if Math.random > 0.5
				type = "A"
			else
				type = "B"

			thing_id = Things.insert
				name:"Thing #{thing}"
				type:type
				other_thing:otherthing
				sub_things:[
					sub_thing:subthing
					quantity:Math.ceil Math.random() * 10
					deep_things:[
						quantity:Math.ceil Math.random() * 10
						deep_thing:deepthing
					]
				]

			ReverseThings.insert
				thing:thing_id
				name:"Reversething #{thing}"
				property:Random.id()