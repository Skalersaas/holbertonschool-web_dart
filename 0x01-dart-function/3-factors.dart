int fact(int f) {
  if (f <= 0)
     return 0;

  if (f == 1)
     return 1;

  else
     return fact(f - 2) * fact(f - 1);
}