import { task } from "hardhat/config";

/**
 * @dev run npx hardhat taskExample --help to check params
 * @example npx hardhat taskExample --account 0x0000000000000000000000000000000000000000 --greeting "hahaha"
 */
task("taskExample", "get current signer address")
  .addParam("account", "input task params from cli")
  // add optional params
  .addOptionalParam("greeting", "The greeting to print", "Hello, World!")
  .setAction(async (taskArguments, hre, runSuper) => {
    const { ethers } = hre;
    const signers = await ethers.getSigners();
    if (signers.length > 0) {
      console.log("current signer", signers[0].address);
    }

    console.log({ taskArguments });
    // console.log({ taskArguments, hre, runSuper });
  });
