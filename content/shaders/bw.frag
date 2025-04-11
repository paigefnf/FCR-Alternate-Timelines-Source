#pragma header

void main()
{
    vec2 uv = openfl_TextureCoordv;

    vec4 tex = flixel_texture2D(bitmap, uv);
    vec3 greyScale = vec3(.3, .3, .3);
    gl_FragColor = vec4( vec3(dot( tex.rgb, greyScale)), tex.a);
}