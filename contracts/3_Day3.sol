// SPDX-License-Identifier: UNLICENSED;

pragma solidity ^0.8.0;

contract Day3 {
    string [] text;
    enum DAYS { SUN , MON, TUE, WED}
    
    constructor() {
        text.push("Hello world!");
    }
    
    function showEnum() public returns (DAYS) {
        return DAYS.MON;
    }
    
    function setTextMemory() public view returns (string memory) {
        string memory str1;
        str1  = text[0]; 
        for (uint i=0; i<10; i++)
            str1 = "Foo";
        return str1;
    }
    
    function setTextStorage() public returns (string memory) {
        string storage str2;
        str2 = text[0];
        for (uint i=0; i<10; i++)
            text[0] = "Foo";
        return text[0];
    }
    
    function foo() public {
        passMemory(text[0]);
        passStotage(text[0]);
    }
    
    function passCallDate(string calldata s1) public pure returns (string memory) {
        // calldata can't edit in function
        // s1 = "World!"; // can't use
        return s1;
    }
   
    function passMemory(string memory s1) public pure returns (string memory) {
        s1 = "World!";
        return s1;
    }
    
    function passStotage(string storage s2) internal pure returns (string memory) {
        return s2;
    }
}