#!/bin/bash
echo "-------------------------------------------------------"
echo "SINGAPORE APP CREATOR - TEACHER SETUP"
echo "-------------------------------------------------------"

# Check login
firebase login --no-localhost

# List projects and let teacher pick or create
echo "Step 1: Link to your Firebase Project"
firebase use --add

# Ensure database is linked
echo "Step 2: Deploying to your unique URL..."
firebase deploy --only hosting

echo "-------------------------------------------------------"
echo "DEPLOYMENT COMPLETE!"
echo "Your app is now live at the URL shown above."
echo "-------------------------------------------------------"
