onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tbx_mips/clk
add wave -noupdate -format Literal /tbx_mips/inw0
add wave -noupdate -format Literal /tbx_mips/inw1
add wave -noupdate -format Literal /tbx_mips/outw0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1050 ns}
