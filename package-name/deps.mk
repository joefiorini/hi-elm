SASS_COMPILER = gem install sass # Needs Ruby Sass by default for bourbon
ENTR = brew install entr
DAEMONTOOLS = brew install daemontools

.PHONY: deps_osx

deps: test_prepare
	$(SASS_COMPILER)
	$(ENTR)
	$(DAEMONTOOLS)

