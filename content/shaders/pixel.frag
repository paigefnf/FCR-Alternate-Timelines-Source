#pragma header
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main

void mainImage()
{
    vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
    vec2 iResolution = openfl_TextureSize;
	vec2 uv = fragCoord.xy / iResolution.xy;
    
    float plx = iResolution.x * 7.0 / 1700.0;
    float ply = iResolution.y * 7.0 / 925.0;
    
    float dx = plx * (1.0 / iResolution.x);
    float dy = ply * (1.0 / iResolution.y);
    
    uv.x = dx * floor(uv.x / dx);
    uv.y = dy * floor(uv.y / dy);
    
    fragColor = texture(iChannel0, uv);
}

// https://www.shadertoy.com/view/dssXRl