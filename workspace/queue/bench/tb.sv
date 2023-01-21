/**
 * testbench template
 *
 * @version: 0.1
 * @author : Gabriel Villanova N. M.
 */

module tb();
  // localparam
  localparam MAX_SIZE_OF_QUEUE = 3;
  localparam SIZE_OF_ARRAY = 64;

  /**
  * example with string
  */
  `ifdef QUEUE_STRING
    string queue[$:MAX_SIZE_OF_QUEUE - 1];
    string str;

    initial begin
      $display("==================================\n");
      $display("size of queue: %2d, elements: %p\n", queue.size(), queue);

      // if we use >
      for (int i=0; i < MAX_SIZE_OF_QUEUE + 1; ++i) begin
        str = $sformatf("%0d_item", i);
        queue.push_front(str);
        $display("size of queue: %2d, elements: %p\n", queue.size(), queue);
      end

      $display("==================================\n");
      $display("\n");
    end
  `endif

  /**
  * example with struct
  */
  `ifdef STRUCT_QUEUE
    typedef struct {
      // ddlms
      bit flag;
      real real_array_i[SIZE_OF_ARRAY];
      real real_array_q[SIZE_OF_ARRAY];
    } my_struct_t;

    my_struct_t queue[$:MAX_SIZE_OF_QUEUE - 1];
    my_struct_t aux_s;

    initial begin
      $display("==================================\n");
      $display("size of queue: %2d, elements: %p\n", queue.size(), queue);

      for (int i=0; i < MAX_SIZE_OF_QUEUE; ++i) begin
        // initialize struct
        aux_s = '{
        i%2,
        '{default: 1},
        '{default: 0}
        };

        queue.push_front(aux_s);
        $display("\nsize of queue: %2d, elements: %p\n", queue.size(), queue);
      end

      $display("==================================\n");
      $display("\n");
    end
  `endif

  final begin
    $display("");
  end

endmodule