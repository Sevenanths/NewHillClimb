
attribute vec4 a_position;
attribute vec2 a_texCoord;

uniform    mat4 u_MVPMatrix;
uniform    float t;
uniform    float t2;

#ifdef GL_ES
varying lowp vec2 v_texCoord;
varying lowp vec2 v_texCoord2;
#else
varying vec2 v_texCoord;
varying vec2 v_texCoord2;
#endif

void main()
{
	float addY = 0.03*sin(t2*2.0*3.14159 + 100.0*a_texCoord.x) * clamp(1.0-a_texCoord.y*1000.0, 0.0, 1.0);

    gl_Position = u_MVPMatrix * vec4(a_position.x, a_position.y + addY, 0.0, 1.0);
    v_texCoord.x = a_texCoord.x;
	v_texCoord.y = a_texCoord.y;
	v_texCoord2.x = 0.075;
	v_texCoord2.y = t;
}
