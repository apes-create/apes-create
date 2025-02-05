precision mediump float;

// attribute vec3 aNormal;

varying vec2 vUv;
varying vec3 vPosition;
varying vec3 vNormal;

void main() {
  vUv = uv;
  vNormal = normal;

  vec4 sourcePosition = vec4(position, 1.0);
  vec4 modelPosition = modelMatrix * sourcePosition;
  vPosition = modelPosition.xyz;
  vec4 viewPosition = viewMatrix * modelPosition;
  gl_Position = projectionMatrix * viewPosition;
}
