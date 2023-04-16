import { task } from "hardhat/config";

/**
 * useage example
 * 1. npx hardhat compile
 * 2. npx hardhat getSighash --contract Lock
 */
task("getSighash", "get sighash of errors and functions")
  .addParam("contract", "contract name")
  .setAction(async (taskArguments, hre) => {
    const contract = await hre.ethers.getContractFactory(
      taskArguments.contract
    );
    const errors = Object.keys(contract.interface.errors);
    const functions = Object.keys(contract.interface.functions);
    const length = Math.max(errors.length, functions.length);

    const sighashs = [];
    for (let i = 0; i < length; i++) {
      const errorName = errors[i] ? errors[i] : null;
      const errorSighash = errorName
        ? contract.interface.getSighash(errorName)
        : null;
      const functionName = functions[i] ? functions[i] : null;
      const functionSighash = functionName
        ? contract.interface.getSighash(functionName)
        : null;

      sighashs.push({
        errorName,
        errorSighash,
        functionName,
        functionSighash,
      });
    }
    console.table(sighashs);
  });
