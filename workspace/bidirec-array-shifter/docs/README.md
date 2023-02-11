### Bidirectional Array Shifter Function

This example shows how you can shift, in both directions, an array of size N. The function receives as parameters the original array (variable a), the number of positions to shift (variable pos), and the direction shift (variable dir, where dir=1 is left, dir=0 is right shifts). The function returns the array shifted. The example uses an array of reals but can be modified to any type.

The function prototype is written bellow.

``` 
typedef real array_fnc[SIZE_OF_ARRAY];
function array_fnc name(input real a[SIZE_OF_ARRAY], input int pos, input bit dir);
```
