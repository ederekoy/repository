main(List<String> args) {
  int s1 = 2;
  int s2 = 1;
  int s3 = 3;

  if (s1 > s2) {
    if (s1 > s3) {
      print("$s1 en büyük sayıdır.");
    } else if (s2 > s3) {
      print("$s2 en büyük");
    } else
      print("$s3 en büyük");
  } else if (s2 > s3) {
    print("$s2 en büyük");
  }
}
