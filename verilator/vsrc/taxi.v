module taxi(
    input clk,
    input rst,
    input start,
    input pause,
    input waiting,
    input [1:0] speedup,
    output [31:0] distance,
    output [31:0] money
);

reg [31:0] taxi_dis;
reg [31:0] taxi_wait;

taxi_distance taxi_distance(
    .clk(clk),
    .rst(rst),
    .start(start),
    .pause(pause),
    .waiting(waiting),
    .speedup(speedup),
    .distance(taxi_dis), // 0.001km * 1.2(1.8)
    .wait_time(taxi_wait) // 0.01s * 0.5
);




endmodule
