const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("MyContract", () => {

  let instance;
  let user1, user2;

  beforeEach(async () => {
    // TODO:
    // 1. get the signers
    // 2. get contract factory
    // 3. deploy with parameters
  })

  it("should return user1 and user2 correctly", async () => {
    // TODO:
    // 1. instance's user1 is equal to user1's address
    // 2. instance's user2 is equal to user2's address
  })

  it("instance should be able to receive token", async () => {
    // TODO:
    // 1. Create a transaction to send 1 ether to instance
    // 2. expect the transaction to be successful
  })
})