void main(List<String> args) {
  checkPunctual("4 3", "-1 -3 4 2");
  checkPunctual("4 2", "0 -1 2 1");
}

void checkPunctual(String a, String b) {
  
  List <String> nums = a.split(' ');
  int N = int.parse(nums[0]);
  int K = int.parse(nums[1]);
  int early = 0;

  if (N < K) {
    print("Students can not be less than cancellation threshold");
    return;
  }

  List <String> time = b.split(' ');

  for (String t in time) {
    int num = int.parse(t);
    if (num <= 0) {
      early++;
    }
  }

  if (early >= K) {
    print("NO");
  } else
    print("YES");

}
