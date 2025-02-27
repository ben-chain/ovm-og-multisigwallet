pragma solidity ^0.5.17;
import "./Factory.sol";
import "./MultiSigWallet.sol";


/// @title Multisignature wallet factory - Allows creation of multisig wallet.
/// @author Stefan George - <stefan.george@consensys.net>
contract MultiSigWalletFactory is Factory {

    /*
     * Public functions
     */
    /// @dev Allows verified creation of multisignature wallet.
    /// @param _owners List of initial owners.
    /// @param _required Number of required confirmations.
    /// @return Returns wallet address.
    function create(address[] calldata _owners, uint _required)
        external
        returns (address wallet)
    {
        MultiSigWallet newWallet = new MultiSigWallet(_owners, _required);
        wallet = address(newWallet);
        register(wallet);
    }
}
