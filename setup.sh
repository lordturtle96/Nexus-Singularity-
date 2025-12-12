#!/bin/bash

# Setup script for Nexus Singularity deployment

echo "🌌 Nexus Singularity - Google Cloud Setup"
echo "========================================"

# Check if user wants Firebase or GCS
echo ""
echo "Choose deployment option:"
echo "1) Firebase Hosting (Recommended)"
echo "2) Google Cloud Storage"
echo "3) Local development server"
echo ""
read -p "Enter your choice (1-3): " choice

case $choice in
  1)
    echo "Setting up Firebase Hosting..."
    if ! command -v firebase &> /dev/null; then
      echo "Installing Firebase CLI..."
      npm install -g firebase-tools
    fi
    
    echo "Please run the following commands:"
    echo "1. firebase login"
    echo "2. firebase init hosting"
    echo "3. firebase deploy"
    ;;
    
  2)
    echo "Setting up Google Cloud Storage..."
    echo "Please run the following commands:"
    echo "1. gcloud auth login"
    echo "2. gsutil mb gs://your-nexus-bucket-name"
    echo "3. gsutil web set -m index.html -e index.html gs://your-nexus-bucket-name"
    echo "4. gsutil -m cp -r . gs://your-nexus-bucket-name"
    echo "5. gsutil -m acl ch -r -u AllUsers:R gs://your-nexus-bucket-name/*"
    ;;
    
  3)
    echo "Starting local development server..."
    if command -v python3 &> /dev/null; then
      echo "Starting Python server on http://localhost:8000"
      python3 -m http.server 8000
    elif command -v python &> /dev/null; then
      echo "Starting Python server on http://localhost:8000"
      python -m SimpleHTTPServer 8000
    elif command -v npx &> /dev/null; then
      echo "Starting Node.js server..."
      npx serve .
    else
      echo "Please install Python or Node.js to run a local server"
      echo "Or simply open index.html in your browser"
    fi
    ;;
    
  *)
    echo "Invalid choice. Please run the script again."
    ;;
esac