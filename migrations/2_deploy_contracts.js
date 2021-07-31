let SiamToken = artifacts.require("./SiamToken");
let SiamTokenSale = artifacts.require("./SiamSale");

module.exports = function(deployer){
    deployer.deploy(SiamToken, 2150000).then(function(){
        let tokenPrice = 12000000000000;
        return deployer.deploy(SiamTokenSale, SiamToken.address, tokenPrice)
    });
};