# Call To Unknown
This vulnerability is related to access control issues. 
Accessing a contract’s functionality through its public or external functions with improper function
signatures or insecure visibility settings gives rise to this vulnerability in a smart contract.

## Examples
1. A vulnerable smart contract gets initialized by an address which gets decided by line 2.

```
function initialize() public {
	new_owner = msg.sender;
}
```
2. Built-in low level function ```delegatecall()```. When a contract executes delegatecall() to call another 
contract, then the latter contract's code gets executed.
```
function() payable {
    if (msg.data.length > 0)
      owner.delegatecall(msg.data); 
  }
```