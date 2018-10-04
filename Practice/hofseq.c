#include <stdio.h>

int hof_F(int);
int hof_M(int);

int hof_F(int n)
{
  if (n <= 0) return 1;

  return n - hof_M(hof_F(n - 1));
}

int hof_M(int n)
{
  if (n <= 0) return 0;

  return n - hof_F(hof_M(n - 1));
}

int main()
{
  int i, j; // $s0, $s1

  i = hof_F(12);
  j = hof_M(12);
  
  // printf("%d, %d\n", i, j);
}
