Started with article:https://abhisheksubbu.github.io/salesforce-github-devops/ and used https://mannharleen.github.io/2020-03-03-salesforce-jwt/ 
to remove the authentication problems.

Created an sfdx project and converted the entire project to that format using convert sfdx command as follows: 
sfdx force:project:create --projectname {mytest}
sfdx force:mdapi:convert -r {sourcepath} -d {mytest} // with correct and appropriate paths 

Conversion from metadata to sfdx will happen only with a sfdx format project.

Next: cleared all the errors that came during deployment such as 'You cannot edit these components' and 'Coverage errros' by removing everything that threw an error, bruteforced it! 

Next step: Linking multiple orgs with the same repository. Reading through github actions syntax and https://atrium.ai/resources/how-to-implement-salesforce-ci-cd-with-github-actions/. 