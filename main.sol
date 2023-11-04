// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
  // State variables
  uint256 public myNumber;
  address public owner;

  // Constructor
  constructor() {
    myNumber = 42; // Initialize myNumber to 42
    owner = msg.sender; // Set the contract creator as the owner
  }

  // Function to update myNumber
  function setMyNumber(uint256 _newNumber) public {
    require(msg.sender == owner, "Only the owner can set the number");
    myNumber = _newNumber;
  }
}
