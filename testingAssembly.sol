pragma solidity 0.5.2;

contract testingAssembly {
    constructor() public{
        
    }
    
    event successE(bool success, bytes data);
    
    function test() public returns(bytes memory){
        address addr = 0x692a70D2e424a56D2C6C27aA97D1a86395877b3A;
        uint256 one = 1;
        // bytes memory a = abi.encode(one);
        (bool success, bytes memory data) = addr.call(abi.encodeWithSignature( "func(uint256)" , one ));
        emit successE(success, data);
        return data;
    }
}