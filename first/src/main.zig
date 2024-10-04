const std = @import("std");

pub fn main() !void {
    const in = std.io.getStdIn();
    var buf = std.io.bufferedReader(in.reader());

    var r = buf.reader();

    var msg_buf: [128]u8 = undefined;

    std.debug.print("first number: ", .{});
    const msg: ?[]u8 = try r.readUntilDelimiterOrEof(&msg_buf, '\n');

    if (msg) {
        if (msg.?.len > 0 and msg.?[msg.?.len] == '\n') {}
    }
}
