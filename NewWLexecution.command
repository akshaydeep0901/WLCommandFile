#Created By Akshay Deep Singh 
#Copyright @ Akshay Deep Singh 

appName="Yelo"
branchName="master-YeloNew"
ReffID="4b7a8849341f0031ea421a98e65222c4"
Rvalue=44
Gvalue=108
Bvalue=166
appIconSourcePath="/Users/akshay/Desktop/YeloAssets/ios_app_icon/"
appIconDestinationPath="/Users/akshay/Documents/Projects/yelo-ios/TookanVendor/TookanVendor/Assets.xcassets/AppIcon.appiconset/"
assetsSourcePath="/Users/akshay/Desktop/YeloAssets/assets/"
assetsDestinationPath="/Users/akshay/Documents/Projects/yelo-ios/TookanVendor/TookanVendor/Assets.xcassets/WhiteLabelAssets/"
splashDestinationPath="/Users/akshay/Documents/Projects/yelo-ios/TookanVendor/TookanVendor/Assets.xcassets/"


cd Documents/Projects/yelo-ios/
git branch ${branchName}
git checkout ${branchName}
cd TookanVendor/TookanVendor/


plutil -replace CFBundleName -string ${appName} Info.plist
plutil -replace CFBundleDisplayName  -string ${appName} Info.plist
plutil -replace FacebookDisplayName  -string ${appName} Info.plist
plutil -replace RefferenceID  -string ${ReffID} Info.plist
plutil -replace RedValue  -integer ${Rvalue} Info.plist
plutil -replace GreenValue -integer ${Gvalue} Info.plist
plutil -replace BlueValue  -integer ${Bvalue} Info.plist

cd Assets.xcassets
cd AppIcon.appiconset
cp -f ${appIconSourcePath}iTunesArtwork@2x.png ${appIconDestinationPath}iTunesArtwork@2x.png
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-20x20@2x.png ${appIconDestinationPath}Icon-App-20x20@2x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-20x20@3x.png ${appIconDestinationPath}Icon-App-20x20@3x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-29x29@2x.png ${appIconDestinationPath}Icon-App-29x29@2x.png
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-29x29@3x.png ${appIconDestinationPath}Icon-App-29x29@3x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-40x40@2x.png ${appIconDestinationPath}Icon-App-40x40@2x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-40x40@3x.png ${appIconDestinationPath}Icon-App-40x40@3xpng.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-60x60@2x.png ${appIconDestinationPath}Icon-App-60x60@2x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-60x60@3x.png ${appIconDestinationPath}Icon-App-60x60@3x.png 

cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-20x20.png ${assetsDestinationPath}Icon-App-20x20.imageset/Icon-App-20x20.png
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-20x20@2x.png ${assetsDestinationPath}Icon-App-20x20.imageset/Icon-App-20x20@2x.png 
cp -f ${appIconSourcePath}AppIcon.appiconset/Icon-App-20x20@3x.png ${assetsDestinationPath}Icon-App-20x20.imageset/Icon-App-20x20@3x.png 

cp -f ${assetsSourcePath}logoTookanSplashGraphic@2x.png ${assetsDestinationPath}logoTookanSplashGraphic.imageset/logoecommerceSplashGraphic@2x.png 
cp -f ${assetsSourcePath}logoTookanSplashGraphic@3x.png ${assetsDestinationPath}logoTookanSplashGraphic.imageset/logoecommerceSplashGraphic@3x.png


cp -f ${assetsSourcePath}iOS/ios-bg@2x.png ${splashDestinationPath}Splash/NewSplashBckground.imageset/compressSplashBackground@2x.png
 
cp -f ${assetsSourcePath}iOS/ios-bg@3x.png ${splashDestinationPath}Splash/NewSplashBckground.imageset/compressSplashBackground@3x.png
 
 
cd


cd Documents/Projects/yelo-ios/TookanVendor/

xcodebuild -workspace TookanVendor.xcworkspace -scheme TookanVendor -sdk iphoneos -configuration UniversalDistribution archive -archivePath /Users/akshay/Desktop/Builds/${appName}.xcarchive

xcodebuild -exportArchive -archivePath /Users/akshay/Desktop/Builds/${appName}.xcarchive -exportOptionsPlist /Users/akshay/Desktop/Builds/exportOptions.plist -exportPath /Users/akshay/Desktop/Builds

cd
cd Documents/Projects/yelo-ios/
git add .
git commit -m "White Label Done"
git push origin ${appName}