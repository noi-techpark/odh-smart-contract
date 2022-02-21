pragma solidity >= 0.5.0 < 0.6.0;

import "github.com/provable-things/ethereum-api/provableAPI_0.5.sol";

contract AirTemperatureOracle is usingProvable {

   string public airTemperature;

   event LogAirTemperatureUpdated(string airTemperature);
   event LogNewProvableQuery(string description);

    constructor() public {
        update();
    }



   function __callback(bytes32 _myid, string memory _result) public {
       require(msg.sender == provable_cbAddress());
       airTemperature = _result;
       emit LogAirTemperatureUpdated(airTemperature);
   }

   function update() public payable {
        emit LogNewProvableQuery("Provable query was sent, standing by for the answer..");
        provable_query("URL", "json(https://mobility.api.opendatahub.bz.it/v2/flat,node/MeteoStation/*/latest?limit=200&select=mvalue&where=scode.eq.83200MS,tname.eq.air-temperature&distinct=true&timezone=UTC).data[0].mvalue");
   }
}