// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "executable",
    products: [
        .executable(
            name: "executable",
            targets: ["executable"]),
    ],
    targets: [
        .executableTarget(
            name: "executable",
            dependencies: ["Dep"]),
        .target(
            name: "Dep"
            // comment out the following line and the package will not build
            // when running `swift package clean && swift build`:
            , resources: [.copy("Runtime")]
        )
    ]
)
