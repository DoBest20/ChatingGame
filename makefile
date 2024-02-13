server : server.o
	gcc -o server server.o -pthread -lncurses

server.o : server.c
	gcc -c -o server.o server.c

client : client.o
	gcc -o client client.o -pthread -lncurses
client.0 : client.c
	gcc -c -o client.o client.c


server_demo : server_demo.o
	gcc -o server_demo server_demo.o -pthread -lncurses

server_demo.o : server_demo.c
	gcc -c -o server_demo.o server_demo.c

client_demo : client_demo.o
	gcc -o client_demo client_demo.o -pthread -lncurses
client_demo.0 : client_demo.c
	gcc -c -o client_demo.o client_demo.c

run_server:
	./server_demo --port 9090 --player 1 --turn 3 --corpus game_source1.txt
run_client:
	./client_demo -i 127.0.0.1 -o 9090 -u hi -p hi

clean :
	rm -rf *.o
