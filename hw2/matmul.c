#include <stdio.h>
#include <stdlib.h>
#define N 8192
float matrix_a[N][N];
float matrix_b[N][N];
float matrix_c[N][N];

void init_array()
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            matrix_a[i][j] = (1+(i*j)%1024)/2.0;
            matrix_b[i][j] = (1+(i*j)%1024)/2.0;
        }
    }
}

void classic_matmul()
{
        // Multiply the two matrices
        int i, j, k;
        #pragma omp parallel for collapse(2)
        for (i = 0; i < N; i++) {
                for (j = 0; j < N; j++) {
                        float sum = 0.0;
                        for (k = 0; k < N; k++) {
                                sum += matrix_a[i][k] * matrix_b[k][j];
                        }
                        matrix_c[i][j] = sum;
                }
        }
}

void interchanged_matmul()
{
        // Multiply the two matrices
        int i, j, k;
        for (i = 0; i < N; i++) {
                for (k = 0; k < N; k++) {
                        for (j = 0; j < N; j++) {
                                matrix_c[i][j] += matrix_a[i][k] * matrix_b[k][j                                                                                        ];
                        }
                }
        }
}

int main(int argc, char* argv[]){
        int i,j;
        init_array();
       
        classic_matmul();
        interchanged_matmul();
}
