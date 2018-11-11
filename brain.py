# -*- coding: utf-8-*-
import logging
import pkgutil
import paths

class Brain(object):

    def __init__(self):
        #self.mic = mic
        #self.profile = profile
        self.modules = self.get_modules()
        self._logger = logging.getLogger(__name__)
        print(self.modules)

    @classmethod
    def get_modules(cls, type):
        locations = [paths.INPUT_MODULE_PATH]
		
        modules = []
        for finder, name, ispkg in pkgutil.walk_packages(locations):
            try:
                loader = finder.find_module(name)
                module = loader.load_module(name)
            except:
                print("Skipped module '%s' due to an error." + name)
            else:
                if hasattr(module, 'WORDS'):
                    try:
                        if type == "Server":
                            modules.append(module)
                        elif getattr(module, 'TYPE') == "Client":
                            modules.append(module)
                    except:
                        print("Skipped module '%s', please confirm whether it is client or server." + name)
					
					
        modules.sort(key=lambda module: module.PRIORITY if hasattr(module, 'PRIORITY')
                     else 0, reverse=True)
        return modules

    def query(self, texts):
        for module in self.modules:
            for text in texts.split():
                if module.isValid(text):
                    try:
                        module.handle()
                    except Exception:
                        print("Error")
                        #self.mic.say("I'm sorry. I had some trouble with that operation. Please try again later.")
                    
					finally:
                        return

