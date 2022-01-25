# NOTES

Variables are declared as either storage, memory or calldata to explicitly specify the location of the data.
- **storage** - variable is a state variable (store on blockchain)
- **memory** - variable is in memory and it exists while a function is being called
- **calldata** - special data location that contains function arguments, only available for external functions
***
Constructors are used only when creating a contract so defining them as public has no sense.
***
- Gas limit - max gas you are willing to use (decides if the transaction will be done)
- Block gas limi - amount of gas will be used to run code - set by network
- Gas price - how much ether you are willing to pay for 1 gas (speed of transaction)
- Ether = gas limit * gas price
- If transaction succed the amount of Ether which was not used is refunded.
- If transaction failed amount of gas used to get into some step in code will be used instead (if it is a infinity loop, all ether you were willing to use will be consumed)
***
**INPUTS IN FUNCTIONS**

INPUTS that you CAN'T use in solidity:
- map
- multi-dimensional arrays 

OUTPUSTS that you CAN'T use in solidity:
- map
- multi-dimensional arrays (unfixed size)

! you can define multi-dimensional arrays (fixed size) but the bigger the array is the more gas you pay !

***
Smart contracts should be:
- simple
- reliable 
- predictable
***
In solidity you can return multiple values - f. ex. when we return output of 2 functions 
***
Functions can be:
- private
- public
- external
- internal 

and have certian behaviour

- view - do not modify the state
- pure - do not modify the state and do not read the state
- payable - 