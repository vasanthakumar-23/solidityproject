# CREATING MY OWN TOKEN

# DESCRIPTION
Solidity is a programming language that is used to develop smart contracts on the Ethereum blockchain. It is a contract-oriented, high-level programming language that is influenced by C++, Python, and JavaScript.

This guide will take you through the process of creating your own token in Solidity. This token can be used for a variety of purposes, such as a reward system for a decentralized application, or as a means of exchange in a decentralized exchange.

# Prerequisites:
Before you can create your own token in Solidity, you will need the following:

- A basic understanding of programming concepts, such as variables, functions, and data types
- Knowledge of the Solidity programming language
- An Ethereum wallet
- A code editor

# GETTING STARTED

1. Open your code editor and create a new file. Save it with a .sol extension.

2. In the new file, create a contract for your token. A contract is a fundamental building block of a smart contract. 

3. Define the name of your token. It should be a unique name that distinguishes it from other tokens. 

4. Set the symbol for your token. This is a three or four-letter code that represents your token.

5. Define the number of decimals for your token. This determines the level of precision your token will have.

6. Set the total supply of your token. This is the maximum number of tokens that will be created.

7. Define a mapping to keep track of the token balance of each address. 

8. Create a constructor function to initialize the total supply and allocate it to the address that created the contract.

9. Define the transfer function to allow users to transfer tokens to other addresses.

10. Create a function to check the token balance of a specific address.

11. Add modifiers to restrict access to certain functions, such as only allowing the owner of the contract to mint new tokens.

12. Compile your contract to ensure there are no syntax errors.

13. Deploy your contract to the Ethereum blockchain using a wallet such as MetaMask or MyEtherWallet.

14. Interact with your token by sending and receiving transactions.
15. 'HERE IS MY CODE FOR CREATING OWN TOKEN"
# EXECUTING PROGRAM
```

// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract MyToken{
    string public tokenName="THUNDER";
    string public tokenAbbrevation="THN";
    uint public totalsupply=0;
     
     mapping(address=>uint) public balances;
     function mint(address _address,uint _value)public{
         totalsupply+=_value;
         balances[_address]+=_value;
     }
     function burn(address _address,uint _value)public{
         if(balances[_address]>=_value){
             totalsupply-=_value;
         balances[_address]-=_value;

         }
     }
}

```

# AUTHOR
K.VASANTHAKUMAR
# LICENCED
This project is licensed under the MIT License - see the LICENSE.md file for details
