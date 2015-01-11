[condition][]the lender is "{mortgage_company}"=mortgage:Mortgage(lender:lenderName == "{mortgage_company}",product:mortgageName)
[condition][]and there is an application=application:LoanApplication(lenders contains lender)
[condition][]- with a FICO score below {score}=ficoScore<{score}
[consequence][]reject the application because "{message}"=application.addMessage("Declined by " + lender + " because {message}");
