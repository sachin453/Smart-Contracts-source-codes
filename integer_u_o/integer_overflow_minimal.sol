/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 15
 */

pragma solidity ^0.4.19;

contract IntegerOverflowMinimal {
    uint public count = 1;

    function run(uint256 input) public {
        // <IntegerUO>
        count -= input;
    }
}
