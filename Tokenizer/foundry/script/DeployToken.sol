// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ADMtoken} from "../src/ADMtoken.sol";
import {Script} from "forge-std/Script.sol";

contract DeployToken is Script {
    uint256 public constant INITIAL_SUPPLY = 100 ether;

    function run() external returns (ADMtoken) {
        vm.startBroadcast();
        ADMtoken token = new ADMtoken();
        vm.stopBroadcast();
        return token;
    }
}
