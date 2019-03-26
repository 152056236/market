package mypackage.test;

import static org.junit.Assert.*;

import mypackage.DateFormate;

public class Test {	
	@org.junit.Test
	public void test() {
		DateFormate dFormate = new DateFormate();
		
		assertEquals("&amp;&lt;&gt;", dFormate.toHtmlInput("&<>"));
		System.out.println("²âÊÔÍ¨¹ı");
	}
}
