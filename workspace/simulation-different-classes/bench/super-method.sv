class Animal;
  virtual function void makeSound(int a = 100);
    $display("Animal makes a sound.%d", a);
  endfunction
endclass

class Cat extends Animal;
  virtual function void makeSound(int a=50);
    super.makeSound(); // Calling the overridden method from the base class
    $display("Cat meows.");
  endfunction
endclass

module tb();

  initial begin
    Cat cat = new;
    cat.makeSound();

    $display("\n\n# --------------------- end");
    $finish();
  end
endmodule
