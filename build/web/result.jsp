<!--
Copyright (c) 2015 Michael Winkler & Philip Parvaneh
-->
<%@ include file="/includes/header.html" %>
  <body>
    <main>
      <h1>Future Value Calculator</h1>
      <div id ="flexible">
        <div id="result-labels">
          <label>Investment Amount:</label><br>
          <label>Yearly Interest Rate:</label><br>
          <label>Number of Years:</label><br>
          <label>Future Value:</label><br>
        </div>
        <div>
          <jsp:useBean id="futureValue" scope="request" class="edu.elon.business.FutureValue"/>
          <jsp:getProperty name="futureValue" property="formattedInvestmentAmount"/><br>
          <jsp:getProperty name="futureValue" property="yearlyInterestRate"/><br>
          <jsp:getProperty name="futureValue" property="numOfYears"/><br>
          <jsp:getProperty name="futureValue" property="formattedFutureValue"/><br>
        </div>
      </div>
    </main>
  <%@ include file="/includes/footer.html" %>

