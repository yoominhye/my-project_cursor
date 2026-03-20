#TODO write a description for this script
#@author 

#@keybinding 
#@menupath 
#@toolbar 
#@runtime Jython


#TODO Add User Code Here
# -*- coding: utf-8 -*-
# CountBlocksAndInstructions.py
#@category _NEW_

from ghidra.app.decompiler import DecompileOptions
from ghidra.program.model.block import BasicBlockModel
from ghidra.util.task import ConsoleTaskMonitor

monitor = ConsoleTaskMonitor()
blockModel = BasicBlockModel(currentProgram)

func_manager = currentProgram.getFunctionManager()
functions = func_manager.getFunctions(True)

total_blocks = 0
total_instructions = 0

for func in functions:
    blocks = blockModel.getCodeBlocksContaining(func.getBody(), monitor)
    block_count = 0
    instr_count = 0
    if func.getName()=="main":
    	while blocks.hasNext():
            block = blocks.next()
            block_count += 1
    
            addr_set = block
            listing = currentProgram.getListing()
            instrs = listing.getInstructions(addr_set, True)
            while instrs.hasNext():
                instrs.next()
                instr_count += 1
    
    	total_blocks += block_count
    	total_instructions += instr_count
    
    print("Function: {} | Blocks: {} | Instructions: {}".format(
        func.getName(), block_count, instr_count))

print("\n=== TOTAL ===")
print("Total Basic Blocks: {}".format(total_blocks))
print("Total Instructions: {}".format(total_instructions))
