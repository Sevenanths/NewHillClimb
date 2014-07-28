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
	// Offset from lamp to pixel
	float dx = v_posDiff.x;
	float dy = v_posDiff.y + v_texCoord.y - 0.3;

	// Precalculations
	float dxdx = dx*dx;
	float dydy = dy*dy;
	float dxdy = dx*dy;
	
	// Squared distance from lamp to pixel
	float distanceSq = dxdx + dydy;
	
	// Fast atan2 approximation
	float c1 = clamp(10000.0*(abs(dx)-abs(dy)), 0.0, 1.0);
	float c2 = 1.0 - c1;
	float pixelAngle = -(c1 * ((-dxdy) / (dxdx+0.28088*dydy) + PI2*sign(dx)) + c2 * (-PI2*sign(dxdy) + PI2*sign(dx) + (dxdy) / (dydy + 0.28088*dxdx))) - PI2;

	// Take light angle into account
	float angle = abs(pixelAngle - u_lightAngle);
	
	// Default intensity
	float intensity = LIGHT_INTENSITY - clamp(0.004*distanceSq, 0.0, 0.6);
	
	// Apply angular falloff
	float angleOffset = ANGLE_LIMIT - angle;
	float angleFalloff = clamp(angleOffset / ANGLE_FALLOFF, 0.0, 1.0);
	intensity *= angleFalloff;
	
	// Apply distance falloff
	float diffFar = LIGHT_LENGTH_SQ - distanceSq;
	float distanceFalloff = clamp(diffFar / LENGHT_FALLOFF_SQ, 0.0, 1.0);
	intensity *= distanceFalloff;
	
	intensity = clamp(intensity, DARK_INTENSITY, LIGHT_INTENSITY);
	
	gl_FragColor = texture2D(u_texture, v_texCoord);
	gl_FragColor[0] *= intensity;
	gl_FragColor[1] *= intensity;
	gl_FragColor[2] *= intensity;

}
