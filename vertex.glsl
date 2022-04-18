#version 330 core

layout(location = 0) in vec3 Position;
layout(location = 1) in vec3 Color;

out vec3 interpolatedColor;

uniform float time;

uniform mat4 M;


void main() {
    //gl_Position = T * vec4(Position, 1.0);
	//gl_Position = R * vec4(Position, abs(sin(time)));
	gl_Position = M * vec4(Position, 1.0);
	interpolatedColor = Color;
}
