load("@build_bazel_rules_apple//apple:ios.bzl", "ios_ui_test")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")

swift_library(
    name = 'Source',
    module_name = 'DummyUITest',
    srcs = glob(['**/*.swift'])
)

ios_ui_test(
    name = "DummyUITest",
    minimum_os_version = "11.0",
    deps = [":Source"],
    infoplists = [":Info.plist"],
    test_host = '//ios/DummyApplication',
    visibility = ["//visibility:public"],
)

