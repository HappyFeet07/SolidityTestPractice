[TOC]

# Sample Hardhat-Foundry Project

this project integrated hardhat and foundry as a template to fastly create a project.

## Getting Started

```
npm install
forge install
```

## Config `.env`

```
cp .env.example .env
```

replace configs in `.env` file

## Run test

- with foundry

```
forge test
```

- with hardhat

```
npx hardhat test
```

## Notice

Whenever you install new libraries using Foundry, make sure to update your remappings.txt file by running forge `remappings > remappings.txt`

[Remapping dependencies](https://book.getfoundry.sh/projects/dependencies#remapping-dependencies)

```
forge remappings > remappings.txt
```

## Recommend resource

### Hardhat plugins

- [hardhat-contract-sizer](https://www.npmjs.com/package/hardhat-contract-sizer): Output Solidity contract sizes with Hardhat.
- [solidity-coverage](https://www.npmjs.com/package/solidity-coverage): Code coverage for Solidity testing
- [hardhat-gas-reporter](https://www.npmjs.com/package/hardhat-gas-reporter): A Mocha reporter for Ethereum test suites or use`REPORT_GAS=true npx hardhat test` instead
- [@nomiclabs/hardhat-etherscan](https://www.npmjs.com/package/@nomiclabs/hardhat-etherscan): Hardhat plugin for integration with Etherscan's contract verification service.
- [hardhat-deploy](https://github.com/wighawag/hardhat-deploy): A Hardhat Plugin For Replicable Deployments And Easy Testing

### Template

- [hardhat-foundry-template](https://github.com/foundry-rs/hardhat-foundry-template)
