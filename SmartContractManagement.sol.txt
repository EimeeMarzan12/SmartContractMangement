// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SmartContractManagement {
    string private contractName; // private state variable to store the contract name
    uint private count;          // private state variable to store the current count

    // Event to log when the count is incremented
    event CountIncremented(uint newCount);

    // Constructor to initialize the contract with a name
    constructor(string memory _name) {
        contractName = _name;  // Set the contract name
        count = 0;              // Initialize the count to 0
    }

    // Public function to get the contract name
    function getContractName() external view returns (string memory) {
        return contractName;
    }

    // Public function to get the current count
    function getCount() external view returns (uint) {
        return count;
    }

    // Public function to increment the count
    function incrementCount() external {
        count += 100;  // Increment the count by 100
        emit CountIncremented(count);  // Emit the event with the new count
    }
}
