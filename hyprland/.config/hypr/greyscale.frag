#version 320 es

precision highp float;
in vec2 v_texcoord;
layout (location = 0) out vec4 fragColor;
uniform sampler2D tex;
uniform float time;

void main(){
    vec4 col = texture(tex, v_texcoord);
    vec3 grey = vec3(0.299, 0.587, 0.114);
    float value = dot(col.rgb, grey);
    vec4 final = vec4(value,value,value,1.0);
    fragColor = final;
}
