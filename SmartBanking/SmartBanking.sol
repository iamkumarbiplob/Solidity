// contracts/GLDToken.sol
//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";

contract SmartBanking is Ownable {
    struct order {
        uint256 Id;
        address tokenHolder;
        uint256 amount;
    }

    mapping(uint256 => order) public balances;
    address public tokenOwner;
    uint256 public counter;

    constructor() {
        counter = 0;
        tokenOwner = msg.sender;
    }

    function openAccount(address _user) public onlyOwner {
        uint256 _balance = 0;
        order memory _order = order(counter, _user, _balance);
        balances[counter] = _order;
        counter += 1;
    }

    function depositToBank(uint256 _Id, uint256 _balance) public payable {
        require(msg.value <= _balance, "Balance Not Equal");
        require(
            msg.sender == balances[_Id].tokenHolder,
            "You are not Owner of this Account"
        );

        balances[_Id].amount += _balance;
    }

    function withdrawFromBank(uint256 _Id, uint256 _balance) public {
        require(
            msg.sender == balances[_Id].tokenHolder,
            "You are not Owner of this Account"
        );
        require(balances[_Id].amount >= _balance, "Not Enough Balance");

        balances[_Id].amount -= _balance;
    }
}

