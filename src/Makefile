ROOTCFLAGS = $(shell root-config --cflags)
ROOTLIBS   = $(shell root-config --libs)
ROOTGLIBS  = $(shell root-config --glibs)
CXXFLAGS  += $(ROOTCFLAGS) -I$(P56xxLIBS)/inc -MMD  -Wall -O3
LIBS       = $(ROOTLIBS)
GLIBS      = $(ROOTGLIBS)
GXX	   = g++ $(CXXFLAGS)


src = $(wildcard *.cpp)
obj = $(src:.cpp=.o)
dep = $(obj:.o=.d)  # one dependency file for each source

all: $(obj) lib

# build static and shared libraries
lib:
	mkdir -p ../lib
	ar crs ../lib/libP56xx.a $(obj)
	g++ $(obj) -shared -o ../lib/libP56xx.so

clean:
	rm -f *.o *.so ../lib/* *.d *~

