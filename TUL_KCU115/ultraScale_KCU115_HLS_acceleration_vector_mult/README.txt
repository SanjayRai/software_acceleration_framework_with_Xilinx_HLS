# __SRAI (Sanjay Rai)
This is a simple basic example on creating a Partial Reconfigurable FPGA, loading the Partial bit files using ICAP over PCIe and accelerating an HLS based C++ function.
THe training lernel used is a single precision floating point vector multiply.

1. uses xDMA driver to transfer data
2. Initial bitfileis loaded via JTAG or External PROM which contains the full image (Both Static Portion and PR).
3. Subsequent loads of the PR images (Partial and clearing) can be done via JTAG or AXIHW_ICAP (using axi_hwicap.py).

