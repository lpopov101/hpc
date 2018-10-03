echo "--------------------------------------------------"
echo "Using optimization O0"
icc -O0 saxpy_outer_simple.c -o outer_simple -qopenmp
echo "-------------------------"
./outer_simple
echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O2"
# icc -O2 saxpy_outer_simple.c -o outer_simple -qopenmp
# echo "-------------------------"
# ./outer_simple
# echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O3"
# icc -O3 saxpy_outer_simple.c -o outer_simple -qopenmp
# echo "-------------------------"
# ./outer_simple
# echo "-------------------------"
# echo "--------------------------------------------------"
