/*
 * @author: noamasamreen93
 * @vulnerable_at_lines: 23
 */

pragma solidity ^0.5.15;

contract DosAuction {
  address currentPlayer;
  uint currentBid;

  function bid() payable {
    require(msg.value > currentBid);

   if (currentPlayer != 0) {
      //E.g. if recipients fallback function is just revert()
      // <DENIAL_OF_SERVICE>
      require(currentPlayer.send(currentBid));
    }

    currentPlayer = msg.sender;
    currentBid         = msg.value;
  }
}
