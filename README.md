#Flask Web App
Sample flask web app.


App contains terraform script to 

1. Create a VM instance.
2. Install python 

Install terraform in local before starting.
`brew install terraform`

Also it needs to download service account json.
Go to below link to create service account and download the json.
https://console.cloud.google.com/apis/credentials/serviceaccountkey?_ga=2.4572020.634458215.1585275994-305450961.1585169468
to run terraform 

It will have ansible script to deploy python package and start the app om VM 

## Run Locally 
To Run this appilcation python needs to be installed. This application is written for python 2.X
### step 1
install python and install pip

Eg. `brew install python`

To install pip need to copy get_pip.py file from internet and run it.

### step 2
install virtualenv

Eg. `brew install virtualenv`
### step 3
install virtualenvwrapper

Eg. `brew install virtualenvwrapper`
