#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif

uniform sampler2D u_texture;
uniform float u_param;

void main()
{
	vec3 tintColor = vec3(0.53, 0.39, 0.29);
	vec4 texel = texture2D(u_texture, v_texCoord);
	
	gl_FragColor[0] = texel[3] * (u_param*tintColor[0] + (1.0-u_param)*texel[0]);
	gl_FragColor[1] = texel[3] * (u_param*tintColor[1] + (1.0-u_param)*texel[1]);
	gl_FragColor[2] = texel[3] * (u_param*tintColor[2] + (1.0-u_param)*texel[2]);
	gl_FragColor[3] = texel[3];
}
