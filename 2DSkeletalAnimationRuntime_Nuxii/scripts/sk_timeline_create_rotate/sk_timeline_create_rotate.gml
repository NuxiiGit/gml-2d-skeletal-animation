#macro sk_type_timeline_rotate "ofTimelineRotate"
enum SK_TIMELINE_ROTATE{
	keyframes = sk_timeline_header_keyframes,
	bone = sk_timeline_header_body,
	sizeof,
		kf_time = sk_timeline_keyframe_time,
		kf_rotation = sk_timeline_keyframe_body,
		kf_cycles,
		kf_tweenEasing,
		kf_ENTRIES
}
gml_pragma("global","sk_struct_type_add(sk_type_timeline_rotate,SK_TIMELINE_ROTATE.sizeof,sk_construct_timeline,sk_destruct_timeline,SK_TIMELINE_ROTATE.kf_ENTRIES);");
/// @desc creates a structure
/// @param name
/// @param bone
var sk_structure = sk_struct_create(sk_type_timeline_rotate,argument0);
sk_timeline_set_body(sk_structure,argument1);
return sk_structure;