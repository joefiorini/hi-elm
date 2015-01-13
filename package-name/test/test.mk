# Directory variables
# --------------------------
TEST: test

# Source files
# --------------------------
TEST_SOURCES = $(wildcard $(TEST)/*.elm) $(wildcard $(TEST)/**/*.elm)

.INTERMEDIATE: test-unwrapped.js

$(TEST)/test.js: TEST_SOURCES $(ELM_SOURCES)
	elm-make $< --output test-unwrapped.js
	./elm-io.sh test-unwrapped.js test.js

.PHONY: test_prepare test

test_prepare:
	elm-package install evancz/automaton
	npm install jsdom

test: $(TEST)/test.js
	node $<