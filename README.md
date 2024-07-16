# Automatic-Parking-System
Design an automatic parking system that consists of two modules: one for managing the parking lot and another for controlling the entry gate. The system should track available parking spaces and control the entry gate based on availability.


1. **Parking Lot Manager (parking_lot_manager)**:
   - Manages the parking lot capacity and tracks the number of available spaces.
   - Handles car entry and exit requests.

2. **Entry Gate Controller (entry_gate_controller)**:
   - Controls the entry gate to allow or deny access based on the availability of parking spaces.
   - Interacts with the Parking Lot Manager to check space availability.

#### Requirements:

**Parking Lot Manager (parking_lot_manager)**:
- **Inputs**:
  - clk: Clock signal.
  - reset: Input to reset the parking lot manager.
  - car_entry: Signal indicating a car is entering the parking lot.
  - car_exit: Signal indicating a car is exiting the parking lot.
  - capacity: 8-bit input representing the total capacity of the parking lot.

- **Outputs**:
  - spaces_available: 8-bit output indicating the number of available parking spaces.
  - full: Output signal indicating the parking lot is full (1 when full, 0 otherwise).

**Entry Gate Controller (entry_gate_controller)**:
- **Inputs**:
  - clk: Clock signal.
  - reset: Input to reset the entry gate controller.
  - request_entry: Signal indicating a car is requesting entry.
  - spaces_available: 8-bit input from the Parking Lot Manager representing available parking spaces.
  - full: Input from the Parking Lot Manager indicating whether the parking lot is full.

- **Outputs**:
  - gate_open: Output signal to open the entry gate (1 to open, 0 to close).
