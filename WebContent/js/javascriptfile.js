/*********************************************Clock Section***********************************************/
window.onload=showClock;
var t;
function showClock()
{
	var d=new Date();
	var h=d.getHours();
	var m=d.getMinutes();
	var s=d.getSeconds();
	var time=h+":"+m+":"+s;
	document.getElementById("myClock").innerHTML=time;
	t= setTimeout("showClock()",1000);
}
function StopClock()
{
	clearTimeout(t);
}
function reload()
{
	location.reload(t);
}
/*********************************************Print Section***********************************************/
function printDiv(){
	var printContaints=document.getElementById("printDiv").innerHTML;
	var originalContents=document.body.innerHTML;
	document.body.innerHTML=printContaints;
	window.print();
	document.body.innerHTML=originalContents;
}
/*********************************************Login Section***********************************************/
function show1(){
	document.getElementById("forget").style.display="block";
	document.getElementById("sign").style.display="none";
	document.getElementById("wlcom").style.display="none";
}
function show2(){
	document.getElementById("wlcom").style.display="none";
	document.getElementById("forget").style.display="none";
	document.getElementById("sign").style.display="block";
}