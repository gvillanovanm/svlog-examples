class eg_sink extends uvm_component;
  `uvm_component_utils(eg_sink)

  uvm_get_port #(eg_seq_item) in;

  // new
  function new(string name, uvm_component parent);
    super.new(name, parent);

    in = new("in", this);
  endfunction: new

  // task
  task run_phase(uvm_phase phase);
    eg_seq_item tx;
    
    phase.raise_objection(this);
      repeat(10) begin
        begin_tr(tx, "sink"); // "save" in the sink the transaction 
        in.get(tx);           // get the transaction
        `uvm_info("SINK", $sformatf(".. is receiving %b, %0d\n", tx.cmd, tx.data), UVM_LOW)
        #10;                  // delay 10 unit ts
        end_tr(tx);           // end the transaction
      end
    phase.drop_objection(this);
  endtask: run_phase
  
endclass