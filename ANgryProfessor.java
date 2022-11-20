class Attendance {
	
	private static void checkPunctual(String a, String b) {
		
		int N = Integer.parseInt(a.split(" ")[0]);
		int K = Integer.parseInt(a.split(" ")[1]);
		int early = 0;

		if (N < K) {
			System.out.println("Students can not be less than cancellation threshold");
			return;
		}
		
		String [] str_t = b.split(" ");
		
		if (N < str_t.length) {
			System.out.println("Students Population can not be less than attendance");
			return;
		}
		
		for (int i = 0; i < str_t.length; i++) {
			int num = Integer.parseInt(str_t[i]);
			if (num <= 0) {
				early++;
			}
		}
		if (early >= K) {
			System.out.println("NO");
		} else
			System.out.println("YES");
	}

	public static void main(String[] args) {

		checkPunctual("4 3", "-1 -3 4 2");
		checkPunctual("4 2", "0 -1 2 1");
					
	}

}
