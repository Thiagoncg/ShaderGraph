//01 Base Estrutura Shader
Shader"Custom/SoliColor"
{
    //02 Propriedades do shader (Inspector)
    Properties
    {
        _Color("Tint", Color) = (1, 1, 1, 1)
    }
        //03 Subshader - Determina o aspecto do Shader
        SubShader
        {
            //04 Passo para o aspecto do Shader
            Pass
            {
                //05 Código de programação do Shader
                CGPROGRAM
                //codigo CG  Aqui
                //PRAGMAS DIRETIVAS DE ARGUMENTAÇÃO
                #pragma vertex vertexShader
                #pragma fragment fragmentShader

                uniform fixed4 _Color;

                //VERTEX INPUT
                struct vertexInput
                {
                    fixed4 vertex : POSITION; 
                };

                //VERTEX OUTPUT
                struct vertexOutput
                {
                    fixed4 position : SV_POSITION;
                    fixed4 color : COLOR;
                };

                //VERTEX SHADER
                vertexOutput vertexShader(vertexInput i)
                {
                    vertexOutput o;
                    o.position = UnityObjectToClipPos(i.vertex);
                    o.color = _Color;
                    return o;
                }

                //FRAGMENT SHADER
                fixed4 fragmentShader (vertexOutput o) : SV_TARGET
                {
                    return o.color;
                }
                ENDCG
            }
        }

    fallback "Mobile/VertexLit"
}