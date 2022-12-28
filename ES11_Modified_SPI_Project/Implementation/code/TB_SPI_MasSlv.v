`timescale 1ns/10ps
module TB_SPI_MasSlv;
    reg rstb;
    reg clk = 1'b0;
    reg mlb = 1'b0;
    reg start = 1'b0;
    reg [7:0] m_tdat = 8'b00000000;
    reg [1:0] cdiv = 0;
    wire din;
    wire ss;
    wire sck;
    wire dout;
    wire Mdone;
    wire [7:0] Mrdata;
	reg ten = 1'b0;
    reg [7:0] s_tdata = 8'b00000000;
    wire SLVdone;
    wire [7:0] SLVrdata;
    //mux
    wire [15:0] Y;
    reg [3:0] A;


    parameter PERIOD = 50;
    parameter real DUTY_CYCLE = 0.5;
    parameter OFFSET = 100;
    initial begin  // Clock process for clk
        #OFFSET;
        forever
        begin
            clk = 1'b0;
            #(PERIOD-(PERIOD*DUTY_CYCLE)) clk = 1'b1;
            #(PERIOD*DUTY_CYCLE);
        end
    end
// to end simulation
	initial #10000 $stop;
//uut MASTER instantiation
    spi_master MAS (
        .rstb(rstb),
        .clk(clk),
        .mlb(mlb),
        .start(start),
        .tdat(m_tdat),
        .cdiv(cdiv),
        .din(din),
        .ss(ss),
        .sck(sck),
        .dout(dout),
        .done(Mdone),
        .rdata(Mrdata));
        //demux instantiation
Demultiplexer_1_to_16_assign DMUX(.Y(Y),
                                .A(A),
                                .din(ss));
//uut SLAVE instantiation
	spi_slave SLV1 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[0]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV2 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[1]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV3 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[2]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV4 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[3]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV5 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[4]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV6 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[5]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV7 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[6]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV8 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[7]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV9 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[8]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV10 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[9]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));
//uut SLAVE instantiation
	spi_slave SLV11 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[10]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV12 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[11]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV13 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[12]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV14 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[13]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV15 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[14]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

//uut SLAVE instantiation
	spi_slave SLV16 (
        .rstb(rstb),
        .ten(ten),
        .tdata(s_tdata),
        .mlb(mlb),
        .ss(Y[15]),
        .sck(sck),
        .sdin(dout),
        .sdout(din),
        .done(SLVdone),
        .rdata(SLVrdata));

// timed contrl signals
initial begin
        #10 rstb = 1'b0;
        #100 rstb = 1'b1;
        #100 rstb = 1'b0;
        #100 rstb = 1'b1;
        #100;
	       A = 4'b0000;
			rstb = 1'b1;start = 1'b1;
			m_tdat = 8'b01111100; 
			cdiv = 2'b00;
			
			
       #100 A = 4'b0001; start = 1'b1;ten=1;  s_tdata=8'hAC;
        #100  start = 1'b0;
 

        #1800 A = 4'b0010; mlb = 1'b1; cdiv=2'b01; m_tdat=8'b00011100;//s_tdata=8'h64;
        #100  start = 1'b1;
		#100  start = 1'b0;
		#2202;
        
        #100  start = 1'b1;
		#100  start = 1'b0;
		#2000;

        m_tdat=~m_tdat;
        #100  start = 1'b1;
		#100  start = 1'b0;
		#2000;
   end
endmodule


