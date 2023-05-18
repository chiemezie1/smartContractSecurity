// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "./SafeMath.sol";

contract implementingSafe {

    using SafeMath for uint256;

    uint256 public total;

    function add(uint256 a, uint256 b) public returns(uint) {
       return(total = a.add(b));
    }

    function subtract(uint256 a, uint256 b) public returns(uint)  {
      return  total = a.sub(b);
    }

    function multiply(uint256 a, uint256 b) public returns(uint)  {
        return total = a.mul(b);
    }

    function divide(uint256 a, uint256 b) public returns(uint)  {
        return total = a.div(b);
    }
}
