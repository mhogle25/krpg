#Packages
SOURCE = src/krpg/com/game

CORE = $(SOURCE)/core

#Binary
BINARY = bin

BUILD = $(BINARY)/build
TEST = $(BINARY)/test

#Targets
test: 
	@mkdir -p $(BINARY)
	@mkdir -p $(TEST)
	@kotlinc $(CORE)/*.kt $(SOURCE)/*.kt -include-runtime -d $(TEST)/krpg.jar

build:
	@mkdir -p $(BINARY)
	@mkdir -p $(BUILD)
	@kotlinc $(CORE)/*.kt $(SOURCE)/*.kt -include-runtime -d $(BUILD)/krpg.jar

clean-test:
	@rm -rf $(TEST)

clean-build:
	@rm -rf $(BUILD)

clean: clean-test clean-build
