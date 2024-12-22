# SmartContractManagement



# Assessment Smart Contract

## **Overview**
The `Assessment` smart contract securely manages ETH deposits and withdrawals, with the ability to freeze operations. Only the contract owner can perform restricted actions such as depositing, withdrawing, and toggling the freeze status.

## **Features**
- **Deposit ETH**: Allows the owner to deposit ETH into the contract.
- **Withdraw ETH**: Enables the owner to withdraw ETH from the contract.
- **Freeze/Unfreeze Contract**: The owner can toggle the contract's frozen state.
- **View Balances**: Any user can check the contract balance or their own ETH balance.

## **Contract Details**

### **State Variables**
1. **owner**: Address of the contract owner.
2. **balance**: Tracks the ETH balance stored in the contract.
3. **frozen**: Indicates if the contract is frozen.

### **Events**
1. `Deposit(uint256 amount)`: Emitted when ETH is deposited.
2. `Withdraw(uint256 amount)`: Emitted when ETH is withdrawn.
3. `FreezeStatusChanged(bool frozen)`: Emitted when the freeze status changes.

### **Functions**

#### **1. Constructor**
Initializes the contract with the owner’s address, an initial balance, and sets the frozen state to false.

#### **2. getBalance()**
Returns the current balance of the contract.

#### **3. getAccountBalance()**
Returns the caller’s ETH balance (converted to ETH).

#### **4. deposit(uint256 _amount)**
Allows the owner to deposit ETH by sending the specified amount.
- Ensures the contract is not frozen and the sent ETH matches the deposit amount.

#### **5. withdraw(uint256 _withdrawAmount)**
Enables the owner to withdraw a specified amount of ETH.
- Validates sufficient balance and ensures the contract is not frozen.

#### **6. toggleFreeze()**
Toggles the `frozen` state of the contract, enabling or disabling deposits and withdrawals.

### **Error Handling**
- **InsufficientBalance**: Triggered when withdrawal exceeds the available balance.
- Require statements ensure proper validations for ownership and contract state.


### **Deployment**
After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: npm i
2. Open two additional terminals in your VS code
3. In the second terminal type: npx hardhat node
4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/







## License

This project is licensed under the MIT License.

  
## Author
Eimee Suzanne Marzan

