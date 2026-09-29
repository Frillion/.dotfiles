#version 320 es

precision highp float;
in vec2 v_texcoord;
layout (location = 0) out vec4 fragColor;
uniform sampler2D tex;
uniform float time;

void main(){
    vec4 col = texture(tex, v_texcoord);
    float dist = pow(1.0 - abs(dot(v_texcoord - 0.5, v_texcoord - 0.5)), 40.0 - sin(time * 0.2) * 20.0);
    vec3 grey = vec3(0.299, 0.587, 0.114);
    float value = dot(col.rgb, grey);
    vec4 final = mix(vec4(value,value,value,1.0),vec4(1.0,0.0,0.0,1.0),dist);
    fragColor = final;
}
