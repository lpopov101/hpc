echo "--------------------------------------------------"
echo "Using optimization O0"
icc -O0 saxpy_both_simple.c -o both_simple -qopenmp
echo "-------------------------"
./both_simple
echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O2"
# icc -O2 saxpy_both_simple.c -o both_simple -qopenmp
# echo "-------------------------"
# ./both_simple
# echo "--------------------------------------------------"
# echo "--------------------------------------------------"
# echo "Using optimization O3"
# icc -O3 saxpy_both_simple.c -o both_simple -qopenmp
# echo "-------------------------"
# ./both_simple
# echo "-------------------------"
# echo "--------------------------------------------------"
