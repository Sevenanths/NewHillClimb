#ifdef GL_ES
precision lowp float;
varying lowp vec2 v_texCoord;
varying mediump float v_texCoord2;
#else
varying vec2 v_texCoord;
varying float v_texCoord2;
#endif



uniform sampler2D u_texture;

void main()
{
	//float t = min(v_texCoord2, 1);
	//float mul = 1.15+sin(pow(t, 0.35)*3.1415-0.5);
    float mul = (0.7+clamp(v_texCoord2*12.0, 0.0, 1.0)*0.4) * (1.6-v_texCoord2*0.7);
    gl_FragColor = texture2D(u_texture, v_texCoord) * mul;
}


