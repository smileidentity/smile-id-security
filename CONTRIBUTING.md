# Contributing

## 0. Requirements

- iOS 13 and above
- Xcode 14 and above

We zip the SmileIDSecurity library before we upload it. As such, to run the cocoapods linting on your device you need to install the following software packages: 

```
brew install unzip
```

## 1. CI Setup

The following workflow are triggered by manual dispatch.

## 2. SPM Releases
We use github actions to release the SmileIDSecurity library to SPM. SPM is self-hosted within this github repository and the job `publish-spm` in [.github/workflows/publish-framework-spm.yml](https://github.com/smileidentity/smile-id-security/blob/main/.github/workflows/publish-framework-spm.yml) updates the [Package.swift](https://github.com/smileidentity/smile-id-security/blob/main/Package.swift) url with the new release and computes the checksum using. 

This will create a PR that will need to be manually approved and merged in main so you can then trigger the cocoapods release.

```
swift package compute-checksum
```

## 3. Cocoapods Release
We use github actions to release the SmileIDSecurity library to Cocoapods. Cocapods hosts the library in their trunk repository 

[.github/workflows/publish-framework-bump-cocoapods.yml](https://github.com/smileidentity/smile-id-security/blob/main/.github/workflows/publish-framework-bump-cocoapods.yml) this will create a PR that you need to approve and merge manually

[.github/workflows/publish-framework-cocoapods.yml](https://github.com/smileidentity/smile-id-security/blob/main/.github/workflows/publish-framework-cocoapods.yml) this action will release the sdk to cocoapods automatically. You need to bump the version first before running this.

Cocoapods requires a setup to prove ownership of the library's author's associated email address. This setup must be done on your computer by executing the following commands:

```
pod trunk register 'you@email.com' 'Your Name'
```
You'll receive a verification email to your email address which you need to confirm. Then you can run the following command to extract the `COCOAPODS_TRUNK_TOKEN`:

```
grep -A2 'trunk.cocoapods.org' ~/.netrc
```

You'll see the following:

```
machine trunk.cocoapods.org
  login <you@email.com>
  password <COCOAPODS_TRUNK_TOKEN>
```

Copy the COCOAPODS_TRUNK_TOKEN and upload it to the github repository secrets.

