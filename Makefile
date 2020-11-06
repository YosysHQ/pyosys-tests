
all: .package/pyosys/libyosys.so .package/pyosys/__init__.py
	@export PYTHONPATH="./.package/:${PYTHONPATH}" && export YOSYS_HOME=$(realpath ../..) && py.test  -v --tb=no

.package/pyosys: ../../libyosys.so ../../misc/__init__.py
	@mkdir -p .package/pyosys/

.package/pyosys/libyosys.so: .package/pyosys
	@cp ../../libyosys.so .package/pyosys/libyosys.so

.package/pyosys/__init__.py: .package/pyosys
	@cp ../../misc/__init__.py .package/pyosys/__init__.py

.PHONY : all
