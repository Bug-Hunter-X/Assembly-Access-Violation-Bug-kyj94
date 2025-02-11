# Assembly Access Violation Bug

This repository demonstrates a common error in assembly programming: an access violation caused by incorrect array indexing. The bug arises from the potential for `ecx` and `eax` registers to hold values that lead to out-of-bounds memory access.  The solution involves adding checks to prevent this.

## Bug

The `bug.asm` file contains assembly code with the problematic indexing.