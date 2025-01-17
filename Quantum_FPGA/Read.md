# Quantum Algorithms on FPGAs

This repository contains implementations and examples of quantum algorithms mapped to FPGA logic using VHDL. The goal is to bridge the gap between quantum computing and classical hardware accelerators by simulating quantum circuits on FPGAs.

---

## Project Overview
This project demonstrates how to implement quantum algorithms, such as the Deutsch-Jozsa Algorithm, on FPGAs using VHDL. It provides both Python simulations using Qiskit and VHDL code for FPGA deployment. The repository includes:

- Python simulations for quantum algorithms.
- VHDL implementations of quantum gates and algorithms.
- Testbenches for validating FPGA behavior.
- Instructions for deploying and testing on real FPGA hardware.

---

## Folder Structure
```
quantum_fpga_project/
├── python_simulation/    # Python simulation scripts using Qiskit
├── vhdl_code/            # VHDL implementation of quantum circuits
├── docs/                 # Documentation and tutorials
├── tests/                # Test cases and testbenches for VHDL
└── README.md             # Project overview and instructions
```

---

## Features
- Simulation of quantum algorithms in Python.
- VHDL implementation of quantum gates (e.g., Hadamard, CNOT).
- Mapping quantum circuits to FPGA logic.
- Testbenches for functional verification.

---

## Getting Started

### Prerequisites
To run the Python simulations and use the VHDL code, ensure you have the following installed:

- **Python 3.8+**
- **Qiskit** (latest version): `pip install qiskit`
- **FPGA Tools**:
  - Xilinx Vivado or Intel Quartus for VHDL simulation and synthesis.

### Installation
Clone the repository:
```bash
git clone https://github.com/your-username/quantum_fpga_project.git
cd quantum_fpga_project
```

---

## Usage

### Python Simulation
1. Navigate to the `python_simulation/` folder:
   ```bash
   cd python_simulation
   ```
2. Run the Deutsch-Jozsa Algorithm simulation:
   ```bash
   python deutsch_jozsa.py
   ```
3. Observe the results and compare them with the VHDL simulation outputs.

### VHDL Simulation
1. Open the `vhdl_code/` folder in your FPGA IDE (e.g., Vivado).
2. Compile the VHDL code and run the testbenches provided in the `tests/` folder.
3. Synthesize and deploy the design to your FPGA board.

---

## Examples

### Deutsch-Jozsa Algorithm
- **Python Simulation**: Demonstrates how to use Qiskit to simulate the Deutsch-Jozsa algorithm.
- **VHDL Code**: Implements the same algorithm using FPGA logic.

#### Python Simulation Output
```bash
Measurement outcomes: {'000': 1024}
```

#### VHDL Testbench Output
```bash
Simulation successful: Output matches expected constant function behavior.
```

---

## Contributing
Contributions are welcome! If you want to add more quantum algorithms or improve the current implementation, feel free to submit a pull request.

---

## License
This project is licensed under the MIT License. See the LICENSE file for details.

---

## Acknowledgments
- [Qiskit](https://qiskit.org/): For providing a robust quantum computing framework.
- [Xilinx](https://www.xilinx.com/) and [Intel](https://www.intel.com/): For FPGA tools and resources.
