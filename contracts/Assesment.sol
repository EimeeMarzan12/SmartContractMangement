// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    address payable public owner;
    uint256 public balance;
    bool public frozen;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event FreezeStatusChanged(bool frozen);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
        frozen = false;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }

    function getAccountBalance() public view returns (uint256) {
        return msg.sender.balance / 1e18; //divide by 1e18 to get ETH
    }

    function deposit(uint256 _amount) public payable {
        uint _previousBalance = balance;

        require(msg.sender == owner, "You are not the owner of this account");
        require(!frozen, "Contract is frozen");
        require(msg.value == _amount, "Sent ETH does not match the deposit amount"); 

        balance += _amount;

        assert(balance == _previousBalance + _amount);

        emit Deposit(_amount);
    }

    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public {
        require(msg.sender == owner, "You are not the owner of this account");
        require(!frozen, "Contract is frozen");
        uint _previousBalance = balance;
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }

        balance -= _withdrawAmount;
        owner.transfer(_withdrawAmount); 
        assert(balance == (_previousBalance - _withdrawAmount));

        emit Withdraw(_withdrawAmount);
    }

    function toggleFreeze() public {
        require(msg.sender == owner, "You are not the owner of this account");
        frozen = !frozen;
        emit FreezeStatusChanged(frozen);
    }
}    // Constructor to initialize the contract with a name
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
