
import matplotlib.pyplot as plt
from PySpice.Doc.ExampleTools import plot_results
from PySpice.Probe.Plot import plot
from PySpice.Spice.Library import SpiceLibrary
from PySpice.Spice.Netlist import Circuit



# define the circuit
circuit = Circuit('Voltage Divider')
circuit.V('1', 'in', circuit.gnd, 'DC 10')
circuit.R('1', 'in', 'out', 1000)
circuit.R('2', 'out', circuit.gnd, 1000)

# run the simulation
from PySpice.Spice.NgSpice.Shared import NgSpiceShared
ngspice = NgSpiceShared.new_instance()
ngspice.load_circuit(circuit)
ngspice.run()

# get the output voltage data
output_voltage = ngspice.plot(['V(out)'])

# plot the output voltage
plt.figure()
plot(output_voltage)
plt.title('Output Voltage vs. Input Voltage')
plt.xlabel('Input Voltage (V)')
plt.ylabel('Output Voltage (V)')
plt.grid()
plt.show()
