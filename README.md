# ScreenGuard

---

## Overview

ScreenGuard is a powerful library designed to enhance the security and privacy of your applications by disabling screenshots. With ScreenGuard, you can prevent sensitive information from being captured and shared without authorization, ensuring the confidentiality of your users' data.

## Features

- **Screenshot Disabling:** ScreenGuard effectively prevents users from taking screenshots within your application, safeguarding sensitive content from unauthorized distribution.
  
- **Easy Integration:** Integrating ScreenGuard into your project is simple and seamless, requiring minimal setup to start protecting your application's privacy.

## Installation

To install using Swift Package Manager, add this to the `dependencies:` section in your Package.swift file:

```swift
.package(url: "https://github.com/VolodymyrHanas/screenguard-ios", .upToNextMinor(from: "1.0.0")),
```
## Usage

1. **Import ScreenGuard:**

   ```swift
    import ScreenGuard
   ```

2. **Use it:**

   ```swift
    let someViewWithSensitiveInfo = UIView()
    someViewWithSensitiveInfo.setScreenshotsDisabled(true)

    view.addSubview(someViewWithSensitiveInfo)
   ```

3. **Enjoy Enhanced Privacy:**


## License

ScreenGuard is licensed under the [MIT License](https://github.com/VolodymyrHanas/screenguard-ios/blob/main/LICENSE).

---

**Protect your users' privacy with ScreenGuard - safeguarding sensitive information.**
