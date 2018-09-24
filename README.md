# Kubernetes Module for GCP

This is Terraform Module to deploy
[Kubernetes](http://kubernetes.io/) on GCP, including

* Kubernetes

## Usage
Get credentials for kubectl or you can use output secrets to manually configure .kube/config
```
gcloud container clusters get-credentials my-noetl --zone=us-central1-a
```

## Credentials 
Contents of a file that contains your service account private key in JSON format. You can download your existing Google Cloud service account file from the Google Cloud Console, or you can create a new one from the same page.

## Tips
Install gcloud on MacOS
```
brew cask install google-cloud-sdk
```
Initialize gcloud
```
gcloud init
```

