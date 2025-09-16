#version 330

in vec3 a_Position;
in vec4 a_Color;

out vec4 v_Color;

uniform float a_Time;

void main()
{
	vec4 newPosition = vec4(a_Position,1);
	newPosition.xy = newPosition.xy + vec2(fract(a_Time),0);
	gl_Position = newPosition;

	v_Color = a_Color;
}
