<%@ include file="/includes/header.html" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="w_t" uri = "/WEB-INF/tlds/winkler_thompson" %>
  <!--
  Copyright (c) 2015 Michael Winkler & Mitchell Thompson
  -->
  <body>
    <main>
      <h1>Future Value Calculator</h1>
      <div id ="flexible">
        <div id="result-labels">
          <label>Investment Amount:</label><br>
          <label>Yearly Interest Rate:</label><br>
          <label>Number of Years:</label><br>
          <a href ="index.jsp">Return to Calculator</a>
        </div>
        <div>
          <jsp:useBean id="futureValue" scope="request" class="edu.elon.business.FutureValue"/>
          <jsp:getProperty name="futureValue" property="formattedInvestmentAmount"/><br>
          <jsp:getProperty name="futureValue" property="yearlyInterestRate"/><br>
          <jsp:getProperty name="futureValue" property="numOfYears"/><br>
        </div>
      </div>
        <div>
          <c:forEach var="item" items="${futureValues}">
            <w_t:currencyFormat>${item.numOfYears}</w_t:currencyFormat><br>
          </c:forEach>
        </div>
        <div>
           <c:forEach var="item" items="${futureValues}">
            <w_t:currencyFormat>${item.futureValue}</w_t:currencyFormat><br>
          </c:forEach>
        </div>
    </main>
  <%@ include file="/includes/footer.html" %>

