@Things = new Meteor.Collection "things"
	# Schema
	# name:String
	# sub_things:[Object]
	# "sub_things.$.sub_thing":String
	# "sub_things.$.quantity":Number
	# "sub_things.$.other_thing":String
	# "sub_things.$.deep_things.$.quantity":Number
	# "sub_things.$.deep_things.$.deep_thing":Number

@SubThings = new Meteor.Collection "sub_things"
	# Schema
	# name:String
	# property:String

@DeepThings = new Meteor.Collection "deep_things"
	# Schema
	# name:String
	# property:String

@OtherThings = new Meteor.Collection "other_things"
	# Schema
	# name:String
	# property:String

@ReverseThings = new Meteor.Collection "reverse_things"
	# Schema
	# name:String
	# property:String