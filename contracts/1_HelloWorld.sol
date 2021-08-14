// SPDX-License-Identifier: UNLICENSED;

// compiler version
pragma solidity ^0.8.0;

// contract
contract HelloWorld {
    string hello = "Hello World"; // State Valiable store in Blockchan
    int256 myInt = -10;
    uint256 myUint = 20; // Default uint = uint256
    uint8 myUint8 = 30;
    bool myBool = true;
    bytes32 myByte = "B";
    uint256[] number = [1, 2, 3];
    address myAddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    struct Guitar {
        uint256 id;
        uint256 price;
        string name;
    }

    Guitar g = Guitar(2, 20000, "Ibanez");

    function getHello() public view returns (string memory) {
        return hello;
    }

    function setHello(string memory _hello) public {
        hello = _hello;
    }

    function addNumber(uint256 a, uint256 b) public returns (uint256) {
        return a + b;
    }

    function powNumber(uint256 a, uint256 b) public returns (uint256) {
        number[0] = 3;
        return a**b; // for convert wei to something
    }

    function foo() public returns (string memory) {
        if (number[0] == 1) {
            return "One";
        } else {
            return "Two";
        }
    }
}
