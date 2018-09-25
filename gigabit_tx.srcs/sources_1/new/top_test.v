`timescale 1ns / 1ps

module TOP(
    input  clk100MHz,reset,
    input [3:0]switches,
    
    output [3:0]leds,
    
    input eth_int_b,eth_pme_b,eth_rxck,eth_rxctl,
    input [3:0] eth_rxd,
    output [3:0] eth_txd,
    output eth_txck,eth_txctl,eth_mdc,eth_rst_b,
    inout eth_mdio
    );

    wire [127:0] data_test;
    reg [127:0] licznik_test;
    reg [63:0] licznik_clk;
    wire trig;
    wire [127:0] aes_data_test;
    wire [127:0]key;
    wire [127:0] aes_data_out;
    gigabit_test hehxd(
    .clk100MHz(clk100MHz),
    .switches(switches),
    .leds(leds),
    .data_test(data_test),
   
    .eth_int_b(eth_int_b),
    .eth_pme_b(eth_pme_b),
    .eth_rst_b(eth_rst_b),
    .eth_mdc(eth_mdc),
    .eth_mdio(eth_mdio),
    .eth_rxck(eth_rxck),
    .eth_rxctl(eth_rxctl),
    .eth_rxd(eth_rxd),
    .eth_txck(eth_txck),
    .eth_txctl(eth_txctl),
    .eth_txd(eth_txd)
    );
    
    AES_top aes (
        .clk(clk100MHz),
        .TOP_DATA(aes_data_test),
        .TOP_key(key),
        .data_out_TOP(data_test),
        .sample_trig_top(trig)
    );
    
    data_to_aes data(
        .clk(clk100MHz),
        .data_out(aes_data_test),
        .key_out(key),
        .trig(trig)
        );
        
endmodule
