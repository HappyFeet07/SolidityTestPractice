// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "forge-std/Test.sol";
import { MyContract2 } from "../../contracts/MyContract2.sol";

contract MyContract2Test is Test {

  MyContract2 instance;
  address user1;
  address user2;
  address user3;

  function setUp() public {
    // TODO:
    // 1. Set user1, user2, user3
    // 2. Create a new instance of MyContract
    // 3. (optional) Set user1 as bob, user2 as alice
    // 4. Give MyContract2 10 ether
  }

  function testSendShouldSendEtherToUser() public {
    // TODO:
    // 1. pretending you are user1
    // 2. send 1 ether to user3
    // 3. assert user3 receive 1 ether
    // 4. assert instance's balance is decreased by 1 ether
  }

  function testSendRevertWhenUserIsntUser1nUser2() public {
    // TODO:
    // 1. expect call to revert
    // 2. pretending you are user3
    // 3. send 1 ether to user3, tx will fail
  }

  function testSendRevertIfBalanceIsntEnough() public {
    // TODO:
    // 1. set instance's balance to 0
    // 2. expect call to revert
    // 3. pretending you are user1
    // 4. send 1 ether to user3, tx will fail
  }
}
