/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 11
 */

 pragma solidity ^0.4.15;

 contract IntegerUO {
     uint private sellerBalance=0;

     function add(uint value) returns (bool){
        // <IntegerUO>
         sellerBalance += value; // possible overflow
     }
 }
