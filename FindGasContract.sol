// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "./ChainSpecificUtil.sol";

contract FindGasContract {

    function getBlock() public view returns(uint256){
        return ChainSpecificUtil.getBlockNumber();
    }

    function getBlockHash(uint64 _blockNumber) public view returns(bytes32){
        return ChainSpecificUtil.getBlockhash(_blockNumber);
    }

    // Will return non-zero on chains that have this enabled
    function getCurrentL1BlockGas() public view returns (uint256){
          uint256 test = ChainSpecificUtil.getCurrentTxL1GasFees();
          return test;
    }

    function getChainId() public view returns (uint256){
        return block.chainid;
    }

}
