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