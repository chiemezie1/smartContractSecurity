// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.6;

contract mutualExclusion {
    bool private locked;

    modifier noReentrancy() {
        require(!locked, "Reentrant call detected");
        locked = true;
        _;
        locked = false;
    }

    function myFunction() external noReentrancy {
        // Function logic
    }
}
