/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 20,22
 */

 pragma solidity ^0.4.18;

 contract TokenCheck {

   mapping(address => uint) balances;
   uint public totalSupply;

   function TokenCheck(uint _initialSupply) {
     balances[msg.sender] = totalSupply = _initialSupply;
   }

   function transfer(address _to, uint _value) public returns (bool) {
     // <IntegerUO>
     require(balances[msg.sender] - _value >= 0);
    // <IntegerUO>
     balances[msg.sender] -= _value;
     balances[_to] += _value;
     return true;
   }

   function balanceOf(address _owner) public constant returns (uint balance) {
     return balances[_owner];
   }
 }
