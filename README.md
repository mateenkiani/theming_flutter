# How to set up dark theme in flutter

[This article](https://milddev.com/flutter/the-most-simple-and-easy-way-to-implement-light-theme-and-dark-theme-multiple-themes-in-your-flutter-app/) Explains in detail on how you can set up dark theme using Provider to manage state and shared_preferences to save theme preference. In this repository i have implemented dark theme in a most simple and easy way. Using this method you can implement as many themes as you want and specify your own color schemes as needed.

### Pubspec.yaml dependencies

```
dependencies:
  shared_preferences: ^0.5.10
  provider: ^4.3.2+2
```
At the time I've implemented this dark theme these were the latest packages avaiable and most probably the newer versions will also work fine. Add a PR if anything gets depricated in the future and I'll merge it.

### Output
![Dark mode in flutter](https://i.stack.imgur.com/dnSMH.gif)


