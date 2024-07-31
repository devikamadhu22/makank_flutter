# seeroo_flutter_clean_architecture

A template project for clean architecture with flutter_bloc.

### Flutter version:
```
3.22.2
```
### Dart version:
```
3.4.3
```

### Build runner cmd:
``` bash
fvm flutter pub run build_runner build --delete-conflicting-outputs -v
```
``` bash
flutter pub run build_runner build --delete-conflicting-outputs -v
```
``` bash
dart pub run build_runner build --delete-conflicting-outputs -v
```

### Generate localization/translation cmd:
``` bash
fvm flutter gen-l10n -v
```
``` bash
flutter gen-l10n -v
```

### Generate icons
```bash
 flutter pub run flutter_launcher_icons
```
```bash
 fvm flutter pub run flutter_launcher_icons
```

### Build apk for arm-64
```bash
 flutter build apk --target-platform=android-arm64 -v 
```
```bash
 fvm flutter build apk --target-platform=android-arm64 -v 
```
### Build fat apk
```bash
 flutter build apk -v 
```
```bash
 fvm flutter build apk -v 
```
### Build Apk bundle
```bash
 flutter build appbundle -v 
```
```bash
 fvm flutter build appbundle -v 
```

## Things to note:
- Generate localization after editing arb file.
- Run build runner after annotating a class or method with injectible.

## Docs
- localizations
    - [extension](https://codewithandrea.com/articles/flutter-localization-build-context-extension/)
    - [internationalization](https://docs.flutter.dev/ui/accessibility-and-internationalization/internationalization)
    - [localization via bloc ](https://devmuaz.medium.com/arabic-english-localization-with-flutter-bloc-cubit-implementations-advanced-d2bc1e28356)
    - [How to Provide Localizations Feature to a Flutter App with Bloc Library & Shared Preferences](https://levelup.gitconnected.com/how-to-provide-localizations-feature-to-a-flutter-app-with-bloc-library-shared-preferences-2c2f4fc2fb8a)
- [enhanced enums](https://dart.dev/language/enums)
- [injectible and getit](https://medium.com/@dan.patacean/flutter-stories-advanced-dependency-injection-with-injectable-and-getit-1d71d21dea01)
- [fpdart](https://www.sandromaglione.com/articles?course=fpdart-functional-programming-dart-and-flutter)
- [Bloc + Freezed](https://dev.to/ptrbrynt/why-bloc-freezed-is-a-match-made-in-heaven-29ai)
