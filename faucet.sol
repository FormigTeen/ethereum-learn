// Our first ct is a faucet!
contract Faucet {
    // Give out ether to anyone who asks
    function withdraw(uint withdraw_amount) public {
        // Limit withdrawal amount
        require(withdraw_amount <= 100000000000000000);

        // Send the amount to the address that requested it
        payable(msg.sender).transfer(withdraw_amount);
    }

    // Accept any incoming amount
    fallback() external payable { }


    // This function is called for plain Ether transfers, i.e.
    // for every call with empty calldata. payable {}

    receive () external payable {}
}
