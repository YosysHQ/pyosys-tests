import os
import pytest
from pyosys import libyosys as ys

@pytest.fixture
def yosys():
	if(os.getenv("IN_TREE_TEST")):
		ys.Yosys().yosys_share_dirname = "../../share/"
		ys.Yosys().yosys_abc_executable = "../../yosys-abc"
	else:
		ys.Yosys().yosys_abc_executable = "/usr/local/bin/yosys-abc"