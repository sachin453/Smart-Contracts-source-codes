/*
 * @author: noamasamreen93
 */

pragma solidity ^0.4.23;

contract MultipleOwners {
  address public root;
  mapping (address => address) public owners; // owner => parent of owner

  constructor() public {
    root = msg.sender;
    owners[root] = root;
  }

  modifier onlyOwner() {
    require(owners[msg.sender] != 0);
    _;
  }

  // <CTU>
  function newOwner(address _owner) external returns (bool) {
    require(_owner != 0);
    owners[_owner] = msg.sender;
    return true;
  }

  function deleteOwner(address _owner) onlyOwner external returns (bool) {
    require(owners[_owner] == msg.sender || (owners[_owner] != 0 && msg.sender == root));
    owners[_owner] = 0;
    return true;
  }
}

contract MultipleOwnersHelper is MultipleOwners {

  function withdraw() onlyOwner {
    msg.sender.transfer(this.balance);
  }

  function() payable {
  }

}
