void main(List<String> args) {
  checkPunctual("4 3", "-1 -3 4 2");
  checkPunctual("4 2", "0 -1 2 1");
}

void checkPunctual(String a, String b) {
  List<String> nums = a.split(' ');
  int N = int.parse(nums[0]);
  int K = int.parse(nums[1]);
  int early = 0;

  if (N < K) {
    print("Students can not be less than cancellation threshold");
    return;
  }

  b.split(' ').forEach((t) {
    if (int.parse(t) <= 0) 
      early++;
  });

  print(early >= K ? 'NO' : 'YES');
}
