// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract PublicationVerificationSystem {
    struct Publication {
        string publicationTitle;
        string journal;
        uint256 publicationDate;
        address author;
    }

    mapping(address => Publication[]) public publications;

    function addPublication(string memory publicationTitle, string memory journal, uint256 publicationDate) public {
        publications[msg.sender].push(Publication({
            publicationTitle: publicationTitle,
            journal: journal,
            publicationDate: publicationDate,
            author: msg.sender
        }));
    }

    function getPublications(address author) public view returns (Publication[] memory) {
        return publications[author];
    }
}