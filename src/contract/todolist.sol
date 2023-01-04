pragma solidity ^0.4.17;   // Specifies the version of solidity that our code is written with

contract TodoList {
    // A mapping of task IDs to task descriptions
    mapping(uint => string) private tasks;

    // The next task ID to assign
    uint public nextTaskId;

    // Adds a new task to the list
    function addTask(string memory description) public {
        tasks[nextTaskId] = description;
        nextTaskId++;
    }

    // Get a task from the list.
    function getTask(uint taskId) public view returns(string memory){
        require(bytes(tasks[taskId]).length != 0, "Invalid Task ID");
        return tasks[taskId];
    }

    // Removes a task from the list
    function removeTask(uint taskId) public {
        delete tasks[taskId];
    }

    // Update a task from the list.
    function updateTask(uint taskId, string text_) public {
        tasks[taskId] = text_;
    }
}

