#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
varying mediump vec2 v_texCoord2;
varying mediump vec4 v_color;
#else
varying vec2 v_texCoord;
varying vec2 v_texCoord2;
#endif

uniform sampler2D u_texture;
uniform float t;
uniform float t2;

void main()
{
	const float PI2 = 3.14159*2.0;
	float d2 = (0.5-texture2D(u_texture, v_texCoord).y) * clamp(v_texCoord2.x*0.2, 0.0, 0.03);
	float offset = v_texCoord.y*PI2 + v_texCoord.x*PI2;
    gl_FragColor = texture2D(u_texture, v_texCoord + vec2(cos(v_texCoord2.y*PI2+offset), sin(v_texCoord2.y*PI2+offset))*d2);

	gl_FragColor[3] = 0.85 - 0.85*(clamp(1.0-v_texCoord.y*30.0, 0.0, 1.0));
}


