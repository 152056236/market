// JavaScript Document
	function testTel(str){
		//var reg=/(^[0-9]{3,4}\-[0-9]{3,8}$)|(^[0-9]{3,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/;
		var reg=/^(((\()?\d{2,4}(\))?[-(\s)*]){0,2})?(\d{7,8})$/; 
		return reg.test(str);
	}
	function checkMobile(mobile){
		 var reg0=/^13\d{9}$/; 
		 var reg1=/^153\d{8}$/;  
		 var reg2=/^159\d{8}$/;  
		 var my=false;
		 if (reg0.test(mobile))my=true;
		 if (reg1.test(mobile))my=true;
		 if (reg2.test(mobile))my=true;
		 return my;
	}
	function isLeapYear(year){
		if((year %4==0 && year %100!=0) || (year %400==0)) return true;
		else return false;
	}
	function testPostCode(str){
		var patrn=/^[0-9]{6}$/;
		return patrn.test(str);
	}
	function testEmail(str)
	{
		if(str.match(/[\w-.]+@{1}[\w-]+\.{1}\w{2,4}(\.{0,1}\w{2}){0,1}/ig)!=str)
			return false;
		else
			return true;
	}
	function testDigit(str){
        var patrn=/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/;
        return patrn.test(str);
}
