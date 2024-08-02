# SHELL CONFIG
SHELL=/bin/bash -O globstar

# JAVA LIBRARIES
CLASSPATH=-cp lib/Spigot-API.jar

# PREFIXES
subject=\033[m\033[1;32m-> 
command=\n\033[0;37;40m $$ 

# PLUGIN NAME & VERSION
plugin_name=$(shell grep -oP "name:\s*\K\w+" plugin.yml)
plugin_version=$(shell grep -oP "version:\s*\K[A-Za-z0-9\.]+" plugin.yml)

# JARFILE BUILD OUTPUT
jarfile_output=dist/$(plugin_name)-$(plugin_version).jar
# jarfile_output=../../plugins/MiniLambda.jar

all: build

clean:
	@echo -en '$(subject)Cleaning environment..$(command)'
	rm -rf **/*.class dist

compile: ./lib/Spigot-API.jar clean
	@echo -en '$(subject)\nCompiling `.java` files to `.class` files..$(command)'
	javac $(CLASSPATH) **/*.java

build: compile
	@echo -en '$(subject)\nBuilding JAR file..$(command)'
	@mkdir -p dist
	cd src && jar cf "../$(jarfile_output)" **/*.class ../*.yml && cd ..
