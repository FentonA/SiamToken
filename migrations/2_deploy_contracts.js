let SiamToken = artifacts.require("./SiamToken");
let SiamTokenSale = artifacts.require("./SiamSale");

module.exports = function(deployer){
    deployer.deploy(SiamToken, 2000015000000).then(function(){
        let tokenPrice = 12000000000000; // price of one siam token in gwei
        return deployer.deploy(SiamTokenSale, SiamToken.address, tokenPrice)
    });
};