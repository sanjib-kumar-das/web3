pragma solidity ^0.8.7;

contract myContract{
  string public hello = "Hi there!";
  address payable public seller;
  address payable public buyer;

  struct order{
    string description;
    bool completed;
  }

  function confirmOrder() public{
    buyer = payable(msg.sender);
  }

  constructor(string memory _text){
    hello = _text;
  }
}
