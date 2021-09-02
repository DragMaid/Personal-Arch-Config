from __future__ import (absolute_import, division, print_function)
import os 
from ranger.api.commands import Command

# Ranger custom commands
class chmod_exec(Command):
    def execute(self):
        try:
            file = self.fm.thisfile.path
            os.system(f"chmod +x {file}")
        except OSError as error:
            self.fm.notify(error)

class chmod_remove_exec(Command):
    def execute(self):
        try:
            file = self.fm.thisfile.path
            os.system(f"chmod -x {file}")
        except OSError as error:
            self.fm.notify(error)
