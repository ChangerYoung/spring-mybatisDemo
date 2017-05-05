package com.ssdut.KindGardenProject.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PublicMethod {
	/**
	 * 判断字符串input是否可以转化成数字
	 * @param input
	 * @return
	 */
	public static boolean isNumeric(String input){
		Pattern pattern = Pattern.compile("(-|)[0-9]*");
		Matcher isNum = pattern.matcher(input);
		if(! isNum.matches()){
			return false;
		}
		return true;
	}
}
