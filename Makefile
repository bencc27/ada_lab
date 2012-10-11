.SUFFIXES: .p.ads .p.adb .ads .adb

GNATFLAGS = -O2 -gnatf -gnatoa -fstack-check -g
GNATMAKE = gnatmake
GNATPREP = gnatprep

STUDENT_VERSION = FALSE
#STUDENT_VERSION = TRUE

%.ads:%.p.ads
	$(GNATPREP) -DSTUDENT_VERSION=$(STUDENT_VERSION) $< $@

%.adb:%.p.adb
	$(GNATPREP) -DSTUDENT_VERSION=$(STUDENT_VERSION) $< $@

SOURCES = \
	bubble.ads \
	hello.adb \
	smart_pointers.ads

all: hello pi test_bubble test_smart_pointers

help:
	@echo "run make <target> where"
	@echo " target = hello               for Hello World ! (exercise 1)"
	@echo " target = pi                  for Exercise 2"
	@echo " target = test_bubble         for Exercise 3"
	@echo " target = test_smart_pointers for Exercise 4"
	@echo " target = stub to generate stubs from package specifications"

hello: hello.adb
	$(GNATMAKE) $(GNATFLAGS) hello

pi: pi.adb
	$(GNATMAKE) $(GNATFLAGS) pi

test_bubble:
	$(GNATMAKE) $(GNATFLAGS) test_bubble

test_smart_pointers: test_smart_pointers.adb
	$(GNATMAKE) $(GNATFLAGS) test_smart_pointers

stub:
	gnatstub bubble.ads
	gnatstub smart_pointers.ads

clean:
	rm -f *.ali *.o
	rm -f GNAT* *~
	rm -f core*

distclean: clean
	rm -f pi hello test_bubble test_smart_pointers

###############################################################################
# Packaging of the lab

STUDENT_DIR=ada_lab

dist: package_student

package_student:
	-rm -rf $(STUDENT_DIR)
	mkdir $(STUDENT_DIR)
	cp $(SOURCES) $(STUDENT_DIR)
	cp Makefile $(STUDENT_DIR)
	tar zcvf $(STUDENT_DIR).tar.gz $(STUDENT_DIR)
