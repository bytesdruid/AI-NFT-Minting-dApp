// migrations change state of the blockchain
const Mint = artifacts.require("Mint");

module.exports = function (deployer) {
  deployer.deploy(Mint);
};
