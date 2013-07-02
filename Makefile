# Makefile for CS154 Project 4: Building a Shell

DRIVER = ./sdriver.pl
TSH = ./tsh
TSHREF = ./tshref
TSHARGS = "-p"
CC = gcc
CFLAGS = -Wall -O2 -m32
FILES = $(TSH) ./myspin ./mysplit ./mystop ./myint

all: $(FILES)

##################
# run all tests
##################
tests: test01 test02 test03 test04 test05 test06 test07 test08 test09 test10 test11 test12 test13 test14 test15 test16


##################
# Regression tests
##################

# Run tests using the student's shell program
test01: rtest01
	$(DRIVER) -t trace01.txt -s $(TSH) -a $(TSHARGS) | tee trace01.out
	diff rtest01 trace01.out

test02: rtest02
	$(DRIVER) -t trace02.txt -s $(TSH) -a $(TSHARGS) | tee trace02.out
	diff rtest02 trace02.out
test03: rtest03
	$(DRIVER) -t trace03.txt -s $(TSH) -a $(TSHARGS) | tee trace03.out
	diff rtest03 trace03.out
test04: rtest04
	$(DRIVER) -t trace04.txt -s $(TSH) -a $(TSHARGS) | tee trace04.out
	diff rtest04 trace04.out
test05: rtest05
	$(DRIVER) -t trace05.txt -s $(TSH) -a $(TSHARGS) | tee trace05.out
	diff rtest05 trace05.out
test06: rtest06
	$(DRIVER) -t trace06.txt -s $(TSH) -a $(TSHARGS) | tee trace06.out
	diff rtest06 trace06.out
test07: rtest07
	$(DRIVER) -t trace07.txt -s $(TSH) -a $(TSHARGS) | tee trace07.out
	diff rtest07 trace07.out
test08: rtest08
	$(DRIVER) -t trace08.txt -s $(TSH) -a $(TSHARGS) | tee trace08.out
	diff rtest08 trace08.out
test09: rtest09
	$(DRIVER) -t trace09.txt -s $(TSH) -a $(TSHARGS) | tee trace09.out
	diff rtest09 trace09.out
test10: rtest10
	$(DRIVER) -t trace10.txt -s $(TSH) -a $(TSHARGS) | tee trace10.out
	diff rtest10 trace10.out
test11: rtest11
	$(DRIVER) -t trace11.txt -s $(TSH) -a $(TSHARGS) | tee trace11.out
	diff rtest11 trace11.out
test12: rtest12
	$(DRIVER) -t trace12.txt -s $(TSH) -a $(TSHARGS) | tee trace12.out
	diff rtest12 trace12.out
test13: rtest13
	$(DRIVER) -t trace13.txt -s $(TSH) -a $(TSHARGS) | tee trace13.out
	diff rtest13 trace13.out
test14: rtest14
	$(DRIVER) -t trace14.txt -s $(TSH) -a $(TSHARGS) | tee trace14.out
	diff rtest14 trace14.out
test15: rtest15
	$(DRIVER) -t trace15.txt -s $(TSH) -a $(TSHARGS) | tee trace15.out
	diff rtest15 trace15.out
test16: rtest16
	$(DRIVER) -t trace16.txt -s $(TSH) -a $(TSHARGS) | tee trace16.out
	diff rtest16 trace16.out

# Run the tests using the reference shell program
rtest01: 
	$(DRIVER) -t trace01.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest01
rtest02:
	$(DRIVER) -t trace02.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest02
rtest03:
	$(DRIVER) -t trace03.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest03
rtest04:
	$(DRIVER) -t trace04.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest04
rtest05:
	$(DRIVER) -t trace05.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest05
rtest06:
	$(DRIVER) -t trace06.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest06
rtest07:
	$(DRIVER) -t trace07.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest07
rtest08:
	$(DRIVER) -t trace08.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest08
rtest09:
	$(DRIVER) -t trace09.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest09
rtest10:
	$(DRIVER) -t trace10.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest10
rtest11:
	$(DRIVER) -t trace11.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest11
rtest12:
	$(DRIVER) -t trace12.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest12
rtest13:
	$(DRIVER) -t trace13.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest13
rtest14:
	$(DRIVER) -t trace14.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest14
rtest15:
	$(DRIVER) -t trace15.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest15
rtest16:
	$(DRIVER) -t trace16.txt -s $(TSHREF) -a $(TSHARGS) | tee rtest16


# clean up
clean:
	rm -f $(FILES) *.o *~


