// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "./ERC20.sol"; //  The ERC20 is not attached as this is not to be deployed 

contract TokenSale {
    enum State { Active, Suspended }
    address payable public owner;
    ERC20 public token;
    State public state;
    
    constructor(address tokenContractAddress) {
        owner = payable(msg.sender);
        token = ERC20(tokenContractAddress);
        state = State.Active;
    }
    
    // 1:1 exchange of ETH for token
    function buy() payable public {
        require(state == State.Active);
        token.transfer(msg.sender, msg.value);
    }
    
    function suspend() public {
        require(msg.sender == owner);
        state = State.Suspended;
    }
    
    function activate() public {
        require(msg.sender == owner);
        state = State.Active;
    }
    
    function withdraw() public {
        require(msg.sender == owner);
        owner.transfer(address(this).balance);
    }
}
