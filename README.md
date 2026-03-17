# Instructions<br>
## Step 1: Open Cloud Shell
Go to https://console.cloud.google.com/ , create a new project (note the Project ID), and click the Activate Cloud Shell icon >_ in the top right header.
## Step 2: Clone the Code
```
git clone https://github.com/evanliaomusic/hongdousg.git
cd hongdousg
```
## Step 3: Authenticate the CLI
Link the Firebase tool to your account:
```
firebase login --no-localhost
```
Click the link provided, sign in, copy the authorization code, and paste it back into the terminal.
## Step 4: Enable Firebase Features
Google Cloud projects do not have Firebase enabled by default. Run this to "Firebase-ify" your GCP project:
```
firebase projects:addfirebase
```
Select your Project ID from the list.
## Step 5: Link the Folder to your Project
Now tell the local folder which project to deploy to:
```
firebase use --add
```
Select your Project ID and give it an alias (like "default").
Step 6: Deploy
```
firebase deploy
```
