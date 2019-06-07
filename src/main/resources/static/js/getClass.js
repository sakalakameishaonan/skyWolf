// JavaScript Document
function getClass(oParent,sClass)
{
	var aResult=[];
	var aEle=oParent.getElementsByTagName('*');
	for(var i=0;i<aEle.length;i++)
	{
		if(aEle[i].className==sClass)
		{
			aResult.push(aEle[i]);
		}
	}
	return aResult;
}