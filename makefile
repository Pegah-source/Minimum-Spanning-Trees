#MPI_COMPILE_FLAGS = $(shell mpic++)
#MPI_LINK_FLAGS = $(shell mpic++)
 
#my_app: my_app.c
#	$(CC) $(MPI_COMPILE_FLAGS) my_app.c $(MPI_LINK_FLAGS) -o my_app

CC = mpic++ 
all : boruvka prim kruskal prim_parallel Boruvka_parallel

boruvka: boruvka.cpp
	$(CC) -o boruvka boruvka.cpp
	
prim: prim.cpp
	$(CC) -o prim prim.cpp
	
kruskal: kruskal.cpp
	$(CC) -o kruskal kruskal.cpp

prim_parallel: prim_parallel.cpp
	$(CC) prim_parallel.cpp -o prim_parallel

Boruvka_parallel: Boruvka_parallel.cpp
	$(CC) Boruvka_parallel.cpp -o Boruvka_parallel
#kruskal_parallel: kruskal_parallel.cpp
#	$(CC) kruskal_parallel.cpp -o kruskal_parallel
	
	
#kruskal_parallel: kruskal_parallel.cpp
#	$(CC) $(MPI_COMPILE_FLAGS) kruskal_parallel.cpp $(MPI_LINK_FLAGS) -o kruskal_parallel
	
mst_Kclusters: mst_Kclusters.cpp
	$(CC) -o mst_Kclusters mst_Kclusters.cpp


clean:
	rm -f prim *~
	rm -f boruvka *~
	rm -f kruskal *~
	rm -f kruskal_parallel *~
	rm -f Boruvka_parallel *~
	rm -f prim_parallel *~
	rm -f mst_Kclusters *~
