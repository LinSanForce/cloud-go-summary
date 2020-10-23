TARGETS := $(shell ls scripts)
#.PHONY:premake Compiling release precompiling

premake:
	echo "preMake"

precompiling: premake
	echo "precompiling"

Compiling: precompiling
	echo "Compiling"

release: Compiling
	echo "release"

.PHONY: $(TARGETS)