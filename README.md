# The Nexus Singularity

A cosmic web experience where curiosity meets intellectual liberation. This is a static website featuring an immersive, animated interface with philosophical content and futuristic design.

## 🌌 Features

- Responsive cosmic-themed design with animated particles
- Dynamic gradient backgrounds with smooth animations
- Interactive AI chat placeholder
- Philosophical quotes and cosmic imagery
- Mobile-responsive layout

## 🚀 Deployment Options

This project supports multiple deployment platforms:

### 1. Firebase Hosting (Recommended)

Firebase Hosting provides fast, secure hosting with a global CDN, perfect for static websites.

#### Setup Steps:

1. **Create a Firebase Project:**
   - Go to [Firebase Console](https://console.firebase.google.com/)
   - Create a new project named `nexus-singularity`
   - Enable Hosting in the project

2. **Set up GitHub Secrets:**
   - Generate a Firebase service account key
   - Add `FIREBASE_SERVICE_ACCOUNT_NEXUS_SINGULARITY` secret to your GitHub repository
   - The deployment will trigger automatically on pushes to main branch

3. **Local Development (Optional):**
   ```bash
   npm install -g firebase-tools
   firebase login
   firebase init hosting
   firebase serve
   ```

### 2. Google Cloud Storage

Alternative deployment using GCS bucket with static website hosting.

#### Setup Steps:

1. **Create GCS Bucket:**
   ```bash
   gsutil mb gs://your-bucket-name
   gsutil web set -m index.html -e index.html gs://your-bucket-name
   ```

2. **Set up GitHub Secrets:**
   - `GCP_SA_KEY`: Service account JSON key with Storage Admin permissions
   - `GCS_BUCKET_NAME`: Your bucket name

3. **Manual Trigger:**
   - Go to Actions tab → "Deploy to Google Cloud Storage" → "Run workflow"

### 3. GitHub Pages

Already configured and deployed automatically on pushes to main branch.

## 🛠️ Local Development

Since this is a static website, you can simply:

1. Clone the repository
2. Open `index.html` in your browser
3. Or serve it locally:
   ```bash
   python -m http.server 8000
   # or
   npx serve .
   ```

## 📁 Project Structure

```
.
├── index.html              # Main application file
├── firebase.json           # Firebase Hosting configuration
├── .firebaserc            # Firebase project configuration
├── *.jpeg                 # Cosmic imagery assets
├── .github/
│   └── workflows/
│       ├── deploy.yml      # GitHub Pages deployment
│       ├── firebase-deploy.yml  # Firebase deployment
│       └── gcs-deploy.yml  # Google Cloud Storage deployment
└── README.md              # This file
```

## 🌐 Live Deployments

- **GitHub Pages**: Automatically deployed
- **Firebase Hosting**: `https://nexus-singularity.web.app` (after setup)
- **Google Cloud Storage**: Custom domain (after setup)

## 🔧 Configuration

### Firebase Hosting Features:
- Clean URLs (removes .html extension)
- Caching headers for images (1 year) and assets (1 day)
- SPA routing (all routes serve index.html)
- Compression and global CDN

### Required GitHub Secrets:

For Firebase deployment:
- `FIREBASE_SERVICE_ACCOUNT_NEXUS_SINGULARITY`

For GCS deployment:
- `GCP_SA_KEY`
- `GCS_BUCKET_NAME`

## 🎨 Customization

The website features:
- Cosmic particle animations
- Dynamic gradient backgrounds
- Responsive design breakpoints
- Hover effects and smooth transitions

Modify the embedded CSS and JavaScript in `index.html` to customize the appearance and behavior.

## 📄 License

This project is open source and available under the MIT License.