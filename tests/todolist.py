import pytest
from brownie import accounts

@pytest.fixture(scope="module")
def TodoList(TodoList):
    yield TodoList.deploy({'from': accounts[0]})
