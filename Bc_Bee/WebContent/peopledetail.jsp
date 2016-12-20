﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html xmlns:wb="http://open.weibo.com/wb">
<head>
<script id="allmobilize" charset="utf-8" src="${ctx }/style/js/allmobilize.min.js"></script>
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="alternate" media="handheld"  />
<!-- end 云适配 -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>蜜蜂网-最专业的大学生招聘平台</title>
<meta property="qc:admins" content="23635710066417756375" />

<meta name="baidu-site-verification" content="QIQ6KC1oZ6" />

<script type="text/javascript">
var ctx = "h";
console.log(1);
</script>
<link rel="Shortcut Icon" href="h/images/favicon.ico">
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/style.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/external.min.css"/>
<link rel="stylesheet" type="text/css" href="${ctx }/style/css/popup.css"/>
<script src="${ctx }/style/js/jquery.1.10.1.min.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/style/js/jquery.lib.min.js"></script>
<script src="${ctx }/style/js/ajaxfileupload.js" type="text/javascript"></script>
<script src="${ctx }/style/js/jquery-hbzx.js" type="text/javascript"></script>

<script type="text/javascript">
var youdao_conv_id = 271546; 
</script> 
<script type="text/javascript" src="${ctx }/style/js/conv.js"></script>
</head>
<body>
<div id="body">
	<div id="header">
    	<div class="wrapper">
    		<a href="${ctx}/index.jsp" class="logo">
    			<img src="${ctx }/style/images/logo.png" width="229" height="43" alt="蜜蜂招聘-专注家教招聘" />
    		</a>
    		<ul class="reset" id="navheader">
    			<li ><a href="${ctx}/index.jsp">首页</a></li>
    			<li ><a href="${ctx }/jiaoyuan" >教员列表</a></li>
    			<li ><a href="${ctx }/joblist" >职位列表</a></li>
    			<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    		<li style="display: none;"><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
	    		<li><a href="${ctx}/publish/jump" rel="nofollow">发布职位</a></li>
	    	<%}else if(session.getAttribute("parent") == null && session.getAttribute("student") != null){ %>
	    		<li><a href="${ctx}/jianli/Init" rel="nofollow">我的简历</a></li>
	    	<%} %>
	    	</ul>
	    	<%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
	    	<ul class="loginTop">
            	<li><a href="${ctx}/login.jsp" rel="nofollow">登录</a></li> 
            	<li>|</li>
            	<li><a href="${ctx}/register.jsp" rel="nofollow">注册</a></li>
            </ul><%}else if(session.getAttribute("student") != null && session.getAttribute("parent") == null){ %>
		        <dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jianli.jsp">我的简历</a></dd>
                <dd style="display: none;"><a href="${ctx }/Delivery/Init">我投递的职位 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd style="display: none;"><a href="${ctx }/Invitation/Init">我收到的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_student.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%}else if(session.getAttribute("student") == null && session.getAttribute("parent") != null){ %>
            <dl class="collapsible_menu">
            	<dt>
           			<span>${name }&nbsp;</span> 
            		<span class="red dn" id="noticeDot-0"></span>
            		<i></i>
            	</dt>
                <dd style="display: none;"><a rel="nofollow" href="${ctx }/jiazhang/show">我的信息</a></dd>
                <dd style="display: none;"><a href="">我收到的简历 <span id="noticeNo" class="red dn">(0)</span></a></dd>
                <dd class="btm" style="display: none;"><a href="${ctx }/Invitation/send">我发出的邀请</a></dd>
                <dd style="display: none;"><a href="${ctx}/publish/jump">我要招人</a></dd>
                <dd style="display: none;"><a href="${ctx }/certification_parent.jsp">用户认证</a></dd>
                <dd class="logout" style="display: none;"><a rel="nofollow" href="${ctx }/login.jsp">退出</a></dd>
            </dl><%} %>
                                </div>
    </div><!-- end #header -->
    <div id="container">
                <div class="clearfix">
            <div class="content_l">
            <c:forEach items="${resume }" var="rm">
            	                <dl class="job_detail">
                    <dt>
                        <h1 title="内容运营">
                            <em></em>
                                                        	
                           	                           	${rm.TUName}
                        </h1>
                        
                                               	
                       	                       	<a class="inline jd_collection" href="#loginPop" title="登录">
                       		                       	</a>
                       	                    </dt>
                    <dd class="job_request">
                    	<span class="red">${rm.salary}</span>
                       	<span>${rm.discount}</span> 
                       	<span>${rm.pte} </span>
                       	<span> ${rm.ted}</span> <br />
                       	
                      	  个人签名:
                      	<div>发布时间：3天前发布</div>
                    </dd>
                    <dd class="job_bt">
                        <h3 class="description">详细信息</h3>
                        <p>工作信息： <br />1、优惠信息：${rm.discount}； <br />2、期望薪资：${rm.salary}； <br />3、授课科目：${rm.SGrade};<br/>4、授课方式：${rm.teaMode};<br/>5、授课区域：${rm.area};<br/></p>
                         <h3 class="description">个人介绍</h3><p>${rm.brief}</p>
                          <h3 class="description">评价：</h3>
                          <c:forEach items="${tuser1 }" var="t1">

                            <p>[${t1.CTime }]&nbsp;&nbsp;${t1.comCon }</p>
                          </c:forEach>
                    </dd>
                     
                                        	<dd class="unresume">
	                        <div>
	                        	你在蜜蜂还没有简历呢，你可以<a href="" target="_blank" title="完善在线简历">完善在线简历</a>，也可<a href="" title="登录">上传附件简历</a>直接投递
	                       	</div>
	                    </dd>
                                                            <div class="saoma saoma_btm">
                      	<div class="dropdown_menu">
							<div class="drop_l">
								<img src="${ctx }/style/images/job_qr_btm.png" width="131" height="131" />
															</div>
							<div class="drop_r">
								<div class="drop_title"></div>
								<p>
									想知道HR在看简历嘛？<br />
          							想在微信中收到面试通知？<br />
          							<span> 扫一扫，给你解决</span>
								</p>
							</div>
						</div>
                    </div>
                                        <dd>
                                        	                    			                        	<!--  <a href="#loginPop" title="登录" class="inline btn fr btn_apply">发出邀请</a>-->
	                        	                   		                	                </dd>
                </dl>
                                <div id="weibolist"></div>
                               
            </div>	
            <div class="content_r">
                <dl class="job_company">
                    <dt>
                    	<a href="" target="_blank">
                            <img class="b2" src="${ctx }/style/images/ff80808140ac5ed90140b953972e0215.png" width="80" height="80" alt="北京立方网信息技术有限公司" />
                            <div>
                                <h2 class="fl">
                                	                                  		${rm.TUName}
                                  	                                  	
                                  	                                    	<img src="${ctx }/style/images/valid.png" width="15" height="19" alt="蜜蜂认证企业" /> 
                                    	<span class="dn">蜜蜂认证教员</span>
                                                                        
                                </h2>
                            </div>
                        </a>
                         </c:forEach>
                    </dt>
                    <!-- <dd>
                    	<ul class="c_feature reset">
                        	<li><span>领域</span> 大学生家教</li>
                        	<li><span>规模</span> 5-20人</li>
                        	<li>
                        		<span>主页</span> 
                        		           							<a href="${ctx }/index.jsp" target="_blank" title="http://L99.com" rel="nofollow">http://littleBee.com</a>
           						                        	</li>
                        </ul>
                        
                        <h4>发展阶段</h4>
                        <ul class="c_feature reset">
                        	<li><span>目前阶段</span> A轮</li>
                        	                        	<li><span>投资机构</span> IDG(A轮)，腾讯(A轮)</li>
                        	                        </ul>
                        
                        <!--	                    	<h4>公司产品</h4>
	                        <ul class="c_feature reset">
	                        		                        		<li><span>在哪</span></li>
	                        		                        		<li><span>立方网</span></li>
	                        		                        		<li><span>立方飞鸽</span></li>
	                        		                        </ul>
                                                
                       	<h4>公司标签</h4>
                        <ul class="company_tags reset" id="hasLabels">
                        	                            	<li><span>专业主厨</span></li>
                                                        	<li><span>帅哥多</span></li>
                                                        	<li><span>扁平管理</span></li>
                                                        	<li><span>弹性工作</span></li>
                                                        	<li><span>岗位晋升</span></li>
                                                        	<li><span>领导好</span></li>
                                                       <li class="link"><a>编辑</a></li>
                        </ul>
                        <div class="clear"></div>
                        <div id="addLabel" class="addLabel dn">
                            <input type="text" class="fl" id="label" name="label" placeholder="添加自定义标签" />	
                            <input type="submit" id="add" value="贴上" />
                        </div> -->
                       	
                       	                       <!--  	<h4>工作地址</h4>
                       	<div>石家庄市裕华区河北师范大学软件学院</div>
                       	<div id="smallmap"></div>
                       	<a href="javascript:;" id="mapPreview">查看完整地图</a>
                       	                    </dd>-->
                </dl>
<<<<<<< HEAD
                <div id="myRecommend_jd">
            		<h2>可能适合你的职位 <i>匹配度</i></h2>
            		<ul class="reset">
            			            			<li>
            				<a target="_blank" href="">
								<span class="f14">小学数学</span>
								<span class="c7">家长B</span>
								<em>92%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="">
								<span class="f14">初中数学</span>
								<span class="c7">家长C</span>
								<em>92%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="">
								<span class="f14">小学语文</span>
								<span class="c7">家长D</span>
								<em>89%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="">
								<span class="f14">小学英语</span>
								<span class="c7">家长E</span>
								<em>88%</em>
							</a>
            			</li>
            			            			<li>
            				<a target="_blank" href="">
								<span class="f14">初中英语</span>
								<span class="c7">家长F</span>
								<em>88%</em>
							</a>
            			</li>
            			            		</ul>
            		            		<a target="_blank" class="more" href="">更多推荐职位&gt;&gt;</a>
            		            	</div><!--end #myRecommend-->
				               
            
                                <a href="h/subject/s_zhouyou.html?utm_source=BD__lagou&utm_medium=&utm_campaign=zhouyou" target="_blank" class="eventAd">
=======
                                <a href="" target="_blank" class="eventAd">
>>>>>>> 9052fa238ade5d44c0c5e8828d313a2bedbbbbfc
                  <img src="${ctx }/style/images/zhouyou.jpg" width="280" height="135" />
                </a>
            </div>
       	</div>                    
      <input type="hidden" value="" name="userid" id="userid" />
      <input type="hidden" value="" name="type" id="resend_type" />
      <input type="hidden" value="140204"  id="jobid" />
      <input type="hidden" value="683"  id="companyid" />
      <input type="hidden" value="" id="positionLng" />
      <input type="hidden" value="" id="positionLat" />
	  <%if(session.getAttribute("student") == null && session.getAttribute("parent") == null){ %>
		<div id="loginToolBar">
		<div>
			<em></em>
			<img src="${ctx }/style/images/footbar_logo.png" width="138" height="45" />
			<span class="companycount"></span>
			<span class="positioncount"></span>
			<a href="${ctx }/login.jsp" class="bar_login inline" title="登录"><i></i></a>
			<div class="right">
				<a href="register.html?from=jobs_footerbar" onclick="_hmt.push(['_trackEvent', 'button', 'click', 'register'])" class="bar_register" id="bar_register" target="_blank"><i></i></a>
			</div>
			<input type="hidden" id="cc" value="16064" />
			<input type="hidden" id="cp" value="96931" />
		</div>
	</div><%}%>
		<div id="tipOverlay" ></div>
<!-------------------------------------弹窗lightbox  ----------------------------------------->
<div style="display:none;">
	<!-- 设置默认投递简历 -->
	<div id="setResume" class="popup" style="height:280px;">
	    <table width="100%">
	    	<tr>
	    		<td class="f18 c5">请选择你要投出去的简历：</td>
	    	</tr>
	    	<tr>
	        	<td>
                    <form  id="resumeSetForm" class="resumeSetForm">
	            		<label class="radio">
	            			<input type="radio" name="resumeName" class="resume1" value="1"  />
	            			在线简历：
	            				            				<span class="red">在线简历还不完善，请完善后选择投递</span>
	            				            		</label>
            			<div class="setBtns">
            											<a href="${ctx }/jianli/jiben" target="_blank">修改</a>
            			</div>
	            		<div class="clear"></div>
	            		<label class="radio">
	            			<input type="radio" name="resumeName" class="resume0" value="0"  />
	            			附件简历：
	            				            				<span class="uploadedResume red">暂无附件简历</span>
	            				            		</label>
	            		<div class="setBtns">
	            				            				<a href="h/nearBy/downloadResume" class="downloadResume dn">下载</a> <span class="dn">|</span>
            					<a target="_blank" title="上传附件简历" class="reUpload">上传附件简历</a>
	            				            			
            				<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M"  name="newResume" id="reUploadResume1" 
	                         type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','reUploadResume1')" />
            			</div>
            			<div class="clear"></div>
            			<span class="error" style="display:none;">只支持word、pdf、ppt、txt、wps格式文件，请重新上传</span>
	            		<label class="bgPink">默认使用此简历直接投递，下次不再提示</label>
	            		<span class="setTip error"></span>
	            		<input type="submit" class="btn_profile_save btn_s" value="保存设置" />
	            	</form>
	            </td>
	        </tr>
	    </table>
	</div><!--/#setResume-->

<!-- 投递简历时  - 设置默认投递简历 -->
	<div id="setResumeApply" class="popup" style="height:280px;">
	    <table width="100%">
	    	<tr>
	    		<td class="f18 c5">请选择你要投出去的简历：</td>
	    	</tr>
	    	<tr>
	        	<td>
                    <form  id="resumeSendForm" class="resumeSetForm">
	            		<label class="radio">
	            			<input type="radio" name="resumeName" class="resume1" value="1"  />
	            			在线简历：
	            				            				<span class="red">在线简历还不完善，请完善后选择投递</span>
	            				            		</label>
            			<div class="setBtns">
            											<a href="${ctx }/jianli/jiben" target="_blank">修改</a>
            			</div>
	            		<div class="clear"></div>
	            		<label class="radio">
	            			<input type="radio" name="resumeName" class="resume0" value="0"  />
	            			附件简历：
	            				            				<span class="uploadedResume red">暂无附件简历</span>
	            				            		</label>
	            		<div class="setBtns">
	            				            				<a href="h/nearBy/downloadResume" class="downloadResume dn">下载</a> <span class="dn">|</span>
            					<a target="_blank" title="上传附件简历" class="reUpload">上传附件简历</a>
	            				            			<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M"  name="newResume" id="reUploadResume2"
	                        type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','reUploadResume2')" />
            			</div>
            			<div class="clear"></div>
            			<span class="error" style="display:none;">只支持word、pdf、ppt、txt、wps格式文件，请重新上传</span>
	            		<label class="bgPink"><input type="checkbox" checked="checked" />默认使用此简历直接投递，下次不再提示</label>
	            		<span class="setTip error"></span>
	            		<input type="submit" class="btn_profile_save btn_s" value="确认投递简历" />
	            	</form>
	            </td>
	        </tr>
	    </table>
	</div><!--/#setResumeApply-->

	<!-- 上传简历 -->
	<div id="uploadFile" class="popup">
	    <table width="100%">
	    	<tr>
	        	<td align="center">
	                <form>
	                    <a href="javascript:void(0);" class="btn_addPic">
	                    	<span>选择上传文件</span>
	                        <input tabindex="3" title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3" name="newResume" id="resumeUpload" 
	                        class="filePrew" type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload')" />
	                    </a>
	                </form>
	            </td>
	        </tr>
	    	<tr>
	        	<td align="left">支持word、pdf、ppt、txt、wps格式文件<br />文件大小需小于10M</td>
	        </tr>
	        <tr>
	        	<td align="left" style="color:#dd4a38; padding-top:10px;">注：若从其它网站下载的word简历，请将文件另存为.docx格式后上传</td>
	        </tr>
	    	<tr>
	        	<td align="center"><img src="${ctx }/style/images/loading.gif" width="55" height="16" id="loadingImg" style="visibility: hidden;" alt="loading" /></td>
	        </tr>
	    </table>
	</div><!--/#uploadFile-->
	
	<!-- 简历上传成功 -->
	<div id="uploadFileSuccess" class="popup">
     	<h4>简历上传成功！</h4>
         <table width="100%">
             <tr>
                 <td align="center"><p>你可以将简历投给你中意的公司了。</p></td>
             </tr>
         	<tr>
             	<td align="center"><a href="javascript:top.location.reload();" class="btn_s">确&nbsp;定</a></td>
             </tr>
         </table>
     </div><!--/#uploadFileSuccess-->
	
	<!-- 登录框 -->
	<div id="loginPop" class="popup" style="height:240px;">
       	<form id="loginForm">
			<input type="text" id="email" name="email" tabindex="1" placeholder="请输入登录邮箱地址" />
			<input type="password" id="password" name="password" tabindex="2" placeholder="请输入密码" />
			<span class="error" style="display:none;" id="beError"></span>
		    <label class="fl" for="remember"><input type="checkbox" id="remember" value="" checked="checked" name="autoLogin" /> 记住我</label>
		    <a href="h/reset.html" class="fr">忘记密码？</a>
		    <input type="submit" id="submitLogin" value="登 &nbsp; &nbsp; 录" />
		</form>
		<div class="login_right">
			<div>还没有拉勾帐号？</div>
			<a href="${ctx }/register.jsp" class="registor_now">立即注册</a>
		    <div class="login_others">使用以下帐号直接登录:</div>
		    <a href="h/ologin/auth/sina.html" target="_blank" class="icon_wb" title="使用新浪微博帐号登录"></a>
		    <a href="h/ologin/auth/qq.html" class="icon_qq" target="_blank" title="使用腾讯QQ帐号登录" ></a>
		</div>
    </div><!--/#loginPop-->
    
    <!-- 投简历成功前填写基本信息 -->
    <style>
    #cboxContent{overflow:visible;}
    #colorbox, #cboxOverlay, #cboxWrapper{overflow:visible;}
    </style>
    <div id="infoBeforeDeliverResume" class="popup" style="height:300px; overflow:visible;">
    	<div class="f18">为方便所投递企业HR查阅，请确认个人信息</div>
    	<form id="basicInfoForm" method="post">
	        <table width="100%">
	            <tr>
	                <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="text" name="name" placeholder="姓名" />
				    </td>
				    <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="hidden" name="degree" value="" id="degree" />
				        <input type="button" class="profile_select_190 profile_select_normal" id="select_degree"  value="最高学历"  />
						<div id="box_degree" class="boxUpDown boxUpDown_190 dn"></div> 
				    </td>
	            </tr>
	            <tr>
	                <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="hidden" name="workyear" value="" id="workyear" />
				        <input type="button" class="profile_select_190 profile_select_normal" id="select_workyear"  value="工作年限" />
						<div id="box_workyear" class="boxUpDown boxUpDown_190 dn"></div> 
				    </td>
				    <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="hidden" name="expectCity" value="" id="expectCity" />
				        <input type="button" class="profile_select_190 profile_select_normal" id="select_expectCity" value="期望工作城市"  />
						<div id="box_expectCity" class="boxUpDown boxUpDown_596 dn"></div> 
				    </td>
	            </tr>
	            <tr>
	                <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="text" name="tel"  placeholder="联系电话" />
				    </td>
				    <td valign="middle">
				        <span class="redstar">*</span>
				    </td> 
				    <td>
				        <input type="text" name="email"  placeholder="邮箱地址" />
				    </td>
	            </tr>
	        	<tr>
	        		<td></td> 
	            	<td colspan="3">
	            		<input type="hidden" name="type" value="" />
	            		<input type="submit" class="btn" value="确认并投递" />
	            	</td>
	            </tr>
	        </table>
		</form>
    </div><!--/#infoBeforeDeliverResume-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div id="fileResumeUpload" class="popup">
        <table width="100%">
            <tr>
                <td>
                	<div class="f18 mb10">请上传标准格式的word简历</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		操作说明：<br />
                		打开需要上传的文件 - 点击文件另存为 - 选择.docx - 保存
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a  class="inline btn" href="#uploadFile" title="上传附件简历">重新上传</a>
            	</td>
            </tr>
        </table>
    </div><!--/#fileResumeUpload-->
    
    <!-- 上传附件简历操作说明-重新上传 -->
    <div id="fileResumeUploadSize" class="popup">
        <table width="100%">
            <tr>
                <td>
                	<div class="f18 mb10">上传文件大小超出限制</div>
                </td>
            </tr>
            <tr>
                <td>
                	<div class="f16">
                		提示：<br />
                		单个附件不能超过10M，请重新选择附件简历！
                	</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<a  class="inline btn" href="#uploadFile" title="上传附件简历">重新上传</a>
            	</td>
            </tr>
        </table>
    </div><!--/#deliverResumeConfirm-->
    
    <!-- 投简历成功前二次确认 -->
    <div id="deliverResumeConfirm" class="popup">
        <table width="100%">
            <tr>
                <td class="msg">
                	<div class="f18">你的简历中：</div>
                	<div class="f16 count"><span class="f18 confirm_field">学历、工作年限、期望工作城市</span>与该职位要求不匹配，确认要投递吗？</div>
                </td>
            </tr>
        	<tr>
            	<td align="center">
            		<input type="hidden" name="type" value="" />
            		<a href="javascript:sendResume(,140204,true,true);" class="btn">确认投递</a>
            		<a href="javascript:;" class="btn_s">放弃投递</a>
            		<a href="javascript:;" class="f20 edit_field">修改信息</a>
            	</td>
            </tr>
        </table>
    </div><!--/#deliverResumeConfirm-->
    
     <!-- 投简历成功 -->
    <div id="deliverResumesSuccess" class="popup" style="width:440px;padding-bottom:10px;">
        <table width="100%">
            <tr class="drawGGJ">
                <td align="center">
                	<p class="font_16 count"></p>
                	<p class="font_16 share dn">邀请好友成功注册拉勾，可提升每日投递量 &nbsp;&nbsp; <a href="" target="_blank">邀请好友>></a></p>
                </td>
            </tr>
        	<tr class="drawQD">
            	<td align="center"><a href="javascript:top.location.reload();" class="btn_s">确&nbsp;定</a></td>
            </tr>
            <tr class="weixinQR dn">
            	<td>
            		<div class="weixin">
                       	<div class="qr">
                       		<img src="" width="120" height="120" />
                       		
                       		<div>[仅限本人使用]</div>
                       	</div>
                       	<div class="qr_text">
						              想知道HR是否看过你的简历？<br />
						              想在微信中收到面试通知？<br />
						    <span><< 微信扫一扫，一并解决</span>
                       	</div>
                   	</div>
            	</td>
            </tr>
        </table>
    </div><!--/#deliverResumesSuccess-->
    
    <!-- 投递时，一个简历都没有弹窗 -->
	<div id="sendNoResume" class="popup">
	    <table width="100%">
	    	<tr>
	    		<td class="f18 c5" align="center">你还没有可以投递的简历呢</td>
	    	</tr>
	    	<tr>
	    		<td class="c5" align="center">请上传附件简历或填写在线简历后再投递吧~</td>
	    	</tr>
	    	<tr>
	        	<td align="center">
                   <form>
                        <a href="javascript:void(0);" class="btn_addPic">
                        	<span>选择上传文件</span>
                        	<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3" name="newResume" id="resumeUpload2" 
	                        class="filePrew" type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload2')" />
                        </a>
                    </form>
                    <a class="btn" href="" target="_blank">完善在线简历</a>
	            </td>
	        </tr>
	    </table>
	</div><!--/#sendNoResume-->
    
    <!-- 没有简历请上传 -->
    <div id="deliverResumesNo" class="popup">
        <table width="100%">
            <tr>
                <td align="center"><p class="font_16">你在拉勾还没有简历，请先上传一份</p></td>
            </tr>
        	<tr>
            	<td align="center">
                    <form>
                        <a href="javascript:void(0);" class="btn_addPic">
                        	<span>选择上传文件</span>
                        	<input title="支持word、pdf、ppt、txt、wps格式文件，大小不超过10M" size="3" name="newResume" id="resumeUpload1" 
	                        class="filePrew" type="file" onchange="file_check(this,'h/nearBy/updateMyResume.json','resumeUpload1')" />
                        </a>
                    </form>
                </td>
            </tr>
        	<tr>
            	<td align="center">支持word、pdf、ppt、txt、wps格式文件，大小不超过10M</td>
            </tr>
        </table>
    </div><!--/#deliverResumesNo-->
    
      <!--
    	激活邮箱
		登录邮箱未验证时，
	 	点击上传附件简历、申请职位、订阅职位、发布职位出现该弹窗
	-->	
	<div id="activePop" class="popup" style="height:240px;">
       	 <h4>登录邮箱未验证</h4>
       	<p>请验证你的登录邮箱以使用拉勾网的所有功能！       	</p>
       	<p>我们已将验证邮件发送至：<a></a>，请点击邮件内的链接完成验证。</p>
                <p><a href="javascript:void(0)" id="resend">重新发送验证邮件 </a> | <a href="register.html" target="_blank"> 换个邮箱？ </a>  	</p>
    </div><!--/#activePop-->    
    
     <!--
    	激活邮箱
		验证邮件发送成功弹窗
	-->	
    <div id="resend_success" class="popup">
       	 <p>我们已将激活邮件发送至：<a></a>，请点击邮件内的链接完成验证。</p>
       	    </div><!--/#resend_success-->
    
    <!--地图弹窗-->	
        <div id="baiduMap" class="popup">
	        <div id="allmap"></div>
        </div><!--/#baiduMap-->
</div>
<!------------------------------------- end ----------------------------------------->

<script type="text/javascript" src="${ctx }/style/js/job_detail.js"></script>
<script type="text/javascript" src="${ctx }/style/js/count.js"></script>

<!-- <script type="text/javascript">
var options = {
    	"snsId": "snwb",
    	"uid": "",
    	"token": "",
    	"openId": "",
    	"appKey": "",
    	"merchantId": "11253",
    	"merchantType": "news",
    	"socialLoginUrl_sina": ctx+"/ologin/auth/sina.html",
    	"socialLoginUrl_qq": "",
    	"weiboId_sina": "3619164344010985",
    	"weiboId_qq": "",
    	"socialAllUrl": ctx+"/user/hbzx.html",
    	"productId": "140204",
    	"productCategory": "",
    	"productName": "内容运营",
    	"productArea": "武汉",
    	"productPrice": "",
    	"productUrl": ctx+"/jobs/140204.html",
    	"productImage": ctx+"/upload/logo/ff80808140ac5ed90140b953972e0215.png",
    	"excerpt": "武汉 / 全职 / 4k-6k / 经验3-5年 / 本科及以上 / 职位诱惑 : 大家都来了 你还在等什么！！",
    	"sendContent":"我觉得这个职位不错，你觉得咋样？",
    	"shareContent":"请输入你对此职位的评论",
    	"autoSend": false,
    	"load": true
　　}
</script>
<script src="${ctx }/style/js/common.js" type="text/javascript"></script> -->
<script>
$(function(){
	$('#weibolist .cookietxte').text('推荐本职位给好友');
	$(document).bind('cbox_complete', function(){ 
		hbzxJQ("#gaosutapt .pttui a").trigger("click"); 
		hbzxJQ("#mepingpt .pttui a").trigger("click"); 
	});
	$('#cboxOverlay').bind('click',function(){
		top.location.reload();
	});
	$('#colorbox').on('click','#cboxClose',function(){
		if($(this).siblings('#cboxLoadedContent').children('div').attr('id') == 'deliverResumesSuccess' || $(this).siblings('#cboxLoadedContent').children('div').attr('id') == 'uploadFileSuccess'){
			top.location.reload();
		}
	});
	})
</script>

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=3d6a9f4b807441569414b01eecc20959"></script>
<script type="text/javascript">
		//百度地图API功能
		var sMap = new BMap.Map("smallmap");
		sMap.enableScrollWheelZoom(true);
		
		if($('#positionLat').val() && $('#positionLng').val()){
			var sPoint = new BMap.Point($('#positionLng').val(),$('#positionLat').val());
			sMap.centerAndZoom(sPoint,12);
			sMap.addOverlay(new BMap.Marker(sPoint));              // 将标注添加到地图中
			
		}else{
			// 创建地址解析器实例
			var sMyGeo = new BMap.Geocoder();
			// 将地址解析结果显示在地图上,并调整地图视野
			sMyGeo.getPoint("石家庄市裕华区河北师范大学软件学院", function(sPoint){
			  if (sPoint) {
				  sMap.centerAndZoom(sPoint, 16);
				  sMap.addOverlay(new BMap.Marker(sPoint));
			  }
			}, "石家庄");
		}

		/*弹窗大地图*/
		var map = new BMap.Map("allmap");
		map.addControl(new BMap.NavigationControl());
		map.addControl(new BMap.MapTypeControl());
		map.addControl(new BMap.OverviewMapControl());
		map.enableScrollWheelZoom(true);
		// 创建地址解析器实例
		var gc = new BMap.Geocoder();
		$(function(){
			$('#mapPreview').bind('click',function(){
				$.colorbox({inline:true, href:"#baiduMap",title:"工作地址"});
				var address = "石家庄市裕华区河北师范大学软件学院";
				var city = "石家庄";
				var lat = $('#positionLat').val();
				var lng = $('#positionLng').val();
			    map.setCurrentCity(city);
			    map.setZoom(12);
				if(lat && lng){
					var p = new BMap.Point(lng, lat);
					var marker = new BMap.Marker(p);  // 创建标注
					map.addOverlay(marker);              // 将标注添加到地图中
					setTimeout(function(){
						map.centerAndZoom(p, 15);
					},1000);
					map.setCenter(p);
					map.setZoom(15);
					var sContent =
						"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+city+"</h4>" + 
						"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+address+"</p>" + 
						"</div>";
					 var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
				 	//图片加载完毕重绘infowindow
			 		marker.openInfoWindow(infoWindow);
		 		}else{
					gc.getPoint(address, function(point){
						  if (point) {
							  	var p = new BMap.Point(point.lng, point.lat);
								var marker = new BMap.Marker(p);  // 创建标注
								map.addOverlay(marker);              // 将标注添加到地图中
								setTimeout(function(){
									map.centerAndZoom(p, 15);
								},1000);
								map.setZoom(14);
								var sContent =
									"<h4 style='margin:0 0 5px 0;padding:0.2em 0'>"+city+"</h4>" + 
									"<p style='margin:0;line-height:1.5;font-size:13px;text-indent:2em'>"+address+"</p>" + 
									"</div>";
								 var infoWindow = new BMap.InfoWindow(sContent);  // 创建信息窗口对象
							 	//图片加载完毕重绘infowindow
						 		marker.openInfoWindow(infoWindow);
						  }
					}, city);
				}
				
				
			});
	
		});
</script>
			<div class="clear"></div>
			<input type="hidden" id="resubmitToken" value="6e1925fdbe7142468f154abd1d33f5a8" />
	    	<a id="backtop" title="回到顶部" rel="nofollow"></a>
	    </div><!-- end #container -->
	</div><!-- end #body -->
	<div id="footer">
		<div class="wrapper">
			<a href="#" target="_blank" rel="nofollow">联系我们</a>
		    <a href="#" target="_blank">家教招聘导航</a>
		    <a href="#" target="_blank" rel="nofollow">拉勾微博</a>
		    <a class="footer_qr" href="#" rel="nofollow">拉勾微信<i></i></a>
			<div class="copyright">&copy;2013-2014 Lagou <a target="_blank" href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action">京ICP备14023790号-2</a></div>
		</div>
	</div>

<script type="text/javascript" src="${ctx }/style/js/core.min.js"></script>
<script type="text/javascript" src="${ctx }/style/js/popup.min.js"></script>

<!--  -->

</body>
</html>