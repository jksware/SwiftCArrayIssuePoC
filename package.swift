// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "swiftCArrayPoc",
    products: [
        .executable(name: "swiftCArrayPoc", targets: ["swiftCArrayPoc"]),
        .library(name: "cArrPocLibrary", targets: ["cArrPocLibrary"])
    ],
    dependencies: [
    ],
    targets: [
        .executableTarget(
            name: "swiftCArrayPoc",
            dependencies: ["cArrPocLibrary"]
        ),
        .target(
            name: "cArrPocLibrary",
            swiftSettings: [.interoperabilityMode(.Cxx)]
        )
    ]
)