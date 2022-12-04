<h1 align="center">♟️ TRIVIAL PURSUIT ❓</h1>

_<h3 align="center">🚧 Work in progress 🚧</h3>_

A simple [trivial pursuit](https://fr.wikipedia.org/wiki/Trivial_Pursuit) app, where the user can select different play modes, and questions type. The app is a link to the [Open Trivia Database API](https://opentdb.com/api_config.php).

___

**Technos :** Flutter, Dart, Firebase, Flask, Python

**Author :** [Anatole de Chauveron](https://github.com/Anatole-DC)

___

## Summary

- [Getting started](#getting-started)
  - [Requirements](#requirements)
  - [Installation](#installation)
  - [Run](#run-the-project)
- [Contact](#contact)

## Getting started

### Requirements

```bash
❯ flutter --version
Flutter 3.3.1 • channel stable • https://github.com/flutter/flutter.git
Framework • revision 4f9d92fbbd (il y a 3 mois) • 2022-09-06 17:54:53 -0700
Engine • revision 3efdf03e73
Tools • Dart 2.18.0 • DevTools 2.15.0
```

### Installation

```bash
git clone https://github.com/Anatole-DC/trivial_pursuit.git
```

### Run the project

**Run the flutter app**

```bash
# First go into the app ('frontend') directory
cd frontend

# Run the app
flutter run
```

### Developpement

**Responsiveness**

*isAndroid* *Rails*

**Add new object**

Two add a new object we can use mason.

```bash
mason make model --model_name Object --additionals "[copyWith, json, equatable]" --style freezed
```

**Add State**

Create new brick.

```bash
mason make bloc
```

Generate the freezed file.

```bash
flutter pub run build_runner buid
```

## Contact

_For further questions about this repository, please send an email at **adechauveron@gmail.com**._