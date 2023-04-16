// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract MyContract {

  address public user1;
  address public user2;

  event Receive(address from, uint256 amount);

  constructor(address _user1, address _user2) {
    user1 = _user1;
    user2 = _user2;
  }

  receive() external payable {
    emit Receive(msg.sender, msg.value);
  }
}