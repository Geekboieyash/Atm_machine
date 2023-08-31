# Atm_machine
# VHDL ATM Implementation

This repository contains a VHDL implementation of a simple ATM (Automated Teller Machine). The code allows users to perform various banking operations such as depositing money, withdrawing money, checking the account balance, and changing the PIN.

## Code Explanation

At first, we have declared an entity `ATM` with `Key` as Input and `O` as Output. `Key` represents the user's choice, offering four options. Then, we have declared the Architecture. We've predefined certain values, such as:
- `AB`: Account Balance
- `X`: Amount to be Deposited/Withdrawn
- `PIN1`: The user's current ATM PIN
- `PIN`: The new PIN the user wants to set

User choices:
1. If the user selects `Key = 1`, they can deposit money.
2. If the user selects `Key = 2`, they can withdraw money.
3. If the user selects `Key = 3`, they can check the account balance.
4. If the user selects `Key = 4`, they can change the PIN.

- If money is deposited, the output is the updated account balance.
- If the amount to be withdrawn (`X`) is greater than the account balance, the output is the account balance.
- If `X` is less, the output is the withdrawal amount.
- If the PIN is changed, the output is the new PIN.

## Conclusion

The simulation results demonstrate the successful implementation of ATM transactions using VHDL on Xilinx ISE Software. Challenges were encountered in implementing file handling and handling 2-digit integer inputs during simulation in Xilinx Software.

## References

1. Bhaskar Book of VHDL.
2. [Read from file in VHDL using `textio` library](https://surf-vhdl.com/read-from-file-in-vhdl-using-textio-library/)
3. [File I/O example in VHDL](https://www.nandland.com/vhdl/examples/example-file-io.html)
4. [File Input/Output in VHDL](http://people.sabanciuniv.edu/erkays/e1310/io1 0.pdf)

For more detailed code information, please refer to the source files in this repository.
