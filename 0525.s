	.text
	;.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
	.weak	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw ; -- Begin function gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
	.p2align	8
	.type	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw,@function
gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw: ; @gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
; %bb.0:                                ; %entry
	s_mov_b32 s0, 0x71625345
	v_mov_b32_e32 v1, s0
	v_mul_hi_i32 v1, s6, v1
	v_and_b32_e32 v5, 0x80, v0
	v_sub_u32_e32 v5, v0, v5
	v_ashrrev_i32_e32 v8, 31, v5
	v_lshrrev_b32_e32 v8, 25, v8
	v_lshrrev_b32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v1, 11, v1
	v_add_u32_e32 v1, v1, v2
	v_add_u32_e32 v8, v5, v8
	s_mov_b32 s1, 0xffedf0
	v_mov_b32_e32 v2, s6
	v_ashrrev_i32_e32 v9, 7, v8
	v_mad_i32_i24 v2, v1, s1, v2
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshrrev_b32_e32 v7, 7, v0
	v_lshlrev_b32_e32 v9, 3, v9
	v_lshrrev_b32_e32 v3, 29, v3
	v_lshl_add_u32 v10, v7, 4, v9
	s_mov_b32 s2, 0x38e38e39
	v_add_u32_e32 v3, v2, v3
	v_mul_hi_i32 v11, v10, s2
	v_ashrrev_i32_e32 v4, 3, v3
	v_and_b32_e32 v3, -8, v3
	v_sub_u32_e32 v2, v2, v3
	v_and_b32_e32 v8, 0xffffff80, v8
	v_lshlrev_b32_e32 v3, 7, v4
	v_and_b32_e32 v4, 0xfc, v0
	v_lshlrev_b32_e32 v2, 8, v2
	v_sub_u32_e32 v8, v5, v8
	v_lshrrev_b32_e32 v5, 31, v11
	v_ashrrev_i32_e32 v11, 1, v11
	v_or_b32_e32 v15, v2, v4
	s_movk_i32 s1, 0xa20
	v_mul_lo_u32 v12, v15, s1
	v_add_u32_e32 v11, v11, v5
	s_mov_b32 s1, 0xfffff7
	v_mad_i32_i24 v16, v11, s1, v10
	v_add_u32_e32 v10, v8, v3
	s_load_dwordx2 s[18:19], s[4:5], 0x0
	v_mul_hi_i32 v13, v10, s0
	s_load_dwordx2 s[20:21], s[4:5], 0x8
	v_sub_u32_e32 v6, v0, v4
	v_mul_i32_i24_e32 v4, 0x510000, v1
	v_lshl_add_u32 v14, v6, 3, v4
	s_movk_i32 s24, 0x4c9
	v_lshrrev_b32_e32 v4, 31, v13
	v_ashrrev_i32_e32 v13, 7, v13
	s_mov_b32 s23, 0x27000
	s_mov_b32 s22, -1
	v_add_lshl_u32 v23, v14, v12, 1
	s_movk_i32 s2, 0xffc
	v_add_u32_e32 v4, v13, v4
	s_mov_b32 s0, 0xfffedf
	v_mul_i32_i24_e32 v31, s24, v11
	v_mad_i32_i24 v17, v4, s0, v10
	v_lshlrev_b32_e32 v32, 3, v8
	v_lshl_add_u32 v33, v7, 11, v9
	s_mov_b32 s1, 0x55555556
	v_mul_hi_i32 v27, v16, s1
	s_mov_b32 s0, 0x78787879
	v_mul_hi_i32 v18, v17, s0
	v_lshlrev_b32_e32 v34, 4, v0
	v_lshrrev_b32_e32 v28, 31, v27
	v_add_u32_e32 v5, v27, v28
	v_mul_lo_u32 v37, v5, -3
	v_and_b32_e32 v35, 0xfc0, v34
	v_lshl_or_b32 v36, v6, 12, v35
	v_lshrrev_b32_e32 v38, 31, v18
	v_add_u32_e32 v16, v37, v16
	v_ashrrev_i32_e32 v18, 3, v18
	v_add_u32_e32 v29, v4, v1
	s_mov_b32 s1, 0x56220
	s_movk_i32 s0, 0xffef
	v_add_u32_e32 v18, v18, v38
	v_mul_lo_u32 v29, v29, s1
	v_mul_lo_u32 v38, v18, s0
	v_lshl_add_u32 v18, v18, 1, v5
	v_mul_lo_u32 v18, v18, 35
	v_add3_u32 v29, v29, v31, v16
	v_add_lshl_u32 v17, v38, v17, 1
	v_mov_b32_e32 v30, s24
	v_add3_u32 v17, v29, v18, v17
	s_load_dwordx2 s[16:17], s[4:5], 0x10
	s_waitcnt lgkmcnt(0)
	buffer_load_dwordx4 v[11:14], v23, s[20:23], s2 offen offset:1092
	s_movk_i32 s2, 0x1ffc
	s_mov_b32 s27, s7
	s_movk_i32 s26, 0x2000
	v_add_u32_e32 v6, s26, v36
	v_ashrrev_i32_e32 v18, 31, v17
	v_and_b32_e32 v4, 0xc0, v0
	v_sub_u32_e32 v0, v0, v4
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
	buffer_load_dwordx4 v[7:10], v23, s[20:23], 0 offen
	buffer_load_dwordx4 v[19:22], v23, s[20:23], s2 offen offset:2180
	s_movk_i32 s2, 0x2ffc
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
	s_waitcnt vmcnt(1)
	ds_write_b128 v36, v[7:10] offset:8192
	ds_write_b128 v36, v[11:14] offset:8208
	s_waitcnt vmcnt(0)
	ds_write_b128 v36, v[19:22] offset:8224
	v_add_u32_e32 v9, 1, v16
	v_add_u32_e32 v10, -2, v16
	v_cmp_gt_i32_e32 vcc, 3, v9
	v_cndmask_b32_e32 v10, v10, v9, vcc
	v_cmp_lt_i32_e32 vcc, 2, v9
	v_addc_co_u32_e64 v9, s[0:1], v27, v28, vcc
	v_addc_co_u32_e64 v11, s[0:1], -3, v5, vcc
	v_cmp_gt_i32_e64 s[0:1], 3, v9
	v_cndmask_b32_e64 v9, v11, v9, s[0:1]
	v_sub_u32_e32 v9, v9, v5
	v_mul_lo_u32 v9, v9, 35
	v_sub_u32_e32 v10, v10, v16
	v_add_u32_e32 v13, v10, v17
	v_cndmask_b32_e64 v11, v30, 0, s[0:1]
	v_add_u32_e32 v14, v9, v13
	v_add_u32_e32 v9, v14, v11
	v_add_u32_e32 v11, 2, v16
	v_add_u32_e32 v12, -1, v16
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_add_u32_e32 v22, -2, v5
	v_addc_co_u32_e64 v31, s[14:15], 2, v5, vcc
	v_lshlrev_b64 v[7:8], 1, v[17:18]
	s_movk_i32 s14, 0x992
	v_accvgpr_write_b32 a32, 0
	v_accvgpr_write_b32 a127, 0
	v_accvgpr_write_b32 a126, 0
	v_accvgpr_write_b32 a125, 0
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
	global_load_ushort v18, v[7:8], s[18:19]
	v_accvgpr_write_b32 a111, 0
	v_accvgpr_write_b32 a110, 0
	v_accvgpr_write_b32 a109, 0
	v_accvgpr_write_b32 a108, 0
	v_accvgpr_write_b32 a107, 0
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
	s_mov_b32 s25, 0
	s_mov_b32 s32, s27
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[23:26], v23, s[20:23], s2 offen offset:3268
	v_cmp_gt_i32_e64 s[2:3], 3, v11
	v_cndmask_b32_e64 v12, v12, v11, s[2:3]
	v_cmp_lt_i32_e64 s[2:3], 2, v11
	v_addc_co_u32_e64 v11, s[4:5], v27, v28, s[2:3]
	v_addc_co_u32_e64 v19, s[4:5], -3, v5, s[2:3]
	v_cmp_gt_i32_e64 s[4:5], 3, v11
	v_cndmask_b32_e64 v11, v19, v11, s[4:5]
	v_sub_u32_e32 v11, v11, v5
	v_mul_lo_u32 v11, v11, 35
	v_sub_u32_e32 v12, v12, v16
	v_add_u32_e32 v20, v12, v17
	v_cndmask_b32_e64 v19, v30, 0, s[4:5]
	v_add_u32_e32 v21, v11, v20
	v_add_u32_e32 v11, v21, v19
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[11:12], 1, v[11:12]
	v_add_u32_e32 v19, 1, v5
	v_cmp_gt_i32_e64 s[6:7], 3, v19
	v_cndmask_b32_e64 v22, v22, v19, s[6:7]
	v_sub_u32_e32 v22, v22, v5
	v_mul_lo_u32 v22, v22, 35
	v_add_u32_e32 v28, 2, v5
	v_cmp_gt_i32_e64 s[12:13], 3, v28
	v_add_u32_e32 v22, v17, v22
	s_waitcnt vmcnt(0)
	ds_write_b128 v36, v[23:26] offset:8240
	v_addc_co_u32_e64 v26, s[10:11], 1, v5, s[2:3]
	s_nop 0
	s_nop 0
	global_load_ushort v23, v[9:10], s[18:19]
	global_load_ushort v24, v[11:12], s[18:19]
	v_addc_co_u32_e64 v11, s[8:9], -3, v19, vcc
	v_addc_co_u32_e64 v10, s[8:9], 1, v5, vcc
	v_cmp_gt_i32_e64 s[8:9], 3, v10
	v_cndmask_b32_e64 v10, v11, v10, s[8:9]
	v_sub_u32_e32 v10, v10, v5
	v_mul_lo_u32 v11, v10, 35
	v_cndmask_b32_e64 v9, v30, 0, s[6:7]
	v_cndmask_b32_e64 v12, v30, 0, s[8:9]
	v_add_u32_e32 v9, v22, v9
	v_add_u32_e32 v25, v11, v13
	v_add_u32_e32 v11, v25, v12
	v_ashrrev_i32_e32 v10, 31, v9
	v_ashrrev_i32_e32 v12, 31, v11
	v_addc_co_u32_e64 v19, s[10:11], -3, v19, s[2:3]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_lshlrev_b64 v[11:12], 1, v[11:12]
	v_cmp_gt_i32_e64 s[10:11], 3, v26
	v_cndmask_b32_e64 v19, v19, v26, s[10:11]
	v_sub_u32_e32 v19, v19, v5
	v_mul_lo_u32 v19, v19, 35
	v_addc_co_u32_e32 v36, vcc, -3, v28, vcc
	v_cmp_gt_i32_e32 vcc, 3, v31
	v_cndmask_b32_e32 v31, v36, v31, vcc
	v_add_u32_e32 v19, v19, v20
	v_sub_u32_e32 v31, v31, v5
	v_mul_lo_u32 v31, v31, 35
	s_nop 0
	s_nop 0
	global_load_ushort v26, v[9:10], s[18:19]
	global_load_ushort v27, v[11:12], s[18:19]
	v_add_u32_e32 v10, -1, v5
	v_cndmask_b32_e64 v10, v10, v28, s[12:13]
	v_sub_u32_e32 v10, v10, v5
	v_mul_lo_u32 v11, v10, 35
	v_cndmask_b32_e64 v9, v30, 0, s[10:11]
	v_cndmask_b32_e64 v12, v30, 0, s[12:13]
	v_add_u32_e32 v9, v19, v9
	v_add_u32_e32 v29, v17, v11
	v_add_u32_e32 v11, v29, v12
	v_ashrrev_i32_e32 v10, 31, v9
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_lshlrev_b64 v[11:12], 1, v[11:12]
	s_nop 0
	s_nop 0
	global_load_ushort v36, v[9:10], s[18:19]
	global_load_ushort v37, v[11:12], s[18:19]
	v_cndmask_b32_e64 v9, v30, 0, vcc
	v_addc_co_u32_e64 v10, vcc, 2, v5, s[2:3]
	v_addc_co_u32_e64 v11, vcc, -3, v28, s[2:3]
	v_cmp_gt_i32_e32 vcc, 3, v10
	v_cndmask_b32_e32 v10, v11, v10, vcc
	v_sub_u32_e32 v10, v10, v5
	v_mul_lo_u32 v11, v10, 35
	v_cndmask_b32_e64 v12, v30, 0, vcc
	v_add3_u32 v9, v9, v13, v31
	v_ashrrev_i32_e32 v10, 31, v9
	v_add3_u32 v11, v12, v20, v11
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	v_lshlrev_b64 v[11:12], 1, v[11:12]
	s_nop 0
	s_nop 0
	global_load_ushort v20, v[9:10], s[18:19]
	global_load_ushort v28, v[11:12], s[18:19]
	global_load_ushort v31, v[7:8], s[18:19] offset:2450
	v_mov_b32_e32 v11, s14
	v_cndmask_b32_e64 v7, v11, v30, s[0:1]
	v_cndmask_b32_e64 v9, v11, v30, s[4:5]
	v_add_u32_e32 v7, v14, v7
	v_add_u32_e32 v9, v21, v9
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_mov_b32 s0, 0xa20000
	s_nop 0
	s_nop 0
	global_load_ushort v21, v[7:8], s[18:19]
	global_load_ushort v38, v[9:10], s[18:19]
	v_cndmask_b32_e64 v7, v11, v30, s[6:7]
	v_cndmask_b32_e64 v9, v11, v30, s[8:9]
	v_add_u32_e32 v7, v22, v7
	v_add_u32_e32 v9, v25, v9
	v_ashrrev_i32_e32 v8, 31, v7
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_nop 0
	s_nop 0
	global_load_ushort v22, v[7:8], s[18:19]
	global_load_ushort v25, v[9:10], s[18:19]
	v_cndmask_b32_e64 v7, v11, v30, s[10:11]
	v_cndmask_b32_e64 v9, v11, v30, s[12:13]
	v_add_u32_e32 v7, v19, v7
	v_ashrrev_i32_e32 v8, 31, v7
	v_add_u32_e32 v9, v29, v9
	v_ashrrev_i32_e32 v10, 31, v9
	v_lshlrev_b64 v[7:8], 1, v[7:8]
	v_lshlrev_b64 v[9:10], 1, v[9:10]
	s_nop 0
	s_nop 0
	global_load_ushort v19, v[7:8], s[18:19]
	global_load_ushort v29, v[9:10], s[18:19]
	v_mov_b32_e32 v7, 0xffff
	v_add_lshl_u32 v10, v33, v32, 1
	v_lshlrev_b32_e32 v9, 4, v0
	s_waitcnt vmcnt(11)
	v_and_b32_e32 v8, v7, v27
	s_waitcnt vmcnt(10)
	v_lshl_or_b32 v13, v36, 16, v8
	s_waitcnt vmcnt(9)
	v_and_b32_e32 v8, v7, v37
	s_waitcnt vmcnt(8)
	v_lshl_or_b32 v14, v20, 16, v8
	v_and_b32_e32 v8, v7, v24
	v_lshl_or_b32 v12, v26, 16, v8
	v_and_b32_e32 v8, v7, v18
	v_lshl_or_b32 v11, v23, 16, v8
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v8, v7, v28
	ds_write_b128 v10, v[11:14]
	s_waitcnt vmcnt(6)
	v_lshl_or_b32 v11, v31, 16, v8
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v8, v7, v19
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v14, v29, 16, v8
	v_and_b32_e32 v8, v7, v22
	v_lshl_or_b32 v13, v25, 16, v8
	v_and_b32_e32 v8, v7, v21
	v_lshl_or_b32 v12, v38, 16, v8
	ds_write_b128 v10, v[11:14] offset:2048
	v_mul_lo_u32 v13, v1, s0
	s_movk_i32 s0, 0x1440
	v_mul_lo_u32 v14, v15, s0
	v_lshlrev_b32_e32 v8, 4, v4
	v_add3_u32 v11, v8, v9, s26
	v_or_b32_e32 v12, s26, v34
	v_add3_u32 v13, v13, v14, v34
	v_sub_u32_e32 v13, v13, v35
	v_add_u32_e32 v8, 0x400, v9
	v_add_u32_e32 v13, 0x3d00, v13
	v_mov_b32_e32 v14, 0x1324
	v_mov_b32_e32 v15, 0xe5b
BB0_1:                                  ; %if.then.i29.i.i.i.i698.i.i.i.i6032.i
                                        ; =>This Inner Loop Header: Depth=1
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	ds_read_b128 v[18:21], v12
	ds_read_b128 v[22:25], v9
	ds_read_b128 v[26:29], v8
	ds_read_b128 v[30:33], v8 offset:2048
	ds_read_b128 v[34:37], v11 offset:4096
	ds_read_b128 v[38:41], v9 offset:2048
	v_add_u32_e32 v42, 2, v16
	v_cmp_lt_i32_e32 vcc, 2, v42
	v_addc_co_u32_e64 v44, s[0:1], 1, v5, vcc
	s_waitcnt lgkmcnt(4)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[64:95], v[18:19], v[22:23], a[64:95] cbsz:1 abid:1
	s_add_i32 s25, s25, 4
	s_cmpk_lt_u32 s25, 0x140
	v_add_u32_e32 v43, -1, v16
	v_cmp_gt_i32_e64 s[0:1], 3, v42
	v_cndmask_b32_e64 v78, v43, v42, s[0:1]
	v_addc_co_u32_e32 v42, vcc, -2, v5, vcc
	v_cmp_gt_i32_e32 vcc, 3, v44
	v_add_u32_e32 v80, 2, v78
	v_add_u32_e32 v79, 1, v78
	v_add_u32_e32 v84, 0xffffc340, v13
	v_add_u32_e32 v85, 0xffffd780, v13
	v_cndmask_b32_e32 v81, v42, v44, vcc
	v_sub_u32_e32 v16, v17, v16
	v_cndmask_b32_e32 v86, v14, v15, vcc
	v_add_u32_e32 v17, -2, v78

s_setprio(0)
s_waitcnt lgkmcnt(3)

s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[18:19], v[26:27], a[32:63] cbsz:1
	v_cmp_gt_i32_e32 vcc, 3, v79
	v_cmp_gt_i32_e64 s[0:1], 3, v80
	v_cndmask_b32_e32 v17, v17, v79, vcc
	v_cmp_lt_i32_e32 vcc, 2, v80
	v_sub_u32_e32 v88, v17, v78
	v_addc_co_u32_e64 v17, s[2:3], 0, v81, vcc
	v_add_u32_e32 v93, 2, v81
	v_addc_co_u32_e64 v89, s[2:3], -3, v81, vcc
	v_addc_co_u32_e64 v92, s[2:3], 1, v81, vcc
	v_addc_co_u32_e64 v96, s[2:3], 2, v81, vcc
	v_cmp_gt_i32_e64 s[4:5], 3, v17
	v_add_u32_e32 v90, -2, v81
	v_add_u32_e32 v94, -1, v81
	v_cmp_gt_i32_e64 s[10:11], 3, v93
	v_cndmask_b32_e64 v17, v89, v17, s[4:5]

s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[96:127], v[18:19], v[26:27], a[96:127] cbsz:1 abid:1

	v_mov_b32_e32 v82, s24
	v_mov_b32_e32 v83, s14
	v_sub_u32_e32 v17, v17, v81
	v_cndmask_b32_e64 v98, v82, 0, s[4:5]
	v_cndmask_b32_e64 v100, v82, 0, s[10:11]
	v_cndmask_b32_e64 v103, v83, v82, s[4:5]
	v_add_u32_e32 v102, 0xffffebc0, v13
		ds_read_b128 v[54:57], v11 offset:8192
	ds_read_b128 v[46:49], v8 offset:4096
	ds_read_b128 v[58:61], v11 offset:12288
	ds_read_b128 v[62:65], v9 offset:4096
	ds_read_b128 v[66:69], v9 offset:6144
	ds_read_b128 v[50:53], v8 offset:6144
	s_nop 0
	s_nop 0
s_setprio(0)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[0:31], v[18:19], v[22:23], a[0:31] cbsz:1
	buffer_load_dwordx4 v[70:73], v84, s[20:23], 0 offen
	buffer_load_dwordx4 v[74:77], v85, s[20:23], 0 offen
	v_add_u32_e32 v85, -1, v78
	v_cndmask_b32_e64 v80, v85, v80, s[0:1]
	v_cmp_lt_i32_e64 s[0:1], 2, v79
	v_add_u32_e32 v84, v16, v78
	v_mov_b32_e32 v16, v78
	v_sub_u32_e32 v78, v80, v78
	v_add_u32_e32 v80, 1, v81
	v_addc_co_u32_e64 v91, s[2:3], 1, v81, s[0:1]
	v_addc_co_u32_e64 v85, s[2:3], 0, v81, s[0:1]
	v_addc_co_u32_e64 v87, s[2:3], -3, v81, s[0:1]
	v_addc_co_u32_e64 v95, s[2:3], 2, v81, s[0:1]
	v_cmp_gt_i32_e64 s[2:3], 3, v85
	v_cmp_gt_i32_e64 s[6:7], 3, v80
s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[64:95], v[20:21], v[24:25], a[64:95] cbsz:1 abid:1
	v_cndmask_b32_e64 v85, v87, v85, s[2:3]
	v_cndmask_b32_e64 v87, v90, v80, s[6:7]
	v_cndmask_b32_e64 v90, v94, v93, s[10:11]
	v_addc_co_u32_e64 v89, s[8:9], -3, v80, s[0:1]
	v_addc_co_u32_e64 v94, s[0:1], -3, v93, s[0:1]
	v_addc_co_u32_e64 v80, s[8:9], -3, v80, vcc
	v_addc_co_u32_e32 v93, vcc, -3, v93, vcc
	v_sub_u32_e32 v79, v81, v5
	v_cmp_gt_i32_e64 s[8:9], 3, v92
	v_cmp_gt_i32_e64 s[12:13], 3, v91
	v_cmp_gt_i32_e64 s[0:1], 3, v95
	v_cmp_gt_i32_e32 vcc, 3, v96


	v_cndmask_b32_e64 v80, v80, v92, s[8:9]
	v_sub_u32_e32 v87, v87, v81
	v_cndmask_b32_e64 v89, v89, v91, s[12:13]

s_setprio(0)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[32:63], v[20:21], v[28:29], a[32:63] cbsz:1
	
	v_cndmask_b32_e64 v94, v94, v95, s[0:1]
	v_cndmask_b32_e32 v93, v93, v96, vcc
	v_mul_lo_u32 v79, v79, 35
	v_sub_u32_e32 v85, v85, v81
	v_sub_u32_e32 v90, v90, v81
	v_sub_u32_e32 v80, v80, v81
	v_mov_b32_e32 v5, v81
	v_cndmask_b32_e64 v97, v82, 0, s[2:3]
	v_cndmask_b32_e64 v99, v82, 0, s[6:7]
	v_cndmask_b32_e64 v91, v82, 0, s[12:13]
	v_cndmask_b32_e64 v92, v82, 0, s[8:9]
	v_cndmask_b32_e64 v95, v82, 0, s[0:1]
	v_cndmask_b32_e64 v96, v82, 0, vcc
	v_cndmask_b32_e64 v101, v83, v82, s[2:3]
	v_cndmask_b32_e64 v104, v83, v82, s[6:7]
s_setprio(0)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[96:127], v[20:21], v[28:29], a[96:127] cbsz:1 abid:1


	v_cndmask_b32_e64 v105, v83, v82, s[12:13]
	v_cndmask_b32_e64 v106, v83, v82, s[8:9]
	v_cndmask_b32_e64 v83, v83, v82, s[10:11]
	v_mul_lo_u32 v82, v85, 35
	v_mul_lo_u32 v85, v17, 35
	v_sub_u32_e32 v17, v89, v81
	v_mul_lo_u32 v89, v90, 35
	v_sub_u32_e32 v90, v94, v81
	v_sub_u32_e32 v81, v93, v81
	v_mul_lo_u32 v87, v87, 35
	v_mul_lo_u32 v93, v17, 35
	v_mul_lo_u32 v107, v80, 35
	v_mul_lo_u32 v90, v90, 35
	v_mul_lo_u32 v81, v81, 35
	v_add3_u32 v17, v84, v86, v79
s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[0:31], v[20:21], v[24:25], a[0:31] cbsz:1
	v_add_u32_e32 v108, v17, v88
	v_add_u32_e32 v109, v17, v78
	v_ashrrev_i32_e32 v18, 31, v17
	v_add_u32_e32 v87, v87, v17
	v_add_u32_e32 v89, v89, v17
	v_add3_u32 v26, v109, v98, v85
	v_add3_u32 v22, v108, v97, v82
	v_add3_u32 v78, v108, v101, v82
	v_add3_u32 v86, v109, v92, v107
	v_add_u32_e32 v88, v89, v100
	v_add_u32_e32 v100, v89, v83
	v_add_u32_e32 v82, v87, v99
	v_add3_u32 v92, v109, v96, v81
	v_add3_u32 v80, v109, v103, v85



	v_lshlrev_b64 v[18:19], 1, v[17:18]
s_setprio(0)


s_waitcnt lgkmcnt(0)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[64:95], v[34:35], v[38:39], a[64:95] cbsz:1 abid:1
	
	v_add_u32_e32 v94, v87, v104
	v_add3_u32 v84, v108, v91, v93
	v_add3_u32 v90, v108, v95, v90
	v_add3_u32 v96, v108, v105, v93
	v_add3_u32 v98, v109, v106, v107
	v_ashrrev_i32_e32 v23, 31, v22
	v_ashrrev_i32_e32 v27, 31, v26
	v_ashrrev_i32_e32 v79, 31, v78
	v_ashrrev_i32_e32 v81, 31, v80
	v_ashrrev_i32_e32 v83, 31, v82
	v_ashrrev_i32_e32 v85, 31, v84
	v_ashrrev_i32_e32 v87, 31, v86
	v_ashrrev_i32_e32 v89, 31, v88
	v_ashrrev_i32_e32 v91, 31, v90
	v_ashrrev_i32_e32 v93, 31, v92
s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[32:63], v[34:35], v[30:31], a[32:63] cbsz:1

	v_ashrrev_i32_e32 v95, 31, v94
	v_ashrrev_i32_e32 v97, 31, v96
	v_ashrrev_i32_e32 v99, 31, v98
	v_ashrrev_i32_e32 v101, 31, v100
	v_lshlrev_b64 v[22:23], 1, v[22:23]
	v_lshlrev_b64 v[26:27], 1, v[26:27]

	s_nop 0
	s_nop 0
	global_load_ushort v103, v[18:19], s[18:19]
	global_load_ushort v104, v[18:19], s[18:19] offset:2450
	v_lshlrev_b64 v[18:19], 1, v[78:79]
	v_lshlrev_b64 v[78:79], 1, v[80:81]
	v_lshlrev_b64 v[80:81], 1, v[82:83]
	v_lshlrev_b64 v[82:83], 1, v[84:85]
	v_lshlrev_b64 v[84:85], 1, v[86:87]

s_setprio(0)

s_setprio(1)
v_mfma_f32_32x32x4f16 a[96:127], v[34:35], v[30:31], a[96:127] cbsz:1 abid:1
	v_lshlrev_b64 v[86:87], 1, v[88:89]
	v_lshlrev_b64 v[88:89], 1, v[90:91]
	v_lshlrev_b64 v[90:91], 1, v[92:93]
	v_lshlrev_b64 v[92:93], 1, v[94:95]
	v_lshlrev_b64 v[94:95], 1, v[96:97]
	v_lshlrev_b64 v[96:97], 1, v[98:99]
	v_lshlrev_b64 v[98:99], 1, v[100:101]


	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[42:45], v13, s[20:23], 0 offen
	global_load_ushort v100, v[22:23], s[18:19]
	global_load_ushort v101, v[26:27], s[18:19]
	global_load_ushort v111, v[18:19], s[18:19]
	global_load_ushort v112, v[78:79], s[18:19]
	global_load_ushort v105, v[80:81], s[18:19]
s_setprio(0)


s_setprio(1)
v_mfma_f32_32x32x4f16 a[0:31], v[34:35], v[38:39], a[0:31] cbsz:1
	global_load_ushort v106, v[82:83], s[18:19]
	global_load_ushort v107, v[84:85], s[18:19]
	global_load_ushort v108, v[86:87], s[18:19]
	global_load_ushort v109, v[88:89], s[18:19]
	global_load_ushort v110, v[90:91], s[18:19]
	global_load_ushort v113, v[92:93], s[18:19]
	global_load_ushort v114, v[94:95], s[18:19]
	global_load_ushort v115, v[96:97], s[18:19]
	global_load_ushort v116, v[98:99], s[18:19]

s_setprio(0)
s_setprio(1)
v_mfma_f32_32x32x4f16 a[64:95], v[36:37], v[40:41], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[36:37], v[32:33], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[36:37], v[40:41], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[36:37], v[32:33], a[96:127] cbsz:1 abid:1
s_setprio(0)
	s_waitcnt lgkmcnt(2)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[54:55], v[62:63], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[54:55], v[62:63], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[54:55], v[46:47], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[54:55], v[46:47], a[96:127] cbsz:1 abid:1


	v_mfma_f32_32x32x4f16 a[0:31], v[56:57], v[64:65], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[56:57], v[64:65], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[56:57], v[48:49], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[56:57], v[48:49], a[96:127] cbsz:1 abid:1
s_setprio(0)

	s_waitcnt lgkmcnt(1)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[58:59], v[66:67], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[58:59], v[66:67], a[64:95] cbsz:1 abid:1
s_setprio(0)
	s_waitcnt lgkmcnt(0)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[58:59], v[50:51], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[58:59], v[50:51], a[96:127] cbsz:1 abid:1
	v_add_u32_e32 v13, 64, v13
	s_nop 0
	s_nop 0
	buffer_load_dwordx4 v[18:21], v102, s[20:23], 0 offen
s_setprio(0)
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[60:61], v[68:69], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[60:61], v[68:69], a[64:95] cbsz:1 abid:1
s_setprio(0)
	s_waitcnt vmcnt(15)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[60:61], v[52:53], a[32:63] cbsz:1
	ds_write_b128 v6, v[42:45] offset:48
	ds_write_b128 v6, v[70:73]
	ds_write_b128 v6, v[74:77] offset:16
s_setprio(0)
	s_waitcnt vmcnt(7)
	v_and_b32_e32 v22, v7, v108
	s_waitcnt vmcnt(5)
	v_and_b32_e32 v24, v7, v110
	s_waitcnt vmcnt(4)
	v_and_b32_e32 v26, v7, v113
	s_waitcnt vmcnt(2)
	v_and_b32_e32 v25, v7, v115
	s_waitcnt vmcnt(1)
	v_lshl_or_b32 v25, v116, 16, v25
	s_waitcnt vmcnt(0)
s_setprio(1)
	v_mfma_f32_32x32x4f16 a[96:127], v[60:61], v[52:53], a[96:127] cbsz:1 abid:1
	ds_write_b128 v6, v[18:21] offset:32
	v_and_b32_e32 v18, v7, v103
	v_and_b32_e32 v19, v7, v101
	v_and_b32_e32 v20, v7, v111
	v_and_b32_e32 v21, v7, v106
	v_lshl_or_b32 v18, v100, 16, v18
	v_lshl_or_b32 v23, v112, 16, v20
	v_lshl_or_b32 v20, v107, 16, v21
	v_lshl_or_b32 v21, v109, 16, v22
	v_lshl_or_b32 v22, v104, 16, v24
	v_lshl_or_b32 v19, v105, 16, v19
	v_lshl_or_b32 v24, v114, 16, v26
	ds_write_b128 v10, v[18:21]
	ds_write_b128 v10, v[22:25] offset:2048
s_setprio(0)
	s_cbranch_scc1 BB0_1
; %bb.2:                                ; %_ZNK2ck48GridwiseBatchGemmXdlops_gkmkpack_gknkpack_gmn_v2ILi4624ELi256EDF16_fDF16_KNS_27TransformedTensorDescriptorINS_22NativeTensorDescriptorIJNS_15NativeDimensionILi1ELi5308416EEENS3_ILi2048ELi2592EEENS3_ILi2592ELi1EEEEEENS_5TupleIJNS_11PassThroughILi1EEENS9_ILi2048EEENS_7UnMergeINS_8SequenceIJLi324ELi8EEEEEEEEENS8_IJNSD_IJLi0EEEENSD_IJLi1EEEENSD_IJLi2EEEEEEENS8_IJSH_SJ_NSD_IJLi1ELi3EEEEEEEEEKNS1_INS1_INS1_INS1_INS2_IJNS3_ILi1ELi352800EEENS3_ILi256ELi352800EEENS3_ILi288ELi1225EEENS3_ILi35ELi35EEENS3_ILi35ELi1EEEEEENS8_IJSA_NS9_ILi256EEENS9_ILi288EEENS_3PadINSD_IJLi35ELi35EEEENSD_IJLi0ELi0EEEESZ_Lb0EEEEEENS8_IJSH_SI_SJ_NSD_IJLi3ELi4EEEEEEES13_EENS8_IJSA_SV_SW_NS_5EmbedILi35ENSD_IJLi3ELi17EEEENSD_IJLi1ELi2ELi0EEEELb0EEES18_EEENS8_IJSH_SI_SJ_NSD_IJLi3EEEENSD_IJLi4EEEEEEENS8_IJSH_SI_SJ_S12_NSD_IJLi5ELi6EEEEEEEEENS8_IJSA_NS_5MergeINSD_IJLi288ELi3ELi3EEEEEENS1G_INSD_IJLi256ELi17ELi17EEEEEEEEENS8_IJSH_NSD_IJLi2ELi3ELi5EEEENSD_IJLi1ELi4ELi6EEEEEEESK_EENS8_IJSA_SF_NS9_ILi73984EEEEEESK_NS8_IJSH_SL_SJ_EEEEEKNS1_INS2_
	;;#ASMSTART
	    s_waitcnt lgkmcnt(0) 
     s_barrier     
	;;#ASMEND
	ds_read_b128 v[12:15], v12
	ds_read_b128 v[16:19], v11 offset:4096
	ds_read_b128 v[20:23], v9
	ds_read_b128 v[24:27], v9 offset:2048
	ds_read_b128 v[28:31], v8
	ds_read_b128 v[32:35], v8 offset:2048
	v_mov_b32_e32 v10, s17
	s_waitcnt lgkmcnt(3)
	v_mfma_f32_32x32x4f16 a[0:31], v[12:13], v[20:21], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[12:13], v[20:21], a[64:95] cbsz:1 abid:1
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[12:13], v[28:29], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[12:13], v[28:29], a[96:127] cbsz:1 abid:1
	s_mov_b32 s4, 0x71625345
	s_mov_b32 s5, 0x90800
	s_movk_i32 s3, 0x121
	s_movk_i32 s2, 0x1000
	s_movk_i32 s1, 0x2000
	s_movk_i32 s0, 0x3000
	v_mfma_f32_32x32x4f16 a[0:31], v[14:15], v[22:23], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[14:15], v[22:23], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[14:15], v[30:31], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[14:15], v[30:31], a[96:127] cbsz:1 abid:1
	ds_read_b128 v[12:15], v11 offset:8192
	ds_read_b128 v[28:31], v9 offset:4096
	ds_read_b128 v[36:39], v9 offset:6144
	ds_read_b128 v[40:43], v8 offset:4096
	ds_read_b128 v[5:8], v8 offset:6144
	ds_read_b128 v[20:23], v11 offset:12288
	v_ashrrev_i32_e32 v9, 31, v0
	v_lshrrev_b32_e32 v9, 27, v9
	v_add_u32_e32 v9, v0, v9
	v_ashrrev_i32_e32 v11, 5, v9
	v_and_b32_e32 v9, 0xffffffe0, v9
	v_sub_u32_e32 v0, v0, v9
	v_mfma_f32_32x32x4f16 a[0:31], v[16:17], v[24:25], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[16:17], v[24:25], a[64:95] cbsz:1 abid:1
	s_waitcnt lgkmcnt(6)
	v_mfma_f32_32x32x4f16 a[32:63], v[16:17], v[32:33], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[16:17], v[32:33], a[96:127] cbsz:1 abid:1
	v_lshlrev_b32_e32 v9, 2, v11
	v_add3_u32 v16, v2, v9, v4
	v_add_u32_e32 v0, v0, v3
	v_ashrrev_i32_e32 v2, 31, v16
	v_lshrrev_b32_e32 v2, 29, v2
	v_mul_hi_i32 v3, v0, s4
	v_add_u32_e32 v2, v16, v2
	v_lshrrev_b32_e32 v4, 31, v3
	v_ashrrev_i32_e32 v3, 7, v3
	v_add_u32_e32 v17, v3, v4
	v_mfma_f32_32x32x4f16 a[0:31], v[18:19], v[26:27], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[18:19], v[26:27], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[18:19], v[34:35], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[18:19], v[34:35], a[96:127] cbsz:1 abid:1
	v_add_u32_e32 v4, v17, v1
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x4f16 a[0:31], v[12:13], v[28:29], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[12:13], v[28:29], a[64:95] cbsz:1 abid:1
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[12:13], v[40:41], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[12:13], v[40:41], a[96:127] cbsz:1 abid:1
	v_and_b32_e32 v13, -8, v2
	v_sub_u32_e32 v2, v16, v13
	v_ashrrev_i32_e32 v9, 31, v2
	v_lshrrev_b32_e32 v3, 30, v9
	v_add_u32_e32 v2, v2, v3
	v_sub_u32_e32 v9, v13, v17
	v_and_b32_e32 v18, -4, v2
	v_add_u32_e32 v2, v9, v18
	v_mul_lo_u32 v3, v4, s5
	v_mul_lo_u32 v2, v2, s3
	v_mfma_f32_32x32x4f16 a[0:31], v[14:15], v[30:31], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[14:15], v[30:31], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[14:15], v[42:43], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[14:15], v[42:43], a[96:127] cbsz:1 abid:1
	v_add_u32_e32 v19, v3, v0
	v_add_u32_e32 v2, v2, v19
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_add_u32_e32 v14, 32, v0
	v_add_co_u32_e32 v11, vcc, s16, v2
	v_addc_co_u32_e32 v12, vcc, v10, v3, vcc
	v_mul_hi_i32 v15, v14, s4
	v_add_co_u32_e32 v4, vcc, s2, v11
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[0:31], v[20:21], v[36:37], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[20:21], v[36:37], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[20:21], v[5:6], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[20:21], v[5:6], a[96:127] cbsz:1 abid:1
	v_addc_co_u32_e32 v5, vcc, 0, v12, vcc
	v_add_co_u32_e32 v9, vcc, s1, v11
	v_addc_co_u32_e32 v10, vcc, 0, v12, vcc
	v_add_co_u32_e32 v11, vcc, s0, v11
	v_addc_co_u32_e32 v12, vcc, 0, v12, vcc
	v_mfma_f32_32x32x4f16 a[0:31], v[22:23], v[38:39], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[64:95], v[22:23], v[38:39], a[64:95] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[22:23], v[7:8], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[96:127], v[22:23], v[7:8], a[96:127] cbsz:1 abid:1
	s_nop 7
	s_nop 6
	v_accvgpr_read_b32 v6, a0
	v_accvgpr_read_b32 v7, a1
	v_accvgpr_read_b32 v8, a2
	v_accvgpr_read_b32 v20, a3
	v_accvgpr_read_b32 v21, a4
	v_accvgpr_read_b32 v22, a5
	v_accvgpr_read_b32 v23, a6
	v_accvgpr_read_b32 v24, a7
	v_accvgpr_read_b32 v25, a8
	v_accvgpr_read_b32 v26, a9
	v_accvgpr_read_b32 v27, a10
	v_accvgpr_read_b32 v28, a11
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 2, 2), 0
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v20, v20
	v_cvt_f16_f32_e32 v21, v21
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v23, v23
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v26, v26
	v_cvt_f16_f32_e32 v27, v27
	v_cvt_f16_f32_e32 v28, v28
	v_accvgpr_read_b32 v29, a12
	v_accvgpr_read_b32 v30, a13
	v_accvgpr_read_b32 v31, a14
	v_cvt_f16_f32_e32 v29, v29
	v_cvt_f16_f32_e32 v30, v30
	v_cvt_f16_f32_e32 v31, v31
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v6, s[16:17]
	global_store_short v[2:3], v7, s[16:17] offset:578
	global_store_short v[2:3], v8, s[16:17] offset:1156
	global_store_short v[2:3], v20, s[16:17] offset:1734
	global_store_short v[4:5], v21, off offset:528
	global_store_short v[4:5], v22, off offset:1106
	global_store_short v[4:5], v23, off offset:1684
	global_store_short v[4:5], v24, off offset:2262
	global_store_short v[9:10], v25, off offset:1056
	global_store_short v[9:10], v26, off offset:1634
	global_store_short v[9:10], v27, off offset:2212
	global_store_short v[9:10], v28, off offset:2790
	v_lshrrev_b32_e32 v3, 31, v15
	v_ashrrev_i32_e32 v4, 7, v15
	v_add_u32_e32 v4, v4, v3
	v_accvgpr_read_b32 v2, a15
	v_add_u32_e32 v3, v4, v1
	v_sub_u32_e32 v5, v13, v4
	v_add_u32_e32 v5, v5, v18
	v_mul_lo_u32 v3, v3, s5
	v_cvt_f16_f32_e32 v2, v2
	v_mul_lo_u32 v5, v5, s3
	v_accvgpr_read_b32 v9, a17
	v_add_u32_e32 v6, v3, v14
	v_accvgpr_read_b32 v10, a18
	v_accvgpr_read_b32 v3, a16
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_mov_b32_e32 v7, s17
	v_accvgpr_read_b32 v14, a67
	v_cvt_f16_f32_e32 v14, v14
	s_nop 0
	s_nop 0
	global_store_short v[11:12], v29, off offset:1584
	global_store_short v[11:12], v30, off offset:2162
	global_store_short v[11:12], v31, off offset:2740
	global_store_short v[11:12], v2, off offset:3318
	v_accvgpr_read_b32 v11, a19
	v_add_u32_e32 v2, v5, v6
	v_cvt_f16_f32_e32 v5, v3
	v_cvt_f16_f32_e32 v11, v11
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_add_co_u32_e32 v8, vcc, s16, v2
	v_addc_co_u32_e32 v7, vcc, v7, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, s[16:17]
	global_store_short v[2:3], v9, s[16:17] offset:578
	global_store_short v[2:3], v10, s[16:17] offset:1156
	global_store_short v[2:3], v11, s[16:17] offset:1734
	v_accvgpr_read_b32 v9, a21
	v_accvgpr_read_b32 v10, a22
	v_accvgpr_read_b32 v11, a23
	v_accvgpr_read_b32 v2, a20
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v2, vcc, s2, v8
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:528
	global_store_short v[2:3], v9, off offset:1106
	global_store_short v[2:3], v10, off offset:1684
	global_store_short v[2:3], v11, off offset:2262
	v_accvgpr_read_b32 v9, a25
	v_accvgpr_read_b32 v10, a26
	v_accvgpr_read_b32 v11, a27
	v_accvgpr_read_b32 v2, a24
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_add_co_u32_e32 v2, vcc, s1, v8
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1056
	global_store_short v[2:3], v9, off offset:1634
	global_store_short v[2:3], v10, off offset:2212
	global_store_short v[2:3], v11, off offset:2790
	v_add_u32_e32 v10, 32, v16
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshrrev_b32_e32 v11, 29, v11
	v_add_u32_e32 v11, v10, v11
	v_and_b32_e32 v11, -8, v11
	v_sub_u32_e32 v10, v10, v11
	v_ashrrev_i32_e32 v12, 31, v10
	v_lshrrev_b32_e32 v12, 30, v12
	v_add_u32_e32 v10, v10, v12
	v_accvgpr_read_b32 v2, a28
	v_cvt_f16_f32_e32 v5, v2
	v_add_co_u32_e32 v2, vcc, s0, v8
	v_and_b32_e32 v10, -4, v10
	v_sub_u32_e32 v12, v11, v17
	v_accvgpr_read_b32 v8, a30
	v_accvgpr_read_b32 v9, a31
	v_add_u32_e32 v12, v12, v10
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	v_accvgpr_read_b32 v7, a29
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	v_mul_lo_u32 v12, v12, s3
	v_sub_u32_e32 v4, v11, v4
	v_add_u32_e32 v4, v4, v10
	v_mul_lo_u32 v4, v4, s3
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1584
	global_store_short v[2:3], v7, off offset:2162
	global_store_short v[2:3], v8, off offset:2740
	global_store_short v[2:3], v9, off offset:3318
	v_accvgpr_read_b32 v9, a65
	v_add_u32_e32 v2, v12, v19
	v_accvgpr_read_b32 v12, a66
	v_accvgpr_read_b32 v3, a64
	v_cvt_f16_f32_e32 v5, v3
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_mov_b32_e32 v7, s17
	v_add_co_u32_e32 v8, vcc, s16, v2
	v_addc_co_u32_e32 v7, vcc, v7, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, s[16:17]
	global_store_short v[2:3], v9, s[16:17] offset:578
	global_store_short v[2:3], v12, s[16:17] offset:1156
	global_store_short v[2:3], v14, s[16:17] offset:1734
	v_accvgpr_read_b32 v9, a69
	v_accvgpr_read_b32 v12, a70
	v_accvgpr_read_b32 v14, a71
	v_accvgpr_read_b32 v2, a68
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_add_co_u32_e32 v2, vcc, s2, v8
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:528
	global_store_short v[2:3], v9, off offset:1106
	global_store_short v[2:3], v12, off offset:1684
	global_store_short v[2:3], v14, off offset:2262
	v_accvgpr_read_b32 v9, a73
	v_accvgpr_read_b32 v12, a74
	v_accvgpr_read_b32 v14, a75
	v_accvgpr_read_b32 v2, a72
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_add_co_u32_e32 v2, vcc, s1, v8
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1056
	global_store_short v[2:3], v9, off offset:1634
	global_store_short v[2:3], v12, off offset:2212
	global_store_short v[2:3], v14, off offset:2790
	v_accvgpr_read_b32 v2, a76
	v_cvt_f16_f32_e32 v5, v2
	v_add_co_u32_e32 v2, vcc, s0, v8
	v_accvgpr_read_b32 v8, a78
	v_accvgpr_read_b32 v9, a79
	v_addc_co_u32_e32 v3, vcc, 0, v7, vcc
	v_accvgpr_read_b32 v7, a77
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1584
	global_store_short v[2:3], v7, off offset:2162
	global_store_short v[2:3], v8, off offset:2740
	global_store_short v[2:3], v9, off offset:3318
	v_accvgpr_read_b32 v7, a81
	v_accvgpr_read_b32 v8, a82
	v_accvgpr_read_b32 v9, a83
	v_accvgpr_read_b32 v3, a80
	v_add_u32_e32 v2, v4, v6
	v_cvt_f16_f32_e32 v4, v3
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_mov_b32_e32 v5, s17
	v_add_co_u32_e32 v6, vcc, s16, v2
	v_addc_co_u32_e32 v5, vcc, v5, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, s[16:17]
	global_store_short v[2:3], v7, s[16:17] offset:578
	global_store_short v[2:3], v8, s[16:17] offset:1156
	global_store_short v[2:3], v9, s[16:17] offset:1734
	v_accvgpr_read_b32 v7, a85
	v_accvgpr_read_b32 v8, a86
	v_accvgpr_read_b32 v9, a87
	v_accvgpr_read_b32 v2, a84
	v_cvt_f16_f32_e32 v4, v2
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v2, vcc, s2, v6
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:528
	global_store_short v[2:3], v7, off offset:1106
	global_store_short v[2:3], v8, off offset:1684
	global_store_short v[2:3], v9, off offset:2262
	v_accvgpr_read_b32 v7, a89
	v_accvgpr_read_b32 v8, a90
	v_accvgpr_read_b32 v9, a91
	v_accvgpr_read_b32 v2, a88
	v_cvt_f16_f32_e32 v4, v2
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v2, vcc, s1, v6
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:1056
	global_store_short v[2:3], v7, off offset:1634
	global_store_short v[2:3], v8, off offset:2212
	global_store_short v[2:3], v9, off offset:2790
	v_add_u32_e32 v7, 64, v0
	v_mul_hi_i32 v8, v7, s4
	v_accvgpr_read_b32 v2, a92
	v_cvt_f16_f32_e32 v4, v2
	v_add_co_u32_e32 v2, vcc, s0, v6
	v_lshrrev_b32_e32 v12, 31, v8
	v_ashrrev_i32_e32 v8, 7, v8
	v_add_u32_e32 v8, v8, v12
	v_accvgpr_read_b32 v6, a94
	v_accvgpr_read_b32 v9, a95
	v_add_u32_e32 v12, v8, v1
	v_sub_u32_e32 v14, v13, v8
	v_addc_co_u32_e32 v3, vcc, 0, v5, vcc
	v_accvgpr_read_b32 v5, a93
	v_add_u32_e32 v14, v14, v18
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v9, v9
	v_mul_lo_u32 v12, v12, s5
	v_mul_lo_u32 v14, v14, s3
	v_add_u32_e32 v0, 0x60, v0
	v_sub_u32_e32 v8, v11, v8
	v_add_u32_e32 v8, v8, v10
	v_mul_lo_u32 v8, v8, s3
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v4, off offset:1584
	global_store_short v[2:3], v5, off offset:2162
	global_store_short v[2:3], v6, off offset:2740
	global_store_short v[2:3], v9, off offset:3318
	v_add_u32_e32 v4, v12, v7
	v_accvgpr_read_b32 v9, a33
	v_accvgpr_read_b32 v12, a34
	v_add_u32_e32 v2, v14, v4
	v_accvgpr_read_b32 v14, a35
	v_accvgpr_read_b32 v3, a32
	v_cvt_f16_f32_e32 v5, v3
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_ashrrev_i32_e32 v3, 31, v2
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_mov_b32_e32 v6, s17
	v_add_co_u32_e32 v7, vcc, s16, v2
	v_addc_co_u32_e32 v6, vcc, v6, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, s[16:17]
	global_store_short v[2:3], v9, s[16:17] offset:578
	global_store_short v[2:3], v12, s[16:17] offset:1156
	global_store_short v[2:3], v14, s[16:17] offset:1734
	v_accvgpr_read_b32 v9, a37
	v_accvgpr_read_b32 v12, a38
	v_accvgpr_read_b32 v14, a39
	v_accvgpr_read_b32 v2, a36
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_add_co_u32_e32 v2, vcc, s2, v7
	v_addc_co_u32_e32 v3, vcc, 0, v6, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:528
	global_store_short v[2:3], v9, off offset:1106
	global_store_short v[2:3], v12, off offset:1684
	global_store_short v[2:3], v14, off offset:2262
	v_accvgpr_read_b32 v9, a41
	v_accvgpr_read_b32 v12, a42
	v_accvgpr_read_b32 v14, a43
	v_accvgpr_read_b32 v2, a40
	v_cvt_f16_f32_e32 v5, v2
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_add_co_u32_e32 v2, vcc, s1, v7
	v_addc_co_u32_e32 v3, vcc, 0, v6, vcc
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1056
	global_store_short v[2:3], v9, off offset:1634
	global_store_short v[2:3], v12, off offset:2212
	global_store_short v[2:3], v14, off offset:2790
	v_mul_hi_i32 v9, v0, s4
	v_accvgpr_read_b32 v2, a44
	v_cvt_f16_f32_e32 v5, v2
	v_add_co_u32_e32 v2, vcc, s0, v7
	v_lshrrev_b32_e32 v14, 31, v9
	v_ashrrev_i32_e32 v9, 7, v9
	v_add_u32_e32 v9, v9, v14
	v_accvgpr_read_b32 v7, a46
	v_accvgpr_read_b32 v12, a47
	v_add_u32_e32 v1, v9, v1
	v_sub_u32_e32 v13, v13, v9
	v_addc_co_u32_e32 v3, vcc, 0, v6, vcc
	v_accvgpr_read_b32 v6, a45
	v_add_u32_e32 v13, v13, v18
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v12, v12
	v_mul_lo_u32 v1, v1, s5
	v_mul_lo_u32 v13, v13, s3
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v5, off offset:1584
	global_store_short v[2:3], v6, off offset:2162
	global_store_short v[2:3], v7, off offset:2740
	global_store_short v[2:3], v12, off offset:3318
	v_add_u32_e32 v2, v1, v0
	v_accvgpr_read_b32 v7, a49
	v_accvgpr_read_b32 v12, a50
	v_add_u32_e32 v0, v13, v2
	v_accvgpr_read_b32 v13, a51
	v_accvgpr_read_b32 v1, a48
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v13, v13
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v5, s17
	v_add_co_u32_e32 v6, vcc, s16, v0
	v_addc_co_u32_e32 v5, vcc, v5, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, s[16:17]
	global_store_short v[0:1], v7, s[16:17] offset:578
	global_store_short v[0:1], v12, s[16:17] offset:1156
	global_store_short v[0:1], v13, s[16:17] offset:1734
	v_accvgpr_read_b32 v7, a53
	v_accvgpr_read_b32 v12, a54
	v_accvgpr_read_b32 v13, a55
	v_accvgpr_read_b32 v0, a52
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v13, v13
	v_add_co_u32_e32 v0, vcc, s2, v6
	v_addc_co_u32_e32 v1, vcc, 0, v5, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:528
	global_store_short v[0:1], v7, off offset:1106
	global_store_short v[0:1], v12, off offset:1684
	global_store_short v[0:1], v13, off offset:2262
	v_accvgpr_read_b32 v7, a57
	v_accvgpr_read_b32 v12, a58
	v_accvgpr_read_b32 v13, a59
	v_accvgpr_read_b32 v0, a56
	v_cvt_f16_f32_e32 v3, v0
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v13, v13
	v_add_co_u32_e32 v0, vcc, s1, v6
	v_addc_co_u32_e32 v1, vcc, 0, v5, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1056
	global_store_short v[0:1], v7, off offset:1634
	global_store_short v[0:1], v12, off offset:2212
	global_store_short v[0:1], v13, off offset:2790
	v_accvgpr_read_b32 v0, a60
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v6
	v_accvgpr_read_b32 v6, a62
	v_accvgpr_read_b32 v7, a63
	v_addc_co_u32_e32 v1, vcc, 0, v5, vcc
	v_accvgpr_read_b32 v5, a61
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v5, off offset:2162
	global_store_short v[0:1], v6, off offset:2740
	global_store_short v[0:1], v7, off offset:3318
	v_add_u32_e32 v0, v8, v4
	v_accvgpr_read_b32 v6, a97
	v_accvgpr_read_b32 v7, a98
	v_accvgpr_read_b32 v8, a99
	v_accvgpr_read_b32 v1, a96
	v_cvt_f16_f32_e32 v3, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v8, v8
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
	v_accvgpr_read_b32 v6, a101
	v_accvgpr_read_b32 v7, a102
	v_accvgpr_read_b32 v8, a103
	v_accvgpr_read_b32 v0, a100
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
	v_accvgpr_read_b32 v6, a105
	v_accvgpr_read_b32 v7, a106
	v_accvgpr_read_b32 v8, a107
	v_accvgpr_read_b32 v0, a104
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
	v_accvgpr_read_b32 v0, a108
	v_sub_u32_e32 v7, v11, v9
	v_cvt_f16_f32_e32 v3, v0
	v_add_co_u32_e32 v0, vcc, s0, v5
	v_accvgpr_read_b32 v5, a110
	v_accvgpr_read_b32 v6, a111
	v_add_u32_e32 v7, v7, v10
	v_addc_co_u32_e32 v1, vcc, 0, v4, vcc
	v_accvgpr_read_b32 v4, a109
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v6, v6
	v_mul_lo_u32 v7, v7, s3
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v3, off offset:1584
	global_store_short v[0:1], v4, off offset:2162
	global_store_short v[0:1], v5, off offset:2740
	global_store_short v[0:1], v6, off offset:3318
	v_accvgpr_read_b32 v5, a113
	v_accvgpr_read_b32 v6, a114
	v_add_u32_e32 v0, v7, v2
	v_accvgpr_read_b32 v7, a115
	v_accvgpr_read_b32 v1, a112
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
	v_accvgpr_read_b32 v5, a117
	v_accvgpr_read_b32 v6, a118
	v_accvgpr_read_b32 v7, a119
	v_accvgpr_read_b32 v0, a116
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
	v_accvgpr_read_b32 v5, a121
	v_accvgpr_read_b32 v6, a122
	v_accvgpr_read_b32 v7, a123
	v_accvgpr_read_b32 v0, a120
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
	v_accvgpr_read_b32 v0, a124
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s0, v4
	v_accvgpr_read_b32 v4, a126
	v_accvgpr_read_b32 v5, a127
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a125
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
	.amdhsa_kernel gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
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
	.size	gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw, .Lfunc_end0-gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
                                        ; -- End function
	.section	.AMDGPU.csdata
; Kernel info:
; codeLenInByte = 8620
; NumSgprs: 37
; NumVgprs: 117
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
    .name:           gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
    .private_segment_fixed_size: 0
    .sgpr_count:     37
    .sgpr_spill_count: 0
    .symbol:         gridwise_group_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw.kd
    .vgpr_count:     128
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
