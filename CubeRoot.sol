//SPDX-License-Identifier:MIT
pragma solidity ^0.8.3;

contract CubeRoot{
  
    function CubeRootIs(uint cube) pure  public  returns(uint){
        return cube * cube * cube;
    }
}
