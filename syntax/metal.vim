" Vim syntax file
" Language: Apple Metal Shading Language v2.1
" Maintainer: Stewart Imel
" Latest Revision: 17 June 2021

if exists("b:current_syntax")
	finish
end

" Read the C++ syntax to start with
" Metal is based upon C++
runtime! syntax/cpp.vim
unlet b:current_syntax

syn keyword basicMetalKeywords vertex fragment constant buffer device threadgroup threadgroup_imageblock patch
syn keyword scalarMetalTypes ptrdiff_t half uchar uint

syn keyword commonBuiltinFns clamp mix saturate sign smoothstep step

syn keyword integerBuiltinFns abs absdiff addsat clamp clz ctz extract_bits hadd
syn keyword integerBuiltinFns insert_bits mad24 madhi madsat max max3 median3
syn keyword integerBuiltinFns min min3 mul24 mulhi popcount reverse_bits rhadd
syn keyword integerBuiltinFns rotate subsat

syn keyword relationalBuiltinFns all any isfinite isinf isnan isnormal isordered
syn keyword relationalBuiltinFns isunordered not select signbit

syn keyword mathBuiltinFns acos acosh asin asinh atan atan2 atanh ceil copysign
syn keyword mathBultinFns cos cosh cospi divide exp exp2 exp10 fabs abs fdim
syn keyword mathBultinFns floor fma fmax max fmax3 max3 fmedian3 median3 fmin
syn keyword mathBultinFns min fmin3 min3 fmod fract frexp ilogb ldexp log log2
syn keyword mathBultinFns log10 modf pow powr rint round rsqrt sin sincos sinh
syn keyword mathBultinFns sinpi sqrt tan tanh tanpi trunc

syn keyword mathBuitinCnsts MAXFLOAT HUGE_VALF INFINITY NAN M_E_F M_LOG2E_F
syn keyword mathBultinCnsts M_LOG10E_F M_LN2_F M_LN10_F M_PI_F M_PI_2_F M_PI_4_F
syn keyword mathBultinCnsts M_1_PI_F M_2_PI_F M_2_SQRTPI_F M_SQRT2_F M_SQRT1_2_F
syn keyword mathBuitinCnsts MAXHALF HUGE_VALH M_E_H M_LOG2E_H M_LOG10E_H M_LN2_H
syn keyword mathBultinCnsts M_LN10_H M_PI_H M_PI_2_H M_PI_4_H M_1_PI_H M_2_PI_H
syn keyword mathBultinCnsts M_2_SQRTPI_H M_SQRT2_H M_SQRT1_2_H

syn keyword matrixBuiltinFns determinant transpose

syn keyword SIMDGroupBuiltinFns simdgroup_matrix make_filled_simdgroup_matrix
syn keyword SIMDGroupBuiltinFns simdgroup_load simdgroup_store

syn keyword SIMDGroupMatrixBuiltinFns simdgroup_multiply_accumulate simdgroup_multiply

syn keyword geometryBuiltinFns cross distance distance_squared dot faceforward
syn keyword geometryBuiltinFns length length_squared normalize reflect refract

syn keyword synchronizationBuiltinFns threadgroup_barrier simdgroup_barrier

syn keyword synchronizationBuiltinCnsts mem_none mem_device mem_threadgroup
syn keyword synchronizationBuiltinCnsts mem_texture mem_threadgroup_imageblock

syn keyword SIMDBuiltinFns simd_active_threads_mask simd_all simd_and simd_any
syn keyword SIMDBuiltinFns simd_ballot simd_broadcast simd_broadcast_first
syn keyword SIMDBuiltinFns simd_is_first simd_shuffle simd_shuffle_and_fill_down
syn keyword SIMDBuiltinFns simd_shuffle_and_fill_up simd_shuffle_down
syn keyword SIMDBuiltinFns simd_shuffle_rotate_down simd_shuffle_rotate_up
syn keyword SIMDBuiltinFns simd_shuffle_up simd_shuffle_xor
syn keyword SIMDBuiltinFns simd_is_helper_thread simd_max simd_min simd_or
syn keyword SIMDBuiltinFns simd_prefix_exclusive_product
syn keyword SIMDBuiltinFns simd_prefix_exclusive_sum
syn keyword SIMDBuiltinFns simd_prefix_inclusive_product
syn keyword SIMDBuiltinFns simd_prefix_inclusive_sum simd_product simd_sum
syn keyword SIMDBuiltinFns simd_xor

syn keyword quadGroupBuiltinFns quad_ballot quad_broadcast quad_broadcast_first
syn keyword quadGroupBuiltinFns quad_shuffle quad_shuffle_and_fill_down
syn keyword quadGroupBuiltinFns quad_shuffle_and_fill_up quad_shuffle_down
syn keyword quadGroupBuiltinFns quad_shuffle_rotate_down quad_shuffle_rotate_up
syn keyword quadGroupBuiltinFns quad_shuffle_up quad_shuffle_xor
syn keyword quadGroupBuiltinFns quad_active_threads_mask quad_all quad_and
syn keyword quadGroupBuiltinFns quad_any quad_is_first quad_is_helper_thread
syn keyword quadGroupBuiltinFns quad_max quad_min quad_or
syn keyword quadGroupBuiltinFns quad_prefix_exclusive_product
syn keyword quadGroupBuiltinFns quad_prefix_exclusive_sum
syn keyword quadGroupBuiltinFns quad_prefix_inclusive_product
syn keyword quadGroupBuiltinFns quad_prefix_inclusive_sum quad_product quad_sum
syn keyword quadGroupBuiltinFns quad_xor

syn keyword fragmentBuiltinFns dfdx dfdy fwidth get_num_samples
syn keyword fragmentBuiltinFns get_sample_position discard_fragment

syn keyword pullModelBuiltinFns interpolate_at_center interpolate_at_centroid
syn keyword pullModelBuiltinFns interpolate_at_offset interpolate_at_sample

syn keyword textureBuiltinFns sample sample_compare gather gather_compare read write
syn keyword textureBuiltinFns get_width get_height get_depth get_num_mip_levels
syn keyword textureBuiltinFns get_array_size get_num_samples get_num_colors
syn keyword textureBuiltinFns get_color_coverage_mask
syn keyword textureBuiltinFns sparse_sample sparse_sample_compare sparse_gather
syn keyword textureBuiltinFns sparse_gather_compare sparse_read data
syn keyword textureBuiltinFns calculate_unclamped_lod calculate_clamped_lod
syn keyword textureBuiltinFns fence is_null_texture
syn keyword textureBuiltinFns bias level gradient gradient2d gradient3d gradientcube
syn keyword textureBuiltinFns min_lod_clamp

syn keyword unpackBuiltinFns unpack_unorm4x8_to_float unpack_snorm4x8_to_float
syn keyword unpackBuiltinFns unpack_unorm4x8_to_half unpack_snorm4x8_to_half
syn keyword unpackBuiltinFns unpack_unorm4x8_srgb_to_float
syn keyword unpackBuiltinFns unpack_unorm4x8_srgb_to_half
syn keyword unpackBuiltinFns unpack_unorm2x16_to_float unpack_snorm2x16_to_float
syn keyword unpackBuiltinFns unpack_unorm2x16_to_half unpack_snorm2x16_to_half
syn keyword unpackBuiltinFns unpack_unorm10a2_to_float unpack_unorm565_to_float
syn keyword unpackBuiltinFns unpack_unorm10a2_to_half unpack_unorm565_to_half

syn keyword packBuiltinFns pack_float_to_unorm4x8 pack_float_to_snorm4x8
syn keyword packBuiltinFns pack_half_to_unorm4x8 pack_half_to_snorm4x8
syn keyword packBuiltinFns pack_float_to_srgb_unorm4x8
syn keyword packBuiltinFns pack_half_to_srgb_unorm4x8 pack_float_to_unorm2x16
syn keyword packBuiltinFns pack_float_to_snorm2x16 pack_half_to_unorm2x16
syn keyword packBuiltinFns pack_half_to_snorm2x16 pack_float_to_unorm10a2
syn keyword packBuiltinFns pack_float_to_unorm565 pack_half_to_unorm10a2
syn keyword packBuiltinFns pack_half_to_unorm565

syn keyword atomicMemoryOrder memory_order_relaxed

syn keyword atomicBuiltinFns atomic_store_explicit atomic_load_explicit
syn keyword atomicBuiltinFns atomic_exchange_explicit
syn keyword atomicBuiltinFns atomic_compare_exchange_weak_explicit
syn keyword atomicBuiltinFns atomic_fetch_add_explicit atomic_fetch_and_explicit
syn keyword atomicBuiltinFns atomic_fetch_max_explicit atomic_fetch_min_explicit
syn keyword atomicBuiltinFns atomic_fetch_or_explicit atomic_fetch_sub_explicit
syn keyword atomicBuiltinFns atomic_fetch_xor_explicit

syn keyword renderBuiltinFns draw_primitives draw_indexed_primitives
syn keyword renderBuiltinFns draw_patches draw_indexed_patches

syn keyword rayTracingBuiltinFns is_null_primitive_acceleration_structure
syn keyword rayTracingBuiltinFns is_null_instance_acceleration_structure
syn keyword rayTracingBuiltinFns is_null_acceleration_structure intersect
syn keyword rayTracingBuiltinFns set_triangle_front_facing_winding
syn keyword rayTracingBuiltinFns set_geometry_cull_mode set_opacity_cull_mode
syn keyword rayTracingBuiltinFns force_opacity assume_geometry_type
syn keyword rayTracingBuiltinFns assume_identity_transforms
syn keyword rayTracingBuiltinFns accept_any_intersection
syn keyword rayTracingBuiltinFns reset next abort
syn keyword rayTracingBuiltinFns get_candidate_intersection_type
syn keyword rayTracingBuiltinFns get_committed_intersection_type
syn keyword rayTracingBuiltinFns commit_triangle_intersection
syn keyword rayTracingBuiltinFns commit_bounding_box_intersection
syn keyword rayTracingBuiltinFns get_world_space_ray_origin
syn keyword rayTracingBuiltinFns get_world_space_ray_direction
syn keyword rayTracingBuiltinFns get_ray_min_distance
syn keyword rayTracingBuiltinFns get_intersection_params
syn keyword rayTracingBuiltinFns get_candidate_triangle_distance
syn keyword rayTracingBuiltinFns get_candidate_instance_id
syn keyword rayTracingBuiltinFns get_candidate_user_instance_id
syn keyword rayTracingBuiltinFns get_candidate_geometry_id
syn keyword rayTracingBuiltinFns get_candidate_primitive_id
syn keyword rayTracingBuiltinFns get_candidate_triangle_barycentric_coord
syn keyword rayTracingBuiltinFns is_candidate_non_opaque_bounding_box
syn keyword rayTracingBuiltinFns is_candidate_triangle_front_facing
syn keyword rayTracingBuiltinFns get_candidate_object_to_world_transform
syn keyword rayTracingBuiltinFns get_candidate_world_to_object_transform
syn keyword rayTracingBuiltinFns get_candidate_ray_origin
syn keyword rayTracingBuiltinFns get_candidate_ray_direction
syn keyword rayTracingBuiltinFns get_committed_distance
syn keyword rayTracingBuiltinFns get_committed_instance_id
syn keyword rayTracingBuiltinFns get_committed_user_instance_id
syn keyword rayTracingBuiltinFns get_committed_geometry_id
syn keyword rayTracingBuiltinFns get_committed_primitive_id
syn keyword rayTracingBuiltinFns get_committed_triangle_barycentric_coord
syn keyword rayTracingBuiltinFns is_committed_triangle_front_facing
syn keyword rayTracingBuiltinFns get_committed_object_to_world_transform
syn keyword rayTracingBuiltinFns get_committed_world_to_object_transform
syn keyword rayTracingBuiltinFns get_committed_ray_origin
syn keyword rayTracingBuiltinFns get_committed_ray_direction

syn keyword miscBuiltinFns is_function_constant_defined

hi def link mathBuitinCnsts metalBuiltinCnsts
hi def link synchronizationBuiltinCnsts metalBuiltinCnsts
hi def link atomicMemoryOrder metalBuiltinCnsts

hi def link commonBuiltinFns metalBuiltinFns
hi def link integerBuiltinFns metalBuiltinFns
hi def link relationalBuiltinFns metalBuiltinFns
hi def link mathBuiltinFns metalBuiltinFns
hi def link matrixBuiltinFns metalBuiltinFns
hi def link SIMDGroupBuiltinFns metalBuiltinFns
hi def link SIMDGroupMatrixBuiltinFns metalBuiltinFns
hi def link geometryBuiltinFns metalBuiltinFns
hi def link synchronizationBuiltinFns metalBuiltinFns
hi def link SIMDBuiltinFns metalBuiltinFns
hi def link quadGroupBuiltinFns metalBuiltinFns
hi def link fragmentBuiltinFns metalBuiltinFns
hi def link pullModelBuiltinFns metalBuiltinFns
hi def link textureBuiltinFns metalBuiltinFns
hi def link unpackBuiltinFns metalBuiltinFns
hi def link packBuiltinFns metalBuiltinFns
hi def link atomicBuiltinFns metalBuiltinFns
hi def link renderBuiltinFns metalBuiltinFns
hi def link rayTracingBuiltinFns metalBuiltinFns
hi def link miscBuiltinFns metalBuiltinFns

"metal half precision floating-point literal value
syn match metalFloat "\d\+[Hh]"
syn match metalFloat "\d\+\.\d*[Hh]"

"metal unsigned integer literals
syn match metalFloat "\d\+[Uu]"

syn match functionAttributes "\[\[\s*\(vertex\|fragment\|kernel\|visible\|stitchable\|intersection(\(triangle\|bounding_box\)\(,[\s]*\(triangle\|triangle_data\|instancing\|world_space_data\|primitive_motion\|instance_motion\)\)*)\)\s*\]\]"

syn match patchAttributes "\[\[\s*\(patch\|patch(\(quad\|triangle\)\(,[\s]*\([0-9]\|[1-2][0-9]\|3[0-2]\)\)\?)\)\s*\]\]"
syn match fragmentFunctionAttributes "\[\[\s*\(early_fragment_tests\)\s*\]\]"
syn match kernelFunctionAttributes "\[\[\s*\(max_total_threads_per_threadgroup([1-9][0-9]*)\)\s*\]\]"
syn match hostNameAttribute "\[\[\s*\(host_name(\"\([^\"\\]*\(\\\"\)\?\)\+\")\)\s*\]\]"

syn match locationAttributes "\[\[\s*\(buffer([0-9]\+)\|texture([0-9]\+)\|sampler([0-9]\+)\|threadgroup([0-9]\+)\)\s*\]\]"

syn match postTesselationInputAttributes "\[\[\s*\(base_instance\|instance_id\|vertex_id\|patch_id\|position_in_patch\)\s*\]\]"
syn match vertexInputAttributes "\[\[\s*\(amplification_count\|amplification_id\|base_instance\|base_vertex\|instance_id\|vertex_id\)\s*\]\]"
syn match vertexOutputAttributes "\[\[\s*\(clip_distance\|invariant\|point_size\|position\|render_target_array_index\|shared\|viewport_array_index\)\s*\]\]"
syn match fragmentTileInputAttributes "\[\[\s*\(pixel_position_in_tile\|pixels_per_tile\|tile_index\|render_target_array_index\)\s*\]\]"
syn match fragmentInputAttributes "\[\[\s*\(amplification_count\|amplification_id\|barycentric_coord\|color([0-9]\+)\|front_facing\|point_coord\|position\|primitive_id\|render_target_array_index\|sample_id\|sample_mask\|sample_mask,[\s]*post_depth_coverage\|thread_index_in_quadgroup\|thread_index_in_simdgroup\|threads_per_simdgroup\|viewport_array_index\)\s*\]\]"
syn match fragmentOutputAttributes "\[\[\s*\(color([0-9]\+)\|color([0-9]\+),[\s]*index([0-9]*)\|depth(\(any\|greater\|less\))\|sample_mask\|stencil\)\s*\]\]"
syn match intersectionInputAttributes "\[\[\s*\(origin\|direction\|min_distance\|max_distance\|payload\|geometry_id\|primitive_id\|instance_id\|world_space_origin\|world_space_direction\|barycentric_coord\|front_facing\|distance\|opaque\|instance_intersection_function_table_offset\|geometry_intersection_function_table_offset\|time\|motion_start_time\|motion_end_time\|key_frame_count\|object_to_world_transform\|world_to_object_transform\|user_instance_id\)\s*\]\]"
syn match kernelTileInputAttributes "\[\[\s*\(render_target_array_index\)\s*\]\]"
syn match kernelInputAttributes "\[\[\s*\(dispatch_quadgroups_per_threadgroup\|dispatch_simdgroups_per_threadgroup\|dispatch_threads_per_threadgroup\|grid_origin\|grid_size\|quadgroup_index_in_threadgroup\|quadgroups_per_threadgroup\|simdgroup_index_in_threadgroup\|simdgroups_per_threadgroup\|thread_execution_width\|thread_index_in_quadgroup\|thread_index_in_simdgroup\|thread_index_in_threadgroup\|thread_position_in_grid\|thread_position_in_threadgroup\|threadgroup_position_in_grid\|threadgroups_per_grid\|threads_per_grid\|threads_per_simdgroup\|threads_per_threadgroup\)\s*\]\]"
syn match intersectionOutputAttributes "\[\[\s*\(accept_intersection\|continue_search\|distance\)\s*\]\]"
syn match inputAssemblyAttributes "\[\[\s*\(stage_in\)\s*\]\]"
syn match argumentBufferAttributes "\[\[\s*\(id([0-9]\+)\)\s*\]\]"
syn match samplingAndInterpolationAttributes "\[\[\s*\(center_perspective\|center_no_perspective\|centroid_perspective\|centroid_no_perspective\|sample_perspective\|sample_no_perspective\|flat\)\s*\]\]"
syn match imageBlockAttributes "\[\[\s*imageblock_data(\([a-zA-Z_][a-zA-Z0-9_]*\))\s*\]\]"
syn match userAttributes "\[\[\s*user(\([a-zA-Z_][a-zA-Z0-9_]*\))\s*\]\]"
syn match aliasImplicitImageblockAttributes "\[\[\s*\(alias_implicit_imageblock\|alias_implicit_imageblock_color([0-9]\+)\)\s*\]\]"
syn match viewportSelectionAttributes "\[\[\s*\(viewport_array_index\)\s*\]\]"

" got lazy on this one, just match it no matter what
syn match functionConstantAttribute "\[\[\s*\(function_constant([0-9]\+)\(,[^\]]\+\)\?\|\(,[^\]]\+\),[\s]*function_constant([0-9]\+)\)\s*\]\]"
syn match rasterOrderGroupAttribute "\[\[\s*\(raster_order_group([0-9]\+)\(,[^\]]\+\)\?\|\(,[^\]]\+\),[\s]*raster_order_group([0-9]\+)\)\s*\]\]"

hi def link functionAttributes attributes
hi def link patchAttributes attributes
hi def link fragmentFunctionAttributes attributes
hi def link kernelFunctionAttributes attributes
hi def link hostNameAttribute attributes
hi def link locationAttributes attributes
hi def link vertexInputAttributes attributes
hi def link postTesselationInputAttributes attributes
hi def link vertexOutputAttributes attributes
hi def link fragmentInputAttributes attributes
hi def link fragmentTileInputAttributes attributes
hi def link fragmentOutputAttributes attributes
hi def link kernelInputAttributes attributes
hi def link kernelTileInputAttributes attributes
hi def link intersectionInputAttributes attributes
hi def link intersectionOutputAttributes attributes
hi def link inputAssemblyAttributes attributes
hi def link argumentBufferAttributes attributes
hi def link samplingAndInterpolationAttributes attributes
hi def link imageBlockAttributes attributes
hi def link userAttributes attributes
hi def link aliasImplicitImageblockAttributes attributes
hi def link viewportSelectionAttributes attributes
hi def link functionConstantAttribute attributes
hi def link rasterOrderGroupAttribute attributes

syn match metalBuiltinTypes "\(bool\|char\|uchar\|short\|ushort\|half\|int\|uint\|float\)\([2-4]\)\?"
syn match packedMetalTypes "packed_\(char\|uchar\|short\|ushort\|half\|int\|uint\|float\)[2-4]"
syn match atomicType "atomic_\(int\|uint\|bool\)"
syn match atomicTemplate "atomic<\(int\|uint\|bool\)>"
syn match matrixMetalTypes "\(half\|float\)[2-4]x[2-4]"

syn match pixelTypes "r8\(u\|s\)norm<\(half\|float\)>"
syn match pixelTypes "r16\(u\|s\)norm<float>"
syn match pixelTypes "rg8\(u\|s\)norm<\(half2\|float2\)>"
syn match pixelTypes "rg16\(u\|s\)norm<float2>"
syn match pixelTypes "rgba8\(u\|s\)norm<\(half4\|float4\)>"
syn match pixelTypes "srgba8unorm<\(half4\|float4\)>"
syn match pixelTypes "rgba16\(u\|s\)norm<float4>"
syn match pixelTypes "rgb10a2<\(half4\|float4\)>"
syn match pixelTypes "rg\(11b10f\|b9e5\)<\(half3\|float3\)>"
syn match accessTypes "access::\(sample\|read\|write\|read_write\)"
syn match coordTypes "coord::\(normalized\|pixel\)"
syn match addressTypes "address::\(repeat\|mirrored_repeat\|clamp_to_edge\|clamp_to_zero\|clamp_to_border\)"
syn match filterTypes "\(mag\|min\)\?_\?filter::\(nearest\|linear\)"
syn match mipfilterTypes "mip_\?filter::\(nearest\|linear\|none\)"

hi def link metalFloat Number
hi def link attributes metalTypes
hi def link specialMetalAttributes metalTypes
hi def link metalBuiltinTypes metalTypes
hi def link packedMetalTypes metalTypes
hi def link atomicType metalTypes
hi def link atomicTemplate metalTypes
hi def link matrixMetalTypes metalTypes
hi def link pixelTypes metalTypes
hi def link accessTypes metalTypes
hi def link coordTypes metalTypes
hi def link addressTypes metalTypes
hi def link filterTypes metalTypes
hi def link mipfilterTypes metalTypes
hi def link metalTypes Type
hi def link basicMetalKeywords Constant
hi def link metalBuiltinCnsts Constant
" hi def link metalBuiltinFns Function
hi def link scalarMetalTypes Type

let b:current_syntax = "metal"
