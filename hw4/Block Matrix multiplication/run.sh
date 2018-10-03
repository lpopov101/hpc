echo "Running for O0"
icc -O0 block_mm.c -o block -qopenmp
./block
#echo "----------------------------------------------"
# echo "Running for O2"
# icc -O2 block_mm.c -o block -qopenmp
# ./block
# echo "----------------------------------------------"
# echo "Running for O3"
# icc -O3 block_mm.c -o block -qopenmp
# ./block
# echo "----------------------------------------------"

