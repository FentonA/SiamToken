pragma solidity ^0.4.17;

import './SiamToken./sol';

contract SiamSale{
    address 
    SiamToken public siamContract;
    uint256 public tokenPrice;
    uint256 tokenSold;

    event Sell(address _buyer, uint256 _amount);

    function SiamTokenSale(SiamToken _siamContract, uint256 _tokenPrice) public {
        admin = msg.sender;
        siamContract = _siamContract;
        tokenPrice = _tokenPrice;

    }

    function buyTokens(uint256 _numberOfTokens) public payable{
        require(msg.value == muliply(_numberOfTokens, tokenPrice));
        require(siamContract.balanceOf(this)>= _numberOfTokens);
        require(siamContract,transfer(msg.sender, _numberOfTokens));

        tokenSold += _numnerOfTokens;
        Sell(msg.sender, _numberOfTokens);

    }

    function endSale() public {
        require(msg.sender == admin);
        require(siamContract.transfer(admin, tokenContract.balanceOf(this)));

        selfdestruct(admin);
    }
}