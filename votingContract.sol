pragma solidity ^0.6.0;

contract VotingContract {
    // Mapping of candidates to their vote counts
    mapping (string => uint256) public votes;

    // Function to vote for a candidate
    function vote(string memory candidate) public {
        votes[candidate]++;
    }

    // Function to get the vote count for a candidate
    function getVoteCount(string memory candidate) public view returns (uint256) {
        return votes[candidate];
    }
}