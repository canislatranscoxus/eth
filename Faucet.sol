/*



links:
https://github.com/ethereumbook/ethereumbook
https://gitter.im/kovan-testnet/faucet
https://remix.ethereum.org/
Faucet.sol
 
*/

// SPDX-License-Identifier: CC-BY-SA-4.0

// Version of Solidity compiler this program was written for
//pragma solidity 0.6.4;
pragma solidity >=0.7.0 <0.9.0;

// Our first contract is a faucet!
contract Faucet {
    // Accept any incoming amount
    receive() external payable {}

    // Give out ether to anyone who asks
    function withdraw( address payable recipient_address , uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);

        // Send the amount to the address that requested it
        //msg.sender.transfer(withdraw_amount);
        recipient_address.transfer( withdraw_amount );
    }
}
