# Example makefile
# By including 'Makefile.rules', proper rules for .ll and .c are in place,
# the only missing thing we have to deal with here is the actual dependencies
# of the final target

include ../../Makefile.rules

echo.x: echo.o main.o
	$(SNITCH_LD) $(LDFLAGS) $^ -o $@

run: echo.x
	/src/hw/system/snitch_cluster/bin/snitch_cluster.vlt $<

clean:
	rm -f echo.o main.o echo.x