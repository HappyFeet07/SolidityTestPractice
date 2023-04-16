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
    user1 = address(0x1);
    user2 = address(0x2);
    user3 = address(0x3);
    // 2. Create a new instance of MyContract
    instance = new MyContract2(user1, user2);
    // 3. (optional) Set user1 as bob, user2 as alice
    vm.label(user1, "bob");
    vm.label(user2, "alice");
    vm.label(user3, "Jack");
    // 4. Give MyContract2 10 ether
    vm.deal(address(instance), 10 ether);
  }

  function testSendShouldSendEtherToUser() public {
    // TODO:
    // 1. pretending you are user1
    vm.prank(user1);
    // 2. send 1 ether to user3
    instance.send(user3, 1 ether);
    // 3. assert user3 receive 1 ether
    assertEq(user3.balance, 1 ether);
    // 4. assert instance's balance is decreased by 1 ether
    assertEq(address(instance).balance, 9 ether);
  }

  function testSendRevertWhenUserIsntUser1nUser2() public {
    // TODO:
    // 1. expect call to revert
    vm.expectRevert("only user1 or user2 can send ether");
    // 2. pretending you are user3
    vm.prank(user3);
    // 3. send 1 ether to user3, tx will fail
    instance.send(user3, 1 ether);
  }

  function testSendRevertIfBalanceIsntEnough() public {
    // TODO:
    // 1. set instance's balance to 0
    vm.deal(address(instance), 0);
    // 2. expect call to revert
    vm.expectRevert("insufficient balance");
    // 3. pretending you are user1
    vm.prank(user1);
    // 4. send 1 ether to user3, tx will fail
    instance.send(user3, 1 ether);
  }
}
