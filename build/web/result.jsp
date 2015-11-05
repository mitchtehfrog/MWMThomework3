<%@ include file="/includes/header.html" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="w_t" uri = "/WEB-INF/winkler_thompson.tld" %>
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
            ${lastEntry.yearlyInterestRate}<br>
            ${lastEntry.numOfYears}<br>
        </div>
      </div>
      <div>
        <c:forEach var="item" items="${futureValues}">
          ${item.numOfYears}<br>
        </c:forEach> 
      </div>
      <div>
        <c:forEach var="item" items="${futureValues}">
          <w_t:currencyFormat futureValue ="${item.futureValue}"/><br>
        </c:forEach>
      </div> 
    </main>
  <%@ include file="/includes/footer.html" %>

