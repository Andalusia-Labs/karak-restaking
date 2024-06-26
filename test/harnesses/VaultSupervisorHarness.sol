// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.21;

import "../../src/VaultSupervisor.sol";

contract VaultSupervisorHarness is VaultSupervisor {
    using VaultSupervisorLib for VaultSupervisorLib.Storage;

    function limiter() external view returns (ILimiter) {
        VaultSupervisorLib.Storage storage self = _self();
        return self.limiter;
    }
}
