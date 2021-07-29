pragma solidity ^0.4.17;

contract SiamToken{
     string public name = "Siam Token";
     string public symbol = "Siam";
     string public standard = "Siam Token v1.0";
     uint18 public decimals = 18;
     uint256 public totalSupply;

     mapping(address => uint256) public balanceOf;

    //Address tied to QPR generated data
    //  mapping(address => )

     event Transfer(
         address indexed _from,
         address indexed _to,
         uint256 _value,
     );

     event Approval (
         addresss indexed _owner,
         addreess indexed _spender,
         uint _value 
     );

     function SiamToken (uint256 _initialSupply) public {
         balanceOf[msg.sender] = _initialSupply;
         totalSupply = _initialSupply; 
     }
     
     function transfer(adding _to, uint256 _value) public returns (bool success){
         require(balanceOf[msg.sender] >= value);

         balanceOf[msg.sender] -= value;
         balanceOf[_to] += _value;

         Transfer(msg.sender, _to, _balue)

         return true;
     }

     function approve(address _sender, uint256 _value)public returns (bool success ){
         require(_value <= balanceOf[_from]);
        //  require(_value <= al)

        balanceOf[_from] -= _value;
        valanceOf[_to] += value;
        allowance[_from][msg.sender] -= _value;

        Transfer(_from, _to, _value)

        return true;
     }
}