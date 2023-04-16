const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("MyContract2", () => {
  let instance;
  let user1, user2, user3;
  let OneEther = ethers.utils.parseEther("1.0");

  beforeEach(async () => {
    // TODO:
    // 1. get the signers
    [user1, user2, user3] = await ethers.getSigners();
    // 2. get contract factory
    const MyContract2 = await ethers.getContractFactory("MyContract2");
    // 3. deploy with parameters
    instance = await MyContract2.deploy(user1.address, user2.address);
    await instance.deployed();
    // 4. Give instance 10 ether
    await user1.sendTransaction({ to: instance.address, value: OneEther.mul(10) });
  })

  it("should send ether to user", async () => {
    // TODO:
    // 1. Send 1 ether to user3
    await instance.connect(user1).send(user3.address, OneEther);
    // 2. Check user3's balance
    expect(await ethers.provider.getBalance(user3.address)).to.be.changeEtherBalance(OneEther);
    // 3. Check instance's balance
    expect(await ethers.provider.getBalance(user3.address)).to.be.changeEtherBalance(OneEther.mul(-1));
  })

  it("should revert if sender isn't user1 and user2", async () => {
    // TODO:
    // 1. Expect the transaction to be reverted with reason "only user1 or user2 can send ether"
    await expect(
      instance.connect(user3).send(user3.address, OneEther)
      ).to.be.revertedWith("only user1 or user2 can send ether");
  })

  it("should revert if balance isn't enough", async () => {
    // TODO:
    // 1. Expect the transaction to be reverted with reason "insufficient balance"
    await expect(
      instance.connect(user1).send(user3.address, OneEther.mul(11))
    ).to.be.revertedWith("insufficient balance");
  })
})