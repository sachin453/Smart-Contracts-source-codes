/*
 * @author: noamasamreen
 * @vulnerable_at_lines: 14
 */

pragma solidity ^0.4.11;contract Suicidal {
  address owner;
  function suicide() public returns (address) {
    require(owner == msg.sender);
    selfdestruct(owner);
  }
}
contract C is Suicidal {
  address owner;
  function C() {
    owner = msg.sender;
  }
}
