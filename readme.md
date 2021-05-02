# Smartervote
This project contains all source files for the PM3 smarter vote project.

## Branching concept
This repository uses the [GitHub flow](https://guides.github.com/pdfs/githubflow-online.pdf) branching workflow:
* It is not allowed to directly push/commit changes to the master branch
* Commit messages need to have this format: *[issue-number]* - commit description 
* Workflow for each new feature or bug:
  * New issue is created
  * A new feature branch is created with following naming convention: issue-*[issue-number]*
  * To merge the changes to the master branch, a pull request has to be created that needs to be reviewed by at least one other team member. Pull requests should have a meaningful title and at least some minimal description of the changes that are introduced by the pull request
  
## Project setup
* This project requires at least java version 11, download openJDK 11 (LTS) here: https://adoptopenjdk.net
  * Preferably "HotSpot" option should be chosen for the JVM
* Clone this repository to a folder of your preference
* Create a new postgresql database and configure the connection in the "application.properties" file in the smartervote-webapp project
* Open a console and navigate into the root folder of the project there into the "smartervote-webapp" subproject
* Run following command to run the application:
```
$ ..\gradlew.bat bootRun
```
* For linux users:
```
$ ..\gradlew bootRun
```
* Access the application at: http://localhost:8080