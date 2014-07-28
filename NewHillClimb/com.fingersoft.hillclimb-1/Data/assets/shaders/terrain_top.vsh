
attribute vec4 a_position;
attribute vec2 a_texCoord;

uniform    mat4 u_MVPMatrix;
uniform   float u_terrainBottom;

#ifdef GL_ES
varying mediump vec2 v_texCoord;
varying lowp float v_texCoord2;
#else
varying vec2 v_texCoord;
varying float v_texCoord2;
#endif

void main()
{
    float addY = min((a_position.y - u_terrainBottom)*a_position.z, 0.0);
	
    gl_Position = u_MVPMatrix * vec4(a_position.x, a_position.y - addY, 0.0, 1.0);
    v_texCoord.x = a_texCoord.x;
	v_texCoord.y = a_texCoord.y - addY/10.0;
	v_texCoord2 = abs(addY/20.0);
}
