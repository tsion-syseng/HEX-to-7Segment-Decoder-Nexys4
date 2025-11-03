#  HEX to 7-Segment Display Decoder – Nexys4 FPGA (VHDL)

This project implements a **HEX-to-7-Segment Display Decoder** on the **Nexys4 DDR FPGA board (Artix-7 XC7A100T)**.  
It takes a **4-bit binary (BCD/HEX) input** from slide switches and displays the corresponding hexadecimal digit (0 - F) on **alternating 7-segment displays**.

---

##  Project Overview

- **Objective:** Design and deploy a digital circuit that decodes 4-bit binary input into its equivalent hexadecimal digit on a 7-segment display.  
- **FPGA Board:** Nexys4 DDR (XC7A100T-CSG324)  
- **Software Used:** Xilinx Vivado 2023.x  
- **HDL Used:** VHDL  
- **Category:** General-purpose FPGA design  

---

## ⚙️ Functional Description

- The **4-bit input (bcd[3:0])** is read from **slide switches**.  
- The **decoder** maps the input values (0–15) to the appropriate **7-segment LED pattern**.  
- To alternate the display:
  ```vhdl
  EN <= "11111110" when bcd = "0000" or bcd = "0010" or bcd = "0100" or bcd = "0110" or 
                   bcd = "1000" or bcd = "1010" or bcd = "1100" or bcd = "1110" 
        else "11111101";

---
##  File Structure

| File | Description |
|------|--------------|
| `sevenseg.vhd` | Main VHDL source code implementing the HEX-to-7-segment decoder |
| `sevenseg_tb.vhd` | Testbench file for functional simulation |
| `constraints.xdc` | XDC file mapping FPGA pins for switches and 7-segment connections |
| `waveform.png` | Simulation waveform result from Vivado |
| `board_result.png` | Annotated Nexys4 DDR board output image |
| `report.pdf` | Final report including Boolean logic, K-map, VHDL, simulation, and implementation |

---

## Simulation & Testing

The design was simulated using **Vivado’s built-in simulator**.

- The testbench applied **all 16 input combinations (0000–1111)**.  
- Each input was applied with a **20 ns delay**.  
- **Outputs matched the expected hexadecimal patterns** for all test cases.

### Example Simulation Waveform
*(Add your waveform image below)*  

---

## 🔬 FPGA Implementation

**Device:** `XC7A100T-CSG324`  
**Implementation Tool:** `Xilinx Vivado`  

**Connections:**
- **Switch Inputs:** `SW[0]–SW[3] → bcd[3:0]`  
- **7-Segment Outputs:** `sevseg[6:0] → segments a–g`  
- **Enable Signals:** `EN[7:0] → control active display`

### 🖼️ Annotated Board Result
*(Add your annotated Nexys4 image below)*  

---

## 📊 Results Summary

| Input (Binary) | Displayed HEX | 
|----------------|----------------|
| 0000 | 0 |
| 0001 | 1 |
| 0010 | 2 |
| 0011 | 3 | 
| ... | ... | 
| 1111 | F | 

**Observation:**  
The FPGA correctly alternated between the two displays while decoding each HEX value accurately.

---

## Conclusion

The project successfully demonstrated:

- ✅ Design and synthesis of a 7-segment decoder in **VHDL**  
- ✅ Functional simulation using a **testbench**  
- ✅ Real-time deployment on the **Nexys4 DDR FPGA board**  
- ✅ Proper pin constraints and hardware verification  

**Final Result:**  
The circuit decoded and displayed all HEX digits (**0–F**) accurately on alternating displays.

---

## Tools & Technologies

- 🧩 **Vivado Design Suite 2023.x**  
- 💻 **Nexys4 DDR FPGA Board**  
- ⚙️ **VHDL (IEEE STD_LOGIC_1164)**  
- 🔍 **Vivado / ModelSim Simulator**

---

##  Author

**Tsion Yilma**  
🎓 *BEng Computer Systems Engineering*  
📍 *Middlesex University Dubai*  
💼 *FPGA • VHDL • Embedded Systems • Digital Design*

