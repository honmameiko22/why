


function checkproer()
{
	num=0;
	for(num=0;num<3;num++)
	{
		var parentDiv = document.createElement("div");//创建父div
		parentDiv.className="cd-timeline-block";//给父div设置class属性  
		document.getElementById("cd-timeline").appendChild(parentDiv);
		var sonDiv1 = document.createElement("div");//创建子div1  
		sonDiv1.className="cd-timeline-content service-box-content";//给子sonDiv1设置class属性  
		//传进来的东西写里面
		sonDiv1.innerText="<p>Timeline is free responsive template by <span class='blue'>template</span><span class='green'>mo</span>. This layout is based on Bootstrap v3.1.1 and you may use this template for any website. Credit goes to <a rel='nofollow' href='#'>Unsplash</a> for all images.</p>";////给子sonDiv1的文本节点赋值  
		parentDiv.appendChild(sonDiv1);//将子sonDiv1赋值给父parentDiv  
		var sonDiv2 = document.createElement("div");//创建子div1  
		sonDiv2.className="cd-timeline-img cd-picture";//给子sonDiv1设置class属性  
		sonDiv2.innerHTML="<img src='images/third-icon.png' alt='Picture'>";////给子sonDiv1的文本节点赋值  
		parentDiv.appendChild(sonDiv2);//将子sonDiv1赋值给父parentDiv 	 
	}
 
}


