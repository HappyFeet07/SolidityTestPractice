// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

import "forge-std/Test.sol";
import { MyContract } from "../../contracts/MyContract.sol";

contract MyContractTest is Test {

  MyContract instance;
  address user1;
  address user2;

  function setUp() public {
    // TODO:
    // 1. Set user1, user2 
    // 2. Create a new instance of MyContract
    // 3. (optional) Set user1 as bob, user2 as alice
  }

  function testConstructor() public {
    // TODO: 
    // 1. Assert instance.user1() is user1
    // 2. Assert instance.user2() is user2
  }

  function testReceiveEther() public {
    // TODO:
    // 1. pretending you are user1
    // 2. let user1 have 1 ether
    // 3. send 1 ether to instance
    // 4. Assert instance has 1 ether in balance
    // 5. stop pretending
  }
}
