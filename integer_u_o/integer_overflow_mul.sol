/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 17
 */

pragma solidity ^0.4.19;

contract IntegerUOMUL {
    uint public count = 2;

    function run(uint256 input) public {
         // <IntegerUO>
        count *= input;
    }
}