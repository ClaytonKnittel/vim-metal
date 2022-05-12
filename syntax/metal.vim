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

syn keyword builtinFns is_function_constant_defined

"metal half precision floating-point literal value
syn match metalFloat "\d\+[Hh]"
syn match metalFloat "\d\+\.\d*[Hh]"

"metal unsigned integer literals
syn match metalFloat "\d\+[Uu]"

syn match functionAttributes "\[\[\s*\(vertex\|fragment\|kernel\|visible\|stitchable\|intersection(\(triangle\|bounding_box\)\(,[\s]*\(triangle\|triangle_data\|instancing\|world_space_data\|primitive_motion\|instance_motion\)\)*)\)\s*\]\]"

syn match patchAttributes "\[\[\s*\(patch\|patch(\(quad\|triangle\)\(,[\s]*\([0-9]\|[1-2][0-9]\|3[0-2]\)\)?)\)\s*\]\]"
syn match fragmentFunctionAttributes "\[\[\s*\(early_fragment_tests\)\s*\]\]"
syn match kernelFunctionAttributes "\[\[\s*\(max_total_threads_per_threadgroup([1-9][0-9]*)\)\s*\]\]"
syn match hostNameAttribute "\[\[\s*\(host_name(\"\([^\"\\]*\(\\\"\)?\)+\")\)\s*\]\]"

syn match locationAttributes "\[\[\s*\(buffer([0-9]+)\|texture([0-9]+)\|sampler([0-9]+)\|threadgroup([0-9]+)\)\s*\]\]"

syn match vertexInputAttributes "\[\[\s*\(amplification_count\|amplification_id\|base_instance\|base_vertex\|instance_id\|vertex_id\)\s*\]\]"
syn match postTesselationInputAttributes "\[\[\s*\(base_instance\|instance_id\|vertex_id\|patch_id\|position_in_patch\)\s*\]\]"
syn match vertexOutputAttributes "\[\[\s*\(clip_distance\|invariant\|point_size\|position\|render_target_array_index\|shared\|viewport_array_index\)\s*\]\]"
syn match fragmentInputAttributes "\[\[\s*\(amplification_count\|amplification_id\|barycentric_coord\|color([0-9]\+)\|front_facing\|point_coord\|position\|primitive_id\|render_target_array_index\|sample_id\|sample_mask\|sample_mask,[\s]*post_depth_coverage\|thread_index_in_quadgroup\|thread_index_in_simdgroup\|threads_per_simdgroup\|viewport_array_index\)\s*\]\]"
syn match fragmentTileInputAttributes "\[\[\s*\(pixel_position_in_tile\|pixels_per_tile\|tile_index\|render_target_array_index\)\s*\]\]"
syn match fragmentOutputAttributes "\[\[\s*\(color([0-9]\+)\|color([0-9]\+),[\s]*index([0-9]*)\|depth(\(any\|greater\|less\))\|sample_mask\|stencil\)\s*\]\]"
syn match kernelInputAttributes "\[\[\s*\(dispatch_quadgroups_per_threadgroup\|dispatch_simdgroups_per_threadgroup\|dispatch_threads_per_threadgroup\|grid_origin\|grid_size\|quadgroup_index_in_threadgroup\|quadgroups_per_threadgroup\|simdgroup_index_in_threadgroup\|simdgroups_per_threadgroup\|thread_execution_width\|thread_index_in_quadgroup\|thread_index_in_simdgroup\|thread_index_in_threadgroup\|thread_position_in_grid\|thread_position_in_threadgroup\|threadgroup_position_in_grid\|threadgroups_per_grid\|threads_per_grid\|threads_per_simdgroup\|threads_per_threadgroup\)\s*\]\]"
syn match kernelTileInputAttributes "\[\[\s*\(render_target_array_index\)\s*\]\]"
syn match intersectionInputAttributes "\[\[\s*\(origin\|direction\|min_distance\|max_distance\|payload\|geometry_id\|primitive_id\|instance_id\|world_space_origin\|world_space_direction\|barycentric_coord\|front_facing\|distance\|opaque\|instance_intersection_function_table_offset\|geometry_intersection_function_table_offset\|time\|motion_start_time\|motion_end_time\|key_frame_count\|object_to_world_transform\|world_to_object_transform\|user_instance_id\)\s*\]\]"
syn match intersectionOutputAttributes "\[\[\s*\(accept_intersection\|continue_search\|distance\)\s*\]\]"
syn match inputAssemblyAttributes "\[\[\s*\(stage_in\)\s*\]\]"
syn match samplingAndInterpolationAttributes "\[\[\s*\(center_perspective\|center_no_perspective\|centroid_perspective\|centroid_no_perspective\|sample_perspective\|sample_no_perspective\|flat\)\s*\]\]"
syn match imageBlockAttributes "\[\[\s*imageblock_data(\([a-zA-Z_][a-zA-Z0-9_]*\))\s*\]\]"
syn match userAttributes "\[\[\s*user(\([a-zA-Z_][a-zA-Z0-9_]*\))\s*\]\]"
syn match aliasImplicitImageblockAttributes "\[\[\s*\(alias_implicit_imageblock\|alias_implicit_imageblock_color([0-9]+)\)\s*\]\]"
syn match viewportSelectionAttributes "\[\[\s*\(viewport_array_index\)\s*\]\]"

" got lazy on this one, just match it no matter what
syn match functionConstantAttribute "\[\[\s*\(function_constant([0-9]+)\(,[^\]]+\)?\|\(,[^\]]+\),[\s]*function_constant([0-9]+)\)\s*\]\]"
syn match rasterOrderGroupAttribute "\[\[\s*\(raster_order_group([0-9]+)\(,[^\]]+\)?\|\(,[^\]]+\),[\s]*raster_order_group([0-9]+)\)\s*\]\]"

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
hi def link samplingAndInterpolationAttributes attributes
hi def link imageBlockAttributes attributes
hi def link userAttributes attributes
hi def link aliasImplicitImageblockAttributes attributes
hi def link viewportSelectionAttributes attributes
hi def link functionConstantAttribute attributes
hi def link rasterOrderGroupAttribute attributes

syn match metalTypes "\<\(bool\|char\|uchar\|short\|ushort\|half\|int\|uint\|float\)[2-4]"
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
hi def link packedMetalTypes metalTypes
hi def link matrixMetalTypes metalTypes
hi def link pixelTypes metalTypes
hi def link accessTypes metalTypes
hi def link coordTypes metalTypes
hi def link addressTypes metalTypes
hi def link filterTypes metalTypes
hi def link mipfilterTypes metalTypes
hi def link metalTypes Type
hi def link basicMetalKeywords Constant
hi def link scalarMetalTypes Type

let b:current_syntax = "metal"
