pragma solidity 0.5.2;

contract testingAssembly {

    event successE(bool success, bytes data);

    constructor() public{
    }
    
    /**
    * @dev Function to test interaction between smart contract using call
    */
    function test() public returns(bytes memory){
        address addr = 0x692a70D2e424a56D2C6C27aA97D1a86395877b3A; //address of fun.sol in ropsten
        uint256 one = 1;
        (bool success, bytes memory data) = addr.call(abi.encodeWithSignature( "func(uint256)" , one ));
        emit successE(success, data);
        return data;
    }
}