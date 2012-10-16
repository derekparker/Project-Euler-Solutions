CXX = g++-4.7 -ggdb -std=c++11
BINNAME = singlylinkedlist
LINKS= -lpthread
OBJ = object/main.o \
object/singlylinkedlist.o

all: singlylinkedlist

pre-build:
	-@mkdir bin
	-@mkdir object

clean:
	-@rm -R object
	-@rm -R bin
	-@rm $(BINNAME)

singlylinkedlist : pre-build $(OBJ)
	$(CXX) $(LINKS) -o bin/$(BINNAME) $(OBJ)

	-@rm $(BINNAME)
	ln -s bin/$(BINNAME) $(BINNAME)

object/main.o : main.cc 
	$(CXX) -c main.cc -o object/main.o
	
object/singlylinkedlist.o : Singly_Linked_List.cc Singly_Linked_List.h
	$(CXX) -c  Singly_Linked_List.cc -o object/singlylinkedlist.o
