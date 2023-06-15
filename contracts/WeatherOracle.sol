// SPDX-FileCopyrightText: NOI Techpark <digital@noi.bz.it>
//
// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.6.11;
import "./provableAPI_0.6.sol";

contract WeatherOracle is usingProvable {

   string public airTemperature;

   event LogConstructorInitiated(string nextStep);
   event LogPriceUpdated(string price);
   event LogNewProvableQuery(string description);

   function ExampleContract() payable public {
       LogConstructorInitiated("Constructor was initiated. Call 'updatePrice()' to send the Provable Query.");
   }

   function __callback(bytes32 myid, string memory result) override public {
       if (msg.sender != provable_cbAddress()) revert();
       airTemperature = result;
       LogPriceUpdated(result);
   }

   function updatePrice() payable public {
       if (provable_getPrice("URL") > address(this).balance) {
           LogNewProvableQuery("Provable query was NOT sent, please add some ETH to cover for the query fee");
       } else {
           LogNewProvableQuery("Provable query was sent, standing by for the answer..");
           provable_query("URL", "json(https://mobility.api.opendatahub.com/v2/flat%2Cnode/MeteoStation/%2A/latest?limit=200&select=tname%2C%20mvalue&where=scode.eq.83200MS&distinct=true&timezone=UTC).data[1]");
       }
   }
}