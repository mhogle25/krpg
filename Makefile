SOURCE = src
BINARY = bin
BUILD = $(BINARY)/build
TEST = $(BINARY)/test

test: 
	@mkdir -p $(BINARY)
	@mkdir -p $(TEST)
	@kotlinc $(SOURCE)/main.kt -include-runtime -d $(TEST)/krpg.jar

build:
	@mkdir -p $(BINARY)
	@mkdir -p $(BUILD)
	@kotlinc $(SOURCE)/main.kt -include-runtime -d $(BUILD)/krpg.jar

clean-test:
	@rm -rf $(TEST)

clean-build:
	@rm -rf $(BUILD)

clean: clean-test clean-build
