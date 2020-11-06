import pytest
from pyosys import libyosys as ys

def test_empty_design():
	design = ys.Design()
	assert(len(design.modules_.keys())==0)

def test_count_modules():
	design=ys.Design()
	ys.run_pass("read_verilog verilog/simple.v",design)
	ys.run_pass("proc",design)
	assert(len(design.modules_.keys())==2)

def test_top_module():
	design=ys.Design()
	ys.run_pass("read_verilog verilog/simple.v",design)
	ys.run_pass("proc",design)
	assert(ys.unescape_id(design.top_module().name)=="main")
