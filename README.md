# VarApp
Modeling and reporting web application

App is hosted on Amazon Web Services (AWS) Beanstalk. Beanstalk auto generates EC2 instances to run the app using custom designed AMI. A custom AMI was built for this app and it runs Tomcat 7 and has Matlab Compiler Runtime (MCR) installed. 
MCR is needed to run the forecast model since the model is built in Matlab. Matlab SDK allows calling various Matlab functions that are needed to run the model directly from java. 

## Forecast Panel
Forecast Panel page takes in user provided marketing cost for various marketing tactics which are passed into the model in form of an array. On the page a pie chart allows user to visually analyze their costs. Clicking the ‘Forecast’ button will generate the model and display computed data using bar graphs and tables. All the visuals are generate using Google Visualization library and the data was converted in to Json format for this specific purpose.

## Model Data
Model Data page is intended to allow user to explore the data that is being used to build a forecast model. When fully functional, it will allow user to select between multiple files (tables) that are being utilized in the model.
Currently, it uses Google Visualization library permitting users to perform following operations:
* Explore all the variables in a given table via time series graphs and a demographic plot
* Compare 2 or more variables on a time series graph
* Filter the data by dates and states 

## Login/Registration
Access the user table saved on Amazon Web Services RDS and authenticates user’s credential and also allows them to register by writing to the users table. 
