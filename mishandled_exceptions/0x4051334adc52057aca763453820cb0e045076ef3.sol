/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 15
 */

pragma solidity ^0.4.24;
 
contract MishandledExDemo2{
    
    function transfer(address from,address caddress,address[] _tos,uint v)public returns (bool){
        require(_tos.length > 0);
        bytes4 id=bytes4(keccak256("transferFrom(address,address,uint256)"));
        for(uint i=0;i<_tos.length;i++){
          // <MishandledEx>
            caddress.call(id,from,_tos[i],v);
        }
        return true;
    }
}