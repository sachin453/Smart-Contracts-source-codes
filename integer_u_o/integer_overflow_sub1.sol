/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 25
 */

pragma solidity ^0.5.23;

contract IntegerUOSUB {
    uint256 private initialized = 0;
    uint256 public count = 1;

    function init() public {
        initialized = 1;
    }

    function run(uint256 input) {
        if (initialized == 0) {
            return;
        } 
	// <IntegerUO>
        count -= input;
    }
}
