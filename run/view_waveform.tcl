# ============================================================
# File: view_waveform.tcl
# Purpose: Launch XSim GUI and open the latest waveform (.wdb)
# ============================================================

set wdb_list [glob -nocomplain *.wdb]
if {[llength $wdb_list] == 0} {
    puts "No .wdb waveform file found in the current directory."
    exit 1
}

set latest_wdb [lindex [lsort -decreasing -command {file mtime} $wdb_list] 0]
puts "Launching XSim GUI for waveform: $latest_wdb"

exec xsim --gui $latest_wdb &

