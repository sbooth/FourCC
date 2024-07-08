// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "FourCC",
	products: [
		.library(
			name: "FourCC",
			targets: [
				"FourCC",
			]),
	],
	targets: [
		.target(
			name: "FourCC"),
		.testTarget(
			name: "FourCCTests",
			dependencies: [
				"FourCC",
			]),
	]
)
