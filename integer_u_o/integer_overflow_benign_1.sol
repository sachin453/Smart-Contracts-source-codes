/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 13
 */

Pragma solidity ^0.4.19;

contract IntegerUO2 {
    uint public count = 1;

    function run(uint256 input) public {
 // <IntegerUO>
        uint respnse = count - input;
    }
}
