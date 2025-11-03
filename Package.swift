// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "QiscusMultichannelWidget",
    platforms: [
        .iOS(.v11) // iOS 10 support is extremely old and not always supported by dependencies
    ],
    products: [
        .library(
            name: "QiscusMultichannelWidget",
            targets: ["QiscusMultichannelWidget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.2"),
        .package(url: "https://github.com/Alamofire/AlamofireImage.git", .upToNextMajor(from: "4.3.0")),
        .package(url: "https://github.com/IDN-Media/ios.SDWebImageWebPCoder.git", from: "1.0.0"),
        .package(url: "https://github.com/qiscus/QiscusCore-iOS.git", from: "1.14.2")
    ],
    targets: [
        .target(
            name: "QiscusMultichannelWidget",
            dependencies: [
                "SwiftyJSON",
                "AlamofireImage",
                .product(name: "QiscusCore", package: "QiscusCore-iOS")
            ],
            path: "Sources/QiscusMultichannelWidget",
	    resources: [
        	.process("Sources/QiscusMultichannelWidget/")
	    ]
        ),
    ]
)
