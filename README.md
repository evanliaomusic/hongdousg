```markdown
# Deploy the HongDou App

Welcome! This automated wizard will deploy your app directly to your Firebase Database.

## Step 1: Create your Database
If you haven't already:
1. Go to the [Firebase Console](https://console.firebase.google.com/) in a new tab.
2. Click **Add Project**.
3. Go to **Realtime Database** and click **Create Database** (Start in Test Mode).

## Step 2: Run the Deployer
Click the blue **"Run"** icon on the code block below to start the automated deployment script. 

```bash
bash deploy.sh
```

**Follow the instructions in the terminal!** It will ask you to log in (if it's your first time) and ask you to type in your Project ID.
```

### Step 3: Update the Button in your `README.md`
Finally, update the deploy button link in your README. Notice the `&cloudshell_tutorial=tutorial.md` added to the end of the URL. This is the magic trigger that opens the visual sidebar.

```markdown
[![Deploy HongDou App](https://gstatic.com/cloudssh/images/open-btn.svg)](https://shell.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/evanliaomusic/hongdousg&cloudshell_tutorial=tutorial.md)
```
