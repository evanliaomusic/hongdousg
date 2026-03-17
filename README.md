# Instructions<br>
## Step 1: Open Cloud Shell
Go to console.cloud.google.com, create a new project (note the Project ID), and click the Activate Cloud Shell icon >_ in the top right header.

Step 2: Clone the Code
code
Bash
download
content_copy
expand_less
git clone https://github.com/evanliaomusic/hongdousg.git
cd hongdousg
Step 3: Authenticate the CLI

Even in Cloud Shell, you must link the Firebase tool to your account:

code
Bash
download
content_copy
expand_less
firebase login --no-localhost

Click the link provided, sign in, copy the authorization code, and paste it back into the terminal.

Step 4: Enable Firebase Features

Google Cloud projects do not have Firebase enabled by default. Run this to "Firebase-ify" your GCP project:

code
Bash
download
content_copy
expand_less
firebase projects:addfirebase

Select your Project ID from the list.

Step 5: Link the Folder to your Project

Now tell the local folder which project to deploy to:

code
Bash
download
content_copy
expand_less
firebase use --add

Select your Project ID and give it an alias (like "default").

Step 6: Deploy

Since firebase.json and database.rules.json are already in the folder, you can go straight to deployment:

code
Bash
download
content_copy
expand_less
firebase deploy
Why this version is better:

Cloud Shell Awareness: It specifies clicking the >_ button. Without this, a user might try to find a place to type on the dashboard itself.

The "Auth" Bridge: It addresses the fact that the Firebase CLI needs its own token (login --no-localhost), which is a common stumbling block in Cloud Shell.

Correct Sequence: It keeps the projects:addfirebase 
→
→
 firebase use --add sequence, which is the only way to link a pre-configured repo to a brand-new GCP project without running init.

No Overwriting: By skipping firebase init, you preserve the database.rules.json and firebase.json settings you specifically built for this project.

Efficiency: It removes the "Follow instructions/Choose Asia" steps from init, as the existing config files likely already point to the correct resources or will pick up the project defaults during deploy.
