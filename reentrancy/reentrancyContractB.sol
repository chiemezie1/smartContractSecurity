// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./reentrancyContractA.sol.sol";

contract ContractB {
    ContractA public contractA;

    constructor(address contractAAddress) {
        contractA = ContractA(contractAAddress);
    }

    function attack() external payable {
        // Call vulnerable function repeatedly (fallback)
        contractA.vulnerableFunction(payable(address(this)));
    }

    function getContractABalance() public view returns (uint) {
        return contractA.balance();
    }
}
