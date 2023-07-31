# Eatery DB

 Eatery database package

<p align="center">
  <img src="https://raw.githubusercontent.com/hivedb/hive/master/.github/logo_transparent.svg?sanitize=true" width="350px">
</p>

<h2 align="center">Made with ❤ by Devstroop Technologies</h2>

## Build Instructions

To generate the required files, follow the appropriate commands based on your scenario:

### Deprecated Build (Flutter)
```
flutter packages pub run build_runner build
```

### Stable Build (Dart)

```
dart run build_runner build
```

## Rebuild Instructions

If you need to regenerate the required files, you may need to delete conflicting output, use the following commands:

### Deprecated Build (Flutter)
```
flutter packages pub run build_runner build  --delete-conflicting-outputs
```

### Stable Build (Dart)

```
dart run build_runner build  --delete-conflicting-outputs
```

### Note

For static models like placed orders (independent from ERP), use "model" instead of "model identity" as a column.
For dynamic models like products, categories (dependent on ERP), use "model identity" instead of "model" as a column.
