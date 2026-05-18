#version 320 es

precision mediump float;

in vec2 v_texcoord;
out vec4 fragColor;

uniform sampler2D tex;

void main()
{
    vec4 color = texture(tex, v_texcoord);

    color.r += 0.05;
    color.b += 0.15;

    fragColor = color;
}
