//===== relative URL handling code for js files ================
sWZBaseFolder = "www.darling.net.cn";                          
sWZ = window.location.href;                                     
iWZ = sWZ.indexOf(sWZBaseFolder) + sWZBaseFolder.length + 1;    
sWZBase = sWZ.substring(0,iWZ);                                 
//===== Copyright © 2001 Spidersoft. All rights reserved. ======

var CalendarData=new Array(20);
var madd=new Array(12);
var TheDate=new Date();
var tgString="¼×ÒÒ±û¶¡Îì¼º¸ýÐÁÈÉ¹ï";
var dzString="×Ó³óÒúÃ®³½ËÈÎçÎ´ÉêÓÏÐçº¥";
var numString="Ò»¶þÈýËÄÎåÁùÆß°Ë¾ÅÊ®";
var monString="Õý¶þÈýËÄÎåÁùÆß°Ë¾ÅÊ®¶¬À°";
var weekString="ÈÕÒ»¶þÈýËÄÎåÁù";
var sx="ÊóÅ£»¢ÍÃÁúÉßÂíÑòºï¼¦¹·Öí";
var cYear;
var cMonth;
var cDay;
var cHour;
var cDateString;
var DateString;

function init()
{
  CalendarData[0]=0x41A95;
  CalendarData[1]=0xD4A;
  CalendarData[2]=0xDA5;
  CalendarData[3]=0x20B55;
  CalendarData[4]=0x56A;
  CalendarData[5]=0x7155B;
  CalendarData[6]=0x25D;
  CalendarData[7]=0x92D;
  CalendarData[8]=0x5192B;
  CalendarData[9]=0xA95;
  CalendarData[10]=0xB4A;
  CalendarData[11]=0x416AA;
  CalendarData[12]=0xAD5;
  CalendarData[13]=0x90AB5;
  CalendarData[14]=0x4BA;
  CalendarData[15]=0xA5B;
  CalendarData[16]=0x60A57;
  CalendarData[17]=0x52B;
  CalendarData[18]=0xA93;
  CalendarData[19]=0x40E95;
  madd[0]=0;
  madd[1]=31;
  madd[2]=59;
  madd[3]=90;
  madd[4]=120;
  madd[5]=151;
  madd[6]=181;
  madd[7]=212;
  madd[8]=243;
  madd[9]=273;
  madd[10]=304;
  madd[11]=334;
 }

function GetBit(m,n)
{
  return (m>>n)&1; 
}

function e2c()
{
  var total,m,n,k;
  var isEnd=false;
  var tmp=TheDate.getYear();
  if (tmp<1900)  tmp+=1900;
  total=(tmp-2001)*365
    +Math.floor((tmp-2001)/4)
    +madd[TheDate.getMonth()]
    +TheDate.getDate()
    -23;
  if (TheDate.getYear()%4==0&&TheDate.getMonth()>1)
    total++;
  for(m=0;;m++)
  {
    k=(CalendarData[m]<0xfff)?11:12;
    for(n=k;n>=0;n--)
    {
      if(total<=29+GetBit(CalendarData[m],n))
      {
        isEnd=true;
        break;
      }
      total=total-29-GetBit(CalendarData[m],n);
    }
    if(isEnd)break;
  }
  cYear=2001 + m;
  cMonth=k-n+1;
  cDay=total;
  if(k==12)
  {
    if(cMonth==Math.floor(CalendarData[m]/0x10000)+1)
      cMonth=1-cMonth;
    if(cMonth>Math.floor(CalendarData[m]/0x10000)+1)
      cMonth--;
  }
  cHour=Math.floor((TheDate.getHours()+3)/2);
}

function GetcDateString()
{
  var tmp="";
  tmp+=tgString.charAt((cYear-4)%10); 
  tmp+=dzString.charAt((cYear-4)%12); 
  tmp+="Äê(";
  tmp+=sx.charAt((cYear-4)%12);
  tmp+=")";
  if(cMonth<1)
  {
    tmp+="Èò";
    tmp+=monString.charAt(-cMonth-1);
  }
  else
    tmp+=monString.charAt(cMonth-1);
  tmp+="ÔÂ";
  tmp+=(cDay<11)?"³õ":((cDay<20)?"Ê®":((cDay<30)?"Ø¥":"Ø¦"));
  if(cDay%10!=0||cDay==10)
    tmp+=numString.charAt((cDay-1)%10);
  cDateString=tmp;
  return tmp;
}

function GetDateString()
{
  var tmp="";
  var t1=TheDate.getYear();
  if (t1<1900)t1+=1900;
  tmp+=t1
       +"Äê"
       +(TheDate.getMonth()+1)+"ÔÂ"
       +TheDate.getDate()+"ÈÕ&nbsp;ÐÇÆÚ"+weekString.charAt(TheDate.getDay()); 
  DateString=tmp;
  return tmp;
}

init();
e2c();
GetDateString();
GetcDateString();
document.write(DateString+"&nbsp;"+cDateString);
