# react-native-legit-story-share

## Getting started

`$ npm install react-native-legit-story-share --save`

### Mostly automatic installation

`$ react-native link react-native-legit-story-share`

Be sure to install pods if developing for iOS

`$ cd ios && pod install `

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
import {NativeModules} from 'react-native';
const RNLegitStoryShare = NativeModules.RNLegitStoryShare;

RNStoryShare.isInstagramAvailable()
  .then(isAvailable => {

    if(isAvailable){
      RNStoryShare.shareToInstagram({
        type: RNStoryShare.BASE64, // or RNStoryShare.FILE
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