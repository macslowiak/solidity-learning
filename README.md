# NOTES

***
** WE ARE STARTING WITH SOLIDITY 0.5 **
***

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

- view - do not modify the state (its about storage)
- pure - do not modify the state and do not read the state (its about storage)
- payable - can recieve ether into a contract

***

"_" before variable means that it is a function parameter and to avoid collisions;

***
**Functions modifiers** - it is reusable code which is run before and/or after the function

Example of use:
- restricting write access (we don't have public functions which somebody can use)
- input validation (we can validate what the user typed)
- it is Reentrancy guard (it can block multiple reentrance to function which could be very expensive)

- **modifier** - declarying modifier
- "_;" some code - we are telling solidity to execute "some code" after executing function (do not think about modidfier here)
- some code "_;" - we are telling solidity to execute "some code" before executing function (do not think about modidfier here)

***

**Constructors** - are executed only when contract is created

Constructors have access to special variables like msg.sender, block.timestamp as the normal functions.

***

Inheritance with SINGLE PARENT:
- inherit functions  - we are doing it by word "is"
- override functions - we can override function by copying it and changing the output 
**if we f.ex. add input to the function that inherits it will be another function then**

Passing parameters to parent constructor:
- we can simply pass parameters by **contract B is A("Contract B")**
- we can also require parameter in contract B then **contract B is A { constructor(string memory _name) A(_name) public {}}**

***
MULTIPLE INHERITANCE

- we inherit by using "is" word with contracts name and "," separator
- if we inherit two contracts with the same name of functions,  contract will inherits las mentioned contract [**right most parent contract**] 
(it is an exception when we want to inherit contract that inherits from other (A) and contract that not inherits from others (B).
In this situation **contract D is A, B** will get error)


- we have to ways to calling function from other contracts 
1. We are using **right most parent** convention 
2. We are using word **super** - then all function with super are called
- the difference is that in the first case we can f.ex. call A and C(inherits from A) functions and in 
the second one we can cal A, B and C when we have **super** word
- we use word "super" to call all parents contracts

The order which the parent constructors are called are determined by inheritance.
To override state variable of a parent re-assign it using constructor (do not simply re-declare in the child contract)


