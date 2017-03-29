#include <metal_stdlib>
using namespace metal;




kernel void compute(texture2d<float, access::write> output [[texture(0)]],
                    texture2d<float, access::sample> input [[texture(1)]],
                    constant float &timer [[buffer(0)]],
                    uint2 gid [[thread_position_in_grid]])
{
    float4 color = input.read(gid);
    output.write(color, gid);
}






