/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 19
 */

pragma solidity ^0.4.24;

contract DelegateCheck{

  address owner;

  constructor() public {
    owner = msg.sender;
  }

  function forward(address callee, bytes _data) public {
    // <CTU>
    require(callee.delegatecall(_data)); 
	//Use delegatecall with caution and make sure to never call untrusted contracts
  }

}
