Meteor.publish "things", (v={}) ->
	_.defaults v,
		filter:{}
		options:{}

	@relations
		collection:Things
		filter:v.filter
		options:v.options
		mappings:[
			{
				foreign_key:"sub_things.deep_things.deep_thing"
				key:"_id"
				collection:DeepThings
			}
			{
				foreign_key:"sub_things.sub_thing"
				key:"_id"
				collection:SubThings
			}
			{
				foreign_key:"other_thing"
				# key:"_id" #This is optional, defaults to _id
				collection:OtherThings
			}
			{
				# foreign_key:"_id" #This is optional, defaults to _id
				key:"thing"
				collection:ReverseThings
			}
		]

	@ready()


Meteor.publish "things_with_subthings", ->
	@relations
		collection:Things
		filter:{}
		mappings:[
			foreign_key:"sub_things.sub_thing"
			collection:SubThings
		]

	@ready()

Meteor.publish "thing", (thing) ->
	@relations
		collection:Things
		filter:
			_id:thing
		mappings:[
			foreign_key:"sub_things.sub_thing"
			collection:SubThings
		]

	@ready()

Meteor.publish "thing_with_depth", (thing) ->
	@relations
		collection:Things
		filter:
			_id:thing
		mappings:[
			{
				foreign_key:"sub_things.deep_things.deep_thing"
				collection:DeepThings
			}
			{
				foreign_key:"sub_things.sub_thing"
				collection:SubThings
			}
		]

	@ready()





