const SunnyToken = artifacts.require("SunnyToken");

module.exports = function(deployer) {
  deployer.deploy(SunnyToken);
};
