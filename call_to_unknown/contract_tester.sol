/*
 * @source: https://consensys.github.io/smart-contract-best-practices/recommendations/#avoid-using-txorigin
 * @author: Consensys Diligence
 * @vulnerable_at_lines: 20
 * Modified by noamasamreen93
 */

pragma solidity ^0.5.24;

contract ContractTester {

    address owner;

    function ContractTester() public {
        owner = msg.sender;
    }

    function sendTo(address receiver, uint amount) public {
        // <CTU>
        require(tx.origin == owner);
        receiver.transfer(amount);
    }

}
