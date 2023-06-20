# Eatery DB
 Eatery database package

<p align="center">
  <img src="https://raw.githubusercontent.com/hivedb/hive/master/.github/logo_transparent.svg?sanitize=true" width="350px">
</p>

<h2 align="center">Made with ❤ by Devstroop Technologies</h2>

### Build
`Depricated`
```
flutter packages pub run build_runner build
```
`Stable`
```
dart run build_runner build --delete-conflicting-outputs
```
### Rebuild
`Depricated`
```
flutter packages pub run build_runner build --delete-conflicting-outputs
```
`Stable`
```
dart run build_runner build --delete-conflicting-outputs
```
#### Note
Static model like placed order(independent from erp) should have model instead of model identity as a column
Dynamic model like product, category(dependent on erp) should have model identity instead of model as a column
