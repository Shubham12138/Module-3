# Module-3
Use of ERC 20


I made this program to show the use of ERC 20 personalized token program.

First of all, I imported both the required repositories from open Zepplin and inherited their to my main contract viz., useERC20 which are ERC20.sol and Ownable.sol.
There after I created an address variable "ak".

1.) made a constructor to initialize the address variable with "msg.sender".
2.) Created a modifier so that only sender can operate on those functions.

I used 4 function from ERC20:

1.) _mint() function, in addBalance(uint amount) = function to mint some token to others accounts
2.) _burn() function, in destroy(uint amount) = function to burn the tokens and it will be abided by the modifier, so that only the owner can burn his/her tokens
3.) balanceOf() function, in balanceIs(address b) = function to know the balance of the accounts and it is not restricted by modifier , so that anyone can see the token info
4.) trasferFrom() function, in transferSome(address ad, uint256 amount) = final function to transfer some tokens to other accounts

I also used the Owner.sol program of same authors :

1.) onlyOwner modifier, = it will restrict the operations limited to the sender only
