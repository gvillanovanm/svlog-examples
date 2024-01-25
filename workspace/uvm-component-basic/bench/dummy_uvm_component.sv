/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */
class dummy_uvm_component extends uvm_component;
    `uvm_component_utils(dummy_uvm_component);

    // Attributes 
    protected string hello_world = "Hello, World!";

    // Constructor
    function new(string name = "dummy_uvm_component", uvm_component parent);
        super.new(name, parent);
    endfunction: new

    // Methods 
    extern function void say_hello();
    extern function void say_str(string s);
endclass : dummy_uvm_component

// say_hello just print "Hello, World!";
function void dummy_uvm_component::say_hello();
    `uvm_info(get_name(), $sformatf("%s", hello_world), UVM_NONE)
endfunction : say_hello

// say_str just print the string passed in function call
function void dummy_uvm_component::say_str(string s);
    `uvm_info(get_name(), $sformatf("%s", s), UVM_NONE)
endfunction : say_str