/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: -
 */
pragma solidity ^0.4.15;

contract Alice { 
    function set(uint); 
    function set_fixed(int); 
}

contract Bob { 
	//<Typecasts>
    function set(Alice c){ 
        c.set(42); 
    }

    function set_fixed(Alice c){ 
        c.set_fixed(42); 
    } 
}
