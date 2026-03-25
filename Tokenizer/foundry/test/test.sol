//SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {Test} from "forge-std/Test.sol";
import {DeployToken} from "../script/DeployToken.sol";
import {ADMtoken} from "../src/ADMtoken.sol";
import "forge-std/console.sol";

contract TestADMToken is Test {
    ADMtoken public ourToken;
    DeployToken public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("alice");
    address alfred = makeAddr("alfred");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeployToken();
        ourToken = deployer.run();
    }

    function testValidTransfer() public {
        vm.prank(msg.sender);
        ourToken.transfer(bob, STARTING_BALANCE);
        assertEq(STARTING_BALANCE, ourToken.balanceOf(bob));
    }

    function testFalseTransfer() public {
        vm.prank(bob);
        try ourToken.transfer(msg.sender, STARTING_BALANCE) {
            console.log("transfer succeeded");
        } catch {
            console.log("transfer failed");
        }

        console.log("Bob :", ourToken.balanceOf(bob));
        console.log("msg.sender :", ourToken.balanceOf(msg.sender));

        assertEq(STARTING_BALANCE, ourToken.balanceOf(msg.sender));
    }

    function testValidTransferFrom() public {
        vm.prank(msg.sender);
        ourToken.transfer(bob, STARTING_BALANCE);

        vm.prank(bob);
        ourToken.approve(alice, STARTING_BALANCE);
        console.log("Alice Allowance : ", ourToken.allowance(bob, alice));

        vm.prank(alice);
        ourToken.transferFrom(bob, alfred, STARTING_BALANCE);
        console.log("Alfred's balance : ", ourToken.balanceOf(alfred));

        assertEq(ourToken.balanceOf(alfred), STARTING_BALANCE);
    }

    function testFalseTransferFrom() public {
        vm.prank(msg.sender);
        ourToken.transfer(bob, STARTING_BALANCE);

        vm.prank(bob);
        ourToken.approve(alice, 70 * 10 ** 18);
        console.log("Alice 's allowance : ", ourToken.allowance(bob, alice));

        vm.prank(alice);
        try ourToken.transferFrom(bob, alfred, 80 * 10 ** 18) {
            console.log("transfer succeeded");
        } catch {
            console.log("transfer failed");
        }
        console.log("Alfred's balance : ", ourToken.balanceOf(alfred));

        assert(ourToken.balanceOf(alfred) != 80 * 10 ** 18);
    }

    function testDoubleAllowance() public {
        vm.prank(msg.sender);
        ourToken.transfer(bob, STARTING_BALANCE);

        vm.prank(bob);
        ourToken.approve(alice, 50 * 10 ** 18);
        console.log("Alice 's allowance : ", ourToken.allowance(bob, alice));

        vm.prank(alice);
        ourToken.transferFrom(bob, alfred, 50 * 10 ** 18);
        console.log("Alice 's allowance after : ", ourToken.allowance(bob, alice));
        try ourToken.transferFrom(bob, alfred, 50 * 10 ** 18) {
            console.log("transfer succeeded");
        } catch {
            console.log("transfer failed");
        }
        console.log("Alfred's balance : ", ourToken.balanceOf(alfred));

        assertEq(ourToken.balanceOf(alfred), 50 * 10 ** 18);
    }
}
