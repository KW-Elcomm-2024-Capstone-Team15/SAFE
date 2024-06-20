`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/17 19:51:18
// Design Name: 
// Module Name: FP_mult_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FP_mult_tb();
    reg               clk = 0;
    reg               rst;
    reg               tvalid_input;
    reg   [31:0]      in1;
    reg   [31:0]      in2;
    
    wire              s_axis_a_tready;
    wire              s_axis_b_tready;
    wire              tvalid_out;
    wire  [31:0]      result;
    
    reg [6:0] cnt;
    
     FP_Mult dut(
        .clk(clk),
        .rst(rst),
        .tvalid_input(tvalid_input),
        .in1(in1),
        .in2(in2),    
        .s_axis_a_tready(s_axis_a_tready),
        .s_axis_b_tready(s_axis_b_tready),
        .tvalid_out(tvalid_out),
        .result(result)   
    );
    
      always #5 clk = ~clk;
      
      always @(posedge clk) begin
        if(cnt == 91) begin
            $finish;
        end
        else if(!rst)begin
            cnt <= cnt + 7'b000_0001;
            $monitor("Time = %t, in1 = %h, in2 = %h,result = %h,valid = %b,a_tready = %b,b_tready = %b", $time,in1,in2,result,tvalid_out,s_axis_a_tready,s_axis_b_tready);
        end
    end
        initial begin
        rst = 1;
        cnt = 0;
        #15;
        rst = 0;
        tvalid_input = 1;
        in1 = 32'hbdfa2384;
        in2 = 32'hbdefa7df;
        #10in1= 32'hbe0fae05;
           in2= 32'hbe4144aa;
        #10in1= 32'hbe2cddc8;
        in2= 32'hbe2528cb;
        #10in1= 32'hbe30c87a;
        in2= 32'hbe307cf8;
        #10in1= 32'hbe11da6c;
        in2= 32'hbe255b7c;//10
        #10in1= 32'hbe35fa10;
        in2= 32'hbe298aa5;//12-2
        #10in1= 32'hbe1cd204;//13-3
        in2= 32'hbe305323;
        #10in1= 32'hbe299de9;
          in2= 32'hbe13dd96;
        #10in1= 32'hbe053589;
       in2= 32'hbe05ac9d;
        #10in1= 32'hbe055564;
        in2= 32'hbdfb6ffe;
        #10in1= 32'hbdd657a9; //21
        in2= 32'hbddc1b35;
        #10in1= 32'hbdfe4fbe;
        in2= 32'hbde11f92;
        #10in1= 32'hbd9a044b;
        in2= 32'hbd7dcc20;
        #10in1= 32'hbd8a950f;
        in2= 32'hbd8aba6a;
        #10in1= 32'hbd6e1e51;
        in2= 32'hbd1a9a05;
        #10in1= 32'hbccf4da8;
        in2= 32'hbcc3abb1;
        #10in1= 32'hbca37bdc;
        in2= 32'hbbe1f1e8;
        #10in1= 32'h3bfc7c94;
        in2= 32'h3ce0792d;
        #10in1= 32'h3d1b015d;
        in2= 32'h3d1793f5;
        #10in1= 32'h3d19d98d;
        in2= 32'h3d1a0216;
        #10in1= 32'h3cef7d04;
        in2= 32'h3ce06123;
        #10in1= 32'h3ceab236;
        in2= 32'h3cabb35e;
        #10in1= 32'h3c70d6b4;
        in2= 32'h3c6d7460;
        #10in1= 32'h3bc48e94;
        in2= 32'hbbf7629f;
        #10in1= 32'hbc46635c;
        in2= 32'hbc2c0482;
        #10in1= 32'hbc6680ee;
        in2= 32'hbcecefc3;
        #10in1= 32'hbd429359;
        in2= 32'hbd75e256;
        #10in1= 32'hbd90a0bc;
        in2= 32'hbdad731a;
        #10in1= 32'hbdbeb0b8;
        in2= 32'hbdc5a168;
        #10in1= 32'hbdd3dce5;
        in2= 32'hbde73a6b;
        #10in1= 32'hbe00c93f;
        in2= 32'hbe0f5739;
        #10in1= 32'hbe0bd269;
        in2= 32'hbe0040c1;
        #10in1= 32'hbe123882;
        in2= 32'hbe345bb1;
        #10in1= 32'hbe38248e;
        in2= 32'hbe237d75;
        #10in1= 32'hbe1b18c4;
        in2= 32'hbe238922;
        #10in1= 32'hbe285656;
        in2= 32'hbe20f2b4;
        #10in1= 32'hbe1ce60b;
        in2= 32'hbe1ee1b6;
        #10in1= 32'hbe0c7dc2;
        in2= 32'hbde172a4;
        #10in1= 32'hbdee57cb;
        in2= 32'hbe079719;
        #10in1= 32'hbde52f5e;
        in2= 32'hbdbac3ea;
        #10in1= 32'hbdde128a;
        in2= 32'hbdf25ae5;
        #10in1= 32'hbdbd1908;
        in2= 32'hbda00da2;
        #10in1= 32'hbdc7a9f1;
        in2= 32'hbdd14937;
        #10in1= 32'hbd9c9348;
        in2= 32'hbd896b70;
        #10in1= 32'hbda0c2de;
        in2= 32'hbd97229f;//90
      end  
    
endmodule
