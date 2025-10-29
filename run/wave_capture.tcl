# ============================================================
# File: wave_capture.tcl
# Purpose: Capture and save waveform for XSim simulation
# ============================================================

# Enable logging of all signals recursively
log_wave -recursive *

# Run simulation until it finishes
run all

# Note: XSim automatically writes the waveform (.wdb) to disk.
# No need to call write_waveform.

exit

