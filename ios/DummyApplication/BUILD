load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load('@build_bazel_rules_swift//swift:swift.bzl', 'swift_library')



swift_library(
    name = "AppSource",
    srcs = glob(["*.swift"]),
    data = glob(['Assets.xcassets/**']),
    deps = [
        "//ios/SwiftLibrary"
    ]
)

ios_application(
    name = "DummyApplication",
    minimum_os_version = "11.0",
    deps = [":AppSource"],
    infoplists = ["Info.plist"],
    families = ["iphone"],
    bundle_id = "com.example.dummyTestApplication",
    visibility = ["//visibility:public"],
)
