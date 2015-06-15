Package.describe({
	name:"lepozepo:publish-with-relations",
	summary: "Publish associated collections at once.",
	version:"1.2.3",
	git:"https://github.com/Lepozepo/meteor-publish-with-relations"
});

Package.on_use(function(api) {
	api.versionsFrom('METEOR@0.9.2');

	api.use(['coffeescript'], ['server',"client"]);
	api.add_files('server.coffee', 'server');
});

