# Smartervote
This project contains all source files for the PM3 smarter vote project.

## Branching concept

This repository uses the [GitHub flow](https://guides.github.com/pdfs/githubflow-online.pdf) branching workflow:

* It is not allowed to directly push/commit changes to the master branch
* Commit messages need to have this format: *[issue-number]* - commit description
* Workflow for each new feature or bug:
    * New issue is created
    * A new feature branch is created with following naming convention: issue-*[issue-number]*
    * To merge the changes to the master branch, a pull request has to be created that needs to be reviewed by at least
      one other team member. Pull requests should have a meaningful title and at least some minimal description of the
      changes that are introduced by the pull request

## Project setup

### Requirements

* This project requires at least java version 11, download openJDK 11 (LTS) here: https://adoptopenjdk.net.
    * Preferably "HotSpot" option should be chosen for the JVM.
* Docker is recommended to run the database, this way the setup is done automatically.
    * Alternatively a postgresql database can be setup manually. Execute the sql files located in
      smartervote-persistency/sql/ and configure the connection in the "application.properties" file in the
      smartervote-webapp project.
* Clone this repository to a folder of your preference.

### Start the database

* **Please Note:** Currently on Windows only Docker in combination with WSL is supported!
  * In case you run into issues while trying to run the docker container, you can always install a normal postgreSQL server and execute the sql files manually as described here: https://github.zhaw.ch/pm3-smartervote/smartervote/blob/master/smartervote-persistency/sql/create-database.sql
* Open a console and navigate into the root folder of the project
* Start the database Docker container by running the following command:

#### For Windows users:

```
$ .\gradlew.bat startDatabaseContainer
```

Note: the Docker service must be running.

#### For linux users:

```
$ .\gradlew startDatabaseContainer
```

Note: the Docker service must be running, and the user must have permission to run the docker command.

### Start the application

* Note: The application won't start unless the database connection is working!
* Open a console and navigate into the smartervote-webapp directory.
* Run following command to start the application. Afterwards the application can be accessed at http://localhost:8080.

#### For Windows users

```
$ ..\gradlew.bat bootRun
```

#### For linux users

```
$ ..\gradlew bootRun
```

### Stop & remove the database container

* Open a console and navigate into the root folder of the project
* Stop and remove the database container by running the following command:

#### For Windows users:

```
$ ..\gradlew.bat removeContainer
```

#### For linux users:

```
$ ..\gradlew removeContainer