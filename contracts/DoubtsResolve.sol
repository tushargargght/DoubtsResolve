// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DoubtsResolve {

    uint count;

    event CountVal(uint count, string where);

    function test() external {
        //testModifier();
    }

    // Result - Code after _ is executed AFTER the function is executed. Think of it as _ is replaced by function body in the modifier.
    modifier testMod {
        require(true);
        _;
        count++;
        emit CountVal(count, "Modifier");
        _;
        count++;
        emit CountVal(count, "Modifier");
    }

    function testModifier() internal testMod {
        count++;
        emit CountVal(count, "Function");
    }


}