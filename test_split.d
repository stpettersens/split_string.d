import std.stdio;
import std.array;

import split_string;

void printGray(string message, bool colors, string pattern = "") {
    if (colors) {
        if (pattern == "")
            writef("\033[90m%s\033[0m\n", message);
        else {
            foreach (msg; message.split("\r\n")) {
                string[] mm = splitString(msg, pattern);
                writef("\033[90m%s%s\033[0m%s\n", mm[0], pattern, mm[1]);
            }
        }
    }
    else
        writeln(message);
}

void main() {
	printGray("hello => there", true, "=>");
}
