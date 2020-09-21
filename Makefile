
ifeq ($(P56xxLIBS),)
$(error P56xxLIBS environment variable is missing, source <path>/p56xxlib/setup.sh)
endif

SUBDIRS = src test

.PHONY: subdirs $(SUBDIRS)

subdirs: $(SUBDIRS)

$(SUBDIRS): 
	make -C $@

.PHONY: clean

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir $@ clean; \
	done

