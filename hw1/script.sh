#!/bin/bash

for ((i = 10; i <= 20480; i*=4))
{
 echo N: $i
 echo ==============================
 ./dgemm $i $i $i

}
exit 0
