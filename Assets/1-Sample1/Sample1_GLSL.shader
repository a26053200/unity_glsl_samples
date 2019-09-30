Shader "Sample1/Test001" 
{
 
	Properties
	{
		_Color("Main Color",Color)=(1,0,0,1)
	}
 
	SubShader
	{
		Pass
		{
			GLSLPROGRAM
 
			#ifdef VERTEX
 
			void main()
			{
				gl_Position = gl_ModelViewProjectionMatrix * gl_Vertex;
			}
 
			#endif
 
 
			#ifdef FRAGMENT
 
			uniform vec4 _Color;
 
			void main()
			{
				//gl_FragColor = vec4(1.0,0.0,0.0,1.0);
				gl_FragColor=_Color;
			}
 
			#endif
 
			ENDGLSL
		}
	}
}