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
	s_mov_b32 s1, 0xffedf0
	s_movk_i32 s2, 0xa20
	v_lshrrev_b32_e32 v8, 7, v0
	v_lshrrev_b32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v1, 11, v1
	v_add_u32_e32 v4, v1, v2
	v_mov_b32_e32 v1, s6
	v_mad_i32_i24 v1, v4, s1, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_lshrrev_b32_e32 v2, 29, v2
	v_add_u32_e32 v2, v1, v2
	v_ashrrev_i32_e32 v3, 3, v2
	v_and_b32_e32 v2, -8, v2
	v_sub_u32_e32 v1, v1, v2
	v_lshlrev_b32_e32 v2, 8, v1
	v_lshlrev_b32_e32 v1, 7, v3
	v_and_b32_e32 v3, 0xfc, v0
	v_sub_u32_e32 v6, v0, v3
	v_or_b32_e32 v5, v2, v3
	v_and_b32_e32 v3, 0x80, v0
	v_sub_u32_e32 v9, v0, v3
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshrrev_b32_e32 v10, 25, v10
	v_add_u32_e32 v10, v9, v10
	v_ashrrev_i32_e32 v11, 7, v10
	v_mul_i32_i24_e32 v12, s2, v4
	v_lshlrev_b32_e32 v11, 3, v11
	v_lshl_or_b32 v12, v8, 4, v12
	v_add_u32_e32 v12, v12, v11
	s_mov_b32 s1, 0x38e38e39
	v_mul_hi_i32 v13, v12, s1
	v_add_u32_e32 v14, v5, v4
	v_and_b32_e32 v4, 0xffffff80, v10
	v_sub_u32_e32 v4, v9, v4
	v_lshrrev_b32_e32 v5, 31, v13
	v_ashrrev_i32_e32 v10, 1, v13
	v_add_u32_e32 v5, v10, v5
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	v_add_u32_e32 v9, v4, v1
	s_load_dwordx2 s[20:21], s[4:5], 0x8
	v_mul_lo_u32 v15, v14, s2
	v_mul_lo_u32 v10, v5, -9
	v_mul_hi_i32 v13, v9, s0
	v_lshlrev_b32_e32 v7, 3, v6
	s_mov_b32 s23, 0x27000
	s_mov_b32 s22, -1
	v_add_lshl_u32 v7, v15, v7, 1
	s_movk_i32 s1, 0xffc
	v_add_u32_e32 v12, v10, v12
	s_mov_b32 s0, 0x55555556
	v_lshrrev_b32_e32 v10, 31, v13
	v_ashrrev_i32_e32 v13, 7, v13
	v_mul_hi_i32 v30, v12, s0
	v_add_u32_e32 v10, v13, v10
	s_mov_b32 s0, 0xfffedf
	v_mad_i32_i24 v13, v10, s0, v9
	v_mul_i32_i24_e32 v17, 0x56220, v10
	v_lshl_add_u32 v33, v8, 11, v11
	s_mov_b32 s0, 0x78787879
	v_mul_hi_i32 v16, v13, s0
	v_lshrrev_b32_e32 v37, 31, v30
	v_lshlrev_b32_e32 v34, 4, v0
	s_movk_i32 s0, 0xffef
	v_lshrrev_b32_e32 v15, 31, v16
	v_ashrrev_i32_e32 v16, 3, v16
	v_add_u32_e32 v15, v16, v15
	v_and_b32_e32 v35, 0xfc0, v34
	v_mul_lo_u32 v38, v15, s0
	v_lshl_or_b32 v36, v6, 12, v35
	s_movk_i32 s24, 0x4c9
	v_mul_lo_u32 v31, v5, s24
	s_load_dwordx2 s[16:17], s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	buffer_load_dwordx4 v[18:21], v7, s[20:23], s1 offen offset:1092
	s_movk_i32 s1, 0x1ffc
	s_mov_b32 s27, s7
	s_movk_i32 s26, 0x2000
	v_add_u32_e32 v6, s26, v36
	v_lshlrev_b32_e32 v32, 3, v4
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
	buffer_load_dwordx4 v[22:25], v7, s[20:23], s1 offen offset:2180
	s_movk_i32 s1, 0x2ffc
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
	v_accvgpr_write_b32 a127, 0
	v_accvgpr_write_b32 a126, 0
	buffer_load_dwordx4 v[8:11], v7, s[20:23], 0 offen
	buffer_load_dwordx4 v[26:29], v7, s[20:23], s1 offen offset:3268
	v_add_u32_e32 v7, v30, v37
	v_mul_lo_u32 v16, v7, -3
	v_lshl_add_u32 v15, v15, 1, v7
	v_mul_lo_u32 v39, v15, 35
	v_accvgpr_write_b32 a125, 0
	v_add_u32_e32 v15, v16, v12
	v_add_lshl_u32 v12, v38, v13, 1
	v_add3_u32 v13, v17, v31, v15
	v_add3_u32 v16, v13, v39, v12
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[12:13], 1, v[16:17]
	v_accvgpr_write_b32 a124, 0
	v_accvgpr_write_b32 a123, 0
	v_accvgpr_write_b32 a122, 0
	v_accvgpr_write_b32 a121, 0
	v_accvgpr_write_b32 a120, 0
	v_accvgpr_write_b32 a119, 0
	v_accvgpr_write_b32 a118, 0
	v_accvgpr_write_b32 a117, 0
	v_accvgpr_write_b32 a116, 0
	v_accvgpr_write_b32 a115, 0
	v_accvgpr_write_b32 a114, 0
	v_accvgpr_write_b32 a113, 0
	v_accvgpr_write_b32 a112, 0
	v_accvgpr_write_b32 a111, 0
	v_accvgpr_write_b32 a110, 0
	v_accvgpr_write_b32 a109, 0
	v_accvgpr_write_b32 a108, 0
	v_accvgpr_write_b32 a107, 0
	global_load_ushort v17, v[12:13], s[18:19]
	v_accvgpr_write_b32 a106, 0
	v_accvgpr_write_b32 a105, 0
	v_accvgpr_write_b32 a104, 0
	v_accvgpr_write_b32 a103, 0
	v_accvgpr_write_b32 a102, 0
	v_accvgpr_write_b32 a101, 0
	v_accvgpr_write_b32 a100, 0
	v_accvgpr_write_b32 a99, 0
	v_accvgpr_write_b32 a98, 0
	v_accvgpr_write_b32 a97, 0
	v_accvgpr_write_b32 a96, 0
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
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a33, 0
	v_accvgpr_write_b32 a32, 0
	v_accvgpr_write_b32 a95, 0
	v_accvgpr_write_b32 a94, 0
	v_accvgpr_write_b32 a93, 0
	v_accvgpr_write_b32 a92, 0
	v_accvgpr_write_b32 a91, 0
	s_waitcnt vmcnt(2)
	ds_write_b128 v36, v[8:11] offset:8192
	ds_write_b128 v36, v[18:21] offset:8208
	ds_write_b128 v36, v[22:25] offset:8224
	s_waitcnt vmcnt(1)
	ds_write_b128 v36, v[26:29] offset:8240
	v_add_u32_e32 v8, 1, v15
	v_add_u32_e32 v9, -2, v15
	v_cmp_gt_i32_e32 vcc, 3, v8
	v_cndmask_b32_e32 v9, v9, v8, vcc
	v_cmp_lt_i32_e32 vcc, 2, v8
	v_addc_co_u32_e64 v8, s[0:1], v30, v37, vcc
	v_addc_co_u32_e64 v10, s[0:1], -3, v7, vcc
	v_cmp_gt_i32_e64 s[0:1], 3, v8
	v_cndmask_b32_e64 v8, v10, v8, s[0:1]
	v_sub_u32_e32 v8, v8, v7
	v_mul_lo_u32 v8, v8, 35
	v_sub_u32_e32 v9, v9, v15
	v_mov_b32_e32 v18, s24
	v_add_u32_e32 v19, v9, v16
	v_cndmask_b32_e64 v10, v18, 0, s[0:1]
	v_add_u32_e32 v20, v8, v19
	v_add_u32_e32 v8, v20, v10
	v_add_u32_e32 v10, 2, v15
	v_add_u32_e32 v11, -1, v15
	v_cmp_gt_i32_e64 s[2:3], 3, v10
	v_cndmask_b32_e64 v11, v11, v10, s[2:3]
	v_cmp_lt_i32_e64 s[2:3], 2, v10
	v_addc_co_u32_e64 v10, s[4:5], v30, v37, s[2:3]
	v_addc_co_u32_e64 v21, s[4:5], -3, v7, s[2:3]
	v_cmp_gt_i32_e64 s[4:5], 3, v10
	v_cndmask_b32_e64 v10, v21, v10, s[4:5]
	v_sub_u32_e32 v10, v10, v7
	v_mul_lo_u32 v10, v10, 35
	v_sub_u32_e32 v11, v11, v15
	v_add_u32_e32 v22, v11, v16
	v_cndmask_b32_e64 v21, v18, 0, s[4:5]
	v_add_u32_e32 v23, v10, v22
	v_add_u32_e32 v10, v23, v21
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_add_u32_e32 v21, 1, v7
	v_add_u32_e32 v24, -2, v7
	v_cmp_gt_i32_e64 s[6:7], 3, v21
	v_cndmask_b32_e64 v24, v24, v21, s[6:7]
	v_sub_u32_e32 v24, v24, v7
	v_mul_lo_u32 v24, v24, 35
	v_addc_co_u32_e64 v28, s[10:11], 1, v7, s[2:3]
	v_add_u32_e32 v30, 2, v7
	v_cmp_gt_i32_e64 s[12:13], 3, v30
	v_add_u32_e32 v24, v16, v24
	v_addc_co_u32_e64 v36, s[14:15], 2, v7, vcc
	v_accvgpr_write_b32 a90, 0
	v_accvgpr_write_b32 a89, 0
	v_accvgpr_write_b32 a88, 0
	v_accvgpr_write_b32 a87, 0
	v_accvgpr_write_b32 a86, 0
	v_accvgpr_write_b32 a85, 0
	v_accvgpr_write_b32 a84, 0
	v_accvgpr_write_b32 a83, 0
	v_accvgpr_write_b32 a82, 0
	v_accvgpr_write_b32 a81, 0
	v_accvgpr_write_b32 a80, 0
	v_accvgpr_write_b32 a79, 0
	v_accvgpr_write_b32 a78, 0
	v_accvgpr_write_b32 a77, 0
	v_accvgpr_write_b32 a76, 0
	v_accvgpr_write_b32 a75, 0
	v_accvgpr_write_b32 a74, 0
	global_load_ushort v25, v[8:9], s[18:19]
	global_load_ushort v26, v[10:11], s[18:19]
	v_addc_co_u32_e64 v10, s[8:9], -3, v21, vcc
	v_addc_co_u32_e64 v9, s[8:9], 1, v7, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v9
	v_cndmask_b32_e64 v9, v10, v9, s[8:9]
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v8, v18, 0, s[6:7]
	v_cndmask_b32_e64 v11, v18, 0, s[8:9]
	v_add_u32_e32 v8, v24, v8
	v_add_u32_e32 v27, v10, v19
	v_add_u32_e32 v10, v27, v11
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_addc_co_u32_e64 v21, s[10:11], -3, v21, s[2:3]
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_cmp_gt_i32_e64 s[10:11], 3, v28
	v_cndmask_b32_e64 v21, v21, v28, s[10:11]
	v_sub_u32_e32 v21, v21, v7
	v_mul_lo_u32 v21, v21, 35
	v_addc_co_u32_e32 v37, vcc, -3, v30, vcc
	v_cmp_gt_i32_e32 vcc, 3, v36
	v_cndmask_b32_e32 v36, v37, v36, vcc
	v_add_u32_e32 v21, v21, v22
	v_sub_u32_e32 v36, v36, v7
	v_mul_lo_u32 v36, v36, 35
	v_accvgpr_write_b32 a73, 0
	v_accvgpr_write_b32 a72, 0
	v_accvgpr_write_b32 a71, 0
	v_accvgpr_write_b32 a70, 0
	v_accvgpr_write_b32 a69, 0
	v_accvgpr_write_b32 a68, 0
	v_accvgpr_write_b32 a67, 0
	v_accvgpr_write_b32 a66, 0
	v_accvgpr_write_b32 a65, 0
	v_accvgpr_write_b32 a64, 0
	s_mov_b32 s25, 0
	s_mov_b32 s32, s27
	s_nop 0
	s_nop 0
	global_load_ushort v28, v[8:9], s[18:19]
	global_load_ushort v29, v[10:11], s[18:19]
	v_add_u32_e32 v9, -1, v7
	v_cndmask_b32_e64 v9, v9, v30, s[12:13]
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v8, v18, 0, s[10:11]
	v_cndmask_b32_e64 v11, v18, 0, s[12:13]
	v_add_u32_e32 v8, v21, v8
	v_add_u32_e32 v31, v16, v10
	v_add_u32_e32 v10, v31, v11
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v37, v[8:9], s[18:19]
	global_load_ushort v38, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v18, 0, vcc
	v_addc_co_u32_e64 v9, vcc, 2, v7, s[2:3]
	v_addc_co_u32_e64 v10, vcc, -3, v30, s[2:3]
	v_cmp_gt_i32_e32 vcc, 3, v9
	v_cndmask_b32_e32 v9, v10, v9, vcc
	v_sub_u32_e32 v9, v9, v7
	v_mul_lo_u32 v10, v9, 35
	v_cndmask_b32_e64 v11, v18, 0, vcc
	v_add3_u32 v8, v8, v19, v36
	v_ashrrev_i32_e32 v9, 31, v8
	v_add3_u32 v10, v11, v22, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v22, v[8:9], s[18:19]
	global_load_ushort v30, v[10:11], s[18:19]
	global_load_ushort v36, v[12:13], s[18:19] offset:2450
	v_mov_b32_e32 v12, 0x992
	v_cndmask_b32_e64 v8, v12, v18, s[0:1]
	v_cndmask_b32_e64 v10, v12, v18, s[4:5]
	v_add_u32_e32 v8, v20, v8
	v_add_u32_e32 v10, v23, v10
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_movk_i32 s0, 0x1440
	v_add_lshl_u32 v13, v33, v32, 1
	v_mul_lo_u32 v14, v14, s0
	s_nop 0
	s_nop 0
	global_load_ushort v23, v[8:9], s[18:19]
	global_load_ushort v39, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v12, v18, s[6:7]
	v_cndmask_b32_e64 v10, v12, v18, s[8:9]
	v_add_u32_e32 v8, v24, v8
	v_add_u32_e32 v10, v27, v10
	v_ashrrev_i32_e32 v9, 31, v8
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_add_u32_e32 v14, v14, v34
	v_sub_u32_e32 v14, v14, v35
	v_add_u32_e32 v14, 0x3d00, v14
	s_nop 0
	s_nop 0
	global_load_ushort v24, v[8:9], s[18:19]
	global_load_ushort v27, v[10:11], s[18:19]
	v_cndmask_b32_e64 v8, v12, v18, s[10:11]
	v_cndmask_b32_e64 v10, v12, v18, s[12:13]
	v_add_u32_e32 v8, v21, v8
	v_ashrrev_i32_e32 v9, 31, v8
	v_add_u32_e32 v10, v31, v10
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	s_nop 0
	s_nop 0
	global_load_ushort v12, v[8:9], s[18:19]
	global_load_ushort v21, v[10:11], s[18:19]
	v_mov_b32_e32 v9, 0xffff
	s_waitcnt vmcnt(11)
	v_and_b32_e32 v8, v9, v29
	s_waitcnt vmcnt(10)
	v_lshl_or_b32 v19, v37, 16, v8
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v8, v9, v38
	s_waitcnt vmcnt(8)
	v_lshl_or_b32 v20, v22, 16, v8
	v_and_b32_e32 v8, v9, v26
	v_lshl_or_b32 v18, v28, 16, v8
	v_and_b32_e32 v8, v9, v17
	v_lshl_or_b32 v17, v25, 16, v8
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v8, v9, v30
	ds_write_b128 v13, v[17:20]
	s_waitcnt vmcnt(6)
	v_lshl_or_b32 v17, v36, 16, v8
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, v9, v12
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v20, v21, 16, v8
	v_and_b32_e32 v8, v9, v24
	v_lshl_or_b32 v19, v27, 16, v8
	v_and_b32_e32 v8, v9, v23
	v_lshl_or_b32 v18, v39, 16, v8
	v_and_b32_e32 v8, 63, v0
	v_lshlrev_b32_e32 v10, 4, v8
	ds_write_b128 v13, v[17:20] offset:2048
	v_lshl_or_b32 v17, v3, 4, v10
	v_lshl_or_b32 v11, v4, 4, v10
	v_or_b32_e32 v12, s26, v17
	v_or_b32_e32 v10, 0x2400, v17
BB0_1:                                  ; %if.then.i29.i.i.i.i.i.i.i1110.i.i
                                        ; =>This Inner Loop Header: Depth=1
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[17:20], v12
	ds_read_b128 v[21:24], v10
	ds_read_b128 v[25:28], v11
	ds_read_b128 v[29:32], v11 offset:2048
	ds_read_b128 v[33:36], v12 offset:4096
	ds_read_b128 v[37:40], v10 offset:4096
	v_add_u32_e32 v70, 0xffffc340, v14
	v_add_u32_e32 v71, 0xffffd780, v14
	v_add_u32_e32 v95, 0xffffebc0, v14
	s_waitcnt lgkmcnt(3)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[96:127], v[17:18], v[25:26], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[21:22], v[25:26], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[21:22], v[25:26], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[17:18], v[25:26], a[0:31] cbsz:1
	s_add_i32 s25, s25, 4
	s_cmpk_lt_u32 s25, 0x140
	v_add_u32_e32 v17, 2, v15
	v_cmp_lt_i32_e32 vcc, 2, v17
	v_add_u32_e32 v18, -1, v15
	v_sub_u32_e32 v15, v16, v15
	v_mov_b32_e32 v16, s24
	ds_read_b128 v[45:48], v12 offset:8192
	ds_read_b128 v[49:52], v12 offset:12288
	ds_read_b128 v[53:56], v11 offset:4096
	ds_read_b128 v[57:60], v11 offset:6144
	s_nop 0

s_setprio(0)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[96:127], v[19:20], v[27:28], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[23:24], v[27:28], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[23:24], v[27:28], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[19:20], v[27:28], a[0:31] cbsz:1
	v_addc_co_u32_e64 v19, s[0:1], 1, v7, vcc
	v_cmp_gt_i32_e64 s[0:1], 3, v17
	v_cndmask_b32_e64 v17, v18, v17, s[0:1]
	v_addc_co_u32_e32 v18, vcc, -2, v7, vcc
	v_cmp_gt_i32_e32 vcc, 3, v19
	v_add_u32_e32 v28, 2, v17
	v_add_u32_e32 v27, 1, v17
	v_cndmask_b32_e32 v69, v18, v19, vcc
	v_cndmask_b32_e64 v26, 4, 3, vcc
	v_add_u32_e32 v72, -1, v17
	v_cmp_gt_i32_e32 vcc, 3, v27
	v_cmp_gt_i32_e64 s[0:1], 3, v28

s_setprio(0)
	v_add_u32_e32 v76, 1, v69
	v_add_u32_e32 v80, 2, v69
	v_cmp_gt_i32_e64 s[6:7], 3, v76
	v_add_u32_e32 v77, -2, v69
	v_add_u32_e32 v5, v26, v5
	s_waitcnt lgkmcnt(5)
	v_mfma_f32_32x32x4f16 a[0:31], v[33:34], v[29:30], a[0:31] cbsz:1
	v_mul_u32_u24_e32 v73, s24, v26
	v_sub_u32_e32 v26, v69, v7
	v_add_u32_e32 v81, -1, v69
	v_cmp_gt_i32_e64 s[10:11], 3, v80
	v_mul_lo_u32 v26, v26, 35
	v_add_u32_e32 v85, 1, v5
	v_add_u32_e32 v86, 2, v5
	v_cndmask_b32_e64 v89, v16, 0, s[6:7]
	v_cndmask_b32_e64 v92, v86, v85, s[6:7]
	v_mov_b32_e32 v7, v69
	ds_read_b128 v[22:25], v10 offset:8192
	ds_read_b128 v[41:44], v10 offset:12288
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[61:64], v70, s[20:23], 0 offen

s_setprio(1)
v_mfma_f32_32x32x4f16 a[96:127], v[33:34], v[29:30], a[96:127] cbsz:1 abid:1
	
	buffer_load_dwordx4 v[65:68], v71, s[20:23], 0 offen
	v_add_u32_e32 v71, -2, v17
	v_cndmask_b32_e32 v71, v71, v27, vcc
	v_cmp_lt_i32_e32 vcc, 2, v28
	v_cndmask_b32_e64 v28, v72, v28, s[0:1]
	v_cmp_lt_i32_e64 s[0:1], 2, v27
	v_addc_co_u32_e64 v74, s[2:3], 0, v69, vcc
	v_addc_co_u32_e64 v78, s[2:3], 1, v69, s[0:1]
	v_addc_co_u32_e64 v27, s[2:3], 0, v69, s[0:1]
	v_addc_co_u32_e64 v72, s[2:3], -3, v69, s[0:1]
	v_addc_co_u32_e64 v75, s[2:3], -3, v69, vcc
	v_addc_co_u32_e64 v79, s[2:3], 1, v69, vcc


	
	v_addc_co_u32_e64 v82, s[2:3], 2, v69, s[0:1]
	v_addc_co_u32_e64 v83, s[2:3], 2, v69, vcc
	v_cmp_gt_i32_e64 s[2:3], 3, v27

s_setprio(0)
s_waitcnt lgkmcnt(4)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[37:38], v[29:30], a[32:63] cbsz:1

	v_cmp_gt_i32_e64 s[4:5], 3, v74
	v_cndmask_b32_e64 v27, v72, v27, s[2:3]
	v_cndmask_b32_e64 v72, v75, v74, s[4:5]
	v_cndmask_b32_e64 v74, v77, v76, s[6:7]
	v_addc_co_u32_e64 v75, s[8:9], -3, v76, s[0:1]
	v_addc_co_u32_e64 v76, s[8:9], -3, v76, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v79
	v_cndmask_b32_e64 v77, v81, v80, s[10:11]
	v_addc_co_u32_e64 v81, s[0:1], -3, v80, s[0:1]
	v_addc_co_u32_e32 v80, vcc, -3, v80, vcc
	v_cmp_gt_i32_e64 s[12:13], 3, v78
	v_cmp_gt_i32_e64 s[0:1], 3, v82
	v_cmp_gt_i32_e32 vcc, 3, v83
	v_cndmask_b32_e64 v75, v75, v78, s[12:13]
	v_cndmask_b32_e64 v76, v76, v79, s[8:9]
s_setprio(0)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[64:95], v[37:38], v[29:30], a[64:95] cbsz:1 abid:1
	v_sub_u32_e32 v27, v27, v69
	v_sub_u32_e32 v72, v72, v69
	v_sub_u32_e32 v74, v74, v69
	v_cndmask_b32_e64 v81, v81, v82, s[0:1]
	v_cndmask_b32_e32 v80, v80, v83, vcc
	v_cndmask_b32_e64 v87, v16, 0, s[2:3]
	v_cndmask_b32_e64 v88, v16, 0, s[4:5]
	v_cndmask_b32_e64 v78, v16, 0, s[12:13]
	v_cndmask_b32_e64 v90, v16, 0, s[8:9]
	v_sub_u32_e32 v77, v77, v69
	v_cndmask_b32_e64 v79, v16, 0, s[10:11]
	v_cndmask_b32_e64 v82, v16, 0, s[0:1]
	v_cndmask_b32_e64 v83, v16, 0, vcc
	v_cndmask_b32_e64 v16, v86, v85, s[2:3]
	v_cndmask_b32_e64 v91, v86, v85, s[4:5]
s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[0:31], v[35:36], v[31:32], a[0:31] cbsz:1
	v_cndmask_b32_e64 v93, v86, v85, s[12:13]
	v_cndmask_b32_e64 v94, v86, v85, s[8:9]
	v_cndmask_b32_e64 v85, v86, v85, s[10:11]
	v_mul_lo_u32 v86, v27, 35
	v_sub_u32_e32 v27, v75, v69
	v_sub_u32_e32 v75, v76, v69
	v_sub_u32_e32 v85, v85, v5
	v_add_u32_e32 v70, v15, v17
	v_mul_lo_u32 v76, v77, 35
	v_sub_u32_e32 v77, v81, v69
	v_sub_u32_e32 v81, v92, v5
	v_sub_u32_e32 v92, v94, v5
	v_sub_u32_e32 v69, v80, v69
	v_sub_u32_e32 v80, v91, v5
	v_sub_u32_e32 v91, v93, v5
s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[96:127], v[35:36], v[31:32], a[96:127] cbsz:1 abid:1
	v_sub_u32_e32 v16, v16, v5
	v_mul_lo_u32 v72, v72, 35
	v_mul_lo_u32 v74, v74, 35
	v_mul_lo_u32 v93, v27, 35
	v_mul_lo_u32 v75, v75, 35
	v_mul_lo_u32 v96, v16, s24
	v_add3_u32 v16, v70, v73, v26
	v_mul_lo_u32 v94, v69, 35
	v_mul_lo_u32 v77, v77, 35
	v_mul_lo_u32 v80, v80, s24
	v_mul_lo_u32 v81, v81, s24
	v_mul_lo_u32 v91, v91, s24
	v_mul_lo_u32 v92, v92, s24
	v_mul_lo_u32 v85, v85, s24
	v_sub_u32_e32 v84, v28, v17
s_setprio(0)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[39:40], v[31:32], a[32:63] cbsz:1
	v_sub_u32_e32 v69, v16, v17
	v_mov_b32_e32 v15, v17
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[26:27], 1, v[16:17]
	v_add_u32_e32 v17, v69, v71
	v_add_u32_e32 v28, v69, v28
	v_add_u32_e32 v70, v84, v16
	v_add_u32_e32 v74, v74, v16
	v_add_u32_e32 v76, v76, v16
	v_add_u32_e32 v84, v86, v17
	v_add_u32_e32 v86, v72, v28
	v_add_u32_e32 v93, v93, v17
	v_add_u32_e32 v28, v75, v28
	v_add_u32_e32 v71, v76, v79
	v_add3_u32 v73, v17, v82, v77
s_setprio(0)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[64:95], v[39:40], v[31:32], a[64:95] cbsz:1 abid:1
	v_add_u32_e32 v69, v74, v89
	v_add3_u32 v75, v70, v83, v94
	v_add_u32_e32 v77, v74, v81
	v_add_u32_e32 v79, v76, v85
	v_add_u32_e32 v81, v84, v87
	v_add_u32_e32 v85, v93, v78
	v_add_u32_e32 v89, v86, v80
	v_add_u32_e32 v83, v86, v88
	v_add_u32_e32 v87, v28, v90
	v_add_u32_e32 v91, v93, v91
	v_add_u32_e32 v93, v28, v92




	v_ashrrev_i32_e32 v70, 31, v69
	v_ashrrev_i32_e32 v72, 31, v71
	v_ashrrev_i32_e32 v74, 31, v73
	v_ashrrev_i32_e32 v76, 31, v75
s_setprio(0)
s_waitcnt lgkmcnt(3)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[45:46], v[53:54], a[0:31] cbsz:1
	v_ashrrev_i32_e32 v78, 31, v77
	v_ashrrev_i32_e32 v80, 31, v79
	v_ashrrev_i32_e32 v82, 31, v81
	v_ashrrev_i32_e32 v86, 31, v85
	v_ashrrev_i32_e32 v88, 31, v87
	v_ashrrev_i32_e32 v90, 31, v89
	v_ashrrev_i32_e32 v92, 31, v91
	v_ashrrev_i32_e32 v94, 31, v93
	v_lshlrev_b64 v[69:70], 1, v[69:70]
	v_lshlrev_b64 v[71:72], 1, v[71:72]
	v_lshlrev_b64 v[73:74], 1, v[73:74]
	v_lshlrev_b64 v[75:76], 1, v[75:76]
	v_lshlrev_b64 v[77:78], 1, v[77:78]
	v_lshlrev_b64 v[79:80], 1, v[79:80]
	v_lshlrev_b64 v[81:82], 1, v[81:82]
s_setprio(0)


s_setprio(1)
		v_mfma_f32_32x32x4f16 a[96:127], v[45:46], v[53:54], a[96:127] cbsz:1 abid:1
	v_lshlrev_b64 v[85:86], 1, v[85:86]
	v_lshlrev_b64 v[87:88], 1, v[87:88]
	v_lshlrev_b64 v[89:90], 1, v[89:90]
	v_lshlrev_b64 v[91:92], 1, v[91:92]
	v_lshlrev_b64 v[93:94], 1, v[93:94]
		s_nop 0
	s_nop 0
	global_load_ushort v17, v[26:27], s[18:19]
	global_load_ushort v97, v[26:27], s[18:19] offset:2450
	v_add_u32_e32 v26, v84, v96
	v_ashrrev_i32_e32 v84, 31, v83
	v_ashrrev_i32_e32 v27, 31, v26
	v_lshlrev_b64 v[83:84], 1, v[83:84]
	v_lshlrev_b64 v[26:27], 1, v[26:27]
	s_nop 0
s_setprio(0)
s_waitcnt lgkmcnt(1)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[22:23], v[53:54], a[32:63] cbsz:1

	s_nop 0
	buffer_load_dwordx4 v[18:21], v14, s[20:23], 0 offen
	global_load_ushort v99, v[69:70], s[18:19]
	global_load_ushort v102, v[71:72], s[18:19]
	global_load_ushort v103, v[73:74], s[18:19]
	global_load_ushort v104, v[75:76], s[18:19]
	global_load_ushort v107, v[77:78], s[18:19]
	global_load_ushort v110, v[79:80], s[18:19]
	global_load_ushort v96, v[81:82], s[18:19]
	global_load_ushort v98, v[83:84], s[18:19]
	global_load_ushort v100, v[85:86], s[18:19]
	global_load_ushort v101, v[87:88], s[18:19]
	global_load_ushort v105, v[26:27], s[18:19]
	global_load_ushort v106, v[89:90], s[18:19]
	global_load_ushort v108, v[91:92], s[18:19]
s_setprio(0)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[64:95], v[22:23], v[53:54], a[64:95] cbsz:1 abid:1
	global_load_ushort v109, v[93:94], s[18:19]
	v_mfma_f32_32x32x4f16 a[0:31], v[47:48], v[55:56], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[47:48], v[55:56], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[24:25], v[55:56], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[24:25], v[55:56], a[64:95] cbsz:1 abid:1
	v_add_u32_e32 v14, 64, v14
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[26:29], v95, s[20:23], 0 offen
s_setprio(0)
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[49:50], v[57:58], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[49:50], v[57:58], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[41:42], v[57:58], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[41:42], v[57:58], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[51:52], v[59:60], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[51:52], v[59:60], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[43:44], v[59:60], a[32:63] cbsz:1

	v_mfma_f32_32x32x4f16 a[64:95], v[43:44], v[59:60], a[64:95] cbsz:1 abid:1
	v_and_b32_e32 v17, v9, v17
	ds_write_b128 v6, v[18:21] offset:48
	ds_write_b128 v6, v[61:64]
	ds_write_b128 v6, v[65:68] offset:16
	v_and_b32_e32 v22, v9, v107
	v_lshl_or_b32 v17, v96, 16, v17
	v_and_b32_e32 v24, v9, v100

	v_and_b32_e32 v25, v9, v105
s_setprio(0)
	v_lshl_or_b32 v23, v108, 16, v22
	v_lshl_or_b32 v22, v106, 16, v25
	ds_write_b128 v6, v[26:29] offset:32
	v_and_b32_e32 v18, v9, v102
	v_and_b32_e32 v19, v9, v104
	v_lshl_or_b32 v20, v103, 16, v18
	v_and_b32_e32 v18, v9, v98
	v_and_b32_e32 v26, v9, v109
	v_lshl_or_b32 v21, v97, 16, v19
	v_lshl_or_b32 v19, v101, 16, v24
	v_lshl_or_b32 v18, v99, 16, v18
	v_lshl_or_b32 v24, v110, 16, v26
	ds_write_b128 v13, v[17:20]
	ds_write_b128 v13, v[21:24] offset:2048
	s_cbranch_scc1 BB0_1
; %bb.2:                                ; %_ZNK2ck53GridwiseBatchedGemmTransposedANormalBNormalCXdlops_v2ILi4624ELi256EDF16_fDF16_KNS_27TransformedTensorDescriptorINS_22NativeTensorDescriptorIJNS_15NativeDimensionILi2048ELi2592EEENS3_ILi2592ELi1EEEEEENS_5TupleIJNS_11PassThroughILi2048EEENS_7UnMergeINS_8SequenceIJLi1ELi324ELi8EEEEEEEEENS7_IJNSB_IJLi0EEEENSB_IJLi1EEEEEEENS7_IJNSB_IJLi2EEEENSB_IJLi0ELi1ELi3EEEEEEEEEKNS1_INS1_INS1_INS1_INS2_IJNS3_ILi256ELi352800EEENS3_ILi288ELi1225EEENS3_ILi35ELi35EEENS3_ILi35ELi1EEEEEENS7_IJNS8_ILi256EEENS8_ILi288EEENS_3PadINSB_IJLi35ELi35EEEENSB_IJLi0ELi0EEEESW_Lb0EEEEEENS7_IJSF_SG_NSB_IJLi2ELi3EEEEEEES10_EENS7_IJSS_ST_NS_5EmbedILi35ENSB_IJLi3ELi17EEEENSB_IJLi1ELi2ELi0EEEELb0EEES15_EEENS7_IJSF_SG_SI_NSB_IJLi3EEEEEEENS7_IJSF_SG_SZ_NSB_IJLi4ELi5EEEEEEEEENS7_IJNS_5MergeINSB_IJLi288ELi3ELi3EEEEEENS1C_INSB_IJLi256ELi17ELi17EEEEEEEEENS7_IJNSB_IJLi1ELi2ELi4EEEENSB_IJLi0ELi3ELi5EEEEEEESH_EENS7_IJSD_NS8_ILi73984EEEEEESH_NS7_IJSJ_SI_EEEEEKNS1_INS2_IJNS3_ILi1ELi0EEENS3_ILi256ELi591872EEENS3_ILi2048ELi289EEENS3_ILi17ELi17EEENS3_ILi
	s_waitcnt lgkmcnt(0)
	s_barrier
	ds_read_b128 v[13:16], v12
	ds_read_b128 v[17:20], v12 offset:4096
	ds_read_b128 v[21:24], v11
	ds_read_b128 v[25:28], v11 offset:2048
	ds_read_b128 v[29:32], v10
	ds_read_b128 v[33:36], v10 offset:4096
	v_and_b32_e32 v0, 32, v0
	v_add_u32_e32 v2, v2, v3
	v_lshrrev_b32_e32 v5, 3, v8
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_32x32x4f16 a[0:31], v[13:14], v[21:22], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[13:14], v[21:22], a[96:127] cbsz:1 abid:1
	s_mov_b32 s4, 0x71625345
	s_movk_i32 s3, 0x121
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[29:30], v[21:22], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[29:30], v[21:22], a[64:95] cbsz:1 abid:1
	s_mov_b32 s5, 0x90800
	s_movk_i32 s2, 0x1000
	s_movk_i32 s1, 0x2000
	s_movk_i32 s0, 0x3000
	v_sub_u32_e32 v0, v8, v0
	v_and_or_b32 v8, v5, 4, v2
	v_add3_u32 v0, v0, v4, v1
	v_ashrrev_i32_e32 v1, 31, v8
	v_lshrrev_b32_e32 v1, 29, v1
	v_mul_hi_i32 v2, v0, s4
	v_mfma_f32_32x32x4f16 a[0:31], v[15:16], v[23:24], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[15:16], v[23:24], a[96:127] cbsz:1 abid:1
	v_add_u32_e32 v1, v8, v1
	v_lshrrev_b32_e32 v6, 31, v2
	v_mfma_f32_32x32x4f16 a[32:63], v[31:32], v[23:24], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[31:32], v[23:24], a[64:95] cbsz:1 abid:1
	ds_read_b128 v[13:16], v12 offset:8192
	ds_read_b128 v[21:24], v12 offset:12288
	ds_read_b128 v[29:32], v11 offset:4096
	ds_read_b128 v[37:40], v11 offset:6144
	ds_read_b128 v[41:44], v10 offset:8192
	ds_read_b128 v[9:12], v10 offset:12288
	v_ashrrev_i32_e32 v2, 7, v2
	v_mov_b32_e32 v3, s17
	v_mfma_f32_32x32x4f16 a[0:31], v[17:18], v[25:26], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[17:18], v[25:26], a[96:127] cbsz:1 abid:1
	v_add_u32_e32 v17, 32, v0
	v_mul_hi_i32 v4, v17, s4
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_32x32x4f16 a[32:63], v[33:34], v[25:26], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[33:34], v[25:26], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[19:20], v[27:28], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[19:20], v[27:28], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[35:36], v[27:28], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[35:36], v[27:28], a[64:95] cbsz:1 abid:1
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_32x32x4f16 a[0:31], v[13:14], v[29:30], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[13:14], v[29:30], a[96:127] cbsz:1 abid:1
	v_and_b32_e32 v13, -8, v1
	v_sub_u32_e32 v1, v8, v13
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[41:42], v[29:30], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[41:42], v[29:30], a[64:95] cbsz:1 abid:1
	v_ashrrev_i32_e32 v5, 31, v1
	v_lshrrev_b32_e32 v5, 30, v5
	v_add_u32_e32 v14, v2, v6
	v_add_u32_e32 v1, v1, v5
	v_sub_u32_e32 v5, v13, v14
	v_and_b32_e32 v18, -4, v1
	v_add_u32_e32 v1, v5, v18
	v_mul_lo_u32 v1, v1, s3
	v_lshrrev_b32_e32 v2, 31, v4
	v_ashrrev_i32_e32 v4, 7, v4
	v_mfma_f32_32x32x4f16 a[0:31], v[15:16], v[31:32], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[15:16], v[31:32], a[96:127] cbsz:1 abid:1
	v_mad_i32_i24 v15, v14, s5, v0
	v_add_u32_e32 v0, v1, v15
	v_mfma_f32_32x32x4f16 a[32:63], v[43:44], v[31:32], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[43:44], v[31:32], a[64:95] cbsz:1 abid:1
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_add_u32_e32 v16, v4, v2
	v_add_co_u32_e32 v6, vcc, s16, v0
	v_addc_co_u32_e32 v7, vcc, v3, v1, vcc
	v_add_co_u32_e32 v2, vcc, s2, v6
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	v_add_co_u32_e32 v4, vcc, s1, v6
	v_addc_co_u32_e32 v5, vcc, 0, v7, vcc
	v_add_co_u32_e32 v6, vcc, s0, v6
	v_mfma_f32_32x32x4f16 a[0:31], v[21:22], v[37:38], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[21:22], v[37:38], a[96:127] cbsz:1 abid:1
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[9:10], v[37:38], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[9:10], v[37:38], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[23:24], v[39:40], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[23:24], v[39:40], a[96:127] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[11:12], v[39:40], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[11:12], v[39:40], a[64:95] cbsz:1 abid:1
	s_nop 7
	s_nop 6
	v_accvgpr_read_b32 v9, a0
	v_accvgpr_read_b32 v10, a1
	v_accvgpr_read_b32 v11, a2
	v_accvgpr_read_b32 v12, a3
	v_accvgpr_read_b32 v19, a4
	v_accvgpr_read_b32 v20, a5
	v_accvgpr_read_b32 v21, a6
	v_accvgpr_read_b32 v22, a7
	v_accvgpr_read_b32 v23, a8
	v_accvgpr_read_b32 v24, a9
	v_accvgpr_read_b32 v25, a10
	v_accvgpr_read_b32 v26, a11
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 2, 2), 0
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v19, v19
	v_cvt_f16_f32_e32 v20, v20
	v_cvt_f16_f32_e32 v21, v21
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v23, v23
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v26, v26
	v_accvgpr_read_b32 v27, a12
	v_accvgpr_read_b32 v28, a13
	v_accvgpr_read_b32 v29, a14
	v_accvgpr_read_b32 v30, a15
	v_cvt_f16_f32_e32 v27, v27
	v_cvt_f16_f32_e32 v28, v28
	v_cvt_f16_f32_e32 v29, v29
	v_cvt_f16_f32_e32 v30, v30
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v9, s[16:17]
	global_store_short v[0:1], v10, s[16:17] offset:578
	global_store_short v[0:1], v11, s[16:17] offset:1156
	global_store_short v[0:1], v12, s[16:17] offset:1734
	global_store_short v[2:3], v19, off offset:528
	global_store_short v[2:3], v20, off offset:1106
	global_store_short v[2:3], v21, off offset:1684
	global_store_short v[2:3], v22, off offset:2262
	global_store_short v[4:5], v23, off offset:1056
	global_store_short v[4:5], v24, off offset:1634
	global_store_short v[4:5], v25, off offset:2212
	global_store_short v[4:5], v26, off offset:2790
	v_sub_u32_e32 v0, v13, v16
	v_add_u32_e32 v0, v0, v18
	v_mul_lo_u32 v0, v0, s3
	v_accvgpr_read_b32 v9, a19
	v_mad_i32_i24 v2, v16, s5, v17
	v_accvgpr_read_b32 v1, a16
	v_add_u32_e32 v0, v0, v2
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v9, v9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	v_accvgpr_read_b32 v11, a99
	v_cvt_f16_f32_e32 v11, v11
	s_nop 0
	s_nop 0
	global_store_short v[6:7], v27, off offset:1584
	global_store_short v[6:7], v28, off offset:2162
	global_store_short v[6:7], v29, off offset:2740
	global_store_short v[6:7], v30, off offset:3318
	v_accvgpr_read_b32 v6, a17
	v_accvgpr_read_b32 v7, a18
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v7, s[16:17] offset:1156
	global_store_short v[0:1], v9, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a21
	v_accvgpr_read_b32 v7, a22
	v_accvgpr_read_b32 v9, a23
	v_accvgpr_read_b32 v0, a20
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v9, off offset:2262
	v_accvgpr_read_b32 v6, a25
	v_accvgpr_read_b32 v7, a26
	v_accvgpr_read_b32 v9, a27
	v_accvgpr_read_b32 v0, a24
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v9, off offset:2790
	v_or_b32_e32 v7, 32, v8
	v_ashrrev_i32_e32 v9, 31, v7
	v_lshrrev_b32_e32 v9, 29, v9
	v_add_u32_e32 v9, v7, v9
	v_and_b32_e32 v9, -8, v9
	v_sub_u32_e32 v7, v7, v9
	v_ashrrev_i32_e32 v10, 31, v7
	v_lshrrev_b32_e32 v10, 30, v10
	v_add_u32_e32 v7, v7, v10
	v_accvgpr_read_b32 v0, a28
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_sub_u32_e32 v10, v9, v14
	v_and_b32_e32 v7, -4, v7
	v_accvgpr_read_b32 v5, a30
	v_accvgpr_read_b32 v6, a31
	v_add_u32_e32 v10, v10, v7
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a29
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v10, v10, s3
	v_sub_u32_e32 v9, v9, v16
	v_add_u32_e32 v7, v9, v7
	v_mul_lo_u32 v7, v7, s3
	v_accvgpr_read_b32 v9, a115
	v_cvt_f16_f32_e32 v9, v9
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a97
	v_add_u32_e32 v0, v10, v15
	v_accvgpr_read_b32 v10, a98
	v_accvgpr_read_b32 v1, a96
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v10, s[16:17] offset:1156
	global_store_short v[0:1], v11, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a101
	v_accvgpr_read_b32 v10, a102
	v_accvgpr_read_b32 v11, a103
	v_accvgpr_read_b32 v0, a100
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v10, off offset:1684
	global_store_short v[0:1], v11, off offset:2262
	v_accvgpr_read_b32 v6, a105
	v_accvgpr_read_b32 v10, a106
	v_accvgpr_read_b32 v11, a107
	v_accvgpr_read_b32 v0, a104
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v10, off offset:2212
	global_store_short v[0:1], v11, off offset:2790
	v_accvgpr_read_b32 v0, a108
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_accvgpr_read_b32 v5, a110
	v_accvgpr_read_b32 v6, a111
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a109
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_accvgpr_read_b32 v11, a35
	v_cvt_f16_f32_e32 v11, v11
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a113
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a114
	v_accvgpr_read_b32 v1, a112
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v7, s[16:17] offset:1156
	global_store_short v[0:1], v9, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a117
	v_accvgpr_read_b32 v7, a118
	v_accvgpr_read_b32 v9, a119
	v_accvgpr_read_b32 v0, a116
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v9, off offset:2262
	v_accvgpr_read_b32 v6, a121
	v_accvgpr_read_b32 v7, a122
	v_accvgpr_read_b32 v9, a123
	v_accvgpr_read_b32 v0, a120
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v9, off offset:2790
	v_or_b32_e32 v7, 64, v8
	v_ashrrev_i32_e32 v9, 31, v7
	v_lshrrev_b32_e32 v9, 29, v9
	v_add_u32_e32 v9, v7, v9
	v_and_b32_e32 v9, -8, v9
	v_sub_u32_e32 v7, v7, v9
	v_ashrrev_i32_e32 v10, 31, v7
	v_lshrrev_b32_e32 v10, 30, v10
	v_add_u32_e32 v7, v7, v10
	v_accvgpr_read_b32 v0, a124
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_sub_u32_e32 v10, v9, v14
	v_and_b32_e32 v7, -4, v7
	v_accvgpr_read_b32 v5, a126
	v_accvgpr_read_b32 v6, a127
	v_add_u32_e32 v10, v10, v7
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a125
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v10, v10, s3
	v_sub_u32_e32 v9, v9, v16
	v_add_u32_e32 v7, v9, v7
	v_mul_lo_u32 v7, v7, s3
	v_accvgpr_read_b32 v9, a51
	v_cvt_f16_f32_e32 v9, v9
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a33
	v_add_u32_e32 v0, v10, v15
	v_accvgpr_read_b32 v10, a34
	v_accvgpr_read_b32 v1, a32
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v10, s[16:17] offset:1156
	global_store_short v[0:1], v11, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a37
	v_accvgpr_read_b32 v10, a38
	v_accvgpr_read_b32 v11, a39
	v_accvgpr_read_b32 v0, a36
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v10, off offset:1684
	global_store_short v[0:1], v11, off offset:2262
	v_accvgpr_read_b32 v6, a41
	v_accvgpr_read_b32 v10, a42
	v_accvgpr_read_b32 v11, a43
	v_accvgpr_read_b32 v0, a40
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v10, off offset:2212
	global_store_short v[0:1], v11, off offset:2790
	v_accvgpr_read_b32 v0, a44
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_accvgpr_read_b32 v5, a46
	v_accvgpr_read_b32 v6, a47
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a45
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_accvgpr_read_b32 v10, a67
	v_cvt_f16_f32_e32 v10, v10
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a49
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a50
	v_accvgpr_read_b32 v1, a48
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v7, s[16:17] offset:1156
	global_store_short v[0:1], v9, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a53
	v_accvgpr_read_b32 v7, a54
	v_accvgpr_read_b32 v9, a55
	v_accvgpr_read_b32 v0, a52
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v9, off offset:2262
	v_accvgpr_read_b32 v6, a57
	v_accvgpr_read_b32 v7, a58
	v_accvgpr_read_b32 v9, a59
	v_accvgpr_read_b32 v0, a56
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v9, off offset:2790
	v_or_b32_e32 v7, 0x60, v8
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshrrev_b32_e32 v8, 29, v8
	v_add_u32_e32 v8, v7, v8
	v_and_b32_e32 v8, -8, v8
	v_sub_u32_e32 v7, v7, v8
	v_ashrrev_i32_e32 v9, 31, v7
	v_lshrrev_b32_e32 v9, 30, v9
	v_add_u32_e32 v7, v7, v9
	v_accvgpr_read_b32 v0, a60
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_sub_u32_e32 v9, v8, v14
	v_and_b32_e32 v7, -4, v7
	v_accvgpr_read_b32 v5, a62
	v_accvgpr_read_b32 v6, a63
	v_add_u32_e32 v9, v9, v7
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a61
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v9, v9, s3
	v_sub_u32_e32 v8, v8, v16
	v_add_u32_e32 v7, v8, v7
	v_mul_lo_u32 v7, v7, s3
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a65
	v_add_u32_e32 v0, v9, v15
	v_accvgpr_read_b32 v9, a66
	v_accvgpr_read_b32 v1, a64
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v9, v9
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v9, s[16:17] offset:1156
	global_store_short v[0:1], v10, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a69
	v_accvgpr_read_b32 v9, a70
	v_accvgpr_read_b32 v10, a71
	v_accvgpr_read_b32 v0, a68
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v9, off offset:1684
	global_store_short v[0:1], v10, off offset:2262
	v_accvgpr_read_b32 v6, a73
	v_accvgpr_read_b32 v9, a74
	v_accvgpr_read_b32 v10, a75
	v_accvgpr_read_b32 v0, a72
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v9, off offset:2212
	global_store_short v[0:1], v10, off offset:2790
	v_accvgpr_read_b32 v0, a76
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_accvgpr_read_b32 v5, a78
	v_accvgpr_read_b32 v6, a79
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a77
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v5, a81
	v_accvgpr_read_b32 v6, a82
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a83
	v_accvgpr_read_b32 v1, a80
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
	v_accvgpr_read_b32 v5, a85
	v_accvgpr_read_b32 v6, a86
	v_accvgpr_read_b32 v7, a87
	v_accvgpr_read_b32 v0, a84
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s2, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:528
	global_store_short v[0:1], v5, off offset:1106
	global_store_short v[0:1], v6, off offset:1684
	global_store_short v[0:1], v7, off offset:2262
	v_accvgpr_read_b32 v5, a89
	v_accvgpr_read_b32 v6, a90
	v_accvgpr_read_b32 v7, a91
	v_accvgpr_read_b32 v0, a88
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s1, v4
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1056
	global_store_short v[0:1], v5, off offset:1634
	global_store_short v[0:1], v6, off offset:2212
	global_store_short v[0:1], v7, off offset:2790
	v_accvgpr_read_b32 v0, a92
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s0, v4
	v_accvgpr_read_b32 v4, a94
	v_accvgpr_read_b32 v5, a95
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a93
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
		.amdhsa_group_segment_fixed_size 24576
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
		.amdhsa_next_free_sgpr 33
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
; codeLenInByte = 8548
; NumSgprs: 37
; NumVgprs: 111
; NumAgprs: 128
; TotalNumVgprs: 128
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 24576 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 31
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 128
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
    .group_segment_fixed_size: 24576
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
    .private_segment_fixed_size: 0
    .sgpr_count:     37
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
