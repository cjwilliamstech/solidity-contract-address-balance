// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0  <0.9.0;

contract Deposit{
    address public owner;

    constructor(){
        owner = msg.sender;
    }
    receive() external payable{
    }

    fallback() external payable{

    }

    function getBalance() public view returns(uint){
        return address(this).balance;
    }

    function sendEther() public payable{
        uint x;
        x++;
    }

    function transferEther(address payable recipient, uint amount) public returns(bool){
        require(owner == msg.sender, "Transfer failed, you are not the owner!!");

        if (amount <= getBalance()){
            recipient.transfer(amount);
            return true;

        }else{
            return false;
        }
    }
}