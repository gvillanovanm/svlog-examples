SystemVerilog Examples
======================

Welcome to the SystemVerilog Examples repository! Here you will find various examples that demonstrate the capabilities and features of the SystemVerilog HDL language. These examples can serve as a starting point for understanding and practice the language, as well as for incorporating into more complex development environments.

The repository idea:

- First: I need to do that (it is not trivial for me yet);
- Second: I will create an example using it (I will learn, I will practice my programming skills, and I will fix my real problem);
- Third: I will save it, because can I reuse it, and if I do not remember, I can understand it faster because I did it.

Table of contents
=================

<!--ts-->
   * [Getting Started](#getting-started)
   * [Contributing](#contributing)
   * [Contact](#contact)
<!--te-->


Getting Started
===============

To use these examples, simply clone or download the repository to your local machine. Each example is contained within its own directory and can be run using a compatible SystemVerilog simulator. The Makefile is provided in each folder workspace/<EX_NAME>/bench/ with already done comands for ModelSim/QuestaSim and Xcelium.

To create your own examples, go to tools/ and execute the command below. It will generate a structured folder into workspace/ with the name <NAME_OF_PROJECT>.

```
$ ./prj-create.sh <NAME_OF_PROJECT>  # eg ./prj-create.sh half-adder
```

Contributing
============

If you would like to contribute to this repository, feel free to submit a pull request with your own examples. Let's help build a comprehensive resource for SystemVerilog developers!

Some examples of what we can explore:

<pre>
1. Basic Examples
  - Variables and Data Types
  - Operators and Expressions
  - Control Flow Statements

2. Advanced Examples
  - Interfaces and Modules
  - Classes and Objects
  - System Tasks and Functions

3. Simulation Examples
  - Testbenches
  - Stimulus Generation
  - Assertions and Constraints
</pre>

Contact
=======

If you have any questions or suggestions, please open an issue or reach out to us through the repository's contact information.
