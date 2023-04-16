// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.17;

import "./MyContract.sol";

contract MyContract2 is MyContract {
  constructor(address _user1, address _user2) MyContract(_user1, _user2) {}

  event Send(address to, uint256 amount);

  function send(address to, uint256 amount) external payable {
    require(
      msg.sender == user1 || msg.sender == user2,
      "only user1 or user2 can send ether"
    );
    require(address(this).balance >= amount, "insufficient balance");

    (bool success, ) = to.call{ value: amount }("");
    require(success, "transfer failed");
    emit Send(to, amount);
  }
}