#ifdef GL_ES
precision mediump float;
varying mediump vec2 v_texCoord;
varying mediump float v_texCoord2;
varying mediump vec2 v_posDiff;
#else
varying vec2 v_texCoord;
varying float v_texCoord2;
varying vec2 v_posDiff;
#endif

uniform sampler2D u_texture;
uniform float u_lightAngle;

const float DARK_INTENSITY = 0.1;
const float LIGHT_INTENSITY = 1.0;
const float PI = 3.14159;

void main()
{	
	// Get distance from lamp to pixel
	float dx = v_posDiff.x;
	float dy = v_posDiff.y + v_texCoord2;
	float distanceSq = dx*dx + dy*dy;
	
	// Default intensity
	float intensity = LIGHT_INTENSITY - clamp(0.004*distanceSq, 0.0, 1.0);
	
	// Limit light depth in terrain
	intensity = clamp(intensity - 0.1*v_texCoord2, DARK_INTENSITY, LIGHT_INTENSITY);

	gl_FragColor = texture2D(u_texture, v_texCoord);
	gl_FragColor[0] *= intensity;
	gl_FragColor[1] *= intensity;
	gl_FragColor[2] *= intensity;
}
