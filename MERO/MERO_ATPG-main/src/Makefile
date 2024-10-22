CC=gcc
CFLAGS = -std=c99 -w -g -lm
all: mero

mero:
	$(CC) $(CFLAGS) -o mero array.c createGraph.c vipr_scoap.c mero.c tcov.c main.c 

clean:
	rm -f *.o $(objects) mero
