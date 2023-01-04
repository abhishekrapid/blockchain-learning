// SPDX-License-Identifier: MIT

pragma solidity 0.8.0;  // Specifies the version of solidity that our code is written with

contract TodoList {
    // A mapping of task IDs to task descriptions
    mapping(uint => string) private _tasks;

    // The next task ID to assign
    uint256 public nextTaskId;

    // Adds a new task to the list
    function addTask(string memory description) public {
        _tasks[nextTaskId] = description;
        nextTaskId++;
    }

    // Get a task from the list.
    function getTask(uint256 taskId_) public view returns (string memory){
        require(bytes(_tasks[taskId_]).length != 0, "Invalid Task ID");
        return _tasks[taskId_];
    }

    // Removes a task from the list
    function removeTask(uint256 taskId_) public {
        delete _tasks[taskId_];
    }

    // Update a task from the list.
    function updateTask(uint256 taskId_, string memory text_) public {
        _tasks[taskId_] = text_;
    }

    // Total task count from the list.
    function totalCountTask() public pure returns (uint){
        //   return _tasks;
    }

}