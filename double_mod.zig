const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn double_mod(limit: u32) !void {
    var pos: u32 = 1;
    while (pos < limit) {
        const is_buzz = @mod(pos, 3) == 0;
        const is_fizz = @mod(pos, 5) == 0;
        if (is_fizz and is_buzz) {
            try stdout.print("fizzbuzz\n", .{});
        } else if (is_fizz) {
            try stdout.print("fizz\n", .{});
        } else if (is_buzz) {
            try stdout.print("buzz\n", .{});
        } else {
            try stdout.print("{}\n", .{pos});
        }
        pos += 1;
    }
}

pub fn main() !void {
    try double_mod(1000000);
}
