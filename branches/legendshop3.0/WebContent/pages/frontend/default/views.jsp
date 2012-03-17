<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file='/pages/common/taglib.jsp'%>
<jsp:include flush="true" page="/top${applicationScope.WEB_SUFFIX}" />
<meta name="keywords" content="${prod.keyWord}"/>
<meta name="description" content="${prod.keyWord}"/>
<div id="bodyer">
<table width="954px" align="center" cellpadding="0" cellspacing="0" style="margin-top: 4px">
  <tr> 
    <td valign="top">
     <!-- adv -->
    <c:forEach items="${requestScope.PROD_ADV_TOP}" var="adv">
	<table width="205px" cellpadding="0" cellspacing="0" style="margin-bottom: 4px; margin-right: 5px;" class="picstyle">
		<tr><td><a href="${adv.linkUrl}"><img src="${pageContext.request.contextPath}/photoserver/photo/${adv.picUrl}" title="${adv.title}" width="100%"/></a></td></tr>
	 </table>
	</c:forEach>
			<!-- topnews -->
            <jsp:include page="/topnews${applicationScope.WEB_SUFFIX}?topsortnews=1"/>  
            <!-- adv -->
         <c:forEach items="${requestScope.PROD_ADV_MID1}" var="adv1">
			<table width="205px" cellpadding="0" cellspacing="0" style="margin-bottom: 4px; margin-right: 5px;" class="picstyle">
			  <tr><td><a href="${adv1.linkUrl}"><img src="${pageContext.request.contextPath}/photoserver/photo/${adv1.picUrl}" title="${adv1.title}" width="100%"/></a></td></tr>
			 </table>
			</c:forEach> 
            <!-- topsort -->
            <jsp:include flush="true" page="/topsort${applicationScope.WEB_SUFFIX}" />
             <!-- adv -->
              <c:forEach items="${requestScope.PROD_ADV_MID2}" var="adv2">
				<table width="205px" cellpadding="0" cellspacing="0" style="margin-bottom: 4px; margin-right: 5px;" class="picstyle">
				  <tr><td><a href="${adv2.linkUrl}"><img src="${pageContext.request.contextPath}/photoserver/photo/${adv2.picUrl}" title="${adv2.title}" width="100%"/></a></td></tr>
				 </table>
			</c:forEach> 
             <!-- hot product -->
            <jsp:include page="/hoton${applicationScope.WEB_SUFFIX}?sortId=${prod.sortId}" />
             <!-- adv -->
           <c:forEach items="${requestScope.PROD_ADV_BOTTOM}" var="adv3">
			<table width="205px" cellpadding="0" cellspacing="0" style="margin-bottom: 4px; margin-right: 5px;" class="picstyle">
			 <tr><td><a href="${adv3.linkUrl}"><img src="${pageContext.request.contextPath}/photoserver/photo/${adv3.picUrl}" title="${adv3.title}" width="100%"/></a></td></tr>
			 </table>
			</c:forEach> 
 
    </td>
    <td valign="top" width="744px"><%@ include file="productDetail.jsp"%></td> 
  </tr>
</table>
</div>
<%@ include file="copy.jsp"%>