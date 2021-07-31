pragma solidity ^0.5.1;

import './SiamToken.sol';

contract SiamSale{
    address payable public admin;
    SiamToken public siamContract;
    uint256 public tokenPrice;
    uint256 tokenSold;

    event Sell(address _buyer, uint256 _amount);

    function SiamTokenSale(SiamToken _siamContract, uint256 _tokenPrice) public {
        admin = msg.sender;
        siamContract = _siamContract;
        tokenPrice = _tokenPrice;

    }

    function multiply(uint x, uint y) internal pure returns (uint z){
        require(y == 0 || (z = x * y) / y == x);
    }

    function buyTokens(uint256 _numberOfTokens) public payable{
        require( msg.value == multiply(_numberOfTokens, tokenPrice));
        require(siamContract.balanceOf(address(this))>= _numberOfTokens);
        require(siamContract.transfer(msg.sender, _numberOfTokens));

        tokenSold += _numberOfTokens;
       emit Sell(msg.sender, _numberOfTokens);

    }

    function endSale() public {
        require(msg.sender == admin);
        require(siamContract.transfer(admin, siamContract.balanceOf(address(this))));

        selfdestruct(admin);
    }
}