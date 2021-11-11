void Facing_float (in float4 renderBase, in float4 renderTop, in bool facing, out float output )
{
    //return facing > 0 ? renderBase : renderTop;
    output = facing > 0 ? renderBase : renderTop;
    // if( facing > 0)
    // {
    //     output = renderBase
    // }
    // else
    // {
    //     output = renderTop
    // }
}
