/**
 * eg_source
 * @brief: eg_source is-a uvm_component and has-a sequencer
 */
class eg_source extends uvm_component;
  `uvm_component_utils(eg_source)
  
  // typedefs
  typedef uvm_sequencer #(eg_seq_item) eg_sequencer_t;
  
  // atrributes
  eg_sequencer_t eg_sequencer;
  
  // ports
  uvm_seq_item_pull_port #(eg_seq_item) seq_item_port;
  uvm_put_port #(eg_seq_item) out;

  // new
  function new(string name, uvm_component parent);
    super.new(name, parent);

    seq_item_port = new("seq_item_port", this);
    out = new("out", this);
  endfunction: new

  // build-phase
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    
    eg_sequencer = eg_sequencer_t::type_id::create("eg_sequencer", this);
  endfunction: build_phase
  
  // connect-phase
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
  
    seq_item_port.connect(eg_sequencer.seq_item_export);
  endfunction: connect_phase
  
  // run-phase
  task run_phase(uvm_phase phase);
    eg_seq_item tx;

    forever begin
      seq_item_port.get_next_item(tx);
      out.put(tx);
      `uvm_info("SOURCE", $sformatf(".. is sending %b, %0d", tx.cmd, tx.data), UVM_LOW)
      #10;
      seq_item_port.item_done();
    end
    
    /*
    phase.raise_objection(this);
    `uvm_info(get_name(), "<run_phase> started, objection raised.", UVM_NONE)
  
    
  
    phase.drop_objection(this);
    `uvm_info(get_name(), "<run_phase> finished, objection dropped.", UVM_NONE)
    */
  endtask: run_phase
  
endclass