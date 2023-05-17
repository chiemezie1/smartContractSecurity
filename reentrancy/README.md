# Reentrancy Vulnerability 

+ Reentrancy vulnerability is a type of security vulnerability that can occur in smart contracts on blockchain platforms like Ethereum. 
+ It allows an attacker to exploit the contract's logic and execute malicious actions in an unintended and potentially harmful way.
+ The vulnerability arises when a contract's function, which includes external calls to other contracts, does not properly handle the flow of execution and state changes. 

**Vulnerability**
The main aim of this contract is to demonstrate the reentrancy vulnerability in Solidity!

1. we can create two contracts: ContractA and ContractB. 
2. ContractA will have a vulnerable function that can be exploited, 
3. And ContractB will be the attacker contract that exploits the vulnerability. 

In this example, ContractA has a vulnerableFunction that increases its balance by 10 and then makes an external call to another contract using the recipient address. After the external call, it deducts 10 from the balance if there are sufficient funds.

ContractB is the attacker contract that exploits the vulnerability. It takes the address of ContractA as a constructor parameter and sets it as a state variable contractA. The attack function in ContractB repeatedly calls the vulnerableFunction of ContractA, triggering the reentrancy vulnerability.

The attacker contract, ContractB, calls the vulnerable function of ContractA repeatedly before the deduction of funds. Each time the function is called, it re-enters the vulnerable function, allowing the attacker to call it again and transfer more funds to the attacker's contract.

To see the impact of the reentrancy attack, you can deploy ContractA and ContractB in a development environment like Remix or Truffle, and then execute the attack function in ContractB. You can check the balance of ContractA using the getContractABalance function in ContractB to observe the effect of the reentrancy vulnerability.
