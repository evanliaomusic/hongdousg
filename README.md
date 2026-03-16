# Instructions:<br>
## Step 1: Google Cloud Console<br>
Go to https://console.cloud.google.com/, create a project, and type in in order:<br>
## Step 2: Clone in the Code
```
git clone https://github.com/evanliaomusic/hongdousg.git
```
or
```
git clone https://github.com/evanliaomusic/hongdousg.git [newname]
```
and go into the folder:
```
cd hongdousg
```
or
```
cd [newname]
```
## Step 3: Enable Firebase
```
firebase projects:addfirebase
```
and select the project name.<br>
## Step 4: Initialise database
```
firebase init database
```
and follow instructions, choose asia if in Singapore.<br>
## Step 5: Deploy the website!
```
firebase deploy
