// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract SafeMath {

    function mul(uint a, uint b) internal pure returns (uint) {
        uint c = a * b;
        assert(a == 0 || c / a == b);
        return c;
    }

    function div(uint a, uint b) internal pure returns
        (uint) {  //inline assembly block in Solidity
        assert(b > 0);
        uint c = a / b;
        assert(a == b * c + a % b);
        return c;
    }

    function sub(uint a, uint b) internal pure returns
        (uint) {
        assert(b <= a);
        return a - b;
    }

    function add(uint a, uint b) internal pure returns
        (uint) {
        uint c = a + b;
        assert(c>=a && c>=b);
        return c;
    }
}
