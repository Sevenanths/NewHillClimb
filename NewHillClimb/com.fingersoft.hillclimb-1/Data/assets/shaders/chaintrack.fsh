#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
//varying mediump vec2 v_texCoord2;
#else
varying vec2 v_texCoord;
//varying vec2 v_texCoord2;
#endif

uniform sampler2D u_texture;
uniform vec3 u_params;

void main()
{
	vec3 tintColor = vec3(0.53, 0.39, 0.29);

	vec4 texel = texture2D(u_texture, v_texCoord);
	
	gl_FragColor[0] = texel[3] * (u_params[0]*tintColor[0] + (1.0-u_params[0])*texel[0]);
	gl_FragColor[1] = texel[3] * (u_params[0]*tintColor[1] + (1.0-u_params[0])*texel[1]);
	gl_FragColor[2] = texel[3] * (u_params[0]*tintColor[2] + (1.0-u_params[0])*texel[2]);
	gl_FragColor[3] = texel[3];
}
