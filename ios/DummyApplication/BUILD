load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load('@build_bazel_rules_swift//swift:swift.bzl', 'swift_library')
load(
    "@rules_xcodeproj//xcodeproj:defs.bzl",
    "top_level_target",
    "xcodeproj",
)

xcodeproj(
    name = "xcodeproj",
    project_name = "DummyApplication",
    tags = ["manual"],
    build_mode = 'xcode',
    top_level_targets = [
        top_level_target(":DummyApplication", target_environments = ["simulator"]),
    ],
)

swift_library(
    name = "AppSource",
    srcs = glob(["*.swift"]),
    data = glob(['Assets.xcassets/**']),
    deps = [
        "//ios/SwiftLibrary",
        '//ios/Pdp'
    ]
)

ios_application(
    name = "DummyApplication",
    minimum_os_version = "13.0",
    deps = [":AppSource"],
    infoplists = ["Info.plist"],
    families = ["iphone"],
    bundle_id = "com.example.dummyTestApplication",
    visibility = ["//visibility:public"],
)
