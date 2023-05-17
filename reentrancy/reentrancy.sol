// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract ContractA {
    uint public balance;

    function vulnerableFunction(address payable recipient) external {
        // Update balance
        balance += 10;

        // Call external contract
        (bool success, ) = recipient.call{value: 10 ether}("");
        require(success, "External call failed");

        // Deduct balance
        if (balance >= 10) {
            balance -= 10;
        }
    }
}

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
