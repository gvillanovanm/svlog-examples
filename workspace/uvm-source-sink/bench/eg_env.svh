class eg_env extends uvm_env;
  `uvm_component_utils(eg_env)

  // atrributes
  eg_source source;
  eg_sink sink;

  uvm_tlm_fifo #(eg_seq_item) source_sink;

  // new
  function new(string name, uvm_component parent);
    super.new(name, parent);

    source_sink = new("source_sink", this);
  endfunction: new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
  
    source = eg_source::type_id::create("source", this);
    sink = eg_sink::type_id::create("sink", this);
  endfunction: build_phase

  function void connect_phase(uvm_phase phase);
    // super.connect_phase(phase);
    
    source.out.connect(source_sink.put_export); // accessing source.out and connect in FIFO put_export (input)
    sink.in.connect(source_sink.get_export); // accessing the sink.in (that receives) and connect in FIFO get export (output)    
  endfunction: connect_phase
  
endclass