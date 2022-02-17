def cc_srcs(prefix):
    return [
        prefix + ".c",
        prefix + ".cpp",
    ]

def cc_hdrs(prefix):
    return [
        prefix + ".h",
        prefix + ".hpp",
    ]

def cc_srcs_and_hdrs(prefix):
    return cc_srcs(prefix) + cc_hdrs(prefix)
