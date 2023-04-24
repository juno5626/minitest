CC=gcc
CFLAGS=-Wall 

all: market

market: market.o manager.o product.o
	$(CC) $^ -o $@

market.o: market.c
	$(CC) $(CFLAGS) -c $<

manager.o: manager.c
	$(CC) $(CFLAGS) -c $<

product.o: product.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o market
