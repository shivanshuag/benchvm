#include <stdio.h>
 
int main() {
	int i = 134513840;
	int j = 4288544;
	int jj = 2342;
	int k = 31455;
	int l = 16452;
	int m = 9823;

	while(1) { 
		m = m^l;
		k = (k/m * jj) % i;
		l=j*m*k;
		i = (j * k)^m;
		k = (k/m * jj) % i;
		m = m^l;
		m = m^l;
		i = (j * k)^m;
		k = (k/m * jj) % i;
		m=i*i*i*i*i*i*i;
		m = m^l;
		k = (k/m * jj) % i;
		l=j*m*k;
		i = (j * k)^m ;
		l = (k/m * jj) % i;
		m = m^l;m = m^l;
		i = (j * k)^m ;
		k = (k/m * jj) % i;
		 m=k*k*k*k*k - m/i;  
	}

	return 0;
}
