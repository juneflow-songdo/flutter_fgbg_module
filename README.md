[![pub package](https://img.shields.io/pub/v/flutter_fgbg_module.svg)](https://pub.dartlang.org/packages/flutter_fgbg_module)

[![](https://img.shields.io/badge/Module-Hub-007bff?style=for-the-badge&logo=flutter)](https://module.juneflow.org/)
[![](https://img.shields.io/badge/View-Hub-007bff?style=for-the-badge&logo=flutter)](https://view.juneflow.org/)

[![](https://img.shields.io/badge/DISCORD-JOIN%20SERVER-5663F7?style=for-the-badge&logo=discord&logoColor=white)](https://discord.gg/zXXHvAXCug)
[![](https://img.shields.io/badge/KakaoTalk-Join%20Room-FEE500?style=for-the-badge&logo=kakao)](https://open.kakao.com/o/gEwrffbg)

# flutter_fgbg_module
This is a module that notifies you when the app goes into the background or comes to the foreground

##  Installation
1. If the juneflow project doesn't exist, please create it by following [this guide](https://doc.juneflow.org/).
2. open terminal in the juneflow project root directory, enter the following command.
 ```bash
 june add flutter_fgbg_module
 ```

## Usage
You can always listen to the app's state changes through the following code.
```dart
EasyEventBus.on('App is in foreground', (event) {
  // write your code here when the app is in the foreground.
});

EasyEventBus.on('App is in background', (event) {
  // write your code here when the app is in the background.
});
```


