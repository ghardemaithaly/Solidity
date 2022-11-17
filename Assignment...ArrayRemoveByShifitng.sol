//SPDX-License-Identifier:MIT

pragma solidity ^0.8.3;

contract ArrayRemoveByShifting{
    //create an  empty array
      uint [] private nums;

      //insert values in numsarray
      function insertNumbers(uint num) public{
    nums.push(num);
}

    //get the values of an array
    function getValue() public view  returns (uint [] memory){
    return nums;
    }

    //remove values from nums
    function removeAtIndex(uint index)public{
    delete nums[index];// get 0 in that index

}
  function remove(uint index) public{
      //coping elements
      for (uint i= index; i< nums.length-1 ; i++){
          nums[i] = nums[i+1];
      }
      nums.pop();
  }


}




