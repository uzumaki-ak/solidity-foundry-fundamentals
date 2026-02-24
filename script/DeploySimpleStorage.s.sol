

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract DeploySimpleStorage is Script {
function run() external returns (SimpleStorage) {
  //it sasy that everything after this line inside this func should send to the rpc node, so we can deploy the contract on the blockchain
  vm.startBroadcast();
  SimpleStorage simpleStorage = new SimpleStorage();
  vm.stopBroadcast();
  return simpleStorage;
}
}