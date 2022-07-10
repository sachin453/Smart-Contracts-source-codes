/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 20
 */

 pragma solidity ^0.5.22;

 contract ContractCall {
    address public owner;

    constructor (address _owner) {
        owner = _owner;
    }

    function () public payable {} // recieve ether

    function withdraw(address _recipient) public {
        // <CTU>
        require(tx.origin == owner);
        _recipient.transfer(this.balance);
    }
}
