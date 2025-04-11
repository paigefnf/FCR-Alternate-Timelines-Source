#pragma header
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
// from Aeolus-Light
void mainImage(in vec2 fragCoord)
{
    vec2 iResolution = openfl_TextureSize;
    vec2 uv = fragCoord/iResolution.xy;
    vec4 color = texture(iChannel0, uv);
    float gray = dot(vec3(0.299, 0.587, 0.114), color.rgb);
    color.rgb = vec3(gray);
    fragColor = color;
}

void main()
{
    mainImage(openfl_TextureCoordv.xy * openfl_TextureSize);
}