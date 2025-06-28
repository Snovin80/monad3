// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract ProjectCompletionSystem {
    struct Project {
        string projectName;
        string client;
        uint256 completionDate;
        address teamLeader;
    }

    mapping(address => Project[]) public projects;

    function addProject(string memory projectName, string memory client, uint256 completionDate) public {
        projects[msg.sender].push(Project({
            projectName: projectName,
            client: client,
            completionDate: completionDate,
            teamLeader: msg.sender
        }));
    }

    function getProjects(address teamLeader) public view returns (Project[] memory) {
        return projects[teamLeader];
    }
}