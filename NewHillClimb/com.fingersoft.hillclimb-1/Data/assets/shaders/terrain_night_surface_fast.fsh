#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
varying mediump vec2 v_posDiff;
#else
varying vec2 v_texCoord;
varying vec2 v_posDiff;
#endif

uniform sampler2D u_texture;
uniform float u_lightAngle;

const float LIGHT_LENGTH_SQ = 370.0;
const float LENGHT_FALLOFF_SQ = 170.0;
const float ANGLE_LIMIT = 0.7;
const float ANGLE_FALLOFF = 0.3;
const float DARK_INTENSITY = 0.1;
const float LIGHT_INTENSITY = 1.0;

const float PI2 = 1.570796;

void main()
{
    // Get distance from lamp to pixel
	float dx = v_posDiff.x;
	float dy = v_posDiff.y + v_texCoord.y - 0.3;
	float distanceSq = dx*dx + dy*dy;
	
	float intensity = LIGHT_INTENSITY - clamp(0.004*distanceSq, 0.0, 1.0);
	   
	gl_FragColor = texture2D(u_texture, v_texCoord);
	gl_FragColor[0] *= intensity;
	gl_FragColor[1] *= intensity;
	gl_FragColor[2] *= intensity;
}
