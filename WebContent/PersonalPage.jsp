<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="/struts-dojo-tags" prefix="sx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>�����վ</title>
        <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>

<body>

<header id="header">
	<a href="index.jsp" class="logo"><strong>�����վ</strong> ������Ŀ���֮��</a>
	<ul class="icons">
		<li><a href="UserLogin.jsp" ><span class="label">��½</span></a></li>
		<li><a href="UserRegister.jsp" ><span class="label">ע��</span></a></li>
		<li><a href="AdminTest.jsp" ><span class="label">��Ϊ����Ա</span></a></li>
		<li><a href="publishAct.jsp"><span class="label">�����</span></a></li>
        <s:url id="showPersonalPage_url" action="show_ShowPersonalPage"></s:url>
		<li><s:a href="%{showPersonalPage_url}"><span class="label">�ҵ��˻�</span></s:a></li>
	</ul>
</header>

<section>

	<header class="main">
		<h1> </h1>
		<s:iterator  value="#session.user" id="item">

				<h1><s:property value="name"/></h1>
			
		</s:iterator>
	</header>
	
	<div class="row 200%">
	
	<div class="6u 12u$(medium)">
		<div class="row">
			<div class="6u 12u$(small)">
		
				<h4>���˻�����Ϣ</h4>
				<ul class="alt">
					<s:iterator  value="#session.user" id="item">
					<li>�꼶��<s:property value="grade"/></li>
					<li>רҵ��<s:property value="major"/></li>
					<li>QQ��<s:property value="QQ"/></li>
					</s:iterator>
				</ul>
		
			</div>
		</div>
	</div>
	
	<div class="6u$ 12u$(medium)">
		<div class="box">
			<h3>��������</h3>
			<s:iterator  value="#session.user" id="item">
			<p><s:property value="message"/></p>
			</s:iterator>
		</div>
	</div>
	
	</div>
	
	<hr class="major" />
	
	<h2>�ҷ����Ļ</h2>
	
	 <div class="posts">
	 	<s:iterator  value="#session.MyActivity" id="item">
	 		<article>
	 			<s:url id="checkAct_url" action="show_ShowActInfo" >
   					<s:param name="activity.Id">
    		  			<s:property value="Id"/>
  			 		</s:param>
				</s:url>
					
				<s:a href="%{checkAct_url}" cssClass="image">
					<s:if test="img!=null">
						<img src="image/${img}" alt="" />
					</s:if>
					<s:else>
						<img src="img/bg.jpg" alt="" />
					</s:else>
				</s:a>
            	<h3> <s:property value="name"/> </h3>
				<p> ��ʼʱ�䣺<s:property value="begin"/> </p>
                <p> ����ʱ�䣺<s:property value="end"/> </p>
				<ul class="actions">
					<li><s:a href="%{checkAct_url}" cssClass="button">�鿴����</s:a></li>
				</ul>
	 		</article>
	 	</s:iterator>
	 </div>
	 
	 <hr class="major" />
	
	<h2>�Ҳμӵ�С��</h2>
	
	 <div class="posts">
	 	<s:iterator  value="#session.teamList" id="item">
	 		<article>
	 			<div class="box">
					<h3> <s:property value="name"/> </h3>
		
					<p>�������ԣ� <s:property value="message"/></p>
					<p>����״̬ 
		
						<s:if test="state == 0">
						��Ƹ��Ա�С�����
						</s:if>
						<s:else>
						������˼��������Ա�ˡ�O(��_��)O
						</s:else>
		
					</p>

			
					<s:url id="checkTeam_url" action="show_ShowTeamInfo" >
 
   							<s:param name="team.Id">
 
    		  					<s:property value="Id"/>

  			 				</s:param>
 
					</s:url>

					<p> <s:a href="%{checkTeam_url}" cssClass="button"> �鿴������ϸ��Ϣ </s:a>
					
					
					<s:url id="checkAppList_url" action="app_ShowAppList" >
 
   						<s:param name="team.Id">
 
    		  				<s:property value="Id"/>

  			 			</s:param>
 
					</s:url>
		
					<s:a href="%{checkAppList_url}" cssClass="button"> �鿴�����б�  </s:a>  </p>
				</div>
	 		</article>
	 	</s:iterator>
	 </div>
	 
	 <hr class="major" />
	
	<h2>���������С��</h2>
	
	 <div class="posts">
	 	<!--<s:iterator  value="#session.appTeamList" id="item">
	 		<article>
	 			<div class="box">
					<h3> <s:property value="name"/> </h3>
		
					<p>�������ԣ� <s:property value="message"/></p>
					<p>����״̬ 
		
						<s:if test="state == 0">
						��Ƹ��Ա�С�����
						</s:if>
						<s:else>
						������˼��������Ա�ˡ�O(��_��)O
						</s:else>
		
					</p>

			
					<s:url id="checkTeam_url" action="show_ShowTeamInfo" >
 
   							<s:param name="team.Id">
 
    		  					<s:property value="Id"/>

  			 				</s:param>
 
					</s:url>

					<p> <s:a href="%{checkTeam_url}"> �鿴������ϸ��Ϣ </s:a>
	 			</div>
	 		</article>
	 	</s:iterator>-->
	 	<s:iterator  value="#session.auditing_applications" id="item">
	 		<article>
	 			<div class="box">
	 				<h3> <s:property value="date"/> </h3>
	 				<p> ������飺<s:property value="applied_team.name"/> </p>
	 				<p> <s:property value="content"/> </p>
	 				
	 				<s:url id="checkTeam_url" action="show_ShowTeamInfo" >
 
   							<s:param name="team.Id">
 
    		  					<s:property value="team"/>

  			 				</s:param>
 
					</s:url>

					<p> <s:a href="%{checkTeam_url}" cssClass="button"> �鿴������ϸ��Ϣ </s:a>
	 				
	 			</div>
	 		</article>
	 	</s:iterator>
	 </div>
	 
	 <hr class="major" />
	
	<h2>���ܾ�������</h2>
	
	 <div class="posts">
	 	<!--<s:iterator  value="#session.failTeamList" id="item">
	 		<article>
	 			<div class="box">
	 				<h3> <s:property value="name"/> </h3>
		
					<p>�������ԣ� <s:property value="message"/></p>
					<p>����״̬ 
		
						<s:if test="state == 0">
						��Ƹ��Ա�С�����
						</s:if>
						<s:else>
						������˼��������Ա�ˡ�O(��_��)O
						</s:else>
		
					</p>

			
					<s:url id="checkTeam_url" action="show_ShowTeamInfo" >
 
   							<s:param name="team.Id">
 
    		  					<s:property value="Id"/>

  			 				</s:param>
 
					</s:url>

					<p> <s:a href="%{checkTeam_url}"> �鿴������ϸ��Ϣ </s:a>
	 			</div>
	 		</article>
	 	</s:iterator> -->
	 	<s:iterator  value="#session.denied_applications" id="item">
	 		<article>
	 			<div class="box">
	 				<h3> <s:property value="date"/> </h3>
	 				<p> ������飺<s:property value="applied_team.name"/> </p>
	 				<p> <s:property value="content"/> </p>
	 				
	 				<s:url id="checkTeam_url" action="show_ShowTeamInfo" >
 
   							<s:param name="team.Id">
 
    		  					<s:property value="team"/>

  			 				</s:param>
 
					</s:url>

					<p> <s:a href="%{checkTeam_url}" cssClass="button"> �鿴������ϸ��Ϣ </s:a>
	 				
	 			</div>
	 		</article>
	 	</s:iterator>
	 </div>
	
</section>
</body>
</html>