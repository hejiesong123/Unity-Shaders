﻿Shader "Custom/120-129/122_Blend_Debug_Dst"
{
    Properties 
    {
        [HideInInspector] _Color ("Color", Color) = (1, 1, 1, 1)
    }
    SubShader
    {
        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            
            fixed4 _Color;
            
            struct vertexInput
            {
                float4 vertex : POSITION;
            };
            
            struct vertexOuput
            {
                float4 pos : SV_POSITION;
            };
            
            vertexOuput vert(vertexInput v)
            {
                vertexOuput o;
                
                o.pos = UnityObjectToClipPos(v.vertex);
                
                return o;
            }
            
            fixed4 frag(vertexOuput i) : SV_TARGET
            {
                return _Color;
            }
            ENDCG
        }
    }
}