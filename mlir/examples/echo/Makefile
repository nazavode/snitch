# Example makefile
# By including 'Makefile.rules', proper rules for .ll, .c and for building the
# runtime are in place, the only missing thing we have to deal with here is
# the actual dependencies of the final target

include ../../Makefile.rules

echo.x: echo.o main.o $(SNITCH_RUNTIME_LIB)
	$(SNITCH_LD) $(LDFLAGS) $(SNITCH_RUNTIME_LIB) $^ -o $@

run: echo.x
	/src/hw/system/snitch_cluster/bin/snitch_cluster.vlt $<

clean: clean-snitch-runtime
	rm -f echo.o main.o echo.x