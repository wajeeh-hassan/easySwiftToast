# easySwiftToast
**easySwiftToast** is very simple solution to show a toast message by writing single one line of code. 

![](https://raw.githubusercontent.com/wajeeh-hassan/easySwiftToast/master/media/demo.gif)



[![CI Status](https://img.shields.io/travis/wajeehulhassan/easySwiftToast.svg?style=flat)](https://travis-ci.org/wajeehulhassan/easySwiftToast)
[![Version](https://img.shields.io/cocoapods/v/easySwiftToast.svg?style=flat)](https://cocoapods.org/pods/easySwiftToast)
[![License](https://img.shields.io/cocoapods/l/easySwiftToast.svg?style=flat)](https://cocoapods.org/pods/easySwiftToast)
[![Platform](https://img.shields.io/cocoapods/p/easySwiftToast.svg?style=flat)](https://cocoapods.org/pods/easySwiftToast)


## Installation

easySwiftToast is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'easySwiftToast'
```


## Usage
```swift
import easySwiftToast
```


## Toast
```swift

// A simple and easy method to show a toast message 
   let message = "This is example of easy toast"
   showEasyToast(message: message)
   
// you can also use custom method to show a toast message 
   showEasyToast(message: message, backroundColor: UIColor.red, textColor: UIColor.yellow, duration: 2)
   
// Fiedls are optionals , you can skip or use according to your need
   showEasyToast(message: message, backroundColor: UIColor.red)
   showEasyToast(message: message,  duration: 2)
```

## Snackbar
```swift

// A simple and easy method to show a Snackbar message 
   let message = "This is example of easy toast"
   showEasySnackBar(message: message)
   
// you can also use custom method to show a Snackbar message 
   showEasySnackBar(message: message, backroundColor: UIColor.red, textColor: UIColor.yellow, duration: 2)
   
// Fiedls are optionals , you can skip or use according to your need
   showEasySnackBar(message: message, backroundColor: UIColor.red)
   showEasySnackBar(message: message,  duration: 2)
```




## Author

wajeehulhassan, wajeeh661@gmail.com

## License

easySwiftToast is available under the MIT license. See the LICENSE file for more info.
