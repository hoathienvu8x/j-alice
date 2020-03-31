CC = g++
CFLAGS = -Wall -std=c++11 -Wno-deprecated
EXEC_NAME = alexa
INCLUDES =
LIBS =
DEPS = $(wildcard src/*.h)
CPP_FILES = $(wildcard src/*.cpp)
PROJECT_DIR = $(shell pwd)

RELEASE_DIR = $(shell pwd)/release
OBJECT_DIR = $(shell pwd)/objects

OBJ_FILES = $(addprefix $(OBJECT_DIR)/, $(notdir $(CPP_FILES:.cpp=.o)))

all : build $(EXEC_NAME)

build :
	@mkdir -p $(RELEASE_DIR)
	@mkdir -p $(OBJECT_DIR)

clean :
	rm $(RELEASE_DIR)/* $(OBJECT_DIR)/*

$(EXEC_NAME) : $(OBJ_FILES)
	$(CC) -o $(RELEASE_DIR)/$(EXEC_NAME) $(OBJ_FILES) $(LIBS)
	@cp -rf $(PROJECT_DIR)/brain/* $(RELEASE_DIR)/

$(OBJECT_DIR)/%.o: src/%.cpp
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ -c $<

install :
	cp $(EXEC_NAME) $(INSTALL_DIR)
