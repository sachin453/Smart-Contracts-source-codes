/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 20
 */

pragma solidity ^0.4.24;

contract InsecureConstructor{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }

    // The name of the constructor should be the name of the contract
    // Anyone can call the this function once the contract is deployed
    // <CTU>
    function InvalidName()
        public
    {
        owner = msg.sender;
    }

    function () payable {}

    function withdraw()
        public
        onlyowner
    {
       owner.transfer(this.balance);
    }
}
