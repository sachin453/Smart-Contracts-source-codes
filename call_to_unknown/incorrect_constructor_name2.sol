/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 18
 */


pragma solidity ^0.4.24;

contract InvalidConstructor{
    address private owner;

    modifier onlyowner {
        require(msg.sender==owner);
        _;
    }
    // <CTU>
    function NotContractName()
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
