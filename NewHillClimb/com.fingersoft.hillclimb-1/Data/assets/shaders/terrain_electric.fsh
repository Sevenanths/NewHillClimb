#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
varying mediump vec2 v_texCoord2;
#else
varying vec2 v_texCoord;
varying vec2 v_texCoord2;
#endif



uniform sampler2D u_texture;

void main()
{
	const float PI2 = 3.14159*2.0;
	float d = (0.5-texture2D(u_texture, v_texCoord).y) * clamp(v_texCoord2.x*0.2, 0.0, 0.03);
	float offset = v_texCoord.y*PI2 + v_texCoord.x*PI2;
    gl_FragColor = texture2D(u_texture, v_texCoord + vec2(cos(v_texCoord2.y*PI2+offset), sin(v_texCoord2.y*PI2+offset))*d);
}


