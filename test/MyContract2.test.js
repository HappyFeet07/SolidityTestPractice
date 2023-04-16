const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("MyContract2", () => {
  let instance;
  let user1, user2, user3;
  let OneEther = ethers.utils.parseEther("1.0");

  beforeEach(async () => {
    // TODO:
    // 1. get the signers
    // 2. get contract factory
    // 3. deploy with parameters
    // 4. Give instance 10 ether
  })

  it("should send ether to user", async () => {
    // TODO:
    // 1. Send 1 ether to user3
    // 2. Check user3's balance
    // 3. Check instance's balance
  })

  it("should revert if sender isn't user1 and user2", async () => {
    // TODO:
    // 1. Expect the transaction to be reverted with reason "only user1 or user2 can send ether"
  })

  it("should revert if balance isn't enough", async () => {
    // TODO:
    // 1. Expect the transaction to be reverted with reason "insufficient balance"
  })
})