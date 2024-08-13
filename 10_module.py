from hyperon import *
from hyperon.ext import *

def hello(name):
    print("Hello " + name)

def add(a, b):
    return a + b

@register_atoms
def atoms():
    return {
            "hello": OperationAtom("hello", hello),
            "add": OperationAtom("add", add)
    }
