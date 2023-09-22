// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract MyOnChain2023Yearbook {
    address[] public signers;
    string[] public messages;
    mapping(address => string) public signerToMessage;

    function getAllSigners() public view returns (address[] memory allSigners) {
        return signers;
    }

    function getAllMessages() public view returns (string[] memory allMessages) {
        return messages;
    }

    function signYearbook(string calldata message) public {
        signers.push(msg.sender);
        messages.push(message);
        signerToMessage[msg.sender] = message;
    }
}
