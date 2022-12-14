#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("in1", 32, hls_in, 0, "ap_none", "in_data", 1),
	Port_Property("in2", 32, hls_in, 1, "ap_none", "in_data", 1),
	Port_Property("in3", 32, hls_in, 2, "ap_none", "in_data", 1),
	Port_Property("in4", 32, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("in5", 32, hls_in, 4, "ap_none", "in_data", 1),
	Port_Property("in6", 32, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("in7", 32, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "adders";
