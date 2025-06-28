// SPDX-License-Identifier: MIT
pragma solidity ^0.8.29;

contract SkillVerificationSystem {
    struct Skill {
        string skillName;
        string verifier;
        uint256 verificationDate;
        address employee;
    }

    mapping(address => Skill[]) public skills;

    function addSkill(string memory skillName, string memory verifier, uint256 verificationDate) public {
        skills[msg.sender].push(Skill({
            skillName: skillName,
            verifier: verifier,
            verificationDate: verificationDate,
            employee: msg.sender
        }));
    }

    function getSkills(address employee) public view returns (Skill[] memory) {
        return skills[employee];
    }
}