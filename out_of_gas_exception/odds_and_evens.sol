/*
 * @source: http://blockchain.unica.it/projects/ethereum-survey/attacks.html#oddsandevens
 * @author: -
 * @vulnerable_at_lines: - 
Modified by noamasamreen93
 */

pragma solidity ^0.4.2;

contract OddsAndEvens{

  struct Player {
    address addr;
    uint number;
  }

  Player[2] public players;         //public only for debug purpose

  uint8 tot;
  address owner;

  function OddsAndEvens() {
    owner = msg.sender;
  }
// <OGEx>
  function play(uint number) payable{
    if (msg.value != 1 ether) 
	//<Denial_Of_Service>
	throw;
    // <OGEx>
    players[tot] = Player(msg.sender, number);
    tot++;

    if (tot==2) andTheWinnerIs();
  }

  function andTheWinnerIs() private {
    bool res ;
    uint n = players[0].number+players[1].number;
    if (n%2==0) {
      res = players[0].addr.send(1800 finney);
    }
    else {
      res = players[1].addr.send(1800 finney);
    }

    delete players;
    tot=0;
  }

  function getProfit() {
    if(msg.sender!=owner) 
	//<Denial_Of_Service
	throw;
	// <OGEx>
    bool res = msg.sender.send(this.balance);
  }

}
