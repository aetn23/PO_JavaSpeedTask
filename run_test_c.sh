#!/bin/bash

$(gcc -O0 *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done

$(gcc -O1 *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done

$(gcc -O2 *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done

$(gcc -O3 *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done

$(gcc -Ofast *.c -o ack)
time for i in 1 .. 10
do

   ./ack
done


