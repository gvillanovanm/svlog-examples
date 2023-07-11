module tb;

  initial begin
    do_test();

    $finish;
  end

  task do_test();
    $display("Before fork");
      fork
        begin
          $display("Inside fork - Task 1");
          #10;
          $display("Inside fork - Task 1 - After delay");
        end
  
        begin
          $display("Inside fork - Task 2");
          #5;
          $display("Inside fork - Task 2 - After delay");
        end
      join_none
      // wait fork; (WAIT ALL THREADS)
  
      $display("After join_none");
      #5;
      $display("End of simulation");
  endtask
endmodule
