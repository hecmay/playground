// This is a generated file. Use and modify at your own risk.
//////////////////////////////////////////////////////////////////////////////// 
// default_nettype of none prevents implicit wire declaration.
`default_nettype none
`timescale 1 ns / 1 ps
// Top level of the kernel. Do not modify module name, parameters or ports.
module blocked_accum_s2m0 #(
  parameter integer C_S_AXI_CONTROL_ADDR_WIDTH = 12,
  parameter integer C_S_AXI_CONTROL_DATA_WIDTH = 32,
  parameter integer C_IN0_TDATA_WIDTH          = 32,
  parameter integer C_OUT0_TDATA_WIDTH         = 32
)
(
  // System Signals
  input  wire                                    ap_clk               ,
  input  wire                                    ap_rst_n             ,
  //  Note: A minimum subset of AXI4 memory mapped signals are declared.  AXI
  // signals omitted from these interfaces are automatically inferred with the
  // optimal values for Xilinx accleration platforms.  This allows Xilinx AXI4 Interconnects
  // within the system to be optimized by removing logic for AXI4 protocol
  // features that are not necessary. When adapting AXI4 masters within the RTL
  // kernel that have signals not declared below, it is suitable to add the
  // signals to the declarations below to connect them to the AXI4 Master.
  // 
  // List of ommited signals - effect
  // -------------------------------
  // ID - Transaction ID are used for multithreading and out of order
  // transactions.  This increases complexity. This saves logic and increases Fmax
  // in the system when ommited.
  // SIZE - Default value is log2(data width in bytes). Needed for subsize bursts.
  // This saves logic and increases Fmax in the system when ommited.
  // BURST - Default value (0b01) is incremental.  Wrap and fixed bursts are not
  // recommended. This saves logic and increases Fmax in the system when ommited.
  // LOCK - Not supported in AXI4
  // CACHE - Default value (0b0011) allows modifiable transactions. No benefit to
  // changing this.
  // PROT - Has no effect in current acceleration platforms.
  // QOS - Has no effect in current acceleration platforms.
  // REGION - Has no effect in current acceleration platforms.
  // USER - Has no effect in current acceleration platforms.
  // RESP - Not useful in most acceleration platforms.
  // 
  // AXI4-Stream (slave) interface in0
  input  wire                                    in0_tvalid           ,
  output wire                                    in0_tready           ,
  input  wire [C_IN0_TDATA_WIDTH-1:0]            in0_tdata            ,
  input  wire [C_IN0_TDATA_WIDTH/8-1:0]          in0_tkeep            ,
  input  wire                                    in0_tlast            ,
  // AXI4-Stream (master) interface out0
  output wire                                    out0_tvalid          ,
  input  wire                                    out0_tready          ,
  output wire [C_OUT0_TDATA_WIDTH-1:0]           out0_tdata           ,
  output wire [C_OUT0_TDATA_WIDTH/8-1:0]         out0_tkeep           ,
  output wire                                    out0_tlast           ,
  // AXI4-Lite slave interface
  input  wire                                    s_axi_control_awvalid,
  output wire                                    s_axi_control_awready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_awaddr ,
  input  wire                                    s_axi_control_wvalid ,
  output wire                                    s_axi_control_wready ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_wdata  ,
  input  wire [C_S_AXI_CONTROL_DATA_WIDTH/8-1:0] s_axi_control_wstrb  ,
  input  wire                                    s_axi_control_arvalid,
  output wire                                    s_axi_control_arready,
  input  wire [C_S_AXI_CONTROL_ADDR_WIDTH-1:0]   s_axi_control_araddr ,
  output wire                                    s_axi_control_rvalid ,
  input  wire                                    s_axi_control_rready ,
  output wire [C_S_AXI_CONTROL_DATA_WIDTH-1:0]   s_axi_control_rdata  ,
  output wire [2-1:0]                            s_axi_control_rresp  ,
  output wire                                    s_axi_control_bvalid ,
  input  wire                                    s_axi_control_bready ,
  output wire [2-1:0]                            s_axi_control_bresp  
);

///////////////////////////////////////////////////////////////////////////////
// Local Parameters
///////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////
// Wires and Variables
///////////////////////////////////////////////////////////////////////////////
(* DONT_TOUCH = "yes" *)
reg                                 areset                         = 1'b0;

// Register and invert reset signal.
always @(posedge ap_clk) begin
  areset <= ~ap_rst_n;
end

///////////////////////////////////////////////////////////////////////////////
// Begin control interface RTL.  Modifying not recommended.
///////////////////////////////////////////////////////////////////////////////


// AXI4-Lite slave interface
blocked_accum_s2m0_control_s_axi #(
  .C_S_AXI_ADDR_WIDTH ( C_S_AXI_CONTROL_ADDR_WIDTH ),
  .C_S_AXI_DATA_WIDTH ( C_S_AXI_CONTROL_DATA_WIDTH )
)
inst_control_s_axi (
  .ACLK    ( ap_clk                ),
  .ARESET  ( areset                ),
  .ACLK_EN ( 1'b1                  ),
  .AWVALID ( s_axi_control_awvalid ),
  .AWREADY ( s_axi_control_awready ),
  .AWADDR  ( s_axi_control_awaddr  ),
  .WVALID  ( s_axi_control_wvalid  ),
  .WREADY  ( s_axi_control_wready  ),
  .WDATA   ( s_axi_control_wdata   ),
  .WSTRB   ( s_axi_control_wstrb   ),
  .ARVALID ( s_axi_control_arvalid ),
  .ARREADY ( s_axi_control_arready ),
  .ARADDR  ( s_axi_control_araddr  ),
  .RVALID  ( s_axi_control_rvalid  ),
  .RREADY  ( s_axi_control_rready  ),
  .RDATA   ( s_axi_control_rdata   ),
  .RRESP   ( s_axi_control_rresp   ),
  .BVALID  ( s_axi_control_bvalid  ),
  .BREADY  ( s_axi_control_bready  ),
  .BRESP   ( s_axi_control_bresp   )
);

///////////////////////////////////////////////////////////////////////////////
// Add kernel logic here.  Modify/remove example code as necessary.
///////////////////////////////////////////////////////////////////////////////

// Example RTL block.  Remove to insert custom logic.
blocked_accum_s2m0_wrapper #(
  .C_IN0_TDATA_WIDTH  ( C_IN0_TDATA_WIDTH  ),
  .C_OUT0_TDATA_WIDTH ( C_OUT0_TDATA_WIDTH )
)
inst_example (
  .ap_clk      ( ap_clk      ),
  .ap_rst_n    ( ap_rst_n    ),
  .in0_tvalid  ( in0_tvalid  ),
  .in0_tready  ( in0_tready  ),
  .in0_tdata   ( in0_tdata   ),
  .in0_tkeep   ( in0_tkeep   ),
  .in0_tlast   ( in0_tlast   ),
  .out0_tvalid ( out0_tvalid ),
  .out0_tready ( out0_tready ),
  .out0_tdata  ( out0_tdata  ),
  .out0_tkeep  ( out0_tkeep  ),
  .out0_tlast  ( out0_tlast  )
);

endmodule
`default_nettype wire
