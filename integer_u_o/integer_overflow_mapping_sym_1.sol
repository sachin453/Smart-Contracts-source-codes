/*
 * @author: noamasamreen
 * @vulnerable_at_lines: 14
 */

pragma solidity ^0.4.11;

contract IntegerOverflowMappingSym1 {
    mapping(uint256 => uint256) map;

    function init(uint256 k, uint256 v) public {
      // <IntegerUO>
        map[k] -= v;
    }
}
