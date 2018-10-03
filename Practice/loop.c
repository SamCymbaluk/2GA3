int main()
{

  int i = 0; // $s0
  int j = 45; // $s1
  int k = 0; // $s2

  for (; i < j; j--) {
    k += j;
  }
}
