# Vrindavan Token Smart Contract

## Overview
The Vrindavan smart contract is an ERC20 token implemented in Solidity. It includes standard ERC20 functionalities along with additional features such as minting and burning of tokens. The contract is built using OpenZeppelin libraries to ensure security and reliability.

## Description
The Vrindavan Token Smart Contract is designed to provide a secure and reliable ERC20 token on the Ethereum blockchain. Utilizing the robust OpenZeppelin libraries, the contract supports the standard functionalities of an ERC20 token while also introducing additional features for minting and burning tokens. The minting function allows the contract owner to generate new tokens and assign them to any address, while the burning function enables any token holder to destroy a specified amount of tokens from their balance. This combination of features makes the Vrindavan token versatile for various applications, including decentralized finance (DeFi) projects, token sales, and more.

## Getting Started

### Installing
1. **Download the Project:**
   - Clone the repository from GitHub or download the ZIP file.

2. **Open in Remix IDE:**
   - Visit [Remix IDE](https://remix.ethereum.org/).
   - Open the downloaded Solidity file (`Vrindavan.sol`) in Remix IDE.

### Executing Program
1. **Compile the Contract:**
   - In Remix IDE, go to the "Solidity Compiler" tab.
   - Ensure the compiler version is set to `0.8.0`.
   - Click "Compile Vrindavan.sol".

2. **Deploy the Contract:**
   - Switch to the "Deploy & Run Transactions" tab.
   - Select the appropriate environment (e.g., Injected Web3 for MetaMask).
   - Choose the `Vrindavan` contract.
   - Provide the token name and symbol as parameters.
   - Click "Deploy" and confirm the transaction in MetaMask.

3. **Interact with the Contract:**
   - Use the deployed contract's interface in Remix to mint, burn, and transfer tokens.
   - Example commands:
     ```solidity
     // Minting tokens (only owner)
     mintTokens("0xRecipientAddress", 1000);

     // Burning tokens
     burnTokens(500);

     // Transferring tokens
     transfer("0xRecipientAddress", 200);
     ```

### Help
- **Common Issues:**
  - Ensure you have sufficient ETH for gas fees in your MetaMask wallet.
  - Verify that the contract owner is calling the mint function.
  - Check for sufficient token balance before burning or transferring tokens.

- **Commands for Helper Information:**
  ```solidity
  // Check total supply
  totalSupply();

  // Check balance of an address
  balanceOf("0xAddress");
