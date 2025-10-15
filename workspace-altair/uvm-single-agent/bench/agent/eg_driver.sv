// "data consumer"
class eg_driver extends uvm_driver #(eg_sequence_item);
  `uvm_component_utils(eg_driver)

  function new(string name = "eg_driver", uvm_component parent);
    super.new(name, parent);
  endfunction: new

  task run_phase(uvm_phase phase);
    forever begin
      // get item
      seq_item_port.get_next_item(req);

      // debug analysis
      `uvm_info(get_name(), $sformatf("Driver consumes packet \n%s", req.sprint()), UVM_LOW)

      // process the item, eg setting the DUT interface
      // codes here...

      // close item
      seq_item_port.item_done();
    end
  endtask: run_phase
  
endclass: eg_driver
