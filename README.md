PYOSYS tests
============

These tests are possible to run with installed Yosys (with pyosys support enabled):

```
git clone https://github.com/YosysHQ/pyosys-tests
cd pyosys-tests
make 
```

Also it is possible to run tests within Yosys tree by executing:

```
make pystests
```


Please note that Yosys needs to be built with `ENABLE_PYOSYS=1` enabled
