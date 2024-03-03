# CoreGraphicsExtension ![GitHub](https://img.shields.io/github/license/chenhaiteng/coregraphicsextension?style=plastic)

A small libray to provide polar coordinate feature to extend CoreGraphics

<a href="https://www.buymeacoffee.com/chenhaiteng"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=☕&slug=chenhaiteng&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>

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
### CGPoint(Offset)
Apply convenient offset functions and operator(>>) on CGPoint.

#### Usage:
```swift
let basePt = CGPoint.zero

// Offset the base point by a CGPoint.
let offsetPt = CGPoint(x: 1, y: 1)
XCTAssertEqual(basePt.offset(by: offsetPt), offsetPt)
XCTAssertEqual(basePt >> offsetPt, offsetPt)

// Offset the base point by a CGSize.
let offsetSize = CGSize(width: 1, height: 1)
XCTAssertEqual(basePt.offset(by: offsetSize), offsetPt)
XCTAssertEqual(basePt >> offsetSize, offsetPt)

// Offset the base point by specified dx and dy
XCTAssertEqual(basePt.offset(dx: 1, dy: 1), offsetPt)
XCTAssertEqual(basePt >> (1, 1), offsetPt)

```

### CGRect(Offset)
Apply convenient offset operator(>>) on CGRect.
#### Usage:
```swift
let baseRect = CGRect(origin: .zero, size: CGSize(width: 100, height: 120))

// Offset the rect by CGPoint
let offsetPt = CGPoint(x: 1, y: 1)
XCTAssertNotEqual((baseRect >> offsetPt).origin, baseRect.origin)
XCTAssertEqual((baseRect >> offsetPt).origin, offsetPt)
XCTAssertEqual((baseRect >> offsetPt).size, baseRect.size)

// Offset the rect by CGSize
let offsetSize = CGSize(width: 1, height: 1)
XCTAssertEqual((baseRect >> offsetSize).origin, offsetPt)
XCTAssertEqual((baseRect >> offsetSize).size, baseRect.size)

// Offset the rect by specified dx, dy.
XCTAssertEqual((baseRect >> (1, 1)).origin, offsetPt)
XCTAssertEqual((baseRect >> (1, 1)).size, baseRect.size)
```

### CGRect(FitSquare)
Create a derived square rect that scale to fit its source rect with the same center point.

#### Usage:
```swift
let originRect = CGRect(origin: .zero, size: CGSize(width: 100, height: 120))
XCTAssertEqual(originRect.fitSquare(), CGRect(x: 0, y: 10, width: 100, height: 100))

```

### CGRect(Center)
A computed variable that return current center of the rect.

### Usage:
```
let rect = CGRect(origin: .zero, size: CGSize(width: 100, height: 120))
let center = rect.center
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

<a href="https://www.buymeacoffee.com/chenhaiteng"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=☕&slug=chenhaiteng&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>
