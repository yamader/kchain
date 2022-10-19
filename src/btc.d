module kchain.btc;

import std;
import std.digest.sha;
import kchain.utils;

struct Block {
  union Header {
    struct {
     align(1):
      uint      ver;    // version
      ubyte[32] prev;   // previous block hash
      ubyte[32] root;   // merkle root hash
      uint      time;   // timestamp
      uint      bits;   // difficulty
      uint      nonce;  // nonce
    }
    ubyte[80] buf;
  }

  Header header;

  auto hash() => header.buf.sha256Of.sha256Of;
}

enum Block genesis = {
  { 0, [], [], 0, 0, 0 }
};

class Chain {
  Block[] blocks;

  this() {
    // genesis
  }
}
