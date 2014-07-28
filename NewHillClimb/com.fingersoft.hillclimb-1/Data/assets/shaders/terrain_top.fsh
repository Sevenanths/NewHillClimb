#ifdef GL_ES
precision lowp float;
varying lowp vec2 v_texCoord;
varying lowp float v_texCoord2;
#else
varying vec2 v_texCoord;
varying float v_texCoord2;
#endif



uniform sampler2D u_texture;


void main()
{
    //float mul = (0.7+clamp(v_texCoord2*12.0, 0.0, 1.0)*0.4) * (1.6-v_texCoord2*0.7);
    gl_FragColor = texture2D(u_texture, v_texCoord) * max(1.75-v_texCoord2*0.5, 0.75);
}


