/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 14
 */

pragma solidity 0.4.25;

contract IntegerUOAdd {
    uint public balance = 1;

    function add(uint256 deposit) public {
        // <IntegerUO>
        balance += deposit;
    }
}
