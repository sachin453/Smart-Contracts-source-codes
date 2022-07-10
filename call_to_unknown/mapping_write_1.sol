/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 18
 */

 pragma solidity ^0.5.24;

 contract MapValue {
     address public owner;
     uint256[] mapToCheck;

     function set(uint256 key, uint256 value) public {
         if (mapToCheck.length <= key) {
             mapToCheck.length = key + 1;
         }
        // <CTU>
         mapToCheck[key] = value; 
     }

     function get(uint256 key) public view returns (uint256) {
         return mapToCheck[key];
     }
     function withdraw() public{
       require(msg.sender == owner);
       msg.sender.transfer(address(this).balance);
     }
 }
