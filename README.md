# react-native-legit-story-share

## Getting started

`$ npm install react-native-legit-story-share --save`

### Mostly automatic installation

`$ react-native link react-native-legit-story-share`

Be sure to install pods if developing for iOS

`$ cd ios && pod install `

Before trying to run, if you haven't installed any Swift native module yet, you may get an error about SWIFT_VERSION not being set. This isn't intuitive to do correctly manually so I suggest simply adding a blank swift file to your project and let Xcode do the rest. Nothing like this is needed for Android.

If you are using iOS >= 9 you need to add [LSApplicationQueriesSchemes](https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/LaunchServicesKeys.html#//apple_ref/doc/plist/info/LSApplicationQueriesSchemes) to your main `dict` node in your `Info.plist`. Like this:

```xml
<key>LSApplicationQueriesSchemes</key>
<array>
 <string>instagram-stories</string>
</array>
```


### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-legit-story-share` and add `LegitStoryShare.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libLegitStoryShare.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.reactlibrary.LegitStorySharePackage;` to the imports at the top of the file
  - Add `new LegitStorySharePackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-legit-story-share'
  	project(':react-native-legit-story-share').projectDir = new File(rootProject.projectDir, '../node_modules/react-native-legit-story-share/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-legit-story-share')
  	```


## Usage

### Share To Instagram
```javascript
import RNLegitStoryShare from 'react-native-legit-story-share';

RNLegitStoryShare.isInstagramAvailable()
  .then(isAvailable => {

    if(isAvailable){
      RNLegitStoryShare.shareToInstagram({
        type: RNLegitStoryShare.BASE64, // or RNLegitStoryShare.FILE
        attributionLink: 'https://myproject.com',
        backgroundAsset: 'data:image/png;base64,iVBO...',
        stickerAsset: 'data:image/png;base64,iVBO...',
        backgroundBottomColor: '#f44162',
        backgroundTopColor: '#f4a142'
      });
    }
  })
  .catch(e => console.log(e));
```
