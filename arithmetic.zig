const std = @import("std");
const stdout = std.io.getStdOut().writer();

fn arithmetic(limit: u32) !void {
    var pos: u32 = 1;
    var fizz: u32 = 5;
    var buzz: u32 = 3;
    while (pos < limit) {
        fizz -= 1;
        buzz -= 1;
        if (fizz == 0 and buzz == 0) {
            try stdout.print("fizzbuzz\n", .{});
            fizz = 5;
            buzz = 3;
        } else if (fizz == 0) {
            try stdout.print("fizz\n", .{});
            fizz = 5;
        } else if (buzz == 0) {
            try stdout.print("buzz\n", .{});
            buzz = 3;
        } else {
            try stdout.print("{}\n", .{pos});
        }
        pos += 1;
    }
}

pub fn main() !void {
    try arithmetic(1000000);
}
