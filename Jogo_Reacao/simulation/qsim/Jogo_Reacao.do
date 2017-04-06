onerror {exit -code 1}
vlib work
vlog -work work Jogo_Reacao.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.Jogo_Reacao_vlg_vec_tst -voptargs="+acc"
vcd file -direction Jogo_Reacao.msim.vcd
vcd add -internal Jogo_Reacao_vlg_vec_tst/*
vcd add -internal Jogo_Reacao_vlg_vec_tst/i1/*
run -all
quit -f
