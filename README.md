<br> 
<br> 
<p align="center">
    <img src="Docs/logo.svg" />
</p>
<br> 
<br> 
<br> 
<p align="center">
    <a href="https://swift.org/package-manager/">
        <img src="https://img.shields.io/badge/SPM-compatible-orange" />
    </a>
    <a href="http://cocoapods.org/pods/RAMAnimatedTabBarController">
        <img src="https://img.shields.io/badge/Pod-compatible-green" />
    </a>
    <img src="https://img.shields.io/badge/Swift-5-orange" />
	  <a href="https://twitter.com/yusadogru">
        <img src="https://img.shields.io/badge/Twitter-yusadogru-blue" />
    </a>
</p>
<br> 
<p align="center">
  <img src="https://imgur.com/wujkAp7.gif" alt="animated" />
  <img src="https://imgur.com/pnALnph.gif" alt="animated" />
</p>
<br> 

This library is for adding animation to iOS tabbar items, which is inherited from UITabBarController.
<br> 

## Installation

Just add the Sources folder to your project.

or use [CocoaPods](https://cocoapods.org) with Podfile:
``` ruby
pod 'CardTabBar'
```

or [Swift Package Manager](https://swift.org/package-manager/) 



## Usage

```swift
import CardTabBar

class TabBarController: CardTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
        setupUI()
    }

    func setupUI() {
        tabBar.tintColor = .TabBar.title
        tabBar.backgroundColor = .background
        tabBar.barTintColor = .Navigation.background
        tabBar.indicatorColor = .TabBar.itemBackground
    }
    
    func setupViewController() {
        viewControllers = [UIViewController(), UIViewController()]
    }
}
```

<br> 
<br> 

<p align="center">
    <img src="Docs/example.png" width="540" height="355" />
</p>

# License
The library is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
