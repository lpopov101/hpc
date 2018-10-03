echo "--------------------------------------------------"
echo "Using optimization O2"
icc -O0 saxpy_inner_simple.c -o inner_simple -qopenmp
echo "-------------------------"
./inner_simple
echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O2"
# icc -O2 saxpy_inner_simple.c -o inner_simple -qopenmp
# echo "-------------------------"
# ./inner_simple
# echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O3"
# icc -O3 saxpy_inner_simple.c -o inner_simple -qopenmp
# echo "-------------------------"
# ./inner_simple
# echo "-------------------------"
# echo "--------------------------------------------------"
