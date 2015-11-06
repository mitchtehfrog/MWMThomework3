<%@ include file="/includes/header.html" %>
 <!--
  Copyright (c) 2015 Michael Winkler & Mitchell Thompson
  -->
    <main>
      <h1>Future Value Calculator</h1>
      <form id="flexible" action="calculate" method="POST">
        <input name="action" type="hidden" value="calculate">
        <div id="labels">
          <label>Investment Amount: </label><br>
          <input name="investmentAmountSmall" type="number" 
                 class="small-screen"><br class="small-screen" required>          
          <label>Yearly Interest Rate: </label><br>
          <input name="interestRateSmall" type="number" 
                 class="small-screen"><br class="small-screen" required>
          <label> Number of Years: </label><br>
          <input name="yearsSmall" placeholder="Integer number of years" 
                 type="number" min="0" step="1" class="small-screen">
          <br class="small-screen" required>          
          <input type="submit" value="Calculate" class="calculate small-screen">
        </div>       
        <div class = "large-screen">
          <input name="investmentAmountLarge" type="number" 
                 value="${lastEntry.investmentAmount}" required><br>
          <input name="interestRateLarge" type="number" 
                 value="${lastEntry.yearlyInterestRate}" required><br>
          <input name="yearsLarge" placeholder="Integer number of years" 
                 type="number" min="0" step="1" value = "${lastEntry.numOfYears}"
                 required>
          <br>
          <input type="submit" value="Calculate" class="calculate">
        </div>
      </form>
    </main>
  <%@ include file="/includes/footer.html" %>
