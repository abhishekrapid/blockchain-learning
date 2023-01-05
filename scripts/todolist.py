from brownie import *

def main():
    TodoList.deploy({'from': accounts[0]})