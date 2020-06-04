	.text
	;.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
	.weak	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw ; -- Begin function gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
	.p2align	8
	.type	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw,@function
gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw: ; @gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
; %bb.0:                                ; %entry
	s_mov_b32 s0, 0x71625345
	v_mov_b32_e32 v1, s0
	v_mul_hi_i32 v1, s6, v1
	v_and_b32_e32 v8, 0x80, v0
	v_sub_u32_e32 v8, v0, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshrrev_b32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v1, 12, v1
	v_add_u32_e32 v1, v1, v2
	s_mov_b32 s1, 0xffdbe0
	v_mov_b32_e32 v2, s6
	v_mad_i32_i24 v2, v1, s1, v2
	v_lshrrev_b32_e32 v9, 25, v9
	v_ashrrev_i32_e32 v3, 31, v2
	s_movk_i32 s2, 0xa20
	v_add_u32_e32 v9, v8, v9
	v_lshrrev_b32_e32 v3, 28, v3
	v_ashrrev_i32_e32 v10, 7, v9
	v_mul_i32_i24_e32 v11, s2, v1
	v_lshrrev_b32_e32 v19, 7, v0
	v_add_u32_e32 v3, v2, v3
	v_lshlrev_b32_e32 v10, 2, v10
	v_lshl_or_b32 v11, v19, 4, v11
	v_ashrrev_i32_e32 v4, 4, v3
	v_and_b32_e32 v3, -16, v3
	v_add_u32_e32 v11, v11, v10
	s_mov_b32 s1, 0x38e38e39
	v_sub_u32_e32 v2, v2, v3
	v_mul_hi_i32 v12, v11, s1
	v_lshlrev_b32_e32 v3, 7, v4
	v_and_b32_e32 v4, 0xf8, v0
	v_lshlrev_b32_e32 v2, 7, v2
	v_lshrrev_b32_e32 v5, 3, v0
	v_sub_u32_e32 v6, v0, v4
	v_lshl_or_b32 v4, v5, 2, v2
	v_add_u32_e32 v20, v4, v1
	v_and_b32_e32 v1, 0xffffff80, v9
	v_sub_u32_e32 v1, v8, v1
	v_lshrrev_b32_e32 v4, 31, v12
	v_ashrrev_i32_e32 v9, 1, v12
	v_add_u32_e32 v4, v9, v4
	v_add_u32_e32 v8, v1, v3
	v_mul_lo_u32 v9, v4, -9
	v_mul_hi_i32 v12, v8, s0
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	s_load_dwordx2 s[20:21], s[4:5], 0x8
	v_mul_lo_u32 v13, v20, s2
	v_lshlrev_b32_e32 v7, 2, v6
	v_add_u32_e32 v16, v9, v11
	s_mov_b32 s0, 0x55555556
	v_lshrrev_b32_e32 v9, 31, v12
	v_ashrrev_i32_e32 v11, 7, v12
	v_mul_hi_i32 v21, v16, s0
	v_add_u32_e32 v9, v11, v9
	s_mov_b32 s0, 0xfffedf
	s_mov_b32 s23, 0x27000
	s_mov_b32 s22, -1
	v_add_lshl_u32 v7, v13, v7, 1
	s_movk_i32 s26, 0xffc
	v_mad_i32_i24 v17, v9, s0, v8
	v_mul_i32_i24_e32 v22, 0x56220, v9
	v_lshl_add_u32 v25, v19, 11, v10
	s_movk_i32 s27, 0x1ffc
	s_movk_i32 s28, 0x2ffc
	s_mov_b32 s0, 0x78787879
	v_mul_hi_i32 v18, v17, s0
	v_lshrrev_b32_e32 v27, 31, v21
	v_lshlrev_b32_e32 v6, 10, v6
	v_lshl_or_b32 v26, v5, 5, v6
	v_lshrrev_b32_e32 v28, 31, v18
	v_ashrrev_i32_e32 v18, 3, v18
	v_add_u32_e32 v18, v18, v28
	v_mov_b32_e32 v6, 0xffff
	s_movk_i32 s0, 0xffef
	s_movk_i32 s24, 0x4c9
	v_mul_lo_u32 v23, v4, s24
	v_mul_lo_u32 v29, v18, s0
	s_load_dwordx2 s[16:17], s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	buffer_load_dwordx2 v[8:9], v7, s[20:23], 0 offen
	buffer_load_dwordx2 v[10:11], v7, s[20:23], s26 offen offset:1092
	buffer_load_dwordx2 v[12:13], v7, s[20:23], s27 offen offset:2180
	buffer_load_dwordx2 v[14:15], v7, s[20:23], s28 offen offset:3268



kevin_test_start:
        ;//s37-s47 is free
       ; s_load_dwordx2 s[38:39], s[4:5], 0x18;//test_int_kevin
       ; s_waitcnt lgkmcnt(0)
kevin_test_end:

	v_add_u32_e32 v7, v21, v27
	v_mul_lo_u32 v28, v7, -3
	v_lshl_add_u32 v18, v18, 1, v7
	v_mul_lo_u32 v18, v18, 35
	v_add_lshl_u32 v17, v29, v17, 1
	v_add_u32_e32 v16, v28, v16
	v_add3_u32 v22, v22, v23, v16
	v_add3_u32 v17, v22, v18, v17
	v_ashrrev_i32_e32 v18, 31, v17
	s_movk_i32 s29, 0x2000
	v_add_u32_e32 v5, s29, v26
	s_mov_b32 s30, s7
	v_add_u32_e32 v33, 2, v7
	v_cmp_gt_i32_e64 s[12:13], 3, v33
	v_lshlrev_b32_e32 v24, 2, v1
	v_and_b32_e32 v4, 64, v0
	v_accvgpr_write_b32 a0, 0
	v_accvgpr_write_b32 a1, 0
	v_accvgpr_write_b32 a2, 0
	v_accvgpr_write_b32 a3, 0
	v_accvgpr_write_b32 a4, 0
	v_accvgpr_write_b32 a5, 0
	v_accvgpr_write_b32 a6, 0
	v_accvgpr_write_b32 a7, 0
	v_accvgpr_write_b32 a8, 0
	v_accvgpr_write_b32 a9, 0
	v_accvgpr_write_b32 a10, 0
	v_accvgpr_write_b32 a11, 0
	v_accvgpr_write_b32 a12, 0
	v_accvgpr_write_b32 a13, 0
	v_accvgpr_write_b32 a14, 0
	v_accvgpr_write_b32 a15, 0
	v_accvgpr_write_b32 a16, 0
	v_accvgpr_write_b32 a17, 0
	v_accvgpr_write_b32 a18, 0
	v_accvgpr_write_b32 a19, 0
	v_accvgpr_write_b32 a20, 0
	v_accvgpr_write_b32 a21, 0
	v_accvgpr_write_b32 a22, 0
	v_accvgpr_write_b32 a23, 0
	v_accvgpr_write_b32 a24, 0
	v_accvgpr_write_b32 a25, 0
	v_accvgpr_write_b32 a26, 0
	v_accvgpr_write_b32 a27, 0
	v_accvgpr_write_b32 a28, 0
	v_accvgpr_write_b32 a29, 0
	v_accvgpr_write_b32 a30, 0
	v_accvgpr_write_b32 a31, 0
	v_accvgpr_write_b32 a63, 0
	v_accvgpr_write_b32 a62, 0
	v_accvgpr_write_b32 a61, 0
	v_accvgpr_write_b32 a60, 0
	v_accvgpr_write_b32 a59, 0
	v_accvgpr_write_b32 a58, 0
	v_accvgpr_write_b32 a57, 0
	v_accvgpr_write_b32 a56, 0
	v_accvgpr_write_b32 a55, 0
	v_accvgpr_write_b32 a54, 0
	v_accvgpr_write_b32 a53, 0
	v_accvgpr_write_b32 a52, 0
	v_accvgpr_write_b32 a51, 0
	v_accvgpr_write_b32 a50, 0
	v_accvgpr_write_b32 a49, 0
	v_accvgpr_write_b32 a48, 0
	v_accvgpr_write_b32 a47, 0
	v_accvgpr_write_b32 a46, 0
	v_accvgpr_write_b32 a45, 0
	v_accvgpr_write_b32 a44, 0
	v_accvgpr_write_b32 a43, 0
	v_accvgpr_write_b32 a42, 0
	v_accvgpr_write_b32 a41, 0
	v_accvgpr_write_b32 a40, 0
	v_accvgpr_write_b32 a39, 0
	v_accvgpr_write_b32 a38, 0
	v_accvgpr_write_b32 a37, 0
	v_accvgpr_write_b32 a36, 0
	s_waitcnt vmcnt(3)
	v_bfi_b32 v8, v6, v8, v8
	s_waitcnt vmcnt(2)
	v_bfi_b32 v10, v6, v10, v10
	v_bfi_b32 v11, v6, v11, v11
	v_bfi_b32 v9, v6, v9, v9
	ds_write_b128 v26, v[8:11] offset:8192
	s_waitcnt vmcnt(0)
	v_bfi_b32 v11, v6, v15, v15
	v_bfi_b32 v10, v6, v14, v14
	v_bfi_b32 v8, v6, v12, v12
	v_bfi_b32 v9, v6, v13, v13
	ds_write_b128 v26, v[8:11] offset:8208
	v_add_u32_e32 v8, 1, v16
	v_add_u32_e32 v9, -2, v16
	v_cmp_gt_i32_e32 vcc, 3, v8
	v_cndmask_b32_e32 v9, v9, v8, vcc
	v_cmp_lt_i32_e32 vcc, 2, v8
	v_addc_co_u32_e64 v8, s[0:1], v21, v27, vcc
	v_addc_co_u32_e64 v10, s[0:1], -3, v7, vcc
	v_cmp_gt_i32_e64 s[0:1], 3, v8
	v_cndmask_b32_e64 v8, v10, v8, s[0:1]
	v_sub_u32_e32 v8, v8, v7
	v_mul_lo_u32 v8, v8, 35
	v_sub_u32_e32 v9, v9, v16
	v_lshlrev_b64 v[12:13], 1, v[17:18]
	v_mov_b32_e32 v15, s24
	v_add_u32_e32 v18, v9, v17
	v_cndmask_b32_e64 v10, v15, 0, s[0:1]
	v_add_u32_e32 v22, v8, v18
	v_add_u32_e32 v8, v22, v10
	v_add_u32_e32 v10, 2, v16
	v_add_u32_e32 v11, -1, v16
	v_cmp_gt_i32_e64 s[2:3], 3, v10
	v_cndmask_b32_e64 v11, v11, v10, s[2:3]
	v_cmp_lt_i32_e64 s[2:3], 2, v10
	v_addc_co_u32_e64 v10, s[4:5], v21, v27, s[2:3]
	v_addc_co_u32_e64 v21, s[4:5], -3, v7, s[2:3]
	v_cmp_gt_i32_e64 s[4:5], 3, v10
	v_cndmask_b32_e64 v10, v21, v10, s[4:5]
	v_sub_u32_e32 v10, v10, v7
	v_mul_lo_u32 v10, v10, 35
	v_sub_u32_e32 v11, v11, v16
	v_add_u32_e32 v23, v11, v17
	v_cndmask_b32_e64 v21, v15, 0, s[4:5]
	v_add_u32_e32 v26, v10, v23
	v_add_u32_e32 v10, v26, v21
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_add_u32_e32 v21, 1, v7
	v_add_u32_e32 v27, -2, v7
	v_cmp_gt_i32_e64 s[6:7], 3, v21
	v_cndmask_b32_e64 v27, v27, v21, s[6:7]
	v_sub_u32_e32 v27, v27, v7
	v_mul_lo_u32 v27, v27, 35
	v_addc_co_u32_e64 v31, s[10:11], 1, v7, s[2:3]
	v_addc_co_u32_e64 v35, s[14:15], 2, v7, vcc
	s_movk_i32 s14, 0x992
	v_add_u32_e32 v27, v17, v27
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a33, 0
	v_accvgpr_write_b32 a32, 0
	v_lshlrev_b32_e32 v1, 6, v19
	s_mov_b32 s25, 0
	s_mov_b32 s32, s30
	s_nop 0
	s_nop 0
	global_load_ushort v28, v[8:9], s[18:19]
	global_load_ushort v29, v[10:11], s[18:19]
	v_addc_co_u32_e64 v10, s[8:9], -3, v21, vcc
	v_addc_co_u32_e64 v9, s[8:9], 1, v7, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v9
	v_cndmask_b32_e64 v9, v10, v9, s[8:9]
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v8, v15, 0, s[6:7]
	v_cndmask_b32_e64 v11, v15, 0, s[8:9]
	v_add_u32_e32 v8, v27, v8
	v_add_u32_e32 v30, v10, v18
	v_add_u32_e32 v10, v30, v11
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_addc_co_u32_e64 v21, s[10:11], -3, v21, s[2:3]
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_cmp_gt_i32_e64 s[10:11], 3, v31
	v_cndmask_b32_e64 v21, v21, v31, s[10:11]
	v_sub_u32_e32 v21, v21, v7
	v_mul_lo_u32 v21, v21, 35
	v_addc_co_u32_e32 v36, vcc, -3, v33, vcc
	v_cmp_gt_i32_e32 vcc, 3, v35
	v_cndmask_b32_e32 v35, v36, v35, vcc
	v_add_u32_e32 v21, v21, v23
	v_sub_u32_e32 v35, v35, v7
	v_mul_lo_u32 v35, v35, 35
	s_nop 0
	s_nop 0
	global_load_ushort v31, v[8:9], s[18:19]
	global_load_ushort v32, v[10:11], s[18:19]
	v_add_u32_e32 v9, -1, v7
	v_cndmask_b32_e64 v9, v9, v33, s[12:13]
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v8, v15, 0, s[10:11]
	v_cndmask_b32_e64 v11, v15, 0, s[12:13]
	v_add_u32_e32 v8, v21, v8
	v_add_u32_e32 v34, v17, v10
	v_add_u32_e32 v10, v34, v11
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v36, v[8:9], s[18:19]
	global_load_ushort v37, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v15, 0, vcc
	v_addc_co_u32_e64 v9, vcc, 2, v7, s[2:3]
	v_addc_co_u32_e64 v10, vcc, -3, v33, s[2:3]
	v_cmp_gt_i32_e32 vcc, 3, v9
	v_cndmask_b32_e32 v9, v10, v9, vcc
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v11, v15, 0, vcc
	v_add3_u32 v8, v8, v18, v35
	v_ashrrev_i32_e32 v9, 31, v8
	v_add3_u32 v10, v11, v23, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v18, v[8:9], s[18:19]
	global_load_ushort v23, v[10:11], s[18:19]
	global_load_ushort v14, v[12:13], s[18:19]
	global_load_ushort v33, v[12:13], s[18:19] offset:2450
	v_mov_b32_e32 v12, s14
	v_cndmask_b32_e64 v8, v12, v15, s[0:1]
	v_cndmask_b32_e64 v10, v12, v15, s[4:5]
	v_add_u32_e32 v8, v22, v8
	v_add_u32_e32 v10, v26, v10
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_movk_i32 s0, 0x1440
	s_nop 0
	s_nop 0
	global_load_ushort v22, v[8:9], s[18:19]
	global_load_ushort v26, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v12, v15, s[6:7]
	v_cndmask_b32_e64 v10, v12, v15, s[8:9]
	v_add_u32_e32 v8, v27, v8
	v_add_u32_e32 v10, v30, v10
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v27, v[8:9], s[18:19]
	global_load_ushort v30, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v12, v15, s[10:11]
	v_cndmask_b32_e64 v10, v12, v15, s[12:13]
	v_add_u32_e32 v8, v21, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_add_u32_e32 v10, v34, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v15, v[8:9], s[18:19]
	global_load_ushort v21, v[10:11], s[18:19]
	s_waitcnt vmcnt(14)
	v_and_b32_e32 v8, v6, v29
	v_add_lshl_u32 v9, v25, v24, 1
	s_waitcnt vmcnt(13)
	v_lshl_or_b32 v11, v31, 16, v8
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v8, v6, v14
	v_lshl_or_b32 v10, v28, 16, v8
	v_and_b32_e32 v8, v6, v32
	v_lshl_or_b32 v12, v36, 16, v8
	v_and_b32_e32 v8, v6, v37
	v_lshl_or_b32 v13, v18, 16, v8
	v_and_b32_e32 v8, v6, v23
	ds_write2st64_b64 v9, v[10:11], v[12:13] offset1:2
	s_waitcnt vmcnt(6)
	v_lshl_or_b32 v10, v33, 16, v8
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v8, v6, v22
	s_waitcnt vmcnt(4)
	v_lshl_or_b32 v11, v26, 16, v8
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, v6, v15
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v13, v21, 16, v8
	v_and_b32_e32 v8, v6, v27
	v_lshl_or_b32 v12, v30, 16, v8
	ds_write2st64_b64 v9, v[10:11], v[12:13] offset0:4 offset1:6
	v_mul_lo_u32 v13, v20, s0
	v_lshlrev_b32_e32 v12, 3, v0
	v_and_b32_e32 v8, 63, v0
	v_and_b32_e32 v14, 0x7c0, v12
	v_sub_u32_e32 v13, v13, v14
	v_lshlrev_b32_e32 v10, 9, v19
	v_lshlrev_b32_e32 v11, 3, v8
	v_or3_b32 v10, v10, v11, s29
	v_lshl_or_b32 v11, v4, 3, v11
	v_add_u32_e32 v13, 64, v13
	v_mov_b32_e32 v14, 0x1324
	v_mov_b32_e32 v15, 0xe5b
BB0_1:                                  ; %if.then.i29.i.i.i.i.i.i.i.i
                                        ; =>This Inner Loop Header: Depth=1
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND

	v_add_u32_e32 v34, 2, v16
	v_cmp_lt_i32_e32 vcc, 2, v34
	v_addc_co_u32_e64 v36, s[0:1], 1, v7, vcc
	v_add_u32_e32 v35, -1, v16
	v_cmp_gt_i32_e64 s[0:1], 3, v34


	s_add_i32 s25, s25, 8
	s_cmpk_lt_u32 s25, 0x280
	v_cndmask_b32_e64 v58, v35, v34, s[0:1]
	v_addc_co_u32_e32 v34, vcc, -2, v7, vcc
	v_cmp_gt_i32_e32 vcc, 3, v36
	v_add_u32_e32 v60, 2, v58
	v_add_u32_e32 v59, 1, v58
	v_cndmask_b32_e32 v61, v34, v36, vcc
	v_cndmask_b32_e32 v66, v14, v15, vcc
	v_add_u32_e32 v64, -2, v58
	v_cmp_gt_i32_e32 vcc, 3, v59
	v_add_u32_e32 v65, -1, v58
	v_cmp_gt_i32_e64 s[0:1], 3, v60
	v_add_u32_e32 v63, v12, v13


	v_cndmask_b32_e32 v64, v64, v59, vcc
	v_cmp_lt_i32_e32 vcc, 2, v60
	v_sub_u32_e32 v16, v17, v16
	v_cndmask_b32_e64 v60, v65, v60, s[0:1]
	v_cmp_lt_i32_e64 s[0:1], 2, v59
	v_addc_co_u32_e64 v68, s[2:3], 0, v61, vcc
	v_addc_co_u32_e64 v71, s[2:3], 1, v61, s[0:1]
	v_add_u32_e32 v73, 2, v61
	v_addc_co_u32_e64 v65, s[2:3], 0, v61, s[0:1]
	v_addc_co_u32_e64 v67, s[2:3], -3, v61, s[0:1]
	v_sub_u32_e32 v64, v64, v58
	v_addc_co_u32_e64 v69, s[2:3], -3, v61, vcc
	v_addc_co_u32_e64 v72, s[2:3], 1, v61, vcc
	v_addc_co_u32_e64 v75, s[2:3], 2, v61, s[0:1]


	v_addc_co_u32_e64 v76, s[2:3], 2, v61, vcc
	v_cmp_gt_i32_e64 s[2:3], 3, v65
	v_add_u32_e32 v70, -2, v61
	v_add_u32_e32 v74, -1, v61
	v_cmp_gt_i32_e64 s[4:5], 3, v68
	v_cmp_gt_i32_e64 s[10:11], 3, v73
	v_sub_u32_e32 v59, v61, v7
	v_cndmask_b32_e64 v65, v67, v65, s[2:3]
	v_cndmask_b32_e64 v67, v69, v68, s[4:5]
	v_mul_lo_u32 v59, v59, 35
	v_cmp_gt_i32_e64 s[12:13], 3, v71
	v_mov_b32_e32 v17, s24
	v_mov_b32_e32 v62, s14
	v_sub_u32_e32 v65, v65, v61
	v_sub_u32_e32 v67, v67, v61
	v_mov_b32_e32 v7, v61
	v_cndmask_b32_e64 v77, v17, 0, s[2:3]
	v_cndmask_b32_e64 v78, v17, 0, s[4:5]
	v_cndmask_b32_e64 v79, v62, v17, s[2:3]
	v_cndmask_b32_e64 v80, v62, v17, s[4:5]
	v_cndmask_b32_e64 v81, v62, v17, s[12:13]
	v_cndmask_b32_e64 v85, v62, v17, s[10:11]
	v_cndmask_b32_e64 v86, v17, 0, s[10:11]


	v_add_u32_e32 v13, 64, v13
	s_nop 0
	s_nop 0
	buffer_load_dwordx2 v[34:35], v63, s[20:23], 0 offen
	buffer_load_dwordx2 v[56:57], v63, s[20:23], s28 offen offset:3268
	buffer_load_dwordx2 v[54:55], v63, s[20:23], s27 offen offset:2180
	buffer_load_dwordx2 v[36:37], v63, s[20:23], s26 offen offset:1092


	v_add_u32_e32 v63, v16, v58
	v_mov_b32_e32 v16, v58
	v_sub_u32_e32 v58, v60, v58
	v_add_u32_e32 v60, 1, v61
	v_cmp_gt_i32_e64 s[6:7], 3, v60
	v_cndmask_b32_e64 v68, v70, v60, s[6:7]
	v_addc_co_u32_e64 v69, s[8:9], -3, v60, s[0:1]
	v_cndmask_b32_e64 v70, v74, v73, s[10:11]
	v_addc_co_u32_e64 v74, s[0:1], -3, v73, s[0:1]
	v_addc_co_u32_e64 v60, s[8:9], -3, v60, vcc
	v_addc_co_u32_e32 v73, vcc, -3, v73, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v72
	v_cmp_gt_i32_e64 s[0:1], 3, v75
	v_cmp_gt_i32_e32 vcc, 3, v76
	v_cndmask_b32_e64 v60, v60, v72, s[8:9]
	v_sub_u32_e32 v68, v68, v61
	v_cndmask_b32_e64 v69, v69, v71, s[12:13]
	v_cndmask_b32_e64 v74, v74, v75, s[0:1]
	v_cndmask_b32_e32 v73, v73, v76, vcc
	v_sub_u32_e32 v70, v70, v61
	v_cndmask_b32_e64 v71, v17, 0, s[12:13]
	v_cndmask_b32_e64 v72, v17, 0, s[8:9]
	v_cndmask_b32_e64 v75, v17, 0, s[0:1]
	v_cndmask_b32_e64 v76, v17, 0, vcc
	v_cndmask_b32_e64 v82, v62, v17, s[8:9]
	v_cndmask_b32_e64 v84, v62, v17, s[6:7]
	v_cndmask_b32_e64 v83, v17, 0, s[6:7]


	v_mul_lo_u32 v62, v65, 35
	v_mul_lo_u32 v65, v67, 35
	v_sub_u32_e32 v67, v74, v61
	v_sub_u32_e32 v17, v69, v61
	v_sub_u32_e32 v60, v60, v61
	v_sub_u32_e32 v61, v73, v61
	v_mul_lo_u32 v68, v68, 35
	v_mul_lo_u32 v69, v70, 35
	v_mul_lo_u32 v73, v17, 35
	v_mul_lo_u32 v74, v60, 35
	v_mul_lo_u32 v67, v67, 35
	v_mul_lo_u32 v61, v61, 35


;//kevin change v23 to v101
	v_add3_u32 v17, v63, v66, v59

	v_add_u32_e32 v101, v17, v64
	v_add_u32_e32 v59, v17, v58

;//kevin change v22 to v100

	v_add3_u32 v100, v101, v77, v62


	v_add3_u32 v60, v101, v79, v62

	v_add3_u32 v62, v59, v80, v65
	v_add3_u32 v58, v59, v78, v65
	v_add_u32_e32 v65, v68, v17
	v_add_u32_e32 v69, v69, v17



	v_add3_u32 v66, v59, v72, v74
	v_add3_u32 v70, v59, v76, v61
	v_add3_u32 v74, v59, v82, v74
	v_add3_u32 v68, v101, v75, v67
	v_add3_u32 v64, v101, v71, v73
	v_add3_u32 v72, v101, v81, v73
	v_add_u32_e32 v76, v65, v83
	v_add_u32_e32 v80, v65, v84
	v_add_u32_e32 v78, v69, v86



;//kevin change 17 to 103,  18 t0 104, 19 t0 105
        v_mov_b32 v103,v17
        v_mov_b32 v104,v18





	v_ashrrev_i32_e32 v101, 31, v100
	v_lshlrev_b64 v[100:101], 1, v[100:101]
	global_load_ushort v85, v[100:101], s[18:19]




	v_ashrrev_i32_e32 v59, 31, v58
	v_lshlrev_b64 v[58:59], 1, v[58:59]
	global_load_ushort v86, v[58:59], s[18:19]



	v_ashrrev_i32_e32 v61, 31, v60
	v_lshlrev_b64 v[60:61], 1, v[60:61]
	global_load_ushort v93, v[60:61], s[18:19]




	v_ashrrev_i32_e32 v63, 31, v62
	v_ashrrev_i32_e32 v77, 31, v76
	v_ashrrev_i32_e32 v65, 31, v64
	v_ashrrev_i32_e32 v67, 31, v66
	v_ashrrev_i32_e32 v79, 31, v78
	v_ashrrev_i32_e32 v71, 31, v70
	v_ashrrev_i32_e32 v81, 31, v80
	v_ashrrev_i32_e32 v73, 31, v72
	v_ashrrev_i32_e32 v75, 31, v74
	v_ashrrev_i32_e32 v104, 31, v103



	v_add_u32_e32 v82, v69, v85
	v_ashrrev_i32_e32 v69, 31, v68
	v_ashrrev_i32_e32 v83, 31, v82
	v_lshlrev_b64 v[104:105], 1, v[103:104]

        ds_read2st64_b64 v[18:21], v10 offset1:2
	ds_read2st64_b64 v[22:25], v11 offset1:2
	ds_read2st64_b64 v[26:29], v10 offset0:4 offset1:6
	ds_read2st64_b64 v[30:33], v11 offset0:4 offset1:6

	v_lshlrev_b64 v[62:63], 1, v[62:63]

	global_load_ushort v94, v[62:63], s[18:19]
	v_lshlrev_b64 v[76:77], 1, v[76:77]
        s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[18:19], v[22:23], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[18:19], v[22:23], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[20:21], v[24:25], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[20:21], v[24:25], a[0:31] cbsz:1


	


	global_load_ushort v87, v[76:77], s[18:19]
	v_lshlrev_b64 v[64:65], 1, v[64:65]


	global_load_ushort v88, v[64:65], s[18:19]
	v_lshlrev_b64 v[66:67], 1, v[66:67]
        s_waitcnt lgkmcnt(0)
        
	v_mfma_f32_32x32x4f16 a[32:63], v[26:27], v[30:31], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[26:27], v[30:31], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[28:29], v[32:33], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[28:29], v[32:33], a[32:63] cbsz:1 abid:1



	global_load_ushort v89, v[66:67], s[18:19]
	v_lshlrev_b64 v[78:79], 1, v[78:79]
        

	global_load_ushort v90, v[78:79], s[18:19]
	v_lshlrev_b64 v[68:69], 1, v[68:69]
        ds_read2st64_b64 v[38:41], v10 offset0:8 offset1:10
	ds_read2st64_b64 v[42:45], v11 offset0:8 offset1:10
	ds_read2st64_b64 v[46:49], v10 offset0:12 offset1:14
	ds_read2st64_b64 v[50:53], v11 offset0:12 offset1:14


	

	global_load_ushort v91, v[68:69], s[18:19]
	v_lshlrev_b64 v[70:71], 1, v[70:71]

	global_load_ushort v92, v[70:71], s[18:19]
	v_lshlrev_b64 v[80:81], 1, v[80:81]



	global_load_ushort v95, v[80:81], s[18:19]
	v_lshlrev_b64 v[72:73], 1, v[72:73]

	global_load_ushort v96, v[72:73], s[18:19]
	v_lshlrev_b64 v[74:75], 1, v[74:75]
        s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[0:31], v[38:39], v[42:43], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[38:39], v[42:43], a[32:63] cbsz:1 abid:1

	v_mfma_f32_32x32x4f16 a[0:31], v[40:41], v[44:45], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[40:41], v[44:45], a[32:63] cbsz:1 abid:1


	
	global_load_ushort v97, v[74:75], s[18:19]
	v_lshlrev_b64 v[82:83], 1, v[82:83]

	global_load_ushort v98, v[82:83], s[18:19]

	;s_waitcnt vmcnt(2)
	v_bfi_b32 v56, v6, v56, v56
	v_bfi_b32 v57, v6, v57, v57
	s_nop 0
	s_nop 0


	global_load_ushort v84, v[104:105], s[18:19]



	global_load_ushort v20, v[104:105], s[18:19] offset:2450





;//for write









	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	s_waitcnt vmcnt(16)
	ds_write_b128 v5, v[34:37]
	ds_write_b128 v5, v[54:57] offset:16
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[0:31], v[46:47], v[50:51], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[46:47], v[50:51], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[48:49], v[52:53], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[48:49], v[52:53], a[32:63] cbsz:1 abid:1

	s_waitcnt vmcnt(14)
	v_and_b32_e32 v19, v6, v86
	s_waitcnt vmcnt(13)
	v_and_b32_e32 v21, v6, v93
	s_waitcnt vmcnt(12)
	v_lshl_or_b32 v21, v94, 16, v21
	s_waitcnt vmcnt(11)
	v_lshl_or_b32 v19, v87, 16, v19
	s_waitcnt vmcnt(10)
	v_and_b32_e32 v100, v6, v88
	s_waitcnt vmcnt(9)
	v_lshl_or_b32 v100, v89, 16, v100
	s_waitcnt vmcnt(8)
	v_and_b32_e32 v101, v6, v90
	s_waitcnt vmcnt(7)
	v_lshl_or_b32 v101, v91, 16, v101
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v24, v6, v92
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v26, v6, v95
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v25, v6, v97
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v18, v6, v84
	v_lshl_or_b32 v18, v85, 16, v18
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v20, v20, 16, v24
	v_lshl_or_b32 v25, v98, 16, v25
	v_lshl_or_b32 v24, v96, 16, v26
	ds_write2st64_b64 v9, v[18:19], v[100:101] offset1:2
	ds_write2st64_b64 v9, v[20:21], v[24:25] offset0:4 offset1:6
	s_cbranch_scc1 BB0_1
; %bb.2:                                ; %_ZNK2ck53GridwiseBatchedGemmTransposedANormalBNormalCXdlops_v2ILi9248ELi256EDF16_fDF16_KNS_27TransformedTensorDescriptorINS_22NativeTensorDescriptorIJNS_15NativeDimensionILi2048ELi2592EEENS3_ILi2592ELi1EEEEEENS_5TupleIJNS_11PassThroughILi2048EEENS_7UnMergeINS_8SequenceIJLi1ELi648ELi4EEEEEEEEENS7_IJNSB_IJLi0EEEENSB_IJLi1EEEEEEENS7_IJNSB_IJLi2EEEENSB_IJLi0ELi1ELi3EEEEEEEEEKNS1_INS1_INS1_INS1_INS2_IJNS3_ILi256ELi352800EEENS3_ILi288ELi1225EEENS3_ILi35ELi35EEENS3_ILi35ELi1EEEEEENS7_IJNS8_ILi256EEENS8_ILi288EEENS_3PadINSB_IJLi35ELi35EEEENSB_IJLi0ELi0EEEESW_Lb0EEEEEENS7_IJSF_SG_NSB_IJLi2ELi3EEEEEEES10_EENS7_IJSS_ST_NS_5EmbedILi35ENSB_IJLi3ELi17EEEENSB_IJLi1ELi2ELi0EEEELb0EEES15_EEENS7_IJSF_SG_SI_NSB_IJLi3EEEEEEENS7_IJSF_SG_SZ_NSB_IJLi4ELi5EEEEEEEEENS7_IJNS_5MergeINSB_IJLi288ELi3ELi3EEEEEENS1C_INSB_IJLi256ELi17ELi17EEEEEEEEENS7_IJNSB_IJLi1ELi2ELi4EEEENSB_IJLi0ELi3ELi5EEEEEEESH_EENS7_IJSD_NS8_ILi73984EEEEEESH_NS7_IJSJ_SI_EEEEEKNS1_INS2_IJNS3_ILi1ELi0EEENS3_ILi256ELi591872EEENS3_ILi2048ELi289EEENS3_ILi17ELi17EEENS3_ILi
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	ds_read2st64_b64 v[12:15], v10 offset1:2
	ds_read2st64_b64 v[16:19], v11 offset1:2
	ds_read2st64_b64 v[20:23], v10 offset0:4 offset1:6
	ds_read2st64_b64 v[24:27], v11 offset0:4 offset1:6
	v_lshrrev_b32_e32 v5, 3, v8
	v_and_b32_e32 v0, 32, v0
	v_sub_u32_e32 v0, v8, v0
	v_add3_u32 v0, v0, v4, v3
	v_mov_b32_e32 v6, s17
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[0:31], v[12:13], v[16:17], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[12:13], v[16:17], a[32:63] cbsz:1 abid:1
	s_mov_b32 s0, 0x71625345
	s_movk_i32 s1, 0x121
	s_mov_b32 s2, 0x90800
	s_movk_i32 s3, 0x1000
	s_movk_i32 s4, 0x2000
	s_movk_i32 s5, 0x3000
	v_mul_hi_i32 v4, v0, s0
	v_mov_b32_e32 v7, s17
	v_lshrrev_b32_e32 v9, 31, v4
	v_ashrrev_i32_e32 v4, 7, v4
	v_mfma_f32_32x32x4f16 a[0:31], v[14:15], v[18:19], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[14:15], v[18:19], a[32:63] cbsz:1 abid:1
	ds_read2st64_b64 v[12:15], v10 offset0:8 offset1:10
	ds_read2st64_b64 v[16:19], v11 offset0:8 offset1:10
	ds_read2st64_b64 v[28:31], v10 offset0:12 offset1:14
	ds_read2st64_b64 v[32:35], v11 offset0:12 offset1:14
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x4f16 a[0:31], v[20:21], v[24:25], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[20:21], v[24:25], a[32:63] cbsz:1 abid:1
	v_and_or_b32 v20, v5, 4, v2
	v_add_u32_e32 v2, v20, v1
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshrrev_b32_e32 v3, 29, v3
	v_add_u32_e32 v3, v2, v3
	v_add_u32_e32 v5, 32, v0
	v_and_b32_e32 v3, -8, v3
	v_mul_hi_i32 v8, v5, s0
	v_sub_u32_e32 v2, v2, v3
	v_ashrrev_i32_e32 v10, 31, v2
	v_mfma_f32_32x32x4f16 a[0:31], v[22:23], v[26:27], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[22:23], v[26:27], a[32:63] cbsz:1 abid:1
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[0:31], v[12:13], v[16:17], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[12:13], v[16:17], a[32:63] cbsz:1 abid:1
	v_add_u32_e32 v12, v4, v9
	v_lshrrev_b32_e32 v9, 30, v10
	v_add_u32_e32 v2, v2, v9
	v_lshrrev_b32_e32 v4, 31, v8
	v_ashrrev_i32_e32 v8, 7, v8
	v_sub_u32_e32 v10, v3, v12
	v_add_u32_e32 v13, v8, v4
	v_and_b32_e32 v2, -4, v2
	v_sub_u32_e32 v3, v3, v13
	v_add_u32_e32 v4, v10, v2
	v_add_u32_e32 v2, v3, v2
	v_mul_lo_u32 v3, v4, s1
	v_mul_lo_u32 v4, v2, s1
	v_mad_i32_i24 v0, v12, s2, v0
	v_mfma_f32_32x32x4f16 a[0:31], v[14:15], v[18:19], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[14:15], v[18:19], a[32:63] cbsz:1 abid:1
	v_add_u32_e32 v2, v3, v0
	v_ashrrev_i32_e32 v3, 31, v2
	v_mad_i32_i24 v14, v13, s2, v5
	v_add_u32_e32 v4, v4, v14
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_ashrrev_i32_e32 v5, 31, v4
	v_add_co_u32_e32 v10, vcc, s16, v2
	v_lshlrev_b64 v[4:5], 1, v[4:5]
	v_addc_co_u32_e32 v11, vcc, v6, v3, vcc
	v_add_co_u32_e32 v15, vcc, s16, v4
	v_addc_co_u32_e32 v16, vcc, v7, v5, vcc
	v_add_co_u32_e32 v6, vcc, s3, v10
	v_addc_co_u32_e32 v7, vcc, 0, v11, vcc
	v_add_co_u32_e32 v8, vcc, s4, v10
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[0:31], v[28:29], v[32:33], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[28:29], v[32:33], a[32:63] cbsz:1 abid:1
	v_addc_co_u32_e32 v9, vcc, 0, v11, vcc
	v_add_co_u32_e32 v10, vcc, s5, v10
	v_addc_co_u32_e32 v11, vcc, 0, v11, vcc
	v_mfma_f32_32x32x4f16 a[0:31], v[30:31], v[34:35], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[30:31], v[34:35], a[32:63] cbsz:1 abid:1
	s_nop 7
	s_nop 7
	s_nop 0
	v_accvgpr_read_b32 v17, a0
	v_accvgpr_read_b32 v18, a1
	v_accvgpr_read_b32 v19, a2
	v_accvgpr_read_b32 v21, a3
	v_accvgpr_read_b32 v22, a4
	v_accvgpr_read_b32 v23, a5
	v_accvgpr_read_b32 v24, a6
	v_accvgpr_read_b32 v25, a7
	v_accvgpr_read_b32 v26, a8
	v_accvgpr_read_b32 v27, a9
	v_accvgpr_read_b32 v28, a10
	v_accvgpr_read_b32 v29, a11
	v_accvgpr_read_b32 v30, a12
	v_accvgpr_read_b32 v31, a13
	v_accvgpr_read_b32 v32, a14
	v_accvgpr_read_b32 v33, a15
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 2, 2), 0
	v_cvt_f16_f32_e32 v17, v17
	v_cvt_f16_f32_e32 v18, v18
	v_cvt_f16_f32_e32 v19, v19
	v_cvt_f16_f32_e32 v21, v21
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v23, v23
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v26, v26
	v_cvt_f16_f32_e32 v27, v27
	v_cvt_f16_f32_e32 v28, v28
	v_cvt_f16_f32_e32 v29, v29
	v_cvt_f16_f32_e32 v30, v30
	v_cvt_f16_f32_e32 v31, v31
	v_cvt_f16_f32_e32 v32, v32
	v_cvt_f16_f32_e32 v33, v33
	v_accvgpr_read_b32 v34, a16
	v_accvgpr_read_b32 v35, a17
	v_cvt_f16_f32_e32 v34, v34
	v_cvt_f16_f32_e32 v35, v35
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v17, s[16:17]
	global_store_short v[2:3], v18, s[16:17] offset:578
	global_store_short v[2:3], v19, s[16:17] offset:1156
	global_store_short v[2:3], v21, s[16:17] offset:1734
	global_store_short v[6:7], v22, off offset:528
	global_store_short v[6:7], v23, off offset:1106
	global_store_short v[6:7], v24, off offset:1684
	global_store_short v[6:7], v25, off offset:2262
	global_store_short v[8:9], v26, off offset:1056
	global_store_short v[8:9], v27, off offset:1634
	global_store_short v[8:9], v28, off offset:2212
	global_store_short v[8:9], v29, off offset:2790
	global_store_short v[10:11], v30, off offset:1584
	global_store_short v[10:11], v31, off offset:2162
	global_store_short v[10:11], v32, off offset:2740
	global_store_short v[10:11], v33, off offset:3318
	v_accvgpr_read_b32 v2, a18
	v_accvgpr_read_b32 v3, a19
	v_cvt_f16_f32_e32 v2, v2
	v_cvt_f16_f32_e32 v3, v3
	v_or_b32_e32 v8, 32, v20
	v_accvgpr_read_b32 v6, a22
	v_accvgpr_read_b32 v7, a23
	v_add_u32_e32 v1, v8, v1
	v_ashrrev_i32_e32 v8, 31, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_lshrrev_b32_e32 v8, 29, v8
	v_add_u32_e32 v8, v1, v8
	v_and_b32_e32 v8, -8, v8
	v_sub_u32_e32 v1, v1, v8
	v_ashrrev_i32_e32 v9, 31, v1
	v_lshrrev_b32_e32 v9, 30, v9
	v_add_u32_e32 v1, v1, v9
	v_and_b32_e32 v9, -4, v1
	v_sub_u32_e32 v1, v8, v12
	v_add_u32_e32 v1, v1, v9
	v_mul_lo_u32 v1, v1, s1
	s_nop 0
	s_nop 0
	global_store_short v[4:5], v34, s[16:17]
	global_store_short v[4:5], v35, s[16:17] offset:578
	global_store_short v[4:5], v2, s[16:17] offset:1156
	global_store_short v[4:5], v3, s[16:17] offset:1734
	v_accvgpr_read_b32 v5, a21
	v_accvgpr_read_b32 v2, a20
	v_cvt_f16_f32_e32 v4, v2
	v_cvt_f16_f32_e32 v5, v5
	v_add_co_u32_e32 v2, vcc, s3, v15
	v_addc_co_u32_e32 v3, vcc, 0, v16, vcc
	v_add_u32_e32 v0, v1, v0
	v_accvgpr_read_b32 v1, a32
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:528
	global_store_short v[2:3], v5, off offset:1106
	global_store_short v[2:3], v6, off offset:1684
	global_store_short v[2:3], v7, off offset:2262
	v_accvgpr_read_b32 v5, a25
	v_accvgpr_read_b32 v6, a26
	v_accvgpr_read_b32 v7, a27
	v_accvgpr_read_b32 v2, a24
	v_cvt_f16_f32_e32 v4, v2
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v2, vcc, s4, v15
	v_addc_co_u32_e32 v3, vcc, 0, v16, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:1056
	global_store_short v[2:3], v5, off offset:1634
	global_store_short v[2:3], v6, off offset:2212
	global_store_short v[2:3], v7, off offset:2790
	v_accvgpr_read_b32 v5, a29
	v_accvgpr_read_b32 v6, a30
	v_accvgpr_read_b32 v7, a31
	v_accvgpr_read_b32 v2, a28
	v_cvt_f16_f32_e32 v4, v2
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v2, vcc, s5, v15
	v_addc_co_u32_e32 v3, vcc, 0, v16, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:1584
	global_store_short v[2:3], v5, off offset:2162
	global_store_short v[2:3], v6, off offset:2740
	global_store_short v[2:3], v7, off offset:3318
	v_accvgpr_read_b32 v5, a33
	v_accvgpr_read_b32 v6, a34
	v_accvgpr_read_b32 v7, a35
	v_cvt_f16_f32_e32 v2, v1
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v3, s17
	v_add_co_u32_e32 v4, vcc, s16, v0
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[16:17]
	global_store_short v[0:1], v5, s[16:17] offset:578
	global_store_short v[0:1], v6, s[16:17] offset:1156
	global_store_short v[0:1], v7, s[16:17] offset:1734
	v_accvgpr_read_b32 v5, a37
	v_accvgpr_read_b32 v6, a38
	v_accvgpr_read_b32 v7, a39
	v_accvgpr_read_b32 v0, a36
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s3, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:528
	global_store_short v[0:1], v5, off offset:1106
	global_store_short v[0:1], v6, off offset:1684
	global_store_short v[0:1], v7, off offset:2262
	v_accvgpr_read_b32 v5, a41
	v_accvgpr_read_b32 v6, a42
	v_accvgpr_read_b32 v7, a43
	v_accvgpr_read_b32 v0, a40
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s4, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1056
	global_store_short v[0:1], v5, off offset:1634
	global_store_short v[0:1], v6, off offset:2212
	global_store_short v[0:1], v7, off offset:2790
	v_accvgpr_read_b32 v0, a44
	v_sub_u32_e32 v6, v8, v13
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s5, v4
	v_accvgpr_read_b32 v4, a46
	v_accvgpr_read_b32 v5, a47
	v_add_u32_e32 v6, v6, v9
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a45
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_mul_lo_u32 v6, v6, s1
	v_accvgpr_read_b32 v7, a51
	v_cvt_f16_f32_e32 v7, v7
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1584
	global_store_short v[0:1], v3, off offset:2162
	global_store_short v[0:1], v4, off offset:2740
	global_store_short v[0:1], v5, off offset:3318
	v_accvgpr_read_b32 v5, a49
	v_add_u32_e32 v0, v6, v14
	v_accvgpr_read_b32 v6, a50
	v_accvgpr_read_b32 v1, a48
	v_cvt_f16_f32_e32 v2, v1
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v3, s17
	v_add_co_u32_e32 v4, vcc, s16, v0
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[16:17]
	global_store_short v[0:1], v5, s[16:17] offset:578
	global_store_short v[0:1], v6, s[16:17] offset:1156
	global_store_short v[0:1], v7, s[16:17] offset:1734
	v_accvgpr_read_b32 v5, a53
	v_accvgpr_read_b32 v6, a54
	v_accvgpr_read_b32 v7, a55
	v_accvgpr_read_b32 v0, a52
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s3, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:528
	global_store_short v[0:1], v5, off offset:1106
	global_store_short v[0:1], v6, off offset:1684
	global_store_short v[0:1], v7, off offset:2262
	v_accvgpr_read_b32 v5, a57
	v_accvgpr_read_b32 v6, a58
	v_accvgpr_read_b32 v7, a59
	v_accvgpr_read_b32 v0, a56
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s4, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1056
	global_store_short v[0:1], v5, off offset:1634
	global_store_short v[0:1], v6, off offset:2212
	global_store_short v[0:1], v7, off offset:2790
	v_accvgpr_read_b32 v0, a60
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s5, v4
	v_accvgpr_read_b32 v4, a62
	v_accvgpr_read_b32 v5, a63
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a61
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1584
	global_store_short v[0:1], v3, off offset:2162
	global_store_short v[0:1], v4, off offset:2740
	global_store_short v[0:1], v5, off offset:3318
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
		.amdhsa_group_segment_fixed_size 16384
		.amdhsa_private_segment_fixed_size 0
		.amdhsa_user_sgpr_private_segment_buffer 1
		.amdhsa_user_sgpr_dispatch_ptr 0
		.amdhsa_user_sgpr_queue_ptr 0
		.amdhsa_user_sgpr_kernarg_segment_ptr 1
		.amdhsa_user_sgpr_dispatch_id 0
		.amdhsa_user_sgpr_flat_scratch_init 0
		.amdhsa_user_sgpr_private_segment_size 0
		.amdhsa_system_sgpr_private_segment_wavefront_offset 0
		.amdhsa_system_sgpr_workgroup_id_x 1
		.amdhsa_system_sgpr_workgroup_id_y 0
		.amdhsa_system_sgpr_workgroup_id_z 0
		.amdhsa_system_sgpr_workgroup_info 0
		.amdhsa_system_vgpr_workitem_id 0
		.amdhsa_next_free_vgpr 128
		.amdhsa_next_free_sgpr 44
		.amdhsa_reserve_flat_scratch 0
		.amdhsa_float_round_mode_32 0
		.amdhsa_float_round_mode_16_64 0
		.amdhsa_float_denorm_mode_32 0
		.amdhsa_float_denorm_mode_16_64 3
		.amdhsa_dx10_clamp 1
		.amdhsa_ieee_mode 1
		.amdhsa_fp16_overflow 0
		.amdhsa_exception_fp_ieee_invalid_op 0
		.amdhsa_exception_fp_denorm_src 0
		.amdhsa_exception_fp_ieee_div_zero 0
		.amdhsa_exception_fp_ieee_overflow 0
		.amdhsa_exception_fp_ieee_underflow 0
		.amdhsa_exception_fp_ieee_inexact 0
		.amdhsa_exception_int_div_zero 0
	.end_amdhsa_kernel
	.text
.Lfunc_end0:
	.size	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw, .Lfunc_end0-gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 5984
; NumSgprs: 37
; NumVgprs: 99
; NumAgprs: 64
; TotalNumVgprs: 99
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 16384 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 24
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 99
; Occupancy: 2
; WaveLimiterHint : 1
; COMPUTE_PGM_RSRC2:USER_SGPR: 6
; COMPUTE_PGM_RSRC2:TRAP_HANDLER: 0
; COMPUTE_PGM_RSRC2:TGID_X_EN: 1
; COMPUTE_PGM_RSRC2:TGID_Y_EN: 0
; COMPUTE_PGM_RSRC2:TGID_Z_EN: 0
; COMPUTE_PGM_RSRC2:TIDIG_COMP_CNT: 0
	.ident	"HCC clang version 10.0.0 (/data/jenkins-workspace/compute-rocm-rel-3.1/external/hcc-tot/llvm-project/clang 6a70953f87a209f37ea7884abdbb6bcb2d6db732) (based on HCC 3.1.20023-6d267cfb-6a70953f87a )"
	.section	".note.GNU-stack"
	.amdgpu_metadata
---
amdhsa.kernels:
  - .args:
      - .address_space:  generic
        .name:           p_in_global
        .offset:         0
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16
      - .address_space:  generic
        .name:           p_wei_global
        .offset:         8
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16
      - .address_space:  generic
        .name:           p_out_global
        .offset:         16
        .size:           8
        .value_kind:     global_buffer
        .value_type:     f16
      - .address_space:  generic
        .name:           kevin_int_test
        .offset:         24
        .size:           8
        .value_kind:     global_buffer
        .value_type:     u32
    .group_segment_fixed_size: 16384
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
    .private_segment_fixed_size: 0
    .sgpr_count:     48
    .sgpr_spill_count: 0
    .symbol:         gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw.kd
    .vgpr_count:     128
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
