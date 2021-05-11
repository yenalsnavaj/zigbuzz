const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    // Standard target options allows the person running `zig build` to choose
    // what target to build for. Here we do not override the defaults, which
    // means any target is allowed, and the default is native. Other options
    // for restricting supported target set are available.
    const target = b.standardTargetOptions(.{});

    // Standard release options allow the person running `zig build` to select
    // between Debug, ReleaseSafe, ReleaseFast, and ReleaseSmall.
    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("single", "single_mod.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.install();

    const exe2 = b.addExecutable("double", "double_mod.zig");
    exe2.setTarget(target);
    exe2.setBuildMode(mode);
    exe2.install();

    const exe3 = b.addExecutable("arithmetic", "arithmetic.zig");
    exe3.setTarget(target);
    exe3.setBuildMode(mode);
    exe3.install();
}
