
# react-native-react-native-qrcode-native

## Getting started

`$ npm install react-native-react-native-qrcode-native --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-qrcode-native`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-qrcode-native` and add `RNReactNativeQrcodeNative.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeQrcodeNative.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeQrcodeNativePackage;` to the imports at the top of the file
  - Add `new RNReactNativeQrcodeNativePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-qrcode-native'
  	project(':react-native-react-native-qrcode-native').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-qrcode-native/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-qrcode-native')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNReactNativeQrcodeNative.sln` in `node_modules/react-native-react-native-qrcode-native/windows/RNReactNativeQrcodeNative.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using React.Native.Qrcode.Native.RNReactNativeQrcodeNative;` to the usings at the top of the file
  - Add `new RNReactNativeQrcodeNativePackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNReactNativeQrcodeNative from 'react-native-react-native-qrcode-native';

// TODO: What to do with the module?
RNReactNativeQrcodeNative;
```
  