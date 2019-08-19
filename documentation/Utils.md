# Utils

## Run tests

```sh
pub run test test/
```

```sh
dart test/all.dart
```

## Collect Test Coverage

```sh
pub run test_coverage
```

## Generate Html for Test Coverage

```sh
genhtml coverage/lcov.info -o coverage/output/
```

```sh
pub run test_coverage && genhtml coverage/lcov.info -o coverage/output/
```
