// SPDX-FileCopyrightText: NOI Techpark <digital@noi.bz.it>
//
// SPDX-License-Identifier: CC0-1.0

var WeatherOracle = artifacts.require("./WeatherOracle.sol");

module.exports = function(deployer) {
  deployer.deploy(WeatherOracle);
};