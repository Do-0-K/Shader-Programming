#version 330

in vec3 a_Position;
in vec4 a_Color;

out vec4 v_Color;

uniform float a_Time;

const float c_PI=3.141592;

void main()
{
	float value = fract(a_Time)*2 - 1.0f;
	float rad = (value + 1) *c_PI;
	

	vec4 newPosition = vec4(a_Position,1);
	newPosition.xy = newPosition.xy + fract(a_Time/4) * vec2(sin(rad), cos(rad));
	gl_Position = newPosition;

	v_Color = a_Color;
}
