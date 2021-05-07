# CoreGraphicsExtension ![GitHub](https://img.shields.io/github/license/chenhaiteng/CoreGraphicsExtension?style=plastic)

A small libray to provide polar coordinate feature to extend CoreGraphics

## Features:
### CGAngle
The alias of CGFloat, and presume its unit as radians.
It also provides functions to transform radians and degrees.

#### Usage:
```swift
// Create CGAngle
let rightAngle = CGAngle.pi/2
let rightAngle2 = CGAngle.degrees(90.0)
let rightAngle3 = CGAngle.radians(CGFloat.pi/2)
let rightAngle4 = CGAngle.radians(Double.pi/2)

// Compare CGAngle with floating numbers in different unit. 
XCTAssertEqual(rightAngle, CGFloat.pi/2)
XCTAssertEqual(rightAngle.degrees, 90)
XCTAssertEqual(rightAngle.radians, CGFloat.pi/2)
```

### CGPolarPoint
A structure to show point in polar coordiante.
Provides convenient method to transform to rectangular coordinate(a.k.a Cartesian coordinate system) 

#### Usage:
```swift
// Create polar point
let originPt = CGPolarPoint.zero
let upPoint = CGPolarPoint(radius: CGFloat(1), angle: CGAngle.pi/2)
let rightUpPoint = CGPolarPoint(radius: CGFloat(sqrt(2)), angle: CGAngle.pi/4)

// Get point in rectangular coordinate:
let rectPt = rightUpPoint.cgpoint
```

## Installation:
### Install with Swift Package Manager
#### - Add to Xcode:

1. File > Swift Packages > Add Package Dependency...
2. Choose Project you want to add CoreGraphicExtension
3. Paste repository https://github.com/chenhaiteng/CoreGraphicsExtension.git
4. Rules > Version: Up to Next Major 0.3.1
It's can also apply Rules > Branch : Main to access latest code.

**Note:** It might need to link CoreGraphicsExtension to your target maunally.

1. Open *Project Editor* by tap on root of project navigator
2. Choose the target you want to use CoreGraphicsExtension.
3. Choose **Build Phases**, and expand **Link Binary With Libraries**
4. Tap on **+** button, and choose CoreGraphics to add it.

#### - Add to SPM package: 
```swift
dependencies: [
    .package(name: "CoreGraphicsExtension", url: "https://github.com/chenhaiteng/CoreGraphicsExtension.git", from: "0.3.1")
],
targets: [
    .target(
        name: "MyPackage",
        dependencies: ["CoreGraphicsExtension"]),
]
```

# License
CoreGraphicsExtension is released under the [MIT License](LICENSE).
