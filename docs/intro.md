# Introduction to flutter

Flutter is a framework for building crossplatform apps. Created by Google and uses dart as it's primary programming language.

## How Flutter Works
- code is written in dart
- converted to specific native code
- flutter handles the functionality and UI drawing

## Packages and Dependencies

Packages are collections of code written by another individual or org.
Dependencies are packages that our project require to function

### Required dependencies
- material: google's design system
- cupertino: apple's design system

### Adding dependencies

You can find dependencies on pub.dev
to add a dependency, run in terminal:
```sh
 flutter pub add <dependency_name>
```

## Development and debugging

We test our flutter project with debug builds; debug builds are much larger than release builds, they contain all the dependencies and other debugging tools required for a better Debugging experience.

- select the device to run the debug version
