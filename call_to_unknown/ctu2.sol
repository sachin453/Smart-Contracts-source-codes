/*
 * @source: https://github.com/sigp/solidity-security-blog
 * @author: -
 * @vulnerable_at_lines: 20
 * Modified by noamasamreen93
 */

 pragma solidity ^0.4.22;

 contract Phishable {
    address public owner;

    constructor (address _owner) {
        owner = _owner;
    }

    function () public payable {} // collect ether

    function withdrawAll(address _recipient) public {
        // <CTU>
        require(tx.origin == owner);
        _recipient.transfer(this.balance);
    }
}
