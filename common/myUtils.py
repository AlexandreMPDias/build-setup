import os
import platform as p
import sys
import json
from os.path import join

def read_json(path):
    try:
        with open(path) as f:
            output = json.loads(f.read())
        return output
    except:
        try:
            with open(join("..","..", path)) as f:
                output = json.loads(f.read())
            return output
        except:
            return null

class Platform:
    win = p.system() == "Windows"
    mac = os.name == "posix"
    unix = p.system() != "Windows" and os.name != "posix"

def browser(link):
    if(Platform.win):
        os.system(f"explorer {link}")
    else:
        os.system(f"open {link}")

links = read_json("./links.json")