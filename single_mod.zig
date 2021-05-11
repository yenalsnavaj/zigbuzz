const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn single_mod(limit: u32) !void {
    var pos: u32 = 1;
    while (pos < limit) {
        switch (@mod(pos, 15)) {
            0 => try stdout.print("fizzbuzz\n", .{}),
            5, 10 => try stdout.print("fizz\n", .{}),
            3, 6, 9, 12 => try stdout.print("buzz\n", .{}),
            else => try stdout.print("{}\n", .{pos}),
        }
        pos += 1;
    }
}

pub fn main() !void {
    try single_mod(1000000);
}
