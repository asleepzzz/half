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
	v_sub_u32_e32 v5, v0, v3
	v_or_b32_e32 v6, v2, v3
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
	v_add_u32_e32 v15, v6, v4
	v_and_b32_e32 v4, 0xffffff80, v10
	v_sub_u32_e32 v4, v9, v4
	v_lshrrev_b32_e32 v10, 31, v13
	v_ashrrev_i32_e32 v13, 1, v13
	v_add_u32_e32 v10, v13, v10
	v_add_u32_e32 v9, v4, v1
	v_mul_lo_u32 v13, v10, -9
	v_mul_hi_i32 v14, v9, s0
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	s_load_dwordx2 s[20:21], s[4:5], 0x8
	v_mul_lo_u32 v6, v15, s2
	v_add_u32_e32 v16, v13, v12
	v_lshlrev_b32_e32 v7, 3, v5
	s_mov_b32 s0, 0x55555556
	v_lshrrev_b32_e32 v12, 31, v14
	v_ashrrev_i32_e32 v13, 7, v14
	v_mul_hi_i32 v29, v16, s0
	v_add_u32_e32 v12, v13, v12
	s_mov_b32 s0, 0xfffedf
	s_mov_b32 s23, 0x27000
	s_mov_b32 s22, -1
	v_add_lshl_u32 v6, v6, v7, 1
	s_movk_i32 s1, 0xffc
	v_mad_i32_i24 v17, v12, s0, v9
	v_mul_i32_i24_e32 v27, 0x56220, v12
	v_lshl_add_u32 v31, v8, 11, v11
	s_movk_i32 s24, 0x4c9
	v_mul_lo_u32 v28, v10, s24
	s_mov_b32 s0, 0x78787879
	v_mul_hi_i32 v18, v17, s0
	v_lshrrev_b32_e32 v35, 31, v29
	v_lshlrev_b32_e32 v32, 4, v0
	v_and_b32_e32 v33, 0xfc0, v32
	v_lshrrev_b32_e32 v36, 31, v18
	v_ashrrev_i32_e32 v18, 3, v18
	v_add_u32_e32 v18, v18, v36
	v_lshl_or_b32 v34, v5, 12, v33
	s_movk_i32 s0, 0xffef
	v_mul_lo_u32 v37, v18, s0
	s_load_dwordx2 s[16:17], s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	buffer_load_dwordx4 v[11:14], v6, s[20:23], s1 offen offset:1092
	s_movk_i32 s1, 0x1ffc
	v_add_lshl_u32 v17, v37, v17, 1
	s_mov_b32 s27, s7
	s_movk_i32 s26, 0x2000
	v_add_u32_e32 v5, s26, v34
	v_lshlrev_b32_e32 v30, 3, v4
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
	buffer_load_dwordx4 v[19:22], v6, s[20:23], s1 offen offset:2180
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
	v_accvgpr_write_b32 a63, 0
	v_accvgpr_write_b32 a62, 0
	buffer_load_dwordx4 v[7:10], v6, s[20:23], 0 offen
	buffer_load_dwordx4 v[23:26], v6, s[20:23], s1 offen offset:3268
	v_add_u32_e32 v6, v29, v35
	v_mul_lo_u32 v36, v6, -3
	v_lshl_add_u32 v18, v18, 1, v6
	v_mul_lo_u32 v18, v18, 35
	v_accvgpr_write_b32 a61, 0
	v_add_u32_e32 v16, v36, v16
	v_add3_u32 v27, v27, v28, v16
	v_add3_u32 v17, v27, v18, v17
	v_ashrrev_i32_e32 v18, 31, v17
	v_lshlrev_b64 v[27:28], 1, v[17:18]
	v_add_u32_e32 v18, -1, v16
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
	v_accvgpr_write_b32 a127, 0
	v_accvgpr_write_b32 a126, 0
	v_accvgpr_write_b32 a125, 0
	v_accvgpr_write_b32 a124, 0
	v_accvgpr_write_b32 a123, 0
	v_accvgpr_write_b32 a122, 0
	s_waitcnt vmcnt(1)
	ds_write_b128 v34, v[7:10] offset:8192
	ds_write_b128 v34, v[11:14] offset:8208
	ds_write_b128 v34, v[19:22] offset:8224
	s_waitcnt vmcnt(0)
	ds_write_b128 v34, v[23:26] offset:8240
	v_add_u32_e32 v7, 1, v16
	v_add_u32_e32 v8, -2, v16
	v_cmp_gt_i32_e32 vcc, 3, v7
	v_cndmask_b32_e32 v8, v8, v7, vcc
	v_cmp_lt_i32_e32 vcc, 2, v7
	v_addc_co_u32_e64 v7, s[0:1], v29, v35, vcc
	v_addc_co_u32_e64 v9, s[0:1], -3, v6, vcc
	v_cmp_gt_i32_e64 s[0:1], 3, v7
	v_cndmask_b32_e64 v7, v9, v7, s[0:1]
	v_sub_u32_e32 v7, v7, v6
	v_mul_lo_u32 v7, v7, 35
	v_sub_u32_e32 v10, v17, v16
	v_mov_b32_e32 v12, s24
	v_add_u32_e32 v13, v10, v8
	v_cndmask_b32_e64 v9, v12, 0, s[0:1]
	v_add_u32_e32 v14, v7, v13
	v_add_u32_e32 v7, v14, v9
	v_add_u32_e32 v9, 2, v16
	v_cmp_lt_i32_e64 s[2:3], 2, v9
	v_addc_co_u32_e64 v19, s[4:5], v29, v35, s[2:3]
	v_addc_co_u32_e64 v20, s[4:5], -3, v6, s[2:3]
	v_cmp_gt_i32_e64 s[4:5], 3, v19
	v_cndmask_b32_e64 v19, v20, v19, s[4:5]
	v_sub_u32_e32 v19, v19, v6
	v_mul_lo_u32 v19, v19, 35
	v_cmp_gt_i32_e64 s[6:7], 3, v9
	v_cndmask_b32_e64 v9, v18, v9, s[6:7]
	v_add_u32_e32 v20, v10, v9
	v_cndmask_b32_e64 v18, v12, 0, s[4:5]
	v_add_u32_e32 v19, v19, v20
	v_add_u32_e32 v9, v19, v18
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_add_u32_e32 v18, 1, v6
	v_add_u32_e32 v21, -2, v6
	v_cmp_gt_i32_e64 s[6:7], 3, v18
	v_cndmask_b32_e64 v21, v21, v18, s[6:7]
	v_sub_u32_e32 v21, v21, v6
	v_mul_lo_u32 v21, v21, 35
	v_addc_co_u32_e64 v25, s[10:11], 1, v6, s[2:3]
	v_add_u32_e32 v29, 2, v6
	v_cmp_gt_i32_e64 s[12:13], 3, v29
	v_add_u32_e32 v21, v17, v21
	v_addc_co_u32_e64 v35, s[14:15], 2, v6, vcc
	s_movk_i32 s14, 0x992
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
	v_accvgpr_write_b32 a106, 0
	global_load_ushort v22, v[7:8], s[18:19]
	global_load_ushort v23, v[9:10], s[18:19]
	v_addc_co_u32_e64 v9, s[8:9], -3, v18, vcc
	v_addc_co_u32_e64 v8, s[8:9], 1, v6, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v8
	v_cndmask_b32_e64 v8, v9, v8, s[8:9]
	v_sub_u32_e32 v8, v8, v6
	v_mul_lo_u32 v9, v8, 35
	v_cndmask_b32_e64 v7, v12, 0, s[6:7]
	v_cndmask_b32_e64 v10, v12, 0, s[8:9]
	v_add_u32_e32 v7, v21, v7
	v_add_u32_e32 v24, v9, v13
	v_add_u32_e32 v9, v24, v10
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_addc_co_u32_e64 v18, s[10:11], -3, v18, s[2:3]
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_cmp_gt_i32_e64 s[10:11], 3, v25
	v_cndmask_b32_e64 v18, v18, v25, s[10:11]
	v_sub_u32_e32 v18, v18, v6
	v_mul_lo_u32 v18, v18, 35
	v_addc_co_u32_e32 v36, vcc, -3, v29, vcc
	v_cmp_gt_i32_e32 vcc, 3, v35
	v_cndmask_b32_e32 v35, v36, v35, vcc
	v_add_u32_e32 v18, v18, v20
	v_sub_u32_e32 v35, v35, v6
	v_mul_lo_u32 v35, v35, 35
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
	s_mov_b32 s25, 0
	s_mov_b32 s32, s27
	s_nop 0
	s_nop 0
	global_load_ushort v25, v[7:8], s[18:19]
	global_load_ushort v26, v[9:10], s[18:19]
	v_add_u32_e32 v8, -1, v6
	v_cndmask_b32_e64 v8, v8, v29, s[12:13]
	v_sub_u32_e32 v8, v8, v6
	v_mul_lo_u32 v9, v8, 35
	v_cndmask_b32_e64 v7, v12, 0, s[10:11]
	v_cndmask_b32_e64 v10, v12, 0, s[12:13]
	v_add_u32_e32 v7, v18, v7
	v_add_u32_e32 v34, v17, v9
	v_add_u32_e32 v9, v34, v10
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_nop 0
	s_nop 0
	global_load_ushort v36, v[7:8], s[18:19]
	global_load_ushort v37, v[9:10], s[18:19]
	v_cndmask_b32_e64 v7, v12, 0, vcc
	v_addc_co_u32_e64 v8, vcc, 2, v6, s[2:3]
	v_addc_co_u32_e64 v9, vcc, -3, v29, s[2:3]
	v_cmp_gt_i32_e32 vcc, 3, v8
	v_cndmask_b32_e32 v8, v9, v8, vcc
	v_sub_u32_e32 v8, v8, v6
	v_mul_lo_u32 v9, v8, 35
	v_cndmask_b32_e64 v10, v12, 0, vcc
	v_add3_u32 v7, v13, v7, v35
	v_ashrrev_i32_e32 v8, 31, v7
	v_add3_u32 v9, v20, v10, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_mov_b32_e32 v20, s14
	s_nop 0
	s_nop 0
	global_load_ushort v13, v[7:8], s[18:19]
	global_load_ushort v29, v[9:10], s[18:19]
	global_load_ushort v35, v[27:28], s[18:19] offset:2450
	v_cndmask_b32_e64 v7, v20, v12, s[0:1]
	v_cndmask_b32_e64 v9, v20, v12, s[4:5]
	v_add_u32_e32 v7, v14, v7
	v_add_u32_e32 v9, v19, v9
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_movk_i32 s0, 0x1440
	s_nop 0
	s_nop 0
	global_load_ushort v11, v[27:28], s[18:19]
	global_load_ushort v14, v[7:8], s[18:19]
	s_nop 0
	s_nop 0
	global_load_ushort v27, v[9:10], s[18:19]
	v_cndmask_b32_e64 v7, v20, v12, s[6:7]
	v_cndmask_b32_e64 v9, v20, v12, s[8:9]
	v_add_u32_e32 v7, v21, v7
	v_add_u32_e32 v9, v24, v9
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_nop 0
	s_nop 0
	global_load_ushort v24, v[7:8], s[18:19]
	global_load_ushort v28, v[9:10], s[18:19]
	v_cndmask_b32_e64 v7, v20, v12, s[10:11]
	v_cndmask_b32_e64 v9, v20, v12, s[12:13]
	v_add_u32_e32 v7, v18, v7
	v_ashrrev_i32_e32 v8, 31, v7
	v_add_u32_e32 v9, v34, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_add_lshl_u32 v12, v31, v30, 1
	s_nop 0
	s_nop 0
	global_load_ushort v34, v[7:8], s[18:19]
	global_load_ushort v38, v[9:10], s[18:19]
	v_mov_b32_e32 v8, 0xffff
	s_waitcnt vmcnt(12)
	v_and_b32_e32 v7, v8, v26
	s_waitcnt vmcnt(11)
	v_lshl_or_b32 v20, v36, 16, v7
	s_waitcnt vmcnt(10)
	v_and_b32_e32 v7, v8, v37
	s_waitcnt vmcnt(9)
	v_lshl_or_b32 v21, v13, 16, v7
	v_and_b32_e32 v7, v8, v23
	v_lshl_or_b32 v19, v25, 16, v7
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v7, v8, v11
	v_lshl_or_b32 v18, v22, 16, v7
	v_and_b32_e32 v7, v8, v29
	ds_write_b128 v12, v[18:21]
	v_lshl_or_b32 v18, v35, 16, v7
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v7, v8, v34
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v21, v38, 16, v7
	v_and_b32_e32 v7, v8, v24
	v_lshl_or_b32 v20, v28, 16, v7
	v_and_b32_e32 v7, v8, v14
	v_mul_lo_u32 v14, v15, s0
	v_lshl_or_b32 v19, v27, 16, v7
	v_and_b32_e32 v7, 63, v0
	v_lshlrev_b32_e32 v9, 4, v7
	v_lshl_or_b32 v13, v3, 4, v9
	v_lshl_or_b32 v10, v4, 4, v9
	v_or_b32_e32 v11, s26, v13
	v_or_b32_e32 v9, 0x2400, v13
	v_add_u32_e32 v13, v14, v32
	v_sub_u32_e32 v13, v13, v33
	v_add_u32_e32 v13, 0x3d00, v13
	v_mov_b32_e32 v14, 0x1324
	v_mov_b32_e32 v15, 0xe5b
	ds_write_b128 v12, v[18:21] offset:2048
BB0_1:                                  ; %if.then.i29.i.i.i.i.i.i.i7088.i
                                        ; =>This Inner Loop Header: Depth=1
	v_add_u32_e32 v18, 2, v16
	v_cmp_lt_i32_e32 vcc, 2, v18
	v_addc_co_u32_e64 v20, s[0:1], 1, v6, vcc
	v_add_u32_e32 v19, -1, v16
	v_cmp_gt_i32_e64 s[0:1], 3, v18
	v_cndmask_b32_e64 v35, v19, v18, s[0:1]
	v_addc_co_u32_e32 v18, vcc, -2, v6, vcc
	v_cmp_gt_i32_e32 vcc, 3, v20
	v_add_u32_e32 v37, 2, v35
	v_add_u32_e32 v36, 1, v35
	v_add_u32_e32 v39, 0xffffc340, v13
	v_add_u32_e32 v40, 0xffffd780, v13
	v_add_u32_e32 v41, 0xffffebc0, v13
	v_cndmask_b32_e32 v18, v18, v20, vcc
	v_cndmask_b32_e32 v42, v14, v15, vcc
	v_cmp_gt_i32_e32 vcc, 3, v36
	v_cmp_gt_i32_e64 s[0:1], 3, v37
	v_add_u32_e32 v46, 1, v18
	v_add_u32_e32 v50, 2, v18
	v_add_u32_e32 v47, -2, v18
	v_cmp_gt_i32_e64 s[6:7], 3, v46
	v_add_u32_e32 v51, -1, v18
	v_cmp_gt_i32_e64 s[10:11], 3, v50
	v_sub_u32_e32 v16, v17, v16
	v_mov_b32_e32 v17, s24
	v_mov_b32_e32 v38, s14
	v_cndmask_b32_e64 v56, v17, 0, s[6:7]
	v_cndmask_b32_e64 v60, v38, v17, s[6:7]
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[23:26], v39, s[20:23], 0 offen
	buffer_load_dwordx4 v[27:30], v40, s[20:23], 0 offen
	buffer_load_dwordx4 v[31:34], v41, s[20:23], 0 offen
	v_add_u32_e32 v40, -2, v35
	v_add_u32_e32 v41, -1, v35
	v_cndmask_b32_e32 v40, v40, v36, vcc
	v_cmp_lt_i32_e32 vcc, 2, v37
	v_cndmask_b32_e64 v37, v41, v37, s[0:1]
	v_cmp_lt_i32_e64 s[0:1], 2, v36
	v_addc_co_u32_e64 v44, s[2:3], 0, v18, vcc
	v_addc_co_u32_e64 v48, s[2:3], 1, v18, s[0:1]
	v_addc_co_u32_e64 v41, s[2:3], 0, v18, s[0:1]
	v_addc_co_u32_e64 v43, s[2:3], -3, v18, s[0:1]
	v_addc_co_u32_e64 v45, s[2:3], -3, v18, vcc
	v_addc_co_u32_e64 v49, s[2:3], 1, v18, vcc
	v_addc_co_u32_e64 v52, s[2:3], 2, v18, s[0:1]
	v_addc_co_u32_e64 v53, s[2:3], 2, v18, vcc
	v_cmp_gt_i32_e64 s[2:3], 3, v41
	v_cmp_gt_i32_e64 s[4:5], 3, v44
	v_sub_u32_e32 v36, v18, v6
	v_cndmask_b32_e64 v41, v43, v41, s[2:3]
	v_cndmask_b32_e64 v43, v45, v44, s[4:5]
	v_cndmask_b32_e64 v44, v47, v46, s[6:7]
	v_addc_co_u32_e64 v45, s[8:9], -3, v46, s[0:1]
	v_addc_co_u32_e64 v46, s[8:9], -3, v46, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v49
	v_cndmask_b32_e64 v47, v51, v50, s[10:11]
	v_addc_co_u32_e64 v51, s[0:1], -3, v50, s[0:1]
	v_addc_co_u32_e32 v50, vcc, -3, v50, vcc
	v_cmp_gt_i32_e64 s[12:13], 3, v48
	v_mul_lo_u32 v36, v36, 35
	v_sub_u32_e32 v44, v44, v18
	v_cmp_gt_i32_e64 s[0:1], 3, v52
	v_cmp_gt_i32_e32 vcc, 3, v53
	v_cndmask_b32_e64 v45, v45, v48, s[12:13]
	v_cndmask_b32_e64 v46, v46, v49, s[8:9]
	v_sub_u32_e32 v41, v41, v18
	v_sub_u32_e32 v43, v43, v18
	v_cndmask_b32_e64 v51, v51, v52, s[0:1]
	v_cndmask_b32_e32 v50, v50, v53, vcc
	v_cndmask_b32_e64 v54, v17, 0, s[2:3]
	v_cndmask_b32_e64 v55, v17, 0, s[4:5]
	v_cndmask_b32_e64 v48, v17, 0, s[12:13]
	v_cndmask_b32_e64 v57, v17, 0, s[8:9]
	v_sub_u32_e32 v47, v47, v18
	v_cndmask_b32_e64 v49, v17, 0, s[10:11]
	v_cndmask_b32_e64 v52, v17, 0, s[0:1]
	v_cndmask_b32_e64 v53, v17, 0, vcc
	v_cndmask_b32_e64 v58, v38, v17, s[2:3]
	v_cndmask_b32_e64 v59, v38, v17, s[4:5]
	v_cndmask_b32_e64 v61, v38, v17, s[12:13]
	v_cndmask_b32_e64 v62, v38, v17, s[8:9]
	v_cndmask_b32_e64 v38, v38, v17, s[10:11]
	v_sub_u32_e32 v17, v45, v18
	v_sub_u32_e32 v45, v46, v18
	v_mul_lo_u32 v44, v44, 35
	v_add_u32_e32 v39, v16, v35
	v_mul_lo_u32 v46, v47, 35
	v_sub_u32_e32 v47, v51, v18
	v_mov_b32_e32 v6, v18
	v_sub_u32_e32 v18, v50, v18
	v_mul_lo_u32 v50, v17, 35
	v_mul_lo_u32 v41, v41, 35
	v_mul_lo_u32 v43, v43, 35
	v_mul_lo_u32 v45, v45, 35
	v_add3_u32 v17, v39, v42, v36
	v_mul_lo_u32 v51, v18, 35
	v_mul_lo_u32 v47, v47, 35
	v_ashrrev_i32_e32 v18, 31, v17
	v_sub_u32_e32 v39, v17, v35
	v_mov_b32_e32 v16, v35
	v_lshlrev_b64 v[35:36], 1, v[17:18]
	v_add_u32_e32 v18, v39, v40
	v_add_u32_e32 v40, v39, v37
	v_add_u32_e32 v42, v44, v17
	v_add_u32_e32 v44, v46, v17
	v_add_u32_e32 v46, v18, v41
	v_add_u32_e32 v63, v40, v43
	v_add_u32_e32 v37, v42, v56
	v_add_u32_e32 v56, v45, v40
	v_add_u32_e32 v50, v50, v18
	v_add3_u32 v41, v18, v52, v47
	v_add3_u32 v43, v40, v53, v51
	v_add_u32_e32 v39, v44, v49
	v_add_u32_e32 v47, v44, v38
	v_add_u32_e32 v51, v63, v55
	v_add_u32_e32 v45, v42, v60
	v_add_u32_e32 v53, v50, v48
	v_add_u32_e32 v49, v46, v54
	v_add_u32_e32 v55, v56, v57
	v_add_u32_e32 v57, v63, v59
	v_add_u32_e32 v59, v50, v61
	v_add_u32_e32 v61, v56, v62
	v_ashrrev_i32_e32 v38, 31, v37
	v_ashrrev_i32_e32 v40, 31, v39
	v_ashrrev_i32_e32 v42, 31, v41
	v_ashrrev_i32_e32 v44, 31, v43
	v_ashrrev_i32_e32 v48, 31, v47
	v_ashrrev_i32_e32 v50, 31, v49
	v_ashrrev_i32_e32 v52, 31, v51
	v_ashrrev_i32_e32 v54, 31, v53
	v_ashrrev_i32_e32 v56, 31, v55
	v_ashrrev_i32_e32 v60, 31, v59
	v_ashrrev_i32_e32 v62, 31, v61
	v_lshlrev_b64 v[37:38], 1, v[37:38]
	v_lshlrev_b64 v[39:40], 1, v[39:40]
	v_lshlrev_b64 v[41:42], 1, v[41:42]
	v_lshlrev_b64 v[43:44], 1, v[43:44]
	v_lshlrev_b64 v[47:48], 1, v[47:48]
	v_lshlrev_b64 v[49:50], 1, v[49:50]
	v_lshlrev_b64 v[51:52], 1, v[51:52]
	v_lshlrev_b64 v[53:54], 1, v[53:54]
	v_lshlrev_b64 v[55:56], 1, v[55:56]
	v_lshlrev_b64 v[59:60], 1, v[59:60]
	v_lshlrev_b64 v[61:62], 1, v[61:62]
	s_nop 0
	s_nop 0
	global_load_ushort v18, v[35:36], s[18:19]
	global_load_ushort v79, v[35:36], s[18:19] offset:2450
	v_add_u32_e32 v35, v46, v58
	v_ashrrev_i32_e32 v46, 31, v45
	v_ashrrev_i32_e32 v36, 31, v35
	v_ashrrev_i32_e32 v58, 31, v57
	v_lshlrev_b64 v[45:46], 1, v[45:46]
	v_lshlrev_b64 v[35:36], 1, v[35:36]
	v_lshlrev_b64 v[57:58], 1, v[57:58]
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[19:22], v13, s[20:23], 0 offen
	global_load_ushort v82, v[37:38], s[18:19]
	global_load_ushort v85, v[39:40], s[18:19]
	global_load_ushort v86, v[41:42], s[18:19]
	global_load_ushort v87, v[43:44], s[18:19]
	global_load_ushort v90, v[45:46], s[18:19]
	global_load_ushort v93, v[47:48], s[18:19]
	global_load_ushort v80, v[49:50], s[18:19]
	global_load_ushort v81, v[51:52], s[18:19]
	global_load_ushort v83, v[53:54], s[18:19]
	global_load_ushort v84, v[55:56], s[18:19]
	global_load_ushort v88, v[35:36], s[18:19]
	global_load_ushort v89, v[57:58], s[18:19]
	global_load_ushort v91, v[59:60], s[18:19]
	global_load_ushort v92, v[61:62], s[18:19]
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	ds_read_b128 v[35:38], v11
	ds_read_b128 v[39:42], v11 offset:4096
	ds_read_b128 v[43:46], v10
	ds_read_b128 v[47:50], v10 offset:2048
	ds_read_b128 v[51:54], v11 offset:8192
	ds_read_b128 v[55:58], v11 offset:12288
	ds_read_b128 v[59:62], v10 offset:4096
	ds_read_b128 v[63:66], v10 offset:6144
	ds_read_b128 v[67:70], v9
	ds_read_b128 v[71:74], v9 offset:4096
	ds_read_b128 v[75:78], v9 offset:8192
	s_waitcnt lgkmcnt(8)
	v_mfma_f32_32x32x4f16 a[64:95], v[35:36], v[43:44], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[35:36], v[43:44], a[96:127] cbsz:1
	s_add_i32 s25, s25, 4
	s_cmpk_lt_u32 s25, 0x140
	v_add_u32_e32 v13, 64, v13
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[67:68], v[43:44], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[67:68], v[43:44], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[64:95], v[37:38], v[45:46], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[37:38], v[45:46], a[96:127] cbsz:1
	ds_read_b128 v[35:38], v9 offset:12288
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	v_mfma_f32_32x32x4f16 a[32:63], v[69:70], v[45:46], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[69:70], v[45:46], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[64:95], v[39:40], v[47:48], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[39:40], v[47:48], a[96:127] cbsz:1
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[71:72], v[47:48], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[71:72], v[47:48], a[0:31] cbsz:1 abid:1
	s_waitcnt vmcnt(16)
	v_and_b32_e32 v18, v8, v18
	v_mfma_f32_32x32x4f16 a[64:95], v[41:42], v[49:50], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[41:42], v[49:50], a[96:127] cbsz:1
	s_waitcnt vmcnt(14)
	ds_write_b128 v5, v[19:22] offset:48
	v_mfma_f32_32x32x4f16 a[32:63], v[73:74], v[49:50], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[73:74], v[49:50], a[0:31] cbsz:1 abid:1
	ds_write_b128 v5, v[23:26]
	ds_write_b128 v5, v[27:30] offset:16
	ds_write_b128 v5, v[31:34] offset:32
	s_waitcnt vmcnt(12)
	v_and_b32_e32 v19, v8, v85
	s_waitcnt vmcnt(10)
	v_and_b32_e32 v20, v8, v87
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v23, v8, v90
	s_waitcnt vmcnt(6)
	v_and_b32_e32 v25, v8, v81
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v26, v8, v83
	v_mfma_f32_32x32x4f16 a[64:95], v[51:52], v[59:60], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[51:52], v[59:60], a[96:127] cbsz:1
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v27, v8, v88
	s_waitcnt vmcnt(0)
	v_and_b32_e32 v28, v8, v92
	v_lshl_or_b32 v21, v86, 16, v19
	v_lshl_or_b32 v22, v79, 16, v20
	s_waitcnt lgkmcnt(5)
	v_mfma_f32_32x32x4f16 a[32:63], v[75:76], v[59:60], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[75:76], v[59:60], a[0:31] cbsz:1 abid:1
	v_lshl_or_b32 v24, v91, 16, v23
	v_lshl_or_b32 v19, v82, 16, v25
	v_lshl_or_b32 v18, v80, 16, v18
	v_lshl_or_b32 v20, v84, 16, v26
	v_lshl_or_b32 v23, v89, 16, v27
	v_lshl_or_b32 v25, v93, 16, v28
	ds_write_b128 v12, v[18:21]
	ds_write_b128 v12, v[22:25] offset:2048
	v_mfma_f32_32x32x4f16 a[64:95], v[53:54], v[61:62], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[53:54], v[61:62], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[77:78], v[61:62], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[77:78], v[61:62], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[64:95], v[55:56], v[63:64], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[55:56], v[63:64], a[96:127] cbsz:1
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_32x32x4f16 a[32:63], v[35:36], v[63:64], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[35:36], v[63:64], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[64:95], v[57:58], v[65:66], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[57:58], v[65:66], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[37:38], v[65:66], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[37:38], v[65:66], a[0:31] cbsz:1 abid:1
	s_cbranch_scc1 BB0_1
; %bb.2:                                ; %_ZNK2ck53GridwiseBatchedGemmTransposedANormalBNormalCXdlops_v2ILi4624ELi256EDF16_fDF16_KNS_27TransformedTensorDescriptorINS_22NativeTensorDescriptorIJNS_15NativeDimensionILi2048ELi2592EEENS3_ILi2592ELi1EEEEEENS_5TupleIJNS_11PassThroughILi2048EEENS_7UnMergeINS_8SequenceIJLi1ELi324ELi8EEEEEEEEENS7_IJNSB_IJLi0EEEENSB_IJLi1EEEEEEENS7_IJNSB_IJLi2EEEENSB_IJLi0ELi1ELi3EEEEEEEEEKNS1_INS1_INS1_INS1_INS2_IJNS3_ILi256ELi352800EEENS3_ILi288ELi1225EEENS3_ILi35ELi35EEENS3_ILi35ELi1EEEEEENS7_IJNS8_ILi256EEENS8_ILi288EEENS_3PadINSB_IJLi35ELi35EEEENSB_IJLi0ELi0EEEESW_Lb0EEEEEENS7_IJSF_SG_NSB_IJLi2ELi3EEEEEEES10_EENS7_IJSS_ST_NS_5EmbedILi35ENSB_IJLi3ELi17EEEENSB_IJLi1ELi2ELi0EEEELb0EEES15_EEENS7_IJSF_SG_SI_NSB_IJLi3EEEEEEENS7_IJSF_SG_SZ_NSB_IJLi4ELi5EEEEEEEEENS7_IJNS_5MergeINSB_IJLi288ELi3ELi3EEEEEENS1C_INSB_IJLi256ELi17ELi17EEEEEEEEENS7_IJNSB_IJLi1ELi2ELi4EEEENSB_IJLi0ELi3ELi5EEEEEEESH_EENS7_IJSD_NS8_ILi73984EEEEEESH_NS7_IJSJ_SI_EEEEEKNS1_INS2_IJNS3_ILi1ELi0EEENS3_ILi256ELi591872EEENS3_ILi2048ELi289EEENS3_ILi17ELi17EEENS3_ILi
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	ds_read_b128 v[12:15], v11
	ds_read_b128 v[16:19], v11 offset:4096
	ds_read_b128 v[20:23], v10
	ds_read_b128 v[24:27], v10 offset:2048
	ds_read_b128 v[28:31], v9
	ds_read_b128 v[32:35], v9 offset:4096
	v_and_b32_e32 v0, 32, v0
	v_add_u32_e32 v2, v2, v3
	v_lshrrev_b32_e32 v5, 3, v7
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_32x32x4f16 a[96:127], v[12:13], v[20:21], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[12:13], v[20:21], a[64:95] cbsz:1 abid:1
	s_mov_b32 s4, 0x71625345
	s_movk_i32 s3, 0x121
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[28:29], v[20:21], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[28:29], v[20:21], a[0:31] cbsz:1 abid:1
	s_mov_b32 s5, 0x90800
	s_movk_i32 s2, 0x1000
	s_movk_i32 s1, 0x2000
	s_movk_i32 s0, 0x3000
	v_sub_u32_e32 v0, v7, v0
	v_add3_u32 v0, v0, v4, v1
	v_mov_b32_e32 v3, s17
	v_mfma_f32_32x32x4f16 a[96:127], v[14:15], v[22:23], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[14:15], v[22:23], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[30:31], v[22:23], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[30:31], v[22:23], a[0:31] cbsz:1 abid:1
	ds_read_b128 v[12:15], v11 offset:8192
	ds_read_b128 v[20:23], v11 offset:12288
	ds_read_b128 v[28:31], v10 offset:4096
	ds_read_b128 v[36:39], v10 offset:6144
	ds_read_b128 v[40:43], v9 offset:8192
	ds_read_b128 v[8:11], v9 offset:12288
	v_mfma_f32_32x32x4f16 a[96:127], v[16:17], v[24:25], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[16:17], v[24:25], a[64:95] cbsz:1 abid:1
	v_and_or_b32 v16, v5, 4, v2
	v_ashrrev_i32_e32 v1, 31, v16
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_32x32x4f16 a[32:63], v[32:33], v[24:25], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[32:33], v[24:25], a[0:31] cbsz:1 abid:1
	v_lshrrev_b32_e32 v1, 29, v1
	v_mul_hi_i32 v2, v0, s4
	v_add_u32_e32 v1, v16, v1
	v_add_u32_e32 v17, 32, v0
	v_mul_hi_i32 v4, v17, s4
	v_lshrrev_b32_e32 v6, 31, v2
	v_ashrrev_i32_e32 v2, 7, v2
	v_mfma_f32_32x32x4f16 a[96:127], v[18:19], v[26:27], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[18:19], v[26:27], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[34:35], v[26:27], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[34:35], v[26:27], a[0:31] cbsz:1 abid:1
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_32x32x4f16 a[96:127], v[12:13], v[28:29], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[12:13], v[28:29], a[64:95] cbsz:1 abid:1
	v_and_b32_e32 v12, -8, v1
	v_sub_u32_e32 v1, v16, v12
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[40:41], v[28:29], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[40:41], v[28:29], a[0:31] cbsz:1 abid:1
	v_ashrrev_i32_e32 v5, 31, v1
	v_lshrrev_b32_e32 v5, 30, v5
	v_add_u32_e32 v13, v2, v6
	v_add_u32_e32 v1, v1, v5
	v_sub_u32_e32 v5, v12, v13
	v_and_b32_e32 v18, -4, v1
	v_add_u32_e32 v1, v5, v18
	v_mul_lo_u32 v1, v1, s3
	v_lshrrev_b32_e32 v2, 31, v4
	v_ashrrev_i32_e32 v4, 7, v4
	v_mfma_f32_32x32x4f16 a[96:127], v[14:15], v[30:31], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[14:15], v[30:31], a[64:95] cbsz:1 abid:1
	v_mad_i32_i24 v14, v13, s5, v0
	v_add_u32_e32 v0, v1, v14
	v_mfma_f32_32x32x4f16 a[32:63], v[42:43], v[30:31], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[42:43], v[30:31], a[0:31] cbsz:1 abid:1
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_add_u32_e32 v15, v4, v2
	v_add_co_u32_e32 v6, vcc, s16, v0
	v_addc_co_u32_e32 v7, vcc, v3, v1, vcc
	v_add_co_u32_e32 v2, vcc, s2, v6
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	v_add_co_u32_e32 v4, vcc, s1, v6
	v_addc_co_u32_e32 v5, vcc, 0, v7, vcc
	v_add_co_u32_e32 v6, vcc, s0, v6
	v_mfma_f32_32x32x4f16 a[96:127], v[20:21], v[36:37], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[20:21], v[36:37], a[64:95] cbsz:1 abid:1
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[8:9], v[36:37], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[8:9], v[36:37], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[96:127], v[22:23], v[38:39], a[96:127] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[22:23], v[38:39], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[10:11], v[38:39], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[10:11], v[38:39], a[0:31] cbsz:1 abid:1
	s_nop 7
	s_nop 6
	v_accvgpr_read_b32 v8, a96
	v_accvgpr_read_b32 v9, a97
	v_accvgpr_read_b32 v10, a98
	v_accvgpr_read_b32 v11, a99
	v_accvgpr_read_b32 v19, a100
	v_accvgpr_read_b32 v20, a101
	v_accvgpr_read_b32 v21, a102
	v_accvgpr_read_b32 v22, a103
	v_accvgpr_read_b32 v23, a104
	v_accvgpr_read_b32 v24, a105
	v_accvgpr_read_b32 v25, a106
	v_accvgpr_read_b32 v26, a107
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 2, 2), 0
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_cvt_f16_f32_e32 v19, v19
	v_cvt_f16_f32_e32 v20, v20
	v_cvt_f16_f32_e32 v21, v21
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v23, v23
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v26, v26
	v_accvgpr_read_b32 v27, a108
	v_accvgpr_read_b32 v28, a109
	v_accvgpr_read_b32 v29, a110
	v_accvgpr_read_b32 v30, a111
	v_cvt_f16_f32_e32 v27, v27
	v_cvt_f16_f32_e32 v28, v28
	v_cvt_f16_f32_e32 v29, v29
	v_cvt_f16_f32_e32 v30, v30
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v8, s[16:17]
	global_store_short v[0:1], v9, s[16:17] offset:578
	global_store_short v[0:1], v10, s[16:17] offset:1156
	global_store_short v[0:1], v11, s[16:17] offset:1734
	global_store_short v[2:3], v19, off offset:528
	global_store_short v[2:3], v20, off offset:1106
	global_store_short v[2:3], v21, off offset:1684
	global_store_short v[2:3], v22, off offset:2262
	global_store_short v[4:5], v23, off offset:1056
	global_store_short v[4:5], v24, off offset:1634
	global_store_short v[4:5], v25, off offset:2212
	global_store_short v[4:5], v26, off offset:2790
	v_sub_u32_e32 v0, v12, v15
	v_add_u32_e32 v0, v0, v18
	v_mul_lo_u32 v0, v0, s3
	v_accvgpr_read_b32 v8, a115
	v_mad_i32_i24 v2, v15, s5, v17
	v_accvgpr_read_b32 v1, a112
	v_add_u32_e32 v0, v0, v2
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v8, v8
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v4, s17
	v_add_co_u32_e32 v5, vcc, s16, v0
	v_addc_co_u32_e32 v4, vcc, v4, v1, vcc
	v_accvgpr_read_b32 v10, a67
	v_cvt_f16_f32_e32 v10, v10
	s_nop 0
	s_nop 0
	global_store_short v[6:7], v27, off offset:1584
	global_store_short v[6:7], v28, off offset:2162
	global_store_short v[6:7], v29, off offset:2740
	global_store_short v[6:7], v30, off offset:3318
	v_accvgpr_read_b32 v6, a113
	v_accvgpr_read_b32 v7, a114
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v6, s[16:17] offset:578
	global_store_short v[0:1], v7, s[16:17] offset:1156
	global_store_short v[0:1], v8, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a117
	v_accvgpr_read_b32 v7, a118
	v_accvgpr_read_b32 v8, a119
	v_accvgpr_read_b32 v0, a116
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v8, off offset:2262
	v_accvgpr_read_b32 v6, a121
	v_accvgpr_read_b32 v7, a122
	v_accvgpr_read_b32 v8, a123
	v_accvgpr_read_b32 v0, a120
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v8, off offset:2790
	v_or_b32_e32 v7, 32, v16
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshrrev_b32_e32 v8, 29, v8
	v_add_u32_e32 v8, v7, v8
	v_and_b32_e32 v8, -8, v8
	v_sub_u32_e32 v7, v7, v8
	v_ashrrev_i32_e32 v9, 31, v7
	v_lshrrev_b32_e32 v9, 30, v9
	v_add_u32_e32 v7, v7, v9
	v_accvgpr_read_b32 v0, a124
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_sub_u32_e32 v9, v8, v13
	v_and_b32_e32 v7, -4, v7
	v_accvgpr_read_b32 v5, a126
	v_accvgpr_read_b32 v6, a127
	v_add_u32_e32 v9, v9, v7
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a125
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v9, v9, s3
	v_sub_u32_e32 v8, v8, v15
	v_add_u32_e32 v7, v8, v7
	v_mul_lo_u32 v7, v7, s3
	v_accvgpr_read_b32 v8, a83
	v_cvt_f16_f32_e32 v8, v8
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a65
	v_add_u32_e32 v0, v9, v14
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
	v_accvgpr_read_b32 v10, a35
	v_cvt_f16_f32_e32 v10, v10
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a81
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a82
	v_accvgpr_read_b32 v1, a80
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
	global_store_short v[0:1], v8, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a85
	v_accvgpr_read_b32 v7, a86
	v_accvgpr_read_b32 v8, a87
	v_accvgpr_read_b32 v0, a84
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v8, off offset:2262
	v_accvgpr_read_b32 v6, a89
	v_accvgpr_read_b32 v7, a90
	v_accvgpr_read_b32 v8, a91
	v_accvgpr_read_b32 v0, a88
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v8, off offset:2790
	v_or_b32_e32 v7, 64, v16
	v_ashrrev_i32_e32 v8, 31, v7
	v_lshrrev_b32_e32 v8, 29, v8
	v_add_u32_e32 v8, v7, v8
	v_and_b32_e32 v8, -8, v8
	v_sub_u32_e32 v7, v7, v8
	v_ashrrev_i32_e32 v9, 31, v7
	v_lshrrev_b32_e32 v9, 30, v9
	v_add_u32_e32 v7, v7, v9
	v_accvgpr_read_b32 v0, a92
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_sub_u32_e32 v9, v8, v13
	v_and_b32_e32 v7, -4, v7
	v_accvgpr_read_b32 v5, a94
	v_accvgpr_read_b32 v6, a95
	v_add_u32_e32 v9, v9, v7
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a93
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v9, v9, s3
	v_sub_u32_e32 v8, v8, v15
	v_add_u32_e32 v7, v8, v7
	v_mul_lo_u32 v7, v7, s3
	v_accvgpr_read_b32 v8, a51
	v_cvt_f16_f32_e32 v8, v8
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a33
	v_add_u32_e32 v0, v9, v14
	v_accvgpr_read_b32 v9, a34
	v_accvgpr_read_b32 v1, a32
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
	v_accvgpr_read_b32 v6, a37
	v_accvgpr_read_b32 v9, a38
	v_accvgpr_read_b32 v10, a39
	v_accvgpr_read_b32 v0, a36
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
	v_accvgpr_read_b32 v6, a41
	v_accvgpr_read_b32 v9, a42
	v_accvgpr_read_b32 v10, a43
	v_accvgpr_read_b32 v0, a40
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
	v_accvgpr_read_b32 v10, a3
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
	global_store_short v[0:1], v8, s[16:17] offset:1734
	v_accvgpr_read_b32 v6, a53
	v_accvgpr_read_b32 v7, a54
	v_accvgpr_read_b32 v8, a55
	v_accvgpr_read_b32 v0, a52
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s2, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v6, off offset:1106
	global_store_short v[0:1], v7, off offset:1684
	global_store_short v[0:1], v8, off offset:2262
	v_accvgpr_read_b32 v6, a57
	v_accvgpr_read_b32 v7, a58
	v_accvgpr_read_b32 v8, a59
	v_accvgpr_read_b32 v0, a56
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_add_co_u32_e32 v0, vcc, s1, v5
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v6, off offset:1634
	global_store_short v[0:1], v7, off offset:2212
	global_store_short v[0:1], v8, off offset:2790
	v_or_b32_e32 v7, 0x60, v16
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
	v_sub_u32_e32 v9, v8, v13
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
	v_sub_u32_e32 v8, v8, v15
	v_add_u32_e32 v7, v8, v7
	v_mul_lo_u32 v7, v7, s3
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v6, a1
	v_add_u32_e32 v0, v9, v14
	v_accvgpr_read_b32 v9, a2
	v_accvgpr_read_b32 v1, a0
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
	v_accvgpr_read_b32 v6, a5
	v_accvgpr_read_b32 v9, a6
	v_accvgpr_read_b32 v10, a7
	v_accvgpr_read_b32 v0, a4
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
	v_accvgpr_read_b32 v6, a9
	v_accvgpr_read_b32 v9, a10
	v_accvgpr_read_b32 v10, a11
	v_accvgpr_read_b32 v0, a8
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
	v_accvgpr_read_b32 v0, a12
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_accvgpr_read_b32 v5, a14
	v_accvgpr_read_b32 v6, a15
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a13
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v5, a17
	v_accvgpr_read_b32 v6, a18
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a19
	v_accvgpr_read_b32 v1, a16
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
	v_accvgpr_read_b32 v5, a21
	v_accvgpr_read_b32 v6, a22
	v_accvgpr_read_b32 v7, a23
	v_accvgpr_read_b32 v0, a20
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
	v_accvgpr_read_b32 v5, a25
	v_accvgpr_read_b32 v6, a26
	v_accvgpr_read_b32 v7, a27
	v_accvgpr_read_b32 v0, a24
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
	v_accvgpr_read_b32 v0, a28
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s0, v4
	v_accvgpr_read_b32 v4, a30
	v_accvgpr_read_b32 v5, a31
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a29
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
; codeLenInByte = 8516
; NumSgprs: 37
; NumVgprs: 94
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
