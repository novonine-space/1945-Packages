pragma solidity ^0.8.10;

contract TinlakeClaimRAD {
    mapping (address => bytes32) public accounts;
    event Claimed(address claimer, bytes32 account);

    function update(bytes32 account) public {
        require(account != 0);
        accounts[msg.sender] = account;
        emit Claimed(msg.sender, account);
    }
}
