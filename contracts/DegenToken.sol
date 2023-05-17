// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    struct Item {
        string name;
        uint cost;
    }
    
    Item[] public items;

    constructor() ERC20("Degen", "DGN") {
        initItems();
    }

    modifier enoughTokens(uint _amount) {
        require(balanceOf(msg.sender) >= _amount, "You do not have enough Degen Tokens in your wallet.");
        _;
    }

    function initItems() private {
        Item memory nft = Item("DegenNFT", 300);
        Item memory keychain = Item("DegenKeychain", 100);
        Item memory emote = Item("DegenEmote", 200);

        items.push(nft);
        items.push(keychain);
        items.push(emote);
    }

    function showItems() public pure returns(string memory) {
        return "-------------------------------------DegenNFT-----------------------300 DGNDegenKeychain------------------100 DGNDegenEmote---------------------200 DGN--------------------------------------------";
    }
    
    function redeemItem(string memory _item) public returns(string memory) {
        for(uint i = 0; i < 3; i++){
            if(keccak256(bytes(items[i].name)) == keccak256(bytes(_item))){
                require(balanceOf(msg.sender) >= items[i].cost, "You do not have enough Degen Tokens in your wallet.");

                approve(msg.sender, items[i].cost);
                transferFrom(msg.sender, 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC, items[i].cost);
                return string.concat(_item, " has been redeemed successfully!");
            }
        }

        return "Item does not exist.";
    }

    function mintDegen(address _account, uint _amount) public onlyOwner {
        _mint(_account, _amount);
    }

    function transferDegen(address _to, uint _amount) public enoughTokens(_amount) {
        approve(msg.sender, _amount);
        transferFrom(msg.sender, _to, _amount);
    }

    function checkBalance() public view returns(uint) {
        return this.balanceOf(msg.sender);
    }

    function burnDegen(uint _amount) public  enoughTokens(_amount) {
        _burn(msg.sender, _amount);
    }
}
