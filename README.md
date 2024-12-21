# SmartContractManagement

`SmartContractManagement` is a simple Solidity smart contract that allows you to store a contract name and increment a counter. The contract is initialized with a name and starts with a counter set to `0`. The counter can be incremented via an external function, and the contract provides getter functions to retrieve the contract name and the current count.

## Features

- **Store contract name**: The contract name is set during deployment and can be retrieved through a getter function.
- **Increment a counter**: The contract allows users to increment a counter value using the `incrementCount` function.
- **Event logging**: When the count is incremented, an event is emitted to log the new count value.
- **Getter functions**: The contract provides external getter functions to retrieve the contract name and the current count.

## Contract Functions

### 1. `constructor(string memory _name)`
- **Purpose**: Initializes the contract with a name and sets the counter to `0`.
- **Parameters**: 
  - `_name` (string): The name to be associated with the contract.

### 2. `getContractName()`
- **Purpose**: Returns the name of the contract.
- **Visibility**: `external` (accessible from outside the contract).
- **Returns**: The contract name (string).

### 3. `getCount()`
- **Purpose**: Returns the current count value.
- **Visibility**: `external` (accessible from outside the contract).
- **Returns**: The current count (uint).

### 4. `incrementCount()`
- **Purpose**: Increments the current counter by `100` and emits an event with the new count.
- **Visibility**: `external` (can be called by external addresses).
  
## Events

- **`CountIncremented(uint newCount)`**: This event is emitted whenever the counter is incremented. It provides the new count value.

## How to Deploy and Interact with the Contract in Remix

### Step-by-Step Guide

1. **Open Remix IDE**:
   Go to [Remix Ethereum IDE](https://remix.ethereum.org).

2. **Create a New File**:
   - In the Remix file explorer, click on the "+" button to create a new Solidity file.
   - Name the file `SmartContractManagement.sol` and paste the contract code into the file.

3. **Compile the Contract**:
   - On the left-hand side of Remix, click the "Solidity Compiler" tab (the third tab, it looks like a compiler icon).
   - Select the appropriate version (e.g., `0.8.18`).
   - Click on "Compile SmartContractManagement.sol".

4. **Deploy the Contract**:
   - Once compiled, go to the "Deploy & Run Transactions" tab (the fourth tab, it looks like an Ethereum logo).
   - In the "Environment" dropdown, you can choose either the JavaScript VM (for testing), Injected Web3 (for MetaMask), or Web3 Provider (for external nodes like Infura). If you're just testing locally in Remix, choose the JavaScript VM.
   - In the "Contract" dropdown, select `SmartContractManagement`.
   - Enter a name (e.g., "My Smart Contract") in the input field for the constructor parameter `_name`.
   - Click on the "Deploy" button.

5. **Interact with the Deployed Contract**:
   - After deployment, the contract will appear in the "Deployed Contracts" section.
   - You can interact with it by expanding the deployed contract and using the provided functions.

   ### Example Functions:
   - **`getContractName()`**:
     - Click on `getContractName()` to retrieve the contract's name.
   - **`getCount()`**:
     - Click on `getCount()` to check the current count (it should start at 0).
   - **`incrementCount()`**:
     - Click on `incrementCount()` to increment the count. You will see the `CountIncremented` event logged in the Remix console.

6. **View Events**:
   - After calling `incrementCount()`, you can see the `CountIncremented` event in the Remix console, which logs the new value of the counter.

## License

This project is licensed under the MIT License.

  
## Author
Eimee Suzanne Marzan

