/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 23,25,33
 */

pragma solidity ^0.4.21;

contract TokenCheck2 {
    mapping(address => uint256) public balanceOf;
    uint256 constant PRICE_PER_TOKEN = 1 ether;

    function TokenCheck2(address _player) public payable {
        require(msg.value == 1 ether);
    }

    function isComplete() public view returns (bool) {
        return address(this).balance < 1 ether;
    }

    function buy(uint256 numTokens) public payable {
        // <IntegerUO>
        require(msg.value == numTokens * PRICE_PER_TOKEN);
       // <IntegerUO>
        balanceOf[msg.sender] += numTokens;
    }

    function sell(uint256 numTokens) public {
        require(balanceOf[msg.sender] >= numTokens);

        balanceOf[msg.sender] -= numTokens;
       // <IntegerUO>
        msg.sender.transfer(numTokens * PRICE_PER_TOKEN);
    }
}
