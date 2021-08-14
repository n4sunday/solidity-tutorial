// SPDX-License-Identifier: UNLICENSED;

pragma solidity ^0.8.0;

contract Day2Part1 {
    uint256 number = 9;

    // private : in smart contract only
    // internal : in smart contract and inheritance
    // extenal : extenal only
    // public : all contract

    function getNumberPrivate() private returns (uint256) {
        return number;
    }

    function getNumberExternal() external returns (uint256) {
        return number;
    }

    function setNumber(uint256 _number) public {
        number = _number;
    
}

contract Day2Part2 {
    uint256 number = 9;
    // Mutability
    // - view : dont't write value to contract
    // - pure : don't interfere state variable (internal function)
    // - not specified : full read and write

    function setNumber(uint256 _number) public {
        number = _number;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }

    function pureFunction() public pure returns (uint256) {
        uint256 a = 4;
        a++;
        return a;
    }

     // Data Location: 
    // - Storage : store in block
    // - Memory : store in memory
    //   - string in function agrement store in memory 
    //   - copy data
    // - Stack : store in memory and limit size
    //   - use with primitive type (uint, bool, address)
    //   - in function agrement store in stack memory
    string name = "Nattapon Lueakaew";

    function setName() public returns (string memory) {
        uint x = 3;
        string memory hobby = "Programming"; // can assign value
        string storage firstname; // don't assign value
        
        // call by value and call by reference
        firstname = name;
        name = "Sunday";
        return firstname;
    }
}

contract Day2Part3 {
    // Data Location: 
    // - Storage : store in block
    // - Memory : store in memory
    //   - string in function agrement store in memory 
    //   - copy data
    // - Stack : store in memory and limit size
    //   - use with primitive type (uint, bool, address)
    //   - in function agrement store in stack memory
    string name = "Nattapon Lueakaew";

    function setName() public returns (string memory) {
        uint x = 3;
        string memory hobby = "Programming"; // can assign value
        string storage firstname; // don't assign value
        
        // call by value and call by reference
        firstname = name;
        name = "Sunday";
        return firstname;
    }
}

contract Day2Part4 {
  struct Guitar {
        uint id;
        string name;
    }
    
    // Guitar[] guitars; // not fix value will be dynamic array
    // - can use guitars.push(Guitar(1,"Ibanez"));
    
    // Guitar[3] guitars; // fix array 3 element
    // - can use guitars[0].name = "some value";
    
    Guitar[] guitars;
    
    // Case dynamic  Guitar[] guitars;
    function setGuitar1() public returns (Guitar memory) {
        // Guitar guitar = Guitar(1,"Ibanez"); // can't use struct 
        // Guitar memory guitar = Guitar(1,"Ibanez"); // add memory
        // guitar = guitars[0];
        // guitars[0].name = "Fender";
        // return guitar;
        
        Guitar memory guitar = Guitar(1,"Ibanez");
        guitars.push(Guitar(1,"Ibanez"));
        guitar = guitars[0];
        guitars[0].name = "Fender";
        return guitar;
    }
    
    // Case fix Guitar[3] guitars;
     function setGuitar2() public returns (Guitar memory) {
        Guitar memory guitar = Guitar(1,"Ibanez");
        guitars[0].name = "Ibanez";
        guitar = guitars[0];
        guitars[0].name = "Fender";
        return guitar;
    }
    
    function setGuitarStorage() public returns (Guitar memory) {
        Guitar storage guitar;
        guitars[0].name = "Ibanez";
        guitar = guitars[0];
        guitars[0].name = "Fender";
        return guitar;
    }
}