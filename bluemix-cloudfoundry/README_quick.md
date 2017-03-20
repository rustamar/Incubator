# Quick steps

## Prerequisites

* active bluemix account with defined organization and space
* installed maven

## Build application
```
mvn package
```

## Deploy application to Bluemix
* login 
```
cf login -u <ACCOUNT_NAME> -p <PASSWORD>
```
* load application to BlueMix
```
cf push <APP_NAME>
```
* list of loaded applications
```
cf a
```
* ssh to application container
```
cf enable-ssh <APP_NAME>
cf ssh <APP_NAME>
```
