#version 300 es

precision mediump float;
in vec2 v_texcoord;
layout (location = 0) out vec4 frag;
uniform sampler2D tex;

void main(){
    float dx = 1.0/1100.0;
    float dy = 1.0/1100.0;
    vec2 modified_tex = vec2(dx*floor(v_texcoord.x/dx),dy*floor(v_texcoord.y/dy));
    vec4 col = texture(tex, modified_tex);
    vec3 grey = vec3(0.299, 0.587, 0.114);
    float value = dot(col.rgb, grey);
    vec4 final = vec4(value,value,value,col.a);
    frag = final;
}
