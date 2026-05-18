#version 320 es

precision mediump float;

in vec2 v_texcoord;
out vec4 fragColor;

uniform sampler2D tex;

void main()
{
    vec2 uv = v_texcoord;

    uv.x += sin(uv.y * 80.0) * 0.001;

    vec4 color = texture(tex, uv);

    float scanline = sin(uv.y * 800.0) * 0.04;

    color.rgb -= scanline;

    fragColor = color;
}
