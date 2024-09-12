/* Simple function to split a string at first occurrence of a pattern for D (dlang).
   Written by Sam Saint-Pettersen, 2024.

   Released to Public domain. Use as you wish.
*/

import std.array;
import std.format;
import std.algorithm;

string[] splitString(string str, string pattern) {
    auto result = splitter(str, pattern);
    string r1 = result.front;
    result.popFront();
    string r2 = format("%s", result.joiner(" ").array);
    return [r1, r2];
}
