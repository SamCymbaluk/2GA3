int main()
{
  int i = 5; // $s0
  int j = 10; // $s1
  int k; // $s2

  if (i < j) {
    k = i;
  } else {
    k = j;
    i++;
  }
}
