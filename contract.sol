// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RemoveVowels {

    function removeVowels(string memory _input) public pure returns (string memory){
        bytes memory input = bytes(_input);
        bytes memory str = new bytes(input.length);
        uint index = 0;

        for (uint i = 0; i < input.length; i++) {
            if (input[i] != "a" && input[i] != "e" && input[i] != "i" && input[i] != "o" && input[i] != "u" && 
            input[i] != "A" && input[i] != "E" && input[i] != "I" && input[i] != "O" && input[i] != "U") {
                str[index] = input[i];
                index++;
            }
        }
        bytes memory result = new bytes(index);
        for (uint i = 0; i < index; i++) {
            result[i] = str[i];
        }
        return string(result);
    }
}
