// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Inventory {
    // an inventory contract of a provision warehouse
    // has the list of items in the store
    // each item has different inventory attribute including;
    // price per unit, location in store, Quantity in cartons, Expiration Date, Weight in kg
    // user can add, remove and store inventory attributes to inventory struct
    // user can return each item passed to a setter function

    struct Item {
        uint256 pricePerUnit;
        uint256[] locationInStore;
        uint256 quantityInCartons;
        string expirationDate;
        uint256 weightInKg;
    }

    Item[] public items;

    function addItems(
        uint256 _pricePerUnit,
        uint256[] memory _locationInStore,
        uint256 _quantityInCartons,
        string memory _expirationDate,
        uint256 _weightInKg
    ) public {
        items.push(
            Item(
                _pricePerUnit,
                _locationInStore,
                _quantityInCartons,
                _expirationDate,
                _weightInKg
            )
        );
    }

    function getItems() public view returns (Item[] memory) {
        return items;
    }
}
