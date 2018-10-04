void swap(int v[], int k) {
  int t;
  t = v[k];
  v[k] = v[k + 1];
  v[k + 1] = t;
}

int main()
{
  int[] arr = {1,2,3,4};
  swap(arr, 1);
}
