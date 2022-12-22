//SPDX-License-Identifier:MIT
pragma solidity ^0.8.5;

//datatypes - values and references 

contract ValueTypes {
    bool public myBool ; // by default bool is false
    bool public mybool2 = true;
    uint public myunit = 937;
   // uint public myunit2 = -984; no negative interger on unit
   int public myint = -984;

//mininum int
int public mint = type(int).min;
//max value
int public maxInt = type(int).max;

    address public addr=0x583031D1113aD414F02576BD6afaBfb302140225;

    bytes32 public b32;

}
