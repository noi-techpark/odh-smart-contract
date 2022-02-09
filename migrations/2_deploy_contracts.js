var WeatherOracle = artifacts.require("./WeatherOracle.sol");

module.exports = function(deployer) {
  deployer.deploy(WeatherOracle);
};