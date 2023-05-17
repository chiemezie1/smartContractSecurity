# Mutual Exclusion
Using mutual exclusion locks is one of the techniques to mitigate reentrancy vulnerabilities in smart contracts. 
This smart contract is aim at explaining how the mutual exclusion workes.
A mutex (short for mutual exclusion) lock is a synchronization mechanism that ensures only one thread or process can access a particular resource at a time. 
In the context of smart contracts, mutex locks can prevent reentrant calls within the same contract. 

**mutualExclusion Contract**
In the mutualExclusion contarct, the MutexExample contract uses a locked boolean variable to track the lock status. The noReentrancy modifier is applied to functions that should be protected against reentrancy. Here's how it works:

+ Before executing the function, the modifier checks if the contract is locked (!locked). If the contract is locked, it indicates a reentrant call, and the transaction reverts.
+ If the contract is not locked, the locked variable is set to true before executing the function logic.
+ After the function completes, the locked variable is set back to false, allowing subsequent calls to proceed.
> By using a mutex lock in the form of the noReentrancy modifier, you can prevent reentrant calls from within the same contract. This ensures that the critical sections of your code are executed atomically and eliminates the risk of reentrancy vulnerabilities.

+ It's important to note that mutex locks alone might not be sufficient to protect against all types of reentrancy vulnerabilities(depends on the contract and its logic). 
+ It's crucial to follow other best practices, such as the "Checks-Effects-Interactions" (Ensuring that contract state changes are completed before making any external calls to other contracts). pattern, and and where possible limit external calls.
