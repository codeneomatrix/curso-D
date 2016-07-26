import vibe.d;

shared static this()
{
	import mmweb.web: MovieMan;
	auto router = new URLRouter;
	router.registerWebInterface(new MovieMan);
	router.get("*", serveStaticFiles("./public/"));
	router.get("/funcion", staticTemplate!"funcion.jade");

	auto settings = new HTTPServerSettings;
	settings.port = 8080;
	settings.bindAddresses = ["::1", "127.0.0.1"];
	listenHTTP(settings, router);
	//listenHTTP(settings, &hello);

	logInfo("Please open http://127.0.0.1:8080/ in your browser.");
}

/*void hello(HTTPServerRequest req, HTTPServerResponse res)
{
	res.writeBody("Hello, World!");
}*/
