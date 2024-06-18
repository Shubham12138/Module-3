// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

//importing the required repositories
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract useERC20 is ERC20("Shubham's Token", "s") ,Ownable(msg.sender) {
    
    address ak;

    //constructor for initializing the address
    constructor (){
        ak=msg.sender;
    }

    modifier mod(address a) {
        require(a == msg.sender, "Only sender can access this feature");
        _;
    }

    //function to mint some token to others accounts
    function addBalance(uint amount) public mod(ak) returns (string memory){
        _mint(ak, amount);
        return "Amount is added to the account";
    }

    //function to know the balance of the accounts and it is not restricted by modifier , so that anyone can see the token info
    function balanceIs(address b) public view returns (uint256) {
        return balanceOf(b);
    }

    //function to burn the tokens and it will be abided by the modifier, so that only the owner can burn his/her tokens
    function destroy(uint amount) public onlyOwner {
        _burn(ak, amount);
    }

    //final function to transfer some tokens to other accounts
    function transferSome(address ad, uint256 amount) public mod(ak) {
        transferFrom(ak, ad, amount);
    }


} 

