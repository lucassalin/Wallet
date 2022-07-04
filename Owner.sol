pragma solidity ^0.8.15;

contract Owner {

	address owner;

	constructor() {
		owner = msg.sender;
	}

	modifier isOwner() {
		require(msg.sender == owner);
		_;
    }
}