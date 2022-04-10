#!/bin/bash

echo "C with -O0"
$(gcc -O0 *.c -o ack)
time for i in 1 .. 10
do
   ./ack
done

echo "C with -O1"
$(gcc -O1 *.c -o ack)
time for i in 1 .. 10
do
   ./ack
done

echo "C with -O2"
$(gcc -O2 *.c -o ack)
time for i in 1 .. 10
do
   ./ack
done

echo "C with -O3"
$(gcc -O3 *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done

echo "C with -Ofast"
$(gcc -Ofast *.c -o ack)
time for i in 1 .. 10
do
   ./ack
done

echo "Java with default optimization"
$(javac Java/Main.java)
time for i in 1 .. 10
do
   java -Xss1024m Java/Main.java
done

echo "Java without default optimization"
$(javac Java/Main.java)
time for i in 1 .. 4
do
   java -Xss1024m -Xint -Xprof Java/Main.java
done