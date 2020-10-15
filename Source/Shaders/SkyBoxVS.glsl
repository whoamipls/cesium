attribute vec3 position;
uniform mat3 u_rotateMatrix;
varying vec3 v_texCoord;

void main()
{
    vec3 p = czm_viewRotation * u_rotateMatrix * (czm_temeToPseudoFixed * (czm_entireFrustum.y * position));
    gl_Position = czm_projection * vec4(p, 1.0);
    v_texCoord = position.xyz;
}
