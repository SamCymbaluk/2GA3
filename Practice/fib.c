int fib(int n) {
  if (n <= 1) return 1;
  return fib(n - 1) + fib(n - 2);
}

int main()
{
  int i, j, k; // $s0, $s1, $s2

   i = fib(5);
   j = fib(8);

   k = i + j;
   // printf("%d\n", k);
}
