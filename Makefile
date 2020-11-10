test:
	@PYTHONPATH=".:${PYTHONPATH}" py.test -v --tb=no

in-tree-test: .package/pyosys/libyosys.so .package/pyosys/__init__.py
	@PYTHONPATH=".:./.package/:${PYTHONPATH}" IN_TREE_TEST="YES" py.test  -v --tb=no

.package/pyosys: ../../libyosys.so ../../misc/__init__.py
	@mkdir -p .package/pyosys/

.package/pyosys/libyosys.so: .package/pyosys
	@cp ../../libyosys.so .package/pyosys/libyosys.so

.package/pyosys/__init__.py: .package/pyosys
	@cp ../../misc/__init__.py .package/pyosys/__init__.py

.PHONY : test in-tree-test
