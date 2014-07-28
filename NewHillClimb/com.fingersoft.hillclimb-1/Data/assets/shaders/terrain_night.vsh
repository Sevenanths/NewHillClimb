
attribute vec4 a_position;
attribute vec3 a_texCoord;

uniform mat4 u_MVPMatrix;
uniform float u_terrainBottom;
uniform vec2 u_lightPos;

#ifdef GL_ES
varying mediump vec2 v_texCoord;
varying mediump float v_texCoord2;
varying mediump vec2 v_posDiff;
#else
varying vec2 v_texCoord;
varying float v_texCoord2;
varying vec2 v_posDiff;
#endif

void main()
{
    float addY = max((a_position.y - u_terrainBottom)*a_position.z, 0.0);
	
    gl_Position = u_MVPMatrix * vec4(a_position.x, a_position.y - addY, 0.0, 1.0);
    v_texCoord.x = a_texCoord.x;
	v_texCoord.y = a_texCoord.y - addY/10.0;
	v_texCoord2 = addY;
	
	v_posDiff = vec2(u_lightPos[0]-a_position.x, u_lightPos[1]-a_position.y);
}
