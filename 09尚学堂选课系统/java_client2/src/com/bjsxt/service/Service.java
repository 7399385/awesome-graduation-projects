package com.bjsxt.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

public class Service {
//����һ������
	public static void send(PrintWriter pw, String str) {
		pw.println(str);
		pw.flush();
	}
//����һ������
	public static String listen(BufferedReader br) {
		String str = null;
		try {
			str = br.readLine();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return str;
	}
	
	
}
