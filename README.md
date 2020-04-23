A sample Flutter web project for using on GitPod.

In order to use debugging, you'll need to use Chrome with the [Dart Debug extension](https://chrome.google.com/webstore/detail/dart-debug-extension/eljbmlghnomdjgdjmbdekegdkbabckhm?hl=en) installed.

- [Open this project in GitPod](https://gitpod.io#https://github.com/DanTup/gitpod-flutter-web)
- Click "Get Packages" on any prompt for missing packages and wait for analysis to complete and any build errors from missing packages to disappear
- Put a breakpont in [lib/main.dart](lib/main.dart#L56) on the line `_counter++;`
- Open the Debug side bar and click the [Run](command:workbench.action.debug.start) button
- Wait for the app to spawn in a new browser window (do not click the "a service is listening on port x" prompt)
- When the an empty browser window spawns, click the [Dart Debug extension](https://chrome.google.com/webstore/detail/dart-debug-extension/eljbmlghnomdjgdjmbdekegdkbabckhm?hl=en) button
- Wait for the app to appear then click the + button
- The GitPod debugger should now hit the breakpoint and the `_counter` variable should show in the Variables list
