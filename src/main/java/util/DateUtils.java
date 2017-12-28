package util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
	
	public static String dateDifference(String s1) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy HH:mm:ss");

			Date currdate = sdf.parse(sdf.format(new Date()));
			Date ddate = sdf.parse(s1+" 23:59:59");
			Long days = (ddate.getTime()-currdate.getTime())/1000/24/3600;
			String s = days.toString();
			System.out.println(s);
		return s;
	}

}
