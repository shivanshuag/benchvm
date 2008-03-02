all: image

image:
	./makeguest test

clean:
	rm -rf /tmp/vmbench-* *.log.* *.img
