ROOTCFLAGS = $(shell root-config --cflags)
ROOTLIBS   = $(shell root-config --libs)
ROOTGLIBS  = $(shell root-config --glibs)
ROOTFLAGS   = $(ROOTCFLAGS) $(ROOTLIBS) $(ROOTGLIBS) 
CXXFLAGS  += $(ROOTCFLAGS) -I$(P56xxLIBS)/inc -Wall -O3
LDFLAGS    = $(ROOTLIBS) $(ROOTGLIBS) -L$(P56xxLIBS)/lib -lP5640
GXX	   = g++ $(CXXFLAGS)

SRCS = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)
EXES = $(SRCS:%.cpp=%)
dep = $(OBJ:.o=.d)  # one dependency file for each source

all: $(EXES)

$(EXES): $(SRCS)
	mkdir -p ../bin
	$(GXX) $(CXXFLAGS) -MMD -c $@.cpp
	$(GXX) $@.cpp -o../bin/$@ $(LDFLAGS)

clean:
	rm -f *.o *.so *.d *~ $(addprefix ../bin/,$(EXES))

cleanall: clean
	rm -f $(dep)
