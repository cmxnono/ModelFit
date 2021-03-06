#version 150

in vec3 v_position;

uniform mat4 PVW_mat;
uniform mat4 VW_mat;

out vec3 f_position_view;

void main(void) {
  // Multiply the mvp matrix by the vertex to obtain our final vertex position
  gl_Position = PVW_mat * vec4(v_position, 1.0);
  gl_Position.y = -1.0 * gl_Position.y;  // Flip the coords!

  f_position_view = (VW_mat * vec4(v_position, 1.0)).xyz;
}
