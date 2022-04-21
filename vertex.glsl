#version 330 core //a version declaration is required by all glsl shaders.

//each input to vertex shader has an attribute index. 
//layout location assignts attribute index 0 to position
layout(location = 0) in vec3 Position; //input to vertex shader: position,  vec3 type. 
layout(location = 1) in vec3 Color; // input to vertex shader: color, vec3 type. 
//layout location assigns attribute index 1 to color

out vec3 interpolatedColor; 

uniform float time;

uniform mat4 M;

//main execution is done by main like in C++
void main() {
//every indentifier that starts with gl_ is a built in input shader in glsl

    //gl_Position = T * vec4(Position, 1.0);
	//gl_Position = R * vec4(Position, abs(sin(time)));
	gl_Position = M * vec4(Position, 1.0);
	interpolatedColor = Color;
}
