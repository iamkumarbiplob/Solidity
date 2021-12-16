pragma solidity ^0.6.0;

contract Veriables__data_type__struct{
    uint count;
    // States Veriables
    string public myString="Hello, World";
    bytes32 public mybytes32="Hello, World";
    int public myInt=100;
    uint public myUint= 200;
    uint256 public myUint256= 100;
    uint8 public myUint8= 5;
    address public myAddress=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct MyStruct{
        uint myInt;
        string myString;
    }

    MyStruct public myStruct=MyStruct(1,"Hello, World");

    // Local Veriables

    function getValues() public pure returns(uint){
        uint values=1;
        return values;
    }


}