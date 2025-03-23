// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(string => uint256) public votes;
    string[] public candidates;

    function addCandidate(string memory name) public {
        candidates.push(name);
        votes[name] = 0;
    }

    function vote(string memory name) public {
        require(votes[name] >= 0, "Candidate does not exist");
        votes[name]++;
    }

    function getVotes(string memory name) public view returns (uint256) {
        return votes[name];
    }

    function getCandidates() public view returns (string[] memory) {
        return candidates;
    }
}
