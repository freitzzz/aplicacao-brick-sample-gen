# sample

Sample app generated with @dart-pacotes aplicacao brick template

## Tooling

Some submodules were added in order to develop in-house tools (see scripts folder). Pull their source-code by running:

```
git submodule update --init --recursive
```

## App Localizations: How-to

After including new strings on `app_localizations.dart`, go ahead and run the `update_localizations.dart` Dart program:

```bash
dart scripts/update_localizations.dart
```

This program will generate the **messages_*** files which contain the string identifier mapped by each locale wording. Then, 

### Authors

This template was prepared by:

- Gil Durão, @gildurao
- João Freitas, @freitzzz

Contact us for Flutter freelancing work!