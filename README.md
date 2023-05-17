# Degen Token Project

This Solidity program is a simple simulation of how we can create our own token using ERC20 contracts and deploy it on the fuji network.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. It demonstrates how we can create our own custom token using ERC20 contracts and deploy it to the fuji network to track the transactions that occur in the contract.

## Getting Started

### Executing Program 

To run this program, you will first need to clone this repository and follow the instructions in the GUIDE.md file in this repository.

After that you can proceed to remix in order to interact with the contract. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, make sure that the environment is changed to Injected Provider and that the wallet is connected to Fuji (C Chain) Network with chain ID 43113.

![image](https://github.com/OlivarezK/DegenToken-Project/assets/72584770/f1eef1bb-f612-490a-be20-e07dbfdb1e85)

Next, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., DegenToken.sol). Copy and paste the code from the "DegenToken.sol" file in this repository.

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile DgenToken.sol" button.

Once the code is compiled, you can deploy the contract by copying the contract address of the verified contract in snowtrace testnet and paste it to the input box in remix shown below, and click on "At Address" to deploy the contract.

![image](https://github.com/OlivarezK/DegenToken-Project/assets/72584770/634b11b9-900d-41b7-9de4-acf9c7bc7c30)

Once the contract is deployed, you can interact with it by entering inputs and calling the variables or functions in the sidebar. You can interact with them by simply clicking the buttons with the variable names or with the "transact" button for functions. It is recommended to click on the dropdown icons to make it easier to enter inputs:

![image](https://github.com/OlivarezK/Custom-ERC20-Token/assets/72584770/e74f968e-a42b-4f40-9f2c-e48c14af9214)

For functions that require an address as an input, you can copy one from the samples provided by Remix under the "ACCOUNT" dropdown which can be found in the left-hand sidebar as well:

![image](https://user-images.githubusercontent.com/72584770/234553227-a18b8544-5e0b-48a5-af7a-0c81f2bbbcc4.png)

## Authors

OlivarezK

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
