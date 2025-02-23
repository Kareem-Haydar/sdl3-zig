const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const dep_opts = .{ .target = target, .optimize = optimize };
    _ = dep_opts;

    const lib_mod = b.addModule("sdl3-zig", .{
        .root_source_file = b.path("src/bindings.zig"),
        .link_libc = true,
    });

    lib_mod.addIncludePath(b.path("./c/include/"));
    lib_mod.addLibraryPath(b.path("./c/lib/"));
}
