#version 330 core
layout (location = 0) in vec3 position; // The position variable has attribute position 0
layout (location = 2) in vec2 texCoord; // tex coordiantes

out vec2 TexCoord;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

void main()
{
    gl_Position = projection * view * model * vec4(position, 1.0f);
	TexCoord = vec2(texCoord.x, 1.0f - texCoord.y);
}