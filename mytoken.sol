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