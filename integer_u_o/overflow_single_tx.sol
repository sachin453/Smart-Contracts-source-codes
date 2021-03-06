/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 18,24,30,36,42,48
 */
pragma solidity ^0.5.23;

contract IntegerUOSingle {
    uint public count = 1;

    // ADD 
    function overflowaddtostate(uint256 input) public {
        // <IntegerUO>
        count += input;
    }

    // MUL 
    function overflowmultostate(uint256 input) public {
        // <IntegerUO>
        count *= input;
    }

    // Underflow 
    function underflowtostate(uint256 input) public {
        // <IntegerUO>
        count -= input;
    }

    // ADD Overflow
    function overflowlocalonly(uint256 input) public {
        // <IntegerUO>
        uint res = count + input;
    }

    // MUL Overflow
    function overflowmulocalonly(uint256 input) public {
        // <IntegerUO>
        uint res = count * input;
    }

    // Underflow
    function underflowlocalonly(uint256 input) public {
        // <IntegerUO>
       	uint res = count - input;
    }

}
