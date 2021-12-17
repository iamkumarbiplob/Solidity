pragma solidity ^0.6.0;

contract Array{
    // Array
    uint[] public uintArray=[1,2,3,4,5,6];
    string[] public stringArray=["Apple","Banana","Carrot"];
    string[] public values;
    uint[][] public array2D=[[1,2,3],[4,5,6]];

    function addValue(string memory _value) public{
        values.push(_value);
    }

    function valueCount() public view returns(uint){
        return values.length;
    }
}