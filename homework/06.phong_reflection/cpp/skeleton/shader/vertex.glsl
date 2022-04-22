#version 120                  // GLSL 1.20

attribute vec3 a_position;    // per-vertex position (per-vertex input)
attribute vec3 a_normal;
attribute vec2 a_texcoord;
uniform mat4 u_PVM;

varying vec3 v_position;
varying vec3 v_normal;
varying vec2 v_texcoord;

void main()
{

  gl_Position = u_PVM * vec4(a_position, 1.0f);
  v_position=a_position;
  v_normal=a_normal;
  v_texcoord = a_texcoord;


}
