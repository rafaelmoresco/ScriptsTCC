# Alternative Flows for OpenROAD-flow-scripts

Alternative designs flows considering extra steps of pin assignment, developed for the bachelors degree thesis of Rafael Moresco Vieira. Compatible with OpenROAD commit 57be191 and OpenROAD-flow-scripts commit 9f67f4a.

## How to use:

After installing OpenROAD Flow Scripts, alter the following files in the *flows* folder:

 - Makefile -> Replace with one of the Makefile_placer_flow* files
 - scripts/ -> Replace with one of the scripts_flow* folders
 - designs/nangate45/ -> Replace the contents with the ones from new_nangate45/
