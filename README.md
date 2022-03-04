Started with article:https://abhisheksubbu.github.io/salesforce-github-devops/ and used https://mannharleen.github.io/2020-03-03-salesforce-jwt/ 
to remove the authentication problems.

Created an sfdx project and converted the entire project to that format using convert sfdx command as follows: 
sfdx force:project:create --projectname {mytest}
sfdx force:mdapi:convert -r {sourcepath} -d {mytest} // with correct and appropriate paths 

Conversion from metadata to sfdx will happen only with a sfdx format project.

Next: cleared all the errors that came during deployment such as 'You cannot edit these components' and 'Coverage errros' by removing everything that threw an error, bruteforced it! 

Next step: Linking multiple orgs with the same repository. Reading through github actions syntax and https://atrium.ai/resources/how-to-implement-salesforce-ci-cd-with-github-actions/. 


**Identifying the last successful commit Id** :
Using environment variables, github_sha, pasted this to a .txt file maintained in the repo, as a pointer as to which commit was deployed successfully.
Then pass that to generate teh delta package.xml 


**SonarQube Analysis via GitHub Actions - Documentation** :
https://docs.sonarqube.org/latest/analysis/github-integration/

**Last Successful Commit Id** :
This file should be part of git ignore. It should be placed in a "CI/CD Config Folder"

openssl enc -aes-256-cbc -k 54321 -P -md sha1 -nosalt -- to generate the key & iv

openssl enc -aes-256-cbc -in server.key -out server.key.enc -base64 -K 348162101FC6F7E624681B7400B085EEAC6DF7BD357D4248B52330019C50E6FA-iv BFD3C734366D1A974ECD7FD530D8B489 -- use genrated key & iv to encrypt and upload it in the repo; paste the key and iv values as secrets

openssl enc -nosalt -aes-256-cbc -d -in buildfiles/server.key.enc -out server.key -base64 -K ${{secrets.PRODKEY}} -iv ${{secrets.PRODIV}}  -- use this to decrypt and use the decrypted .key file as authenticator
