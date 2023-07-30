# ETH-AVAX-MOD-3
## Project Title

write a smart contract to create your own token on a local HardHat network. Once you have your contract, you should be able to use remix to interact with it. From remix, the contract owner should be able to mint tokens to a provided address. Any user should be able to burn and transfer tokens.

## Description

In this code we are going to create a new token named Doge and abbrivation "Dog" in contract Assessment.

```
string public tokenname="Doge";
string public tokenabbr="Dog";
uint public totalsupply=0;
address owner;
```

Firstly Declaring TokenName, Tokenabbr,Totalsupply and owner.

```
mapping(address=>uint) public balance;
```

Then mapping address of account to the balance.


constructor will help in assigning the value of owner address to owner.
using modifier can allow access to only owner to mint token.
Declaring and defining mint function with modifier to add values to the balance in account.

Declaring and defining burn function to deduct values from balance.
using if statement to check the condition that balance should not be less than deducting value.


## Getting Started

### Installing

* Run this Program on Remix.
* No modification needed

### Executing program

* After pasting this code on remix, hit the compile button on solidity compiler on left hand side bar.
* After compiling, then go on compile and run tab on left hand side bar.
* Deploy the Program.
* Go on Deployed Contracts, in mytoken use following function,
* use burn function to deduct value from my balance.
* use mint function to add value to balance.
* use total supply to check value in balance.
