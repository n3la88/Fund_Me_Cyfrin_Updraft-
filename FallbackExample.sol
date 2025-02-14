// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract FallbackExample{

    uint256 public result;

    receive() external payable {
        result = 1;
    }

    fallback() external payable {
        result = 2;
    }

    /*
    Ethe is sent to contract

        is msg.data empty?
              /    \
            yes    no
           /         \  
     receive()?   fallback()   
       /  \               
    yes    no
    /        \      
receive()?   fallback()       


    */

}