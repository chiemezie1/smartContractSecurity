// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract KingOfTheEther {
    address payable public king;
    uint public throneValue;

    constructor() {
        king = payable(msg.sender);
        throneValue = 0;
    }

    function pay() external payable {
        require(msg.value >= throneValue || msg.sender == king, "Insufficient payment");
        
        // Transfer the previous throne value to the current king
        king.transfer(throneValue);

        // Update the throne value and set the new king
        throneValue = msg.value;
        king = payable(msg.sender);
    }
}
