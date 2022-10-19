module kchain.utils;

import std;

auto timestamp(SysTime st) => (st.toUTC - SysTime.fromUnixTime(0)).total!"msecs";
auto timestamp(DateTime dt) => dt.SysTime.timestamp;
auto timestamp() => Clock.currTime.timestamp;
