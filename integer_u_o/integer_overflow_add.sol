/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 13
 */

pragma solidity ^0.4.19;

contract IntegerOverflowAdd {
    uint public count = 1;

    function run(uint256 input) public {
       // <IntegerUO>
        count += input;
    }
}
