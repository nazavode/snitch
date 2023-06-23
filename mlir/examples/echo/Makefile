# Example makefile
# By including 'Makefile.rules', correct rules for .ll and .c are in place,
# the only missing thing we have to deal with here is the actual dependencies
# of the final target

include ../../Makefile.rules

echo.x : echo.o main.o
	$(SNITCH_LD) $(LDFLAGS) $^ -o $@

clean:
	rm -f echo.o main.o echo.x