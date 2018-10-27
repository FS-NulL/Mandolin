// beach compile gamma 1.3/4 compensate 2/3
// 11/2/05 1.4/3
// -skyfix

//######################################
//###        MODEL SHADERS           ###
//######################################

textures/null_beach/vertex_pipes
{
	qer_editorimage textures/codey1/dumpster04.tga
	q3map_vertexscale 2
	q3map_shadeangle 120
	q3map_nonplanar
	q3map_forcemeta
	{
		map textures/codey1/dumpster04.tga
		rgbgen const ( 0.4 0.4 0.4 )
	}
}

textures/null_beach/furnace_door_fx
{
	qer_editorimage textures/null_beach/furnace_door.tga
	q3map_surfacelight 8500
	q3map_lightimage textures/null_beach/furnace_glow.tga
	surfaceparm nomarks
	{
		//Flames1
		map textures/null_beach/flames1.tga
		tcmod scroll 0.8 2.4
		tcmod turb 0 0.1 0 1
		rgbgen wave noise 0.4 0.2 0 4 
	}
	{
		//Flames2
		map textures/null_beach/flames1.tga
		tcmod scroll -0.75 2
		rgbgen wave noise 0.3 0.1 0 3
		blendfunc add
		tcmod turb 0 0.1 0.5 1
	}
	{
		//Diffuse
		map textures/null_beach/furnace_door.tga
		blendfunc blend
	}
	{
		//Lightmap
		map $lightmap
		blendfunc filter
	}
	{
		//Glow
		map textures/null_beach/furnace_glow.tga
		blendfunc add
		rgbgen wave noise 0.4 0.3 0 4
	}
}

textures/null_beach/sn_wall24_sp
{
	qer_editorimage textures/null_beach/sn_wall24.tga
	q3map_lightmapsampleoffset 32
	{
		map textures/null_beach/sn_wall24.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/tree_ivy_shader
{
	qer_editorimage textures/null_beach/ivy_tree.tga
	polygonoffset
	surfaceparm trans
	cull none
	{
		map textures/null_beach/ivy_tree.tga
		alphafunc ge128
		rgbgen exactvertex	
	}
}

textures/null_beach/boiler
{
	qer_editorimage textures/null_beach/boiler.tga
	q3map_forcemeta
	{
		map textures/null_beach/boiler.tga
	}
	{
		map $lightmap	
		blendfunc filter
	}
}

models/null_beach/toxiclight/toxiclight_l
{
	qer_editorimage models/null_beach/toxiclight/toxiclight_glow.tga
	q3map_surfacelight 3000
	{
		map models/null_beach/toxiclight/toxiclight.tga
		rgbgen identity
	}	
	//{
	//	map models/null_beach/toxiclight/toxiclight_glow.tga
	//	blendfunc gl_src_alpha gl_one
	//	rgbgen identitylighting
	//	alphagen const 0.5
	//}
}

models/null_beach/toxiclight/toxiclight_l2
{
	qer_editorimage models/null_beach/toxiclight/toxiclight_glow.tga
	q3map_lightRGB 1 1 1
	q3map_surfacelight 6000
	{
		map models/null_beach/toxiclight/toxiclight.tga
		rgbgen identity
	}	
	//{
	//	map models/null_beach/toxiclight/toxiclight_glow.tga
	//	blendfunc gl_src_alpha gl_one
	//	rgbgen identitylighting
	//	alphagen const 0.5
	//}
}

models/null_beach/hanglight/tex
{
	qer_editorimage models/null_beach/hanglight/tex.tga
	
	{
		map models/null_beach/hanglight/tex.tga
		rgbgen const ( 0.4 0.4 0.4 )
	}
	{
		map models/null_beach/hanglight/add.tga
		blendfunc add
		rgbgen const ( 0.5 0.5 0.5 )
	}
	
}

models/null_beach/qblights/lamp3
{
	qer_editorimage models/null_beach/qblights/lamp3.tga
	
	q3map_surfacelight 13500	

	{
		map models/null_beach/qblights/lamp3.tga
		rgbgen vertex
		//rgbgen exactvertex
	}
	{
		map models/null_beach/qblights/lamp3.tga
		//rgbgen const ( 0.6 0.6 0.6 )
		blendfunc add
	}
	
}

models/null_beach/qblights/lamp4
{
	qer_editorimage models/null_beach/qblights/lamp4.tga
	
	q3map_surfacelight 13500	

	{
		map models/null_beach/qblights/lamp4.tga
		rgbgen vertex
		//rgbgen exactvertex
	}
	{
		map models/null_beach/qblights/lamp4.tga
		//rgbgen const ( 0.6 0.6 0.6 )
		blendfunc add
	}
	
}

models/null_beach/lt1_tv/front
{
	qer_editorimage models/null_beach/lt1_tv/tvfront.tga

	{
		tcmod scale 1 1
		animmap 4 models/null_beach/lt1_tv/tv1.tga models/null_beach/lt1_tv/tv2.tga models/null_beach/lt1_tv/tv3.tga models/null_beach/lt1_tv/tv4.tga models/null_beach/lt1_tv/tv5.tga models/null_beach/lt1_tv/tv6.tga
	}

	{
		map models/null_beach/lt1_tv/tvfront.tga
		rgbgen exactvertex
		blendfunc blend
	}
	{
		map models/null_beach/lt1_tv/tv_fx_2.tga
		blendfunc add
	}
}

textures/null_beach/gen_shader
{
	qer_editorimage textures/null_beach/gen.tga
	{
		map textures/null_beach/tinfx.tga
		tcgen environment
		rgbgen vertex
	}
	{
		map textures/null_beach/gen.tga
		blendfunc GL_ONE GL_SRC_ALPHA
		rgbgen exactvertex
	}
	
}

textures/null_beach/gen_belt_shader
{
	qer_editorimage textures/null_beach/gen_belt.tga
	{
		map textures/null_beach/gen_belt.tga
		tcmod scroll 0 3.5
		rgbgen vertex
	}
	//{
	//	map $whiteimage
	//	rgbgen exactvertex
	//	blendfunc gl_dst_color gl_src_color
	//}
}

textures/null_beach/fence_old
{
	qer_editorimage textures/null_beach/fence.tga
	surfaceparm trans		
	cull none
        nopicmip
	{
		map textures/null_beach/fence.tga
		blendFunc GL_dst_color GL_ZERO		
		alphaFunc GE128
		depthWrite
		rgbGen vertex
	}
}

textures/null_beach/cloth_shader
{
	qer_editorimage textures/null_beach/cloth.tga
	q3map_cloneshader textures/null_beach/cloth_back
	{
		map textures/null_beach/cloth.tga
		rgbgen identitylighting
	}
	{
		map textures/null_beach/stall_cover_light.tga
		rgbgen identity
		blendfunc filter
	}
}

textures/null_beach/cloth_back
{
	qer_editorimage textures/null_beach/cloth.tga
	q3map_invert
	{
		map textures/null_beach/cloth.tga
		rgbgen identitylighting
	}
	{
		map textures/null_beach/stall_cover_light.tga
		blendfunc filter
		rgbgen const ( 0.59 0.57 0.567 )
	}
}

textures/null_beach/engine_1
{
	qer_editorimage textures/null_beach/engine_1.tga
	//q3map_forcemeta
	{
		map textures/null_beach/dirty_pewter.tga
		tcMod scale 0.4 2
		tcmod scroll 1 0
		rgbGen exactvertex
	}      
	{
		map textures/null_beach/chrome_metal.tga
		rgbgen exactvertex
		//tcgen environment
		tcmod scale 0.4 2
		tcmod scroll 1 0	 
		blendfunc add
	}
	{
		map textures/null_beach/engine_1.tga
		rgbgen vertex
		alphafunc ge128
	}
	//{
	//	map $lightmap
	//	blendfunc filter
	//	rgbgen identity
	//}
}

textures/null_beach/engine_cog
{
	qer_editorimage textures/null_beach/engine_cog.tga
	{
		map textures/null_beach/engine_cog.tga
		rgbgen vertex
	}
}

textures/null_beach/engine_sub_1
{
	qer_editorimage textures/null_beach/engine_sub_1.tga
	q3map_forcemeta
	surfaceparm trans
	{
		map textures/null_beach/engine_sub_1.tga
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/engine_spin
{
	qer_editorimage textures/null_beach/engine_spin.tga
	{
		map textures/null_beach/dirty_pewter.tga
		tcMod scale 0.4 0.3
		tcmod scroll 1 0
		rgbGen exactvertex
	}      
	{
		map textures/null_beach/chrome_metal.tga
		rgbgen exactvertex
		//tcgen environment
		tcmod scale 0.4 0.3
		tcmod scroll 1 0	 
		blendfunc add
	}	
}

textures/null_beach/ts_fence_trans
{
	qer_editorimage textures/null_beach/ts_fence.tga
	cull none
	{
		map textures/null_beach/ts_fence.tga
		rgbgen vertex
		alphafunc ge128
	}
}

//######################################
//###        DECAL SHADERS           ###
//######################################

textures/null_beach/decal_wall_broken
{
	qer_editorimage textures/null_beach/decal_wall_smash.tga
	polygonoffset
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid	
	{
		map textures/null_beach/decal_wall_smash.tga
		blendfunc gl_dst_color gl_src_color
	}
}

textures/null_beach/decal_wall_broken2
{
	qer_editorimage textures/null_beach/decal_wall_smash2.tga
	polygonoffset
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid	
	{
		map textures/null_beach/decal_wall_smash2.tga
		blendfunc gl_dst_color gl_src_color
	}
}

textures/null_beach/decal_wall_broken3
{
	qer_editorimage textures/null_beach/decal_wall_smash3.tga
	polygonoffset
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid	
	{
		map textures/null_beach/decal_wall_smash3.tga
		blendfunc gl_dst_color gl_src_color
	}
}

textures/null_beach/decal_rail_trim
{
	qer_editorimage textures/null_beach/rails1_trim.tga
	polygonoffset
	q3map_vertexscale 2 // Fix For radbump vertex lighting
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	{
		map textures/null_beach/rails1_trim.tga
		blendfunc blend
		rgbgen vertex
		alphagen vertex
	}
}

textures/null_beach/decal_pipe_holes
{
	qer_editorimage textures/null_beach/pipe_holes.tga
	q3map_vertexscale 2 // Fix For radbump vertex lighting
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nonsolid
	polygonoffset
	{
		map textures/null_beach/pipe_holes.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/null_beach/decal_bomb_arrow
{
	qer_editorimage textures/null_beach/bomb_arrow.tga
	qer_trans 0.6
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	polygonoffset
	{
		map textures/null_beach/bomb_arrow.tga
		blendfunc gl_dst_color gl_src_color	
	}
}

textures/null_beach/decal_bomb_a
{
	qer_editorimage textures/null_beach/bomb_a.tga
	qer_trans 0.6
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	polygonoffset
	{
		map textures/null_beach/bomb_a.tga
		blendfunc gl_dst_color gl_src_color	
	}
}

textures/null_beach/decal_bomb_b
{
	qer_editorimage textures/null_beach/bomb_b.tga
	qer_trans 0.6
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	polygonoffset
	{
		map textures/null_beach/bomb_b.tga
		blendfunc gl_dst_color gl_src_color	
	}
}

textures/null_beach/decal_smear1
{
	qer_editorimage textures/null_beach/decal_smear1.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/decal_smear1.tga
		blendfunc filter
	}
}

textures/null_beach/decal_smear2
{
	qer_editorimage textures/null_beach/decal_smear2.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/decal_smear2.tga
		blendfunc filter
	}
}

textures/null_beach/decal_ruststain
{
	qer_editorimage textures/null_beach/babel-ruststain.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/babel-ruststain.tga
		blendfunc filter
	}
}

textures/null_beach/decal_ruststain1
{
	qer_editorimage textures/null_beach/ruststain1.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/ruststain1.tga
		blendfunc filter
	}
}

textures/null_beach/decal_ruststain2
{
	qer_editorimage textures/null_beach/babel-ruststain2.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/babel-ruststain2.tga
		blendfunc filter
	}
}

textures/null_beach/decal_ruststain3
{
	qer_editorimage textures/null_beach/babel-ruststain3.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/babel-ruststain3.tga
		blendfunc filter
	}
}

textures/null_beach/decal_rustsmall
{
	qer_editorimage textures/null_beach/rustdecal_small.tga
	qer_trans 0.4

	surfaceparm trans
	surfaceparm nomarks
	
	polygonOffset
	{
		map textures/null_beach/rustdecal_small.tga
		blendfunc filter
	}
}

textures/null_beach/decal_burn01
{ 
	qer_editorimage textures/decals/decal_burn01
//	surfaceparm trans
	polygonOffset
	nomipmaps
	nopicmip
	qer_trans 0.4
	surfaceparm nomarks

	{
         map textures/decals/decal_burn01.tga
	   blendfunc filter
	}
}

textures/null_beach/tire_track_shader
{
	qer_editorimage textures/null_beach/tire_track_qer.tga
	polygonoffset
	{
		map textures/null_beach/tire_track.tga
		//blendfunc gl_dst_color gl_one_minus_src_alpha
		blendfunc blend
	}
}

textures/null_beach/decal__gas
{
	qer_editorimage textures/null_beach/decal_gas.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_gas.tga
		blendfunc filter
	}
}


textures/null_beach/decal__b125
{
	qer_editorimage textures/null_beach/decal_b125.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_b125.tga
		blendfunc blend
	}
}

textures/null_beach/decal__numbers
{
	qer_editorimage textures/null_beach/decal_numbers.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_numbers.tga
		blendfunc blend
	}
}

textures/null_beach/decal__199
{
	qer_editorimage textures/null_beach/decal_199.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_199.tga
		blendfunc blend
	}
}

textures/null_beach/decal__2
{
	qer_editorimage textures/null_beach/decal_2.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_2.tga
		blendfunc blend
	}
}

textures/null_beach/decal__3
{
	qer_editorimage textures/null_beach/decal_3.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_3.tga
		blendfunc blend
	}
}

textures/null_beach/decal__4
{
	qer_editorimage textures/null_beach/decal_4.tga
	polygonOffset
	qer_trans 0.6
	{
		map textures/null_beach/decal_4.tga
		blendfunc blend
	}
}

textures/null_beach/waterstain1
{ 
	qer_editorimage textures/null_beach/water_stain1.tga
	surfaceparm trans 
	surfaceparm nomarks 
	polygonOffset 
	//qer_trans 0.5 
	sort 6 
	{ 
      		map textures/null_beach/water_stain1.tga
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}

textures/null_beach/crack01
{ 
	qer_editorimage textures/null_beach/myth_crack01.tga
	surfaceparm trans 
	surfaceparm nomarks 
	polygonOffset 
	//qer_trans 0.5 
	sort 6 
	{ 
      		map textures/null_beach/myth_crack01.tga 
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}


textures/null_beach/crack02
{ 
	qer_editorimage textures/null_beach/myth_crack02.tga
   	surfaceparm trans 
   	surfaceparm nomarks 
   	polygonOffset 
   	//qer_trans 0.5 
   	sort 6 
   	{ 
      		map textures/null_beach/myth_crack02.tga 
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}



textures/null_beach/crack03
{ 
	qer_editorimage textures/null_beach/myth_crack03.tga
   	surfaceparm trans 
   	surfaceparm nomarks 
   	polygonOffset 
   	//qer_trans 0.5 
   	sort 6 
   	{ 
      		map textures/null_beach/myth_crack03.tga 
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}


textures/null_beach/crack04
{ 
	qer_editorimage textures/null_beach/myth_crack04.tga
   	surfaceparm trans 
   	surfaceparm nomarks 
   	polygonOffset 
   	//qer_trans 0.5 
   	sort 6 
   	{ 
      		map textures/null_beach/myth_crack04.tga 
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}


textures/null_beach/crack05
{ 
	qer_editorimage textures/null_beach/myth_crack05.tga
   	surfaceparm trans 
   	surfaceparm nomarks 
   	polygonOffset 
   	//qer_trans 0.5 
   	sort 6 
   	{ 
      		map textures/null_beach/myth_crack05.tga 
      		blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR 
      		rgbGen identity 
   	} 
}	

textures/null_beach/fs_decal_dirt
{
	qer_editorimage textures/null_beach/decal_dirt.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_dirt_2
{
	qer_editorimage textures/null_beach/decal_dirt_2.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt_2.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_dirt_3
{
	qer_editorimage textures/null_beach/decal_dirt_3.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt_3.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_dirt_4
{
	qer_editorimage textures/null_beach/decal_dirt_4.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt_4.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_dirt_5
{
	qer_editorimage textures/null_beach/decal_dirt_5.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt_5.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_dirt_6
{
	qer_editorimage textures/null_beach/decal_dirt_6.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_dirt_6.tga
		blendfunc filter
	}
}

textures/null_beach/fs_decal_burn
{
	qer_editorimage textures/null_beach/decal_burn01.tga
	surfaceparm trans
	surfcaeparm nomarks
	polygonOffset
	qer_trans 0.5
	sort 6
	{
		map textures/null_beach/decal_burn01.tga
		blendfunc filter
	}
}

//######################################
//###        BRUSH SHADERS           ###
//######################################

textures/null_beach/terra_1
{
	//q3map_lightImage textures/null_beach/sand_1.tga
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_alphaMod dotproduct2 ( 0 0 1 )
	q3map_lightmapsampleoffset 8
	//q3map_lightmapMergable
	{
		// sand
		map textures/null_beach/sand015.tga
		rgbgen identity
	}	
	{
		// rock
		map textures/null_beach/sand_3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA  
		alphagen vertex		
		rgbgen identity
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/terra_1_ndp
{
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_lightmapsampleoffset 8
	{
		// sand
		map textures/null_beach/sand015.tga
		rgbgen identity
	}	
	{
		// rock
		map textures/null_beach/sand_3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA  
		alphagen vertex		
		rgbgen identity
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/terra_1_new
{
	//q3map_lightImage textures/null_beach/sand_1.tga
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_alphaMod dotproduct2 ( 0 0 1 )
	q3map_lightmapsampleoffset 8
	//q3map_lightmapMergable
	{
		// sand
		map textures/null_beach/sand015.tga
		rgbgen identity
	}	
	{
		// rock
		map textures/null_beach/sand_3.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA  
		alphagen vertex		
		rgbgen identity
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/terra_sand_sky
{
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_alphaMod dotproduct2 ( 0 0 1 )
	q3map_lightmapsampleoffset 8
	q3map_lightmapMergable
	{
		// sand
		map textures/null_beach/sand_3.tga
		blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map $whiteimage
		rgbgen const ( 0.749019 0.7098039 0.6078431 )
		alphagen vertex
		blendfunc blend
	}
}

textures/null_beach/terra_2
{
	//q3map_lightImage textures/null_beach/sand_1.tga
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_alphaMod dotproduct2 ( 0 0 1 )
	q3map_lightmapsampleoffset 8
	{
		// sand
		map textures/null_beach/sand_3.tga
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001		
		
	}
	{
		// rock
		map textures/null_beach/sand015.tga
		blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		alphagen vertex
		tcgen vector ( 0.00391 0 0 ) ( 0 0 0.00391 )
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/terra_3
{
	//q3map_lightImage textures/null_beach/sand_1.tga
	q3map_lightRGB  1 1 1
	qer_editorimage textures/null_beach/sand_1.tga
	q3map_nonplanar
	q3map_shadeAngle 140
	q3map_alphaMod dotproduct ( 0 0 1 )
	q3map_lightmapsampleoffset 8
	{
		// rock
		map textures/null_beach/sand015.tga
		tcgen vector ( 0.00391 0 0 ) ( 0 0 0.00391 )

	}
	{
		// sand
		map textures/null_beach/sand_3.tga
		blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
		alphagen oneminusvertex
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/tag-fan-frame-cullnone
{
	qer_editorimage textures/null_beach/tag-fan-frame.tga
	cull none
	{
		map textures/null_beach/tag-fan-frame.tga
		rgbgen vertex
	}
}

textures/null_beach/fan_rot
{
	qer_editorimage textures/null_beach/tag-fan.tga
	{
		map textures/null_beach/tag-fan-blade-fast.tga
		tcmod rotate 600
		blendfunc blend
		rgbgen vertex
	}
	{
		map textures/null_beach/tag-fan-frame.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/null_beach/fan_rot_slow
{
	qer_editorimage textures/null_beach/tag-fan.tga
	{
		map textures/null_beach/tag-fan-blade.tga
		tcmod rotate 60
		blendfunc blend
		rgbgen vertex
	}
	{
		map textures/null_beach/tag-fan-frame.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/null_beach/fan_rot_fast
{
	qer_editorimage textures/null_beach/tag-fan.tga
	{
		map textures/null_beach/tag-fan-blade-faster.tga
		tcmod rotate 800
		blendfunc blend
		rgbgen vertex
		tcmod scale 1 1
	}
	{
		map textures/null_beach/tag-fan-frame.tga
		blendfunc blend
		rgbgen vertex
	}
}

textures/null_beach/cracked_ground_phong
{
	qer_editorimage textures/null_beach/sn_dirt2.tga
	
	surfaceparm nomarks

	q3map_nonplanar
	q3map_shadeangle 140
	//q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )

	{
		map textures/null_beach/sn_dirt2.tga
		rgbgen identity
		//tcgen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/cracked_ground_phong_nomarks
{
	qer_editorimage textures/null_beach/sn_dirt2.tga
	
	surfaceparm nomarks

	q3map_nonplanar
	q3map_shadeangle 140
	//q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )

	{
		map textures/null_beach/sn_dirt2.tga
		rgbgen identity
		//tcgen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/ground_sand
{
	qer_editorimage textures/null_beach/sand_blend.tga
	
	q3map_nonplanar
	q3map_shadeangle 140
	//q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )
	{
		map textures/null_beach/sand_3.tga
		rgbgen identity
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001
	}
	{
		// detail
		map textures/null_beach/sand_detail.tga
		//tcmod scale 2 2
		blendfunc GL_DST_COLOR GL_SRC_COLOR
		tcmod rotate -0.003
		tcmod turb 0 0.4 0.2 0.0001
	}
	{
		map textures/null_beach/sn_dirt2.tga
		rgbgen identity
		blendfunc blend
		alphagen oneminusvertex
		//tcgen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/cy_stones
{
	qer_editorimage textures/null_beach/sn_stonefloor1.tga
	
	q3map_nonplanar
	q3map_shadeangle 140
	//q3map_tcGen ivector ( 128 0 0 ) ( 0 128 0 )

	{
		map textures/null_beach/sn_stonefloor1.tga
		rgbgen identity
		//tcgen vector ( 0.0078125 0 0 ) ( 0 0.0078125 0 )
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/cy_stones_ground
{
	qer_editorimage textures/null_beach/sn_stonefloor1.tga
	
	q3map_nonplanar
	q3map_shadeangle 140
	{
		map textures/null_beach/sn_stonefloor1.tga
		rgbgen identity
	}
	{
		map textures/null_beach/sn_dirt3.tga
		rgbgen identity
		//alphafunc gt0
		alphagen vertex
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

models/null_palm/leaf1
{
	qer_editorimage models/null_palm/leaf1.tga
	qer_alphafunc greater 0.5
	cull none
	nopicmip
	nomipmaps
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm nolightmap
	{
		rgbgen exactVertex 
		map models/null_palm/leaf1.tga
		alphafunc ge128
		depthwrite
	}
}

models/null_palm/roots1
{
	{
		//rgbgen exactVertex 
		//map $whiteimage
		map models/null_palm/roots1.tga
		rgbgen const ( 0.54 0.43 0.35 )
	}
}

models/null_palm/trunk1
{
	{
		//rgbgen exactVertex 
		//map $whiteimage
		map models/null_palm/trunk1.tga
		rgbgen const ( 0.4 0.29 0.2078 )
	}
}

textures/null_beach/ladder
{
	qer_trans 0.40
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm noimpact
	surfaceparm ladder
	surfaceparm trans	
}

textures/null_beach/black_metal
{
	qer_editorimage textures/null_beach/black.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nolightmap
	//{
	//	map $whiteimage
	//	rgbgen const ( 0 0 0 )
	//}
	{
		map textures/null_beach/spec1.tga
		tcgen environment
		//blendfunc add
		rgbgen exactvertex
	}
}

textures/null_beach/sn_window8int_light
{
	qer_editorimage textures/null_beach/sn_window8int_st.tga
	q3map_surfacelight 1800
	{
		map textures/null_beach/sn_window8int_st.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/null_beach/sn_window8int_trans
{
	qer_editorimage textures/null_beach/sn_window8int_st.tga
	q3map_surfacelight 800
	{
		map textures/null_beach/sn_window8int_st.tga
		rgbgen identity
		//blendfunc blend
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
		depthfunc equal
	}
}

textures/null_beach/cei_strip_light
{
	qer_editorimage textures/null_beach/e6v_light.tga
	q3map_lightmapFilterRadius 0 8
	q3map_surfacelight 3000
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map textures/null_beach/e6v_light.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/null_beach/e6v_light_blend.tga
		blendfunc add
		//blendfunc gl_src_color gl_one
	}
}

textures/null_beach/cei_strip_light_br
{
	qer_editorimage textures/null_beach/e6v_light.tga
	q3map_lightmapFilterRadius 0 8
	q3map_surfacelight 6000
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map textures/null_beach/e6v_light.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/null_beach/e6v_light_blend.tga
		blendfunc add
		//blendfunc gl_src_color gl_one
	}
}

textures/null_beach/cei_strip_light_br2
{
	qer_editorimage textures/null_beach/e6v_light.tga
	q3map_lightmapFilterRadius 0 8
	q3map_surfacelight 10500
	surfaceparm nonsolid
	surfaceparm nomarks
	{
		map textures/null_beach/e6v_light.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
	}
	{
		map textures/null_beach/e6v_light_blend.tga
		blendfunc add
		//blendfunc gl_src_color gl_one
	}
}

textures/null_beach/sn_wall24_nonsolid
{
	qer_editorimage textures/null_beach/sn_wall24.tga
	surfaceparm nonsolid
	{
		map textures/null_beach/sn_wall24.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/bay_windows
{
	qer_editorimage textures/null_beach/08panwindow.tga
	q3map_surfacelight 1200
	{
		// Change fx texture
		map textures/null_beach/tinfxb.tga
		rgbgen identity
		tcgen environment
	}
	{
		map textures/null_beach/08panwindow.tga
		alphafunc ge128
		rgbgen identity
	}
	{
		map $lightmap	
		blendfunc filter
		rgbgen identity
	}
}

textures/null_beach/bay_windows_low
{
	qer_editorimage textures/null_beach/08panwindow.tga
	{
		// Change fx texture
		map textures/null_beach/tinfxb.tga
		rgbgen identity
		tcgen environment
	}
	{
		map textures/null_beach/08panwindow.tga
		alphafunc ge128
		rgbgen identity
	}
	{
		map $lightmap	
		blendfunc filter
		rgbgen identity
	}
}

textures/null_beach/scr_metal
{
	qer_editorimage textures/null_beach/sc_metal.tga
	{
		map textures/null_beach/sc_metal.tga
		rgbgen exactvertex
		//blendfunc add // remove this
	}
	{
		map textures/null_beach/spec1.tga
		blendfunc add
		rgbgen exactvertex
	}
}

textures/null_beach/ivy_wall_down
{
	qer_editorimage textures/null_beach/ivy_wall2.tga
	q3map_vertexscale 1.75
	
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks

	polygonoffset
	sort banner
	
	cull none

	{
		map textures/null_beach/ivy_wall2.tga
		blendfunc blend
		//rgbgen vertex
		rgbgen exactvertex
	}
	
}

textures/null_beach/ivy_wall_up
{
	qer_editorimage textures/null_beach/ivy_climb1.tga
	
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks

	q3map_bouncescale 0.0

	polygonoffset
	
	cull none

	{
		map textures/null_beach/ivy_climb1.tga
		blendfunc blend
		//rgbgen vertex
		rgbgen exactvertex
	}
	
}

textures/null_beach/roof_glass_trans
{
	qer_editorimage textures/null_beach/njc_windows_3.tga

	q3map_surfacelight 700

	surfaceparm trans
	surfaceparm alphashadow

	cull none

	{
		map textures/null_beach/njc_windows_3.tga
		blendfunc blend
		rgbgen identity
		depthwrite
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/metal_red_support_trans
{
	qer_editorimage textures/null_beach/metal-red-x-support.tga
	
	surfaceparm alphashadow
	surfaceparm trans
	
	cull none

	{
		map textures/null_beach/metal-red-x-support.tga
		alphafunc ge128
		depthwrite
	}
	{
		map $lightmap
		depthfunc equal
		blendfunc filter
	}
}

textures/null_beach/well_fade
{
	qer_editorimage textures/null_beach/sn_brick3.tga
	{
		map textures/null_beach/sn_brick3.tga
		rgbgen identity
	}
	{
		map $whiteimage
		rgbgen const ( 0 0 0 )
		alphagen oneminusvertex
		blendfunc blend
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/ceil1_22a
{
	qer_editorimage textures/null_beach/ceil1_22a.tga
	q3map_lightimage textures/null_beach/ceil1_22a_light.tga
	surfaceparm nomarks
	q3map_surfacelight 8000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/null_beach/base_light.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/null_beach/base_light_blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/null_beach/ceil1_22a_nolight
{
	qer_editorimage textures/null_beach/ceil1_22a.tga
	q3map_lightimage textures/null_beach/ceil1_22a_light.tga
	surfaceparm nomarks
	//q3map_surfacelight 8000
	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/null_beach/base_light.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/null_beach/base_light_blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/null_beach/vertex_steps_1
{
	qer_editorimage textures/null_beach/sn_wall24.tga
	{
		map textures/null_beach/sn_wall24.tga
		rgbgen exactvertex
	}
}

textures/null_beach/water_temp
{
	surfaceparm water
	surfaceparm nomarks
	surfaceparm nonsolid
	//deformvertexes wave sin 0 16 0 0.1
	{
		map textures/null_beach/water_temp.tga
		alphagen const 0.6
		blendfunc blend
		//tcmod turb 0 0.3 0 0.01
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_one_minus_src_alpha
		alphagen const 0.6
	}
}

textures/null_beach/water_caulk
{
	surfaceparm water
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nodraw
}

textures/null_beach/gold_fx
{
	qer_editorimage textures/null_beach/gold_base.tga
	{
		map textures/null_beach/gold_base.tga
		tcgen environment
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.0001
		tcmod scale 0.65 0.65
		tcmod rotate -0.001 
		rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map textures/null_beach/gold_effect3.tga
		blendfunc gl_one gl_one
		tcgen environment
		rgbgen const ( 0.5 0.5 0.5 )
	}
	{
		map $lightmap
		blendfunc filter
		rgbgen identity
	}
}

textures/null_beach/gold_fx_vertex
{
	qer_editorimage textures/null_beach/gold_base.tga
	cull none
	{
		map textures/null_beach/gold_base.tga
		rgbgen exactvertex
		tcgen environment
		tcgen vector ( 0.00391 0 0 ) ( 0 0.00391 0 )
		tcmod turb  0 0.3 0.75 0.01
		tcmod scale 0.65 0.65
		tcmod rotate -0.001 
	}
	{
		map textures/null_beach/gold_effect3.tga
		rgbgen exactvertex
		blendfunc gl_one gl_one
		tcgen environment
	}
}

textures/null_beach/nonsolid_trim1
{
	qer_editorimage textures/null_beach/sn_under_stairs.tga
	surfaceparm nonsolid
	surfaceparm trans
	{
		map textures/null_beach/sn_under_stairs.tga
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc filter
	}
}


textures/null_beach/water_trans
{
	qer_editorimage textures/null_beach/water_ripples.tga
	qer_trans 0.6
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm nolightmap
	surfaceparm nomarks
	//q3map_fancywater 1 1 1 1
	//cull none
	q3map_noFog
	{
		map $whiteimage
		blendfunc GL_ZERO GL_ONE
	}
}

textures/null_beach/water_temp_fx
{
	qer_editorimage textures/null_beach/water_ripples.tga
	qer_trans 0.6
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm nolightmap
	surfaceparm nomarks
	//q3map_fancywater 1 1 1 1 // -- Currently doesnt work well with fog - but it does in eagle, hrmpf
	//q3map_cheapwater 1 1 1 1
	//cull none
	q3map_noFog
	q3map_cloneshader textures/null_beach/water_temp_fx_2
	//sort 5
	{
		map textures/null_beach/water_ripples2.tga
		blendfunc blend
		tcmod scroll 0 0.01
		tcmod turb 0 0.5 0.75 0.02
		tcgen vector ( 0.001953 0 0 ) ( 0 0.001253 0 )
		//alphagen const 0.75
	}
	{
		map textures/null_beach/water_ripples2.tga
		blendfunc blend
		tcmod scroll 0 0.012
		tcmod turb 0 0.5 0.25 0.025
		tcgen vector ( 0.001953 0 0 ) ( 0 0.001253 0 )
		//alphagen const 0.75
	}
	{
		//map textures/null_beach/env/sky_dn.tga
		map $whiteimage
		rgbgen const ( 0.749019 0.7098039 0.6078431 )
		alphagen oneminusvertex
		blendfunc blend
	}
}

textures/null_beach/water_temp_fx_2
{
	qer_editorimage textures/null_beach/water_ripples.tga
	qer_trans 0.6
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm water
	surfaceparm nolightmap
	surfaceparm nomarks
	//q3map_nofancywater
	//cull none
	q3map_noFog
	q3map_invert
	q3map_offset -2.0
	sort 13
	{
		map textures/null_beach/water_ripples2.tga
		alphagen vertex
		blendfunc blend
		tcmod scroll 0 -0.01
		tcmod turb 0 0.5 0.75 0.02
		tcgen vector ( 0.001953 0 0 ) ( 0 0.001253 0 )
	}
}

textures/null_beach/water_fog
{
	qer_editorimage textures/null_beach/fog.tga
	qer_trans 0.7
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nodraw
	surfaceparm fog
	//surfaceparm nomarks
	//surfaceparm nolightmap
	fogparms ( 0.749019 0.7098039 0.6078431 ) 1280

	q3map_bouncescale 0
	q3map_nofancywater

	//{
	//	map $whiteimage
	//	blendfunc gl_zero gl_one
	//}
}

textures/null_beach/black_fog
{
	qer_editorimage textures/null_beach/fog.tga
	qer_trans 0.7
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm fog
	fogparms ( 0 0 0 ) 350
	q3map_bouncescale 0
}

textures/null_beach/fog_nodraw
{
	qer_editorimage textures/null_beach/fog_nodraw.tga
	qer_trans 0.7
	//surfaceparm trans
	//surfaceparm nonsolid
	//surfaceparm fog
	//surfaceparm nomarks
	//surfaceparm nolightmap

	surfaceparm trans
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm nolightmap
}

textures/null_beach/test_wave
{
	qer_editorimage textures/null_beach/test_wave1.tga
	{
		map textures/null_beach/test_wave3.tga
		alphagen wave inversesawtooth 0 1 0 0.4
		depthwrite
		alphafunc ge128
		blendfunc gl_zero gl_one
	}
	{
		map textures/null_beach/test_wave5.tga
		alphagen wave inversesawtooth 0 1 0 0.4
		depthfunc equal
		depthwrite	
		alphafunc lt128	
		blendfunc blend
	}
	//{
	//	map $whiteimage
	//	rgbgen const ( 1 0 0 )
	//	depthfunc equal
	//}
}

textures/null_beach/wavesb
{
	qer_editorimage textures/null_beach/waves_qer.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm nolightmap
	polygonoffset
	q3map_bouncescale 0
	cull none
	sort 12
	//sort 9
	{
		map textures/null_beach/waves.tga
		tcmod scroll 0.01 0.1
		alphagen wave sawtooth -1 2 0 0.1
		blendfunc blend
		//alphafunc GE128
		tcmod turb 0 0.05 0.75 0.1
	}
	{
		map textures/null_beach/waves.tga
		tcmod scroll 0.01 -0.1
		alphagen wave inversesawtooth -1 2 0 0.1
		blendfunc blend
		//alphafunc GE128
		tcmod turb 0 0.05 0.75 0.1
	}
	{
		map textures/null_beach/waves2.tga
		tcmod scroll 0.02 0.1
		alphagen wave sawtooth -1 2 0.5 0.1
		blendfunc blend
		//alphafunc GE128
		tcmod turb 0 0.07 0.25 0.1
	}
	{
		map textures/null_beach/waves2.tga
		tcmod scroll 0.02 -0.1
		alphagen wave inversesawtooth -1 2 0.5 0.1
		blendfunc blend
		//alphafunc GE128
		tcmod turb 0 0.07 0.25 0.1
	}

}

textures/null_beach/clip_nokick
{
	qer_trans 0.40
	surfaceparm nodraw
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm noimpact
	surfaceparm playerclip
	surfaceparm slick
}

textures/null_beach/sky_colour
{
	qer_editorimage textures/null_beach/skyc.tga
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm noimpact
	{
		map $whiteimage
		rgbgen const ( 0.749019 0.7098039 0.6078431 )
		//map textures/null_beach/env/sky_dn.tga
		//rgbgen identitylighting
	}
}

//Base slterra sky (ydnar)
textures/null_beach/sky
{
	qer_editorimage textures/null_beach/sky_arc_masked.tga

	//q3map_lightimage textures/common/Orange_250_160_100_m20.tga
	//q3map_rgb  0.6 0.7 1
	q3map_lightRGB 1 0.69 0.54 //1 0.57 0.37 pre 2010_4_17
	
	q3map_lightsubdivide 768
	q3map_backsplash 0 0

	q3map_sunEXT 1 0.91 0.96 100 185 50 2 16 
				//was 75 intensity changed to 85 5/2/06
				//q3map_sunEXT 1 0.92 0.97 90 180 50 2 16
				//q3map_skylight 125 5
				// CHNGD INTENSITY TO 65 FROM 85 FOR RADBUMP
				// 1 0.85 0.92 // pre 23-11-2008
	q3map_skylight 145 5
				// SKYLIGHT WAS 150 PRE 19FEB	
				// CHNGD TO 130 FROM 160 FOR RADBUMP
	q3map_noFog
	
	surfaceparm sky
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nodlight
	
	skyparms textures/null_beach/env/sky 512 -
	
	nopicmip
	nomipmaps
	
	{
		map textures/null_beach/sky_clouds.tga
		tcMod scale 3 3
		tcMod scroll 0.005 -0.0125
		rgbGen identityLighting
	}
	{
		clampmap textures/null_beach/sky_arc_masked.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		tcMod scale 0.956 0.956	// note for RTCW, this line should be commented out if the sky is knackered
		tcMod transform 1 0 0 1 -1 -1
		rgbGen identityLighting
	}
}

textures/null_beach/bomb_marker
{
	qer_editorimage textures/null_beach/qer_minimap_bomb.tga
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm nomarks
	polygonOffset
	{
		clampmap textures/null_beach/minimap_bomb.tga
		tcMod stretch sin 0.9 0.3 0 0.65
		//tcMod rotate 30
		alphagen wave sin 1.2 1 0 0.65
		blendfunc blend
	}
}

textures/null_beach/sn_concrete3_shader
{
	qer_editorimage textures/null_beach/sn_concrete3.tga
	{
		map textures/null_beach/sn_concrete3.tga
		rgbgen identity
	}
	{
		map textures/null_beach/sn_concrete3.tga
		alphagen const 0.5
		blendfunc blend
		rgbgen identity
		tcgen vector ( 0.0007 0.0007 0 ) ( -0.0007 0.0007 0 )
		//tcmod scale 0.35 0.35
	}
	{
		map $lightmap
		blendfunc filter
	}
}

textures/null_beach/flame1_phase1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 7500
	

	{
		animMap 10 textures/null_beach/flame4.tga textures/null_beach/flame5.tga textures/null_beach/flame6.tga textures/null_beach/flame7.tga textures/null_beach/flame8.tga textures/null_beach/flame1.tga textures/null_beach/flame2.tga textures/null_beach/flame3.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/null_beach/flame5.tga textures/null_beach/flame6.tga textures/null_beach/flame7.tga textures/null_beach/flame8.tga textures/null_beach/flame1.tga textures/null_beach/flame2.tga textures/null_beach/flame3.tga textures/null_beach/flame4.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/null_beach/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/null_beach/flame1_phase2
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 7500
	

	{
		animMap 10 textures/null_beach/flame6.tga textures/null_beach/flame7.tga textures/null_beach/flame8.tga textures/null_beach/flame1.tga textures/null_beach/flame2.tga textures/null_beach/flame3.tga textures/null_beach/flame4.tga textures/null_beach/flame5.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/null_beach/flame7.tga textures/null_beach/flame8.tga textures/null_beach/flame1.tga textures/null_beach/flame2.tga textures/null_beach/flame3.tga textures/null_beach/flame4.tga textures/null_beach/flame5.tga textures/null_beach/flame6.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/null_beach/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/null_beach/flame1
{
	surfaceparm nomarks
	surfaceparm nolightmap
	surfaceparm trans
	cull none
	q3map_surfacelight 7500
	

	{
		animMap 10 textures/null_beach/flame1.tga textures/null_beach/flame2.tga textures/null_beach/flame3.tga textures/null_beach/flame4.tga textures/null_beach/flame5.tga textures/null_beach/flame6.tga textures/null_beach/flame7.tga textures/null_beach/flame8.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave inverseSawtooth 0 1 0 10
		
	}	
	{
		animMap 10 textures/null_beach/flame2.tga textures/null_beach/flame3.tga textures/null_beach/flame4.tga textures/null_beach/flame5.tga textures/null_beach/flame6.tga textures/null_beach/flame7.tga textures/null_beach/flame8.tga textures/null_beach/flame1.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sawtooth 0 1 0 10
	}	


	{
		map textures/null_beach/flameball.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .6 .2 0 .6	
	}

}

textures/null_beach/proto_grate4
{
	surfaceparm	metalsteps	
        surfaceparm trans		
	//
	//cull none
        nopicmip

	// A GRATE OR GRILL THAT CAN BE SEEN FROM BOTH SIDES
	{
		map textures/null_beach/proto_grate4.tga
		//tcMod scale 2 2
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/null_beach/sn_flowers
{
	qer_editorimage textures/null_beach/sn_flowers.tga
	surfaceparm trans
	surfaceparm alphashadow
	surfaceparm nonsolid
	surfaceparm nomarks
	cull none
	nopicmip

	q3map_bouncescale 0.2

	{
		map textures/null_beach/sn_flowers.tga
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/null_beach/sn_metal1
{   
         {
		map textures/null_beach/sn_metal1.tga
		rgbGen identity
	} 
        {
		map textures/null_beach/tinfx3.tga
                blendFunc GL_ONE GL_ONE
                tcGen environment
        }
        {
		map $lightmap
                blendFunc filter
		rgbGen identity
	}
}

textures/null_beach/fence
{
	surfaceparm trans		
	surfaceparm nonsolid
	surfaceparm playerclip
	cull none
        nopicmip

	{
		map textures/null_beach/fence.tga
		tcMod scale 2.5 2.5
		blendFunc GL_ONE GL_ZERO
		alphaFunc GE128
		depthWrite
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

textures/null_beach/shark_fin
{
	qer_editorimage textures/null_beach/fin.tga
	cull none
	{
		map textures/null_beach/fin.tga
		alphafunc ge128
		tcmod scroll 0.15 0
	}
}

textures/null_beach/shark_splash
{
	qer_editorimage textures/null_beach/splash.tga
	{
		map textures/null_beach/splash.tga
		blendfunc blend
		tcmod scroll 0.15 0
	}
}

textures/null_beach/no_swim
{
	qer_editorimage textures/null_beach/noswim.tga
	polygonoffset
	cull none
	{
		map textures/null_beach/noswim.tga
		rgbgen vertex
		alphafunc ge128
	}
}

textures/null_beach/grass_urt_grn
{
	qer_editorimage textures/urt_grasses/grass_urt_grn.tga 
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none  
	nopicmip 
	nomipmaps
	deformVertexes wave 3 sin 0 .3 0 .2

	{
		map textures/urt_grasses/grass_urt_grn.tga 
   		alphaFunc GE128  
   		depthwrite
 	}
	{
		map $lightmap 
		depthFunc equal
		blendfunc gl_dst_color gl_src_color
	}

}

textures/null_beach/grass_urt2
{
	qer_editorimage textures/urt_grasses/grass_urt2.tga
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	surfaceparm alphashadow
	cull none  
	nopicmip 
	nomipmaps
	deformVertexes wave 3 sin 0 .3 0 .176

	{ 
   		
		map textures/urt_grasses/grass_urt2.tga 
		alphaFunc GE128  
		depthwrite
 	}
	{
		map $lightmap 
		depthFunc equal
		blendfunc gl_dst_color gl_src_color
	}

}

textures/null_beach/light_beam_vert
{
	qer_editorimage textures/null_c/light_beam.tga
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	deformvertexes autosprite2
	cull none
	{
		map textures/null_c/light_beam.tga
		blendfunc gl_src_alpha gl_one
		rgbgen const ( 1 1 1 )
		alphagen portal 1536
	}
}

textures/null_beach/drape
{	
	qer_editorimage textures/ut_riyadh/sn_riy_red_cloth.tga
	q3map_vertexscale 1.75
	surfaceparm trans
	cull none
	{
		map textures/ut_riyadh/sn_riy_red_cloth.tga
		rgbgen vertex
	}
}