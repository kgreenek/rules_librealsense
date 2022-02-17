load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def librealsense_repositories():
    maybe(
        http_archive,
        name = "librealsense",
        build_file = "@rules_librealsense//:BUILD.librealsense.bazel",
        sha256 = "cafeb2ed1efe5f42c4bd874296ce2860c7eebd15a9ce771f94580e0d0622098d",
        strip_prefix = "librealsense-2.50.0",
        urls = [
            # TODO(kgreenek): Mirror this somewhere in case github is down.
            # Ideally mirror.bazel.build (ping @philwo on github).
            "https://github.com/IntelRealSense/librealsense/archive/refs/tags/v2.50.0.tar.gz",
        ],
    )

    _RULES_BOOST_COMMIT = "652b21e35e4eeed5579e696da0facbe8dba52b1f"
    maybe(
        http_archive,
        name = "com_github_nelhage_rules_boost",
        sha256 = "c1b8b2adc3b4201683cf94dda7eef3fc0f4f4c0ea5caa3ed3feffe07e1fb5b15",
        strip_prefix = "rules_boost-%s" % _RULES_BOOST_COMMIT,
        urls = [
            "https://github.com/nelhage/rules_boost/archive/%s.tar.gz" % _RULES_BOOST_COMMIT,
        ],
    )
