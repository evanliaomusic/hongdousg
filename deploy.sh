#!/bin/bash
clear
echo "==================================================="
echo "   🚀 HONGDOU APP - INSTANT DEPLOYMENT SCRIPT 🚀   "
echo "==================================================="
echo ""

# 1. Check if the user is already logged in to Firebase
echo "Checking Firebase authentication..."
if ! firebase projects:list > /dev/null 2>&1; then
    echo "⚠️ You are not logged in yet."
    echo "Follow the prompt below to log in (you will only need to do this once):"
    firebase login --no-localhost
else
    echo "✅ You are already logged in!"
fi

echo ""
echo "==================================================="
echo "📋 FETCHING YOUR FIREBASE PROJECTS..."
echo "==================================================="
firebase projects:list

echo ""
echo "👉 Look at the list above. Type your 'Project ID' (e.g., my-school-app-123) and press ENTER:"
read PROJECT_ID

echo ""
echo "🚀 Deploying HongDou to $PROJECT_ID..."
# This command skips the 'firebase use' step and deploys directly to the target project
firebase deploy --only hosting --project "$PROJECT_ID"

echo ""
echo "🎉 DONE! Your app is now live at:"
echo "👉 https://$PROJECT_ID.web.app 👈"
echo "==================================================="
