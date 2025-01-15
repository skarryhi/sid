// swift-tools-version: 5.8
import PackageDescription

let package = Package(
	name: "SIDSDK",
	platforms: [
		.iOS(.v14)
	],
	products: [
		// Продукт для статической версии
		.library(
			name: "SIDSDKStatic",
			targets: ["SIDSDKStatic"]
		),
		// Продукт для динамической версии
		.library(
			name: "SIDSDKDynamic",
			targets: ["SIDSDKDynamic"]
		)
	],
	targets: [
		// Статическая версия
		.binaryTarget(
			name: "SIDSDKStatic",
			path: "./XCFrameworks/SIDSDKStatic.zip"
		),
		// Динамическая версия
		.binaryTarget(
			name: "SIDSDKDynamic",
			path: "./XCFrameworks/SIDSDKDynamic.zip"
		)
	]
)
