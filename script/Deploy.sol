// Deploy.sol
pragma solidity ^0.8.0;

import "../lib/forge-std/src/Script.sol";
import "../src/contracts/Preggy.sol";
import "../src/contracts/ERC6551Account.sol";
import "../src/contracts/ERC6551Registry.sol";

contract Deploy is Script {
    function run() public {
        vm.startBroadcast();

        Preggy preggy = new Preggy();
        ERC6551Account account = new ERC6551Account();
        ERC6551Registry registry = new ERC6551Registry();

        console.log("Preggy contract deployed to:", address(preggy));
        console.log("Account contract deployed to:", address(account));
        console.log("Registry contract deployed to:", address(registry));

        vm.stopBroadcast();
    }
}