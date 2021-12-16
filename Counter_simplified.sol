pragma solidity ^0.6.0;

contract Counter{
    uint public count=0;

    function incrementCount() public{
        count++;
    }
}