## Example of uvm single-sequencer->driver generation

The example shows how to create and initiate a single sequence for a driver. The sequence default is started using uvm_config_wrapper::set() and start() call.

## What is the difference between a single sequencer and a virtual sequencer? 
## What kind the problems each one fixes?

A single sequencer and a virtual sequencer are two approaches in the SystemVerilog Universal Verification Methodology (UVM) for generating stimulus in a verification environment.

A single sequencer is used to generate and manage the sequence of transactions to be sent to the Design Under Test (DUT). It is responsible for driving the sequence items to the DUT and keeping track of the progress of the test. <b>A single sequencer is typically used in a simple verification environment with one or two agents</b>.

<b>A virtual sequencer, on the other hand, is a wrapper around multiple single sequencers</b>. It provides a unified view of the multiple sequences and enables coordination of the sequences running in parallel. A virtual sequencer is used in a complex verification environment where multiple agents are involved and parallel sequences need to be coordinated.

A virtual sequencer solves the following problems:

* Coordination: A virtual sequencer provides a centralized control mechanism for coordination of multiple sequences running in parallel.
* Reusability: A virtual sequencer enables reuse of multiple single sequencers in multiple verification environments.
* Scalability: A virtual sequencer enables scalability of the verification environment by providing a centralized mechanism for controlling multiple sequences.
* Abstraction: A virtual sequencer provides an abstraction layer that separates the sequence definition and generation from the underlying hardware and its configuration.

In conclusion, while a single sequencer is appropriate for simple verification environments, a virtual sequencer is required in complex environments where multiple agents and parallel sequences need to be coordinated and managed.
