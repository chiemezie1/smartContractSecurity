# King of the Ether Smart Contract
+ The King of the Ether smart contract is a decentralized application that allows participants to compete for the prestigious title of "King of the Ether" by making ether payments. 
+ The contract operates based on a simple rule: the contender who pays the highest amount becomes the new king.

**Frontrunning Vulnerability**
+ The main aim of this smart contract is to show the impact of a frontrunning vulnerability in a smart contract.
+ One important aspect to consider when interacting with this smart contract is the presence of a frontrunning vulnerability. 
+ This vulnerability arises due to the transparent nature of transactions in the Ethereum blockchain 
+ And the practice of block creators prioritizing transactions with higher fees.

> Let's consider a scenario where the current king has paid 10 ether to claim the throne. Now, an attacker closely monitoring transactions notices that there is someone willing to pay 11 ether to dethrone the current king. Exploiting this information, the attacker can secure a significant advantage.

> The attacker submits a transaction offering 10 ether for the throne, which is the same as the previous monarch's payment, but includes a slightly higher transaction fee compared to the contender offering 11 ether. As block creators prioritize transactions with higher fees, the attacker's transaction is processed first.

> As a result, the current king is paid back their 10 ether without any additional gain, effectively transferring the throne to the attacker. Meanwhile, the attacker receives nearly 11 ether as a transaction fee for their successful bid. Eventually, when the legitimate transaction for 11 ether is processed, the rightful contender pays the intended amount.

> > In this scenario, the attacker profits by gaining access to the throne while only spending a fraction of an ether. This showcases the potential risks associated with frontrunning in smart contracts.

Please note that this smart contract is designed to illustrate the concept of frontrunning vulnerability and does not constitute a real-world implementation for production use. 
