# Contentful Dart - Dart Delivery SDK for Contentful

[![Build Status](https://travis-ci.org/data-hfg/contentful.dart.svg?branch=develop)](https://travis-ci.org/data-hfg/contentful.dart)
[![Version](https://img.shields.io/badge/version-0.0.5-blue.svg)](https://github.com/data-hfg/contentful.dart)
[![codecov](https://codecov.io/gh/data-hfg/contentful.dart/branch/develop/graph/badge.svg)](https://codecov.io/gh/data-hfg/contentful.dart)

**What is Contentful?**

[Contentful](https://www.contentful.com/) provides content infrastructure for digital teams to power websites, apps, and devices. Unlike a CMS, Contentful was built to integrate with the modern software stack. It offers a central hub for structured content, powerful management and delivery APIs, and a customizable web app that enable developers and content creators to ship their products faster.

<details>
<summary>Table of contents</summary>
<!-- TOC -->

- [Contentful Dart - Dart Delivery SDK for Contentful](#contentful-dart---dart-delivery-sdk-for-contentful)
  - [Core Features](#core-features)
  - [Getting started](#getting-started)
    - [Installation](#installation)
    - [Authorization](#authorization)
    - [Your first request](#your-first-request)
  - [Documentation & References](#documentation--references)
    - [Reference Documentation](#reference-documentation)
    - [Tutorials & other resources](#tutorials--other-resources)
      - [Example application](#example-application)
  - [Get involved](#get-involved)
  - [License](#license)
  - [Code of Conduct](#code-of-conduct)

<!-- /TOC -->

</details>

## Core Features

- Content retrieval through [Content Delivery API](https://www.contentful.com/developers/docs/references/content-delivery-api/).
- [Link resolution](https://www.contentful.com/developers/docs/concepts/links/)
- Up-to-date with the latest Dart development stack: Dart 2.4.1 | built_value 6.7.1

## Getting started

### Installation

Add this to your package's pubspec.yaml file:

```dart

dependencies:
  contentful_dart: ^0.1.0
```

You can install packages from the command line:

with pub:

```sh
 pub get
```

with Flutter:

```sh
 flutter pub get
```

Alternatively, your editor might support `pub get` or `flutter pub get`. Check the docs for your editor to learn more.

Now in your Dart code, you can use:

```dart
import 'package:contentful_dart/contentful_dart.dart';
```

### Authorization

Grab credentials for your Contentful space by [navigating to the "APIs" section of the Contentful Web App](https://app.contentful.com/deeplink?link=api).
If you don't have access tokens for your app, create a new set for the Delivery and Preview APIs.
Next, pass the id of your space and delivery access token into the initializer like so:

### Your first request

The following code snippet is the most basic one you can use to fetch content from Contentful with this SDK:

```dart

```

## Documentation & References

### Reference Documentation

For information about the Content Delivery API, check out the [Content Delivery API Reference Documentation](https://www.contentful.com/developers/documentation/content-delivery-api/).

### Tutorials & other resources

* This library is a wrapper around our Contentful Delivery REST API. Some more specific details such as search parameters and pagination are better explained on the [REST API reference](https://www.contentful.com/developers/docs/references/content-delivery-api/), and you can also get a better understanding of how the requests look under the hood.

* Check the [Contentful](https://www.contentful.com/developers/docs/platforms/) page for Tutorials, Demo Apps.

#### Example application

See the [Flutter app on Github](https://github.com/data-hfg/contentful.dart/tree/develop/examples/flutter_example) and follow the instructions on the README to get a copy of the space so you can see how changing content in Contentful affects the presentation of the app.

## Get involved

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?maxAge=31557600)](http://makeapullrequest.com)

We appreciate any help on our repositories. For more details about how to contribute see our [Contributing.md](CONTRIBUTING.md) document.

## License

This repository is published under the [MIT](LICENSE) license.

## Code of Conduct

We want to provide a safe, inclusive, welcoming, and harassment-free space and experience for all participants, regardless of gender identity and expression, sexual orientation, disability, physical appearance, socioeconomic status, body size, ethnicity, nationality, level of experience, age, religion (or lack thereof), or other identity markers.

[Read our full Code of Conduct](https://github.com/data-hfg/contentful.dart/blob/develop/CODE_OF_CONDUCT.md).