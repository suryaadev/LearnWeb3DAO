// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Todos{

    struct TodoItem{
        string text;
        bool status;
    }

    TodoItem[] public todos;

    function addTask(string memory _text) public{
        todos.push(TodoItem(_text,false));
    }

    function updateTask(uint _index, string memory _text) public{
        todos[_index].text = _text;
        todos[_index].status =false;
    }
    function complete(uint _index) public{
        todos[_index].status = !todos[_index].status;
    }

}