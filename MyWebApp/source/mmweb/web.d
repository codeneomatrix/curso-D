module mmweb.web;
import vibe.vibe;


final class MovieMan {
	void index() {
		render!("index.jade");
	}
}