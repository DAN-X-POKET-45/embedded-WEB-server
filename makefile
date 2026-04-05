#Automated compiler for embedded web server

#############################
#  COMPILER CONFIG SECTION  #
#############################

#Executable name
TARGET = web-test

#C++ compiler
CXX = clang++

#Compiler flags/args
CXXFLAGS = -Wall



###########################
#  LINKER CONFIG SECTION  #
###########################

#Header directories
INCLUDE_DIRS = -Ilibs

              

#Libs directories
#LIB_DIRS= -Llibs



#Included libraries (order matters)
#LIBS= -l

	


##############################
#  DIRECTIVE CONFIG SECTION  #
##############################

#Source files
src = src/main.cpp

all:
	@echo $(shell date): Compiling WEB-SERVER [web-test] at $(shell hostname) as $(shell whoami)
	@$(CXX) $(CXXFLAGS) -o $(TARGET) $(src) $(INCLUDE_DIRS) $(LIB_DIRS) $(LIBS)
	@echo WEB-SERVER [web-test] compiled! Executable name: $(TARGET)

run:
	@echo $(shell date): Runing WEB-SERVER [web-test] at $(shell hostname) via make directive as $(shell whoami)
	@./$(TARGET)
	@echo Test completed!