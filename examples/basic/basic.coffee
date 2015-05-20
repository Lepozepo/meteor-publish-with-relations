@main_subs = new SubsManager
	cacheLimit: 9999
	expireIn: 9999

Router.route '/', ->
	@wait Meteor.subscribe "things"

	@render "basic"


if Meteor.isClient
	Template.basic.helpers
		"things": ->
			Things.find()















