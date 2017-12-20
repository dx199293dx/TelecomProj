package util;

public class DateUtils {

	public static boolean greaterThan(String date1, String date2) {
		String y1 = date1.substring(6), m1 = date1.substring(3, 5), d1 = date1.substring(0, 2);
		String y2 = date2.substring(6), m2 = date2.substring(3, 5), d2 = date2.substring(0, 2);
		if (y1.compareTo(y2) > 0) {
			return true;
		} else if (y1.compareTo(y2) < 0) {
			return false;
		} else {
			if (m1.compareTo(m2) > 0) {
				return true;
			} else if (m1.compareTo(m2) < 0) {
				return false;
			} else {
				if (d1.compareTo(d2) > 0) {
					return true;
				} else if (d1.compareTo(d2) < 0) {
					return false;
				} else {
					return true;
				}
			}
		}

	}

}
