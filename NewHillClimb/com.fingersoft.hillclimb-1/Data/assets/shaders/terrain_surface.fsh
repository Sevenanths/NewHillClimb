#ifdef GL_ES
varying lowp vec2 v_texCoord;
#else
varying vec2 v_texCoord;
#endif



uniform sampler2D u_texture;

void main()
{
    gl_FragColor = texture2D(u_texture, v_texCoord);
}


