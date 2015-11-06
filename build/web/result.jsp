<%@ include file="/includes/header.html" %>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="elon" uri = "/WEB-INF/winkler_thompson.tld" %>
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
          <a id="goback" href ="index.jsp">Return to Calculator</a>
        </div>
        
        <div>
            <elon:currencyFormat futureValue="${lastEntry.investmentAmount}" />
            <br>
            ${lastEntry.yearlyInterestRate}<br>
            ${lastEntry.numOfYears}<br>
        </div>
       
            
      </div>
        <div id="yearcurrency">
            <strong>Year</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <strong>Value:</strong>  <br>
        </div>
        
      <div id="entries">
        <c:forEach var="item" items="${futureValues}">
            &nbsp;&nbsp;${item.numOfYears}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;
            <elon:currencyFormat futureValue ="${item.futureValue}"/><br>
        </c:forEach> 
      </div>
      
    </main>
  <%@ include file="/includes/footer.html" %>

