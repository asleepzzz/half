	.text
	;.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
	.global	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw ; -- Begin function gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
	.p2align	8
	.type	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw,@function
gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw: ; @gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
; %bb.0:                                ; %entry
	s_mov_b32 s3, 0x5397829d ;//1402438301
	v_mov_b32_e32 v1, s3
	v_mul_hi_i32 v1, s6, v1
	v_and_b32_e32 v6, 0xc0, v0
	s_mov_b32 s2, 0xfff9e0
	v_sub_u32_e32 v6, v0, v6
	v_lshrrev_b32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v1, 9, v1
	v_add_u32_e32 v3, v1, v2
	v_mov_b32_e32 v1, s6
	v_mad_i32_i24 v1, v3, s2, v1
	v_ashrrev_i32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshrrev_b32_e32 v2, 29, v2
	v_lshrrev_b32_e32 v7, 27, v7
	v_add_u32_e32 v2, v1, v2
	v_add_u32_e32 v7, v6, v7
	v_ashrrev_i32_e32 v8, 5, v7
	v_ashrrev_i32_e32 v4, 3, v2
	v_and_b32_e32 v2, -8, v2
	v_and_b32_e32 v7, 0xffffffe0, v7
	v_sub_u32_e32 v1, v1, v2
	v_lshlrev_b32_e32 v2, 7, v4
	v_sub_u32_e32 v6, v6, v7
	v_lshl_add_u32 v7, v6, 2, v2
	v_mul_hi_i32 v9, v7, s3
	v_lshlrev_b32_e32 v3, 7, v3
	v_lshrrev_b32_e32 v5, 6, v0
	v_lshlrev_b32_e32 v8, 2, v8
	v_lshl_or_b32 v10, v5, 3, v3
	v_lshrrev_b32_e32 v11, 31, v9
	v_ashrrev_i32_e32 v9, 6, v9
	s_load_dwordx2 s[10:11], s[4:5], 0x0 ;//in
	s_load_dwordx2 s[8:9], s[4:5], 0x8 ;//wei
	s_load_dwordx2 s[0:1], s[4:5], 0x10 ;//out
	v_add_u32_e32 v10, v10, v8
	s_movk_i32 s2, 0xc4
	v_add_u32_e32 v9, v9, v11
	s_movk_i32 s4, 0x613c
	v_and_b32_e32 v4, 0xfe, v0
	v_lshlrev_b32_e32 v1, 7, v1
	v_lshrrev_b32_e32 v13, 1, v0
	v_mul_lo_u32 v10, v10, s2
	v_mul_lo_u32 v9, v9, s4
	v_sub_u32_e32 v12, v0, v4
	v_or_b32_e32 v4, v1, v13
	v_lshlrev_b32_e32 v11, 4, v12
	v_lshlrev_b32_e32 v4, 7, v4
	v_add3_u32 v3, v11, v3, v4
	v_ashrrev_i32_e32 v4, 31, v3
	v_add3_u32 v11, v7, v10, v9
	v_lshlrev_b32_e32 v14, 12, v12
	v_ashrrev_i32_e32 v12, 31, v11
	v_lshlrev_b64 v[35:36], 1, v[3:4]
	v_lshlrev_b64 v[19:20], 1, v[11:12]
	v_lshlrev_b32_e32 v17, 5, v6
	v_lshl_add_u32 v18, v5, 10, v8
	v_and_b32_e32 v47, 63, v0
	v_add_lshl_u32 v45, v18, v17, 1
	v_lshl_or_b32 v44, v13, 4, v14
	v_lshrrev_b32_e32 v41, 7, v0
	v_lshlrev_b32_e32 v17, 4, v47
	v_and_b32_e32 v42, 64, v0
	v_lshl_or_b32 v48, v41, 10, v17
	v_lshl_or_b32 v49, v42, 4, v17
	s_mov_b32 s36, 0
	s_mov_b32 s37, s36
	v_mov_b32_e32 v56, s36
	v_mov_b32_e32 v54, s37
	s_mov_b32 s38, s36
	s_mov_b32 s39, s36
	s_mov_b32 s40, s36
	v_accvgpr_write_b32 a0, v56
	v_accvgpr_write_b32 a1, v54
	v_mov_b32_e32 v55, s38
	v_mov_b32_e32 v56, s39
	v_mov_b32_e32 v54, s40
	s_mov_b32 s41, s36
	s_mov_b32 s42, s36
	s_mov_b32 s43, s36
	v_accvgpr_write_b32 a2, v55
	v_accvgpr_write_b32 a3, v56
	v_accvgpr_write_b32 a4, v54
	v_mov_b32_e32 v55, s41
	v_mov_b32_e32 v56, s42
	v_mov_b32_e32 v54, s43
	s_mov_b32 s44, s36
	s_mov_b32 s45, s36
	s_mov_b32 s46, s36
	v_accvgpr_write_b32 a5, v55
	v_accvgpr_write_b32 a6, v56
	v_accvgpr_write_b32 a7, v54
	v_mov_b32_e32 v55, s44
	v_mov_b32_e32 v56, s45
	v_mov_b32_e32 v54, s46
	s_mov_b32 s47, s36
	s_mov_b32 s48, s36
	s_mov_b32 s49, s36
	v_accvgpr_write_b32 a8, v55
	v_accvgpr_write_b32 a9, v56
	v_accvgpr_write_b32 a10, v54
	v_mov_b32_e32 v55, s47
	v_mov_b32_e32 v56, s48
	v_mov_b32_e32 v54, s49
	s_mov_b32 s50, s36
	s_mov_b32 s51, s36
	s_mov_b32 s52, s36
	v_accvgpr_write_b32 a11, v55
	v_accvgpr_write_b32 a12, v56
	v_accvgpr_write_b32 a13, v54
	v_mov_b32_e32 v55, s50
	v_mov_b32_e32 v56, s51
	v_mov_b32_e32 v54, s52
	s_mov_b32 s53, s36
	s_mov_b32 s54, s36
	s_mov_b32 s55, s36
	v_accvgpr_write_b32 a14, v55
	v_accvgpr_write_b32 a15, v56
	v_accvgpr_write_b32 a16, v54
	v_mov_b32_e32 v55, s53
	v_mov_b32_e32 v56, s54
	v_mov_b32_e32 v54, s55
	s_mov_b32 s56, s36
	s_mov_b32 s57, s36
	s_mov_b32 s58, s36
	v_accvgpr_write_b32 a17, v55
	v_accvgpr_write_b32 a18, v56
	v_accvgpr_write_b32 a19, v54
	v_mov_b32_e32 v55, s56
	v_mov_b32_e32 v56, s57
	v_mov_b32_e32 v54, s58
	v_mov_b32_e32 v43, 0xffff
	s_mov_b32 s59, s36
	s_mov_b32 s60, s36
	s_mov_b32 s61, s36
	v_accvgpr_write_b32 a20, v55
	v_accvgpr_write_b32 a21, v56
	v_accvgpr_write_b32 a22, v54
	v_mov_b32_e32 v55, s59
	v_mov_b32_e32 v56, s60
	v_mov_b32_e32 v54, s61
	v_mov_b32_e32 v46, 0xffff0000
	s_mov_b32 s62, s36
	s_mov_b32 s63, s36
	s_mov_b32 s64, s36
	v_accvgpr_write_b32 a23, v55
	v_accvgpr_write_b32 a24, v56
	v_accvgpr_write_b32 a25, v54
	v_mov_b32_e32 v55, s62
	v_mov_b32_e32 v56, s63
	v_mov_b32_e32 v54, s64
	s_mov_b32 s65, s36
	s_mov_b32 s66, s36
	s_mov_b32 s67, s36
	v_accvgpr_write_b32 a26, v55
	v_accvgpr_write_b32 a27, v56
	v_accvgpr_write_b32 a28, v54
	v_mov_b32_e32 v55, s65
	v_mov_b32_e32 v56, s66
	v_mov_b32_e32 v54, s67
	v_accvgpr_write_b32 a29, v55
	v_accvgpr_write_b32 a30, v56
	v_accvgpr_write_b32 a31, v54
	s_waitcnt lgkmcnt(0)
	v_add_co_u32_e32 v50, vcc, s10, v19
	v_add_u32_e32 v53, 0x2020, v45
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[3:6], v[35:36], s[8:9] offset:16
	global_load_dwordx4 v[7:10], v[35:36], s[8:9]
	global_load_dwordx2 v[11:12], v[19:20], s[10:11]
	global_load_dwordx2 v[13:14], v[19:20], s[10:11] offset:392
	global_load_dwordx2 v[15:16], v[19:20], s[10:11] offset:784
	global_load_dwordx2 v[17:18], v[19:20], s[10:11] offset:1176
	s_waitcnt vmcnt(5)
	v_bfi_b32 v5, v43, v5, v5
	s_waitcnt vmcnt(4)
	v_bfi_b32 v9, v43, v9, v9
	v_bfi_b32 v7, v43, v7, v7
	v_bfi_b32 v10, v43, v10, v10
	v_bfi_b32 v8, v43, v8, v8
	v_bfi_b32 v3, v43, v3, v3
	v_bfi_b32 v6, v43, v6, v6
	v_bfi_b32 v4, v43, v4, v4
	ds_write_b128 v44, v[7:10] offset:16384
	ds_write_b128 v44, v[3:6] offset:18432
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v6, 16, v15
	v_and_b32_e32 v8, v43, v16
	v_lshrrev_b32_e32 v10, 16, v16
	v_and_b32_e32 v3, v43, v15
	v_and_b32_e32 v5, v43, v11
	v_lshrrev_b32_e32 v7, 16, v11
	v_and_b32_e32 v9, v43, v12
	v_lshrrev_b32_e32 v11, 16, v12
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v4, v17, 16, v3
	v_lshl_or_b32 v3, v13, 16, v5
	v_and_or_b32 v5, v13, v46, v7
	v_lshl_or_b32 v7, v14, 16, v9
	v_and_or_b32 v6, v17, v46, v6
	v_lshl_or_b32 v8, v18, 16, v8
	v_and_or_b32 v10, v18, v46, v10
	v_and_or_b32 v9, v14, v46, v11
	ds_write2_b64 v45, v[3:4], v[5:6] offset1:2
	ds_write2_b64 v45, v[7:8], v[9:10] offset0:4 offset1:6
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[3:6], v48 offset:16384
	ds_read_b128 v[11:14], v49
	ds_read_b128 v[7:10], v48 offset:18432
	ds_read_b128 v[15:18], v49 offset:2048
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[3:4], v[11:12], a[0:31] cbsz:1
	s_mov_b32 s12, s7
	s_mov_b32 s32, s12
	s_movk_i32 s4, 0x3000
	s_movk_i32 s5, 0x6000
	v_mfma_f32_32x32x4f16 a[0:31], v[3:4], v[11:12], a[0:31] cbsz:1 abid:1
	s_movk_i32 s6, 0x1000
	v_mov_b32_e32 v3, s11
	v_addc_co_u32_e32 v51, vcc, v3, v20, vcc
	v_add_co_u32_e32 v37, vcc, s4, v50
	s_movk_i32 s4, 0x2000
	v_addc_co_u32_e32 v38, vcc, 0, v51, vcc
	v_add_u32_e32 v52, s4, v45
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[19:22], v[35:36], s[8:9] offset:80
	v_mfma_f32_32x32x4f16 a[32:63], v[5:6], v[13:14], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[5:6], v[13:14], a[0:31] cbsz:1 abid:1
	ds_read_b128 v[11:14], v48 offset:20480
	ds_read_b128 v[23:26], v48 offset:22528
	ds_read_b128 v[27:30], v49 offset:4096
	ds_read_b128 v[31:34], v49 offset:6144
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[3:6], v[35:36], s[8:9] offset:64
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x4f16 a[32:63], v[7:8], v[15:16], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[7:8], v[15:16], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[7:8], v[37:38], off offset:256
	global_load_dwordx2 v[15:16], v[37:38], off offset:648
	global_load_dwordx2 v[39:40], v[37:38], off offset:1040
	v_mfma_f32_32x32x4f16 a[32:63], v[9:10], v[17:18], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[9:10], v[17:18], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[17:18], v[37:38], off offset:1432
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[11:12], v[27:28], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[11:12], v[27:28], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[13:14], v[29:30], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[13:14], v[29:30], a[0:31] cbsz:1 abid:1
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v27, 16, v19
	v_lshrrev_b32_e32 v28, 16, v22
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[23:24], v[31:32], a[32:63] cbsz:1
	v_lshrrev_b32_e32 v37, 16, v20
	v_lshrrev_b32_e32 v38, 16, v21
	v_and_b32_e32 v22, v43, v22
	v_and_b32_e32 v21, v43, v21
	v_mfma_f32_32x32x4f16 a[0:31], v[23:24], v[31:32], a[0:31] cbsz:1 abid:1
	v_and_b32_e32 v20, v43, v20
	v_and_b32_e32 v19, v43, v19
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v9, 16, v3
	v_and_b32_e32 v3, v43, v3
	v_lshrrev_b32_e32 v10, 16, v6
	v_and_b32_e32 v6, v43, v6
	v_lshrrev_b32_e32 v11, 16, v4
	v_mfma_f32_32x32x4f16 a[32:63], v[25:26], v[33:34], a[32:63] cbsz:1
	v_and_b32_e32 v4, v43, v4
	v_lshrrev_b32_e32 v12, 16, v5
	v_and_b32_e32 v5, v43, v5
	v_lshl_or_b32 v6, v10, 16, v6
	v_mfma_f32_32x32x4f16 a[0:31], v[25:26], v[33:34], a[0:31] cbsz:1 abid:1
	v_lshl_or_b32 v3, v9, 16, v3
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v56, 16, v7
	v_and_b32_e32 v55, v43, v7
	s_waitcnt vmcnt(1)
	v_and_b32_e32 v54, v43, v39
	v_lshrrev_b32_e32 v39, 16, v39
	v_and_b32_e32 v57, v43, v40
	v_and_b32_e32 v58, v43, v8
	v_lshrrev_b32_e32 v59, 16, v8
	v_lshrrev_b32_e32 v40, 16, v40
	v_lshl_or_b32 v8, v37, 16, v20
	v_lshl_or_b32 v5, v12, 16, v5
	v_lshl_or_b32 v4, v11, 16, v4
	v_lshl_or_b32 v7, v27, 16, v19
	v_lshl_or_b32 v19, v16, 16, v58
	v_lshl_or_b32 v10, v28, 16, v22
	v_lshl_or_b32 v9, v38, 16, v21
	v_lshl_or_b32 v11, v15, 16, v55
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v12, v17, 16, v54
	v_and_or_b32 v14, v17, v46, v39
	v_and_or_b32 v13, v15, v46, v56
	v_lshl_or_b32 v20, v18, 16, v57
	v_and_or_b32 v17, v18, v46, v40
	v_and_or_b32 v16, v16, v46, v59
	ds_write_b128 v44, v[7:10] offset:26624
	ds_write2_b64 v52, v[11:12], v[13:14] offset1:2
	ds_write_b128 v44, v[3:6] offset:24576
	ds_write2_b64 v53, v[19:20], v[16:17] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[3:6], v48 offset:24576
	ds_read_b128 v[7:10], v48 offset:26624
	ds_read_b128 v[11:14], v49 offset:8192
	ds_read_b128 v[15:18], v49 offset:10240
	v_add_co_u32_e32 v37, vcc, s5, v50
	v_addc_co_u32_e32 v38, vcc, 0, v51, vcc
	s_mov_b32 s5, 0x9000
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[19:22], v[35:36], s[8:9] offset:144
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[3:4], v[11:12], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[3:4], v[11:12], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[5:6], v[13:14], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[5:6], v[13:14], a[0:31] cbsz:1 abid:1
	ds_read_b128 v[11:14], v48 offset:28672
	ds_read_b128 v[23:26], v48 offset:30720
	ds_read_b128 v[27:30], v49 offset:12288
	ds_read_b128 v[31:34], v49 offset:14336
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[3:6], v[35:36], s[8:9] offset:128
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x4f16 a[32:63], v[7:8], v[15:16], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[7:8], v[15:16], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[7:8], v[37:38], off offset:512
	global_load_dwordx2 v[15:16], v[37:38], off offset:904
	global_load_dwordx2 v[39:40], v[37:38], off offset:1296
	v_mfma_f32_32x32x4f16 a[32:63], v[9:10], v[17:18], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[9:10], v[17:18], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[17:18], v[37:38], off offset:1688
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[11:12], v[27:28], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[11:12], v[27:28], a[0:31] cbsz:1 abid:1
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v54, 16, v19
	v_mfma_f32_32x32x4f16 a[32:63], v[13:14], v[29:30], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[13:14], v[29:30], a[0:31] cbsz:1 abid:1
	v_lshrrev_b32_e32 v55, 16, v22
	v_lshrrev_b32_e32 v56, 16, v20
	v_and_b32_e32 v12, v43, v20
	v_lshrrev_b32_e32 v57, 16, v21
	v_and_b32_e32 v11, v43, v21
	v_and_b32_e32 v22, v43, v22
	v_and_b32_e32 v19, v43, v19
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[23:24], v[31:32], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[23:24], v[31:32], a[0:31] cbsz:1 abid:1
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v9, 16, v3
	v_and_b32_e32 v3, v43, v3
	v_lshrrev_b32_e32 v10, 16, v6
	v_and_b32_e32 v6, v43, v6
	v_lshrrev_b32_e32 v37, 16, v4
	v_and_b32_e32 v4, v43, v4
	v_lshrrev_b32_e32 v38, 16, v5
	v_and_b32_e32 v5, v43, v5
	v_lshl_or_b32 v6, v10, 16, v6
	v_mfma_f32_32x32x4f16 a[32:63], v[25:26], v[33:34], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[25:26], v[33:34], a[0:31] cbsz:1 abid:1
	v_lshl_or_b32 v4, v37, 16, v4
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v28, 16, v7
	v_and_b32_e32 v21, v43, v7
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v27, 16, v39
	v_and_b32_e32 v20, v43, v39
	v_and_b32_e32 v39, v43, v40
	v_and_b32_e32 v58, v43, v8
	v_lshrrev_b32_e32 v59, 16, v8
	v_lshrrev_b32_e32 v40, 16, v40
	v_lshl_or_b32 v3, v9, 16, v3
	v_lshl_or_b32 v5, v38, 16, v5
	v_lshl_or_b32 v9, v57, 16, v11
	v_lshl_or_b32 v8, v56, 16, v12
	v_lshl_or_b32 v7, v54, 16, v19
	v_lshl_or_b32 v19, v16, 16, v58
	v_lshl_or_b32 v10, v55, 16, v22
	v_lshl_or_b32 v11, v15, 16, v21
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v12, v17, 16, v20
	v_and_or_b32 v14, v17, v46, v27
	v_and_or_b32 v13, v15, v46, v28
	v_lshl_or_b32 v20, v18, 16, v39
	v_and_or_b32 v17, v18, v46, v40
	v_and_or_b32 v16, v16, v46, v59
	ds_write_b128 v44, v[7:10] offset:18432
	ds_write2_b64 v45, v[11:12], v[13:14] offset1:2
	ds_write_b128 v44, v[3:6] offset:16384
	ds_write2_b64 v45, v[19:20], v[16:17] offset0:4 offset1:6
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[3:6], v48 offset:16384
	ds_read_b128 v[7:10], v48 offset:18432
	ds_read_b128 v[11:14], v49
	ds_read_b128 v[15:18], v49 offset:2048
	v_add_co_u32_e32 v37, vcc, s5, v50
	v_addc_co_u32_e32 v38, vcc, 0, v51, vcc
	s_mov_b32 s5, 0x31000
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[19:22], v[35:36], s[8:9] offset:208
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[3:4], v[11:12], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[3:4], v[11:12], a[0:31] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[32:63], v[5:6], v[13:14], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[5:6], v[13:14], a[0:31] cbsz:1 abid:1
	ds_read_b128 v[11:14], v48 offset:20480
	ds_read_b128 v[23:26], v48 offset:22528
	ds_read_b128 v[27:30], v49 offset:4096
	ds_read_b128 v[31:34], v49 offset:6144
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[3:6], v[35:36], s[8:9] offset:192
	s_waitcnt lgkmcnt(4)
	v_mfma_f32_32x32x4f16 a[32:63], v[7:8], v[15:16], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[7:8], v[15:16], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[7:8], v[37:38], off offset:768
	global_load_dwordx2 v[15:16], v[37:38], off offset:1160
	global_load_dwordx2 v[35:36], v[37:38], off offset:1552
	v_mfma_f32_32x32x4f16 a[32:63], v[9:10], v[17:18], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[9:10], v[17:18], a[0:31] cbsz:1 abid:1
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[17:18], v[37:38], off offset:1944
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[11:12], v[27:28], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[11:12], v[27:28], a[0:31] cbsz:1 abid:1
	s_waitcnt vmcnt(5)
	v_lshrrev_b32_e32 v39, 16, v19
	v_mfma_f32_32x32x4f16 a[32:63], v[13:14], v[29:30], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[13:14], v[29:30], a[0:31] cbsz:1 abid:1
	v_lshrrev_b32_e32 v40, 16, v22
	v_lshrrev_b32_e32 v45, 16, v20
	v_and_b32_e32 v12, v43, v20
	v_lshrrev_b32_e32 v50, 16, v21
	v_and_b32_e32 v11, v43, v21
	v_and_b32_e32 v22, v43, v22
	v_and_b32_e32 v19, v43, v19
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[23:24], v[31:32], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[23:24], v[31:32], a[0:31] cbsz:1 abid:1
	v_mov_b32_e32 v23, s1
	v_mov_b32_e32 v24, s1
	s_waitcnt vmcnt(4)
	v_lshrrev_b32_e32 v9, 16, v3
	v_and_b32_e32 v3, v43, v3
	v_lshrrev_b32_e32 v10, 16, v6
	v_and_b32_e32 v6, v43, v6
	v_lshrrev_b32_e32 v37, 16, v4
	v_and_b32_e32 v4, v43, v4
	v_lshrrev_b32_e32 v38, 16, v5
	v_and_b32_e32 v5, v43, v5
	v_lshl_or_b32 v6, v10, 16, v6
	v_mfma_f32_32x32x4f16 a[32:63], v[25:26], v[33:34], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[25:26], v[33:34], a[0:31] cbsz:1 abid:1
	v_lshl_or_b32 v3, v9, 16, v3
	s_waitcnt vmcnt(3)
	v_lshrrev_b32_e32 v28, 16, v7
	v_and_b32_e32 v21, v43, v7
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v27, 16, v35
	v_and_b32_e32 v20, v43, v35
	v_and_b32_e32 v35, v43, v36
	v_and_b32_e32 v43, v43, v8
	v_lshrrev_b32_e32 v51, 16, v8
	v_lshrrev_b32_e32 v36, 16, v36
	v_lshl_or_b32 v9, v50, 16, v11
	v_lshl_or_b32 v8, v45, 16, v12
	v_lshl_or_b32 v7, v39, 16, v19
	v_lshl_or_b32 v19, v16, 16, v43
	v_lshl_or_b32 v5, v38, 16, v5
	v_lshl_or_b32 v4, v37, 16, v4
	v_lshl_or_b32 v10, v40, 16, v22
	v_lshl_or_b32 v11, v15, 16, v21
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v12, v17, 16, v20
	v_and_or_b32 v14, v17, v46, v27
	v_and_or_b32 v13, v15, v46, v28
	v_lshl_or_b32 v20, v18, 16, v35
	v_and_or_b32 v17, v18, v46, v36
	v_and_or_b32 v16, v16, v46, v51
	ds_write_b128 v44, v[7:10] offset:26624
	ds_write2_b64 v52, v[11:12], v[13:14] offset1:2
	ds_write_b128 v44, v[3:6] offset:24576
	ds_write2_b64 v53, v[19:20], v[16:17] offset1:2
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[3:6], v48 offset:24576
	ds_read_b128 v[7:10], v48 offset:26624
	ds_read_b128 v[11:14], v49 offset:8192
	ds_read_b128 v[15:18], v49 offset:10240
	v_mov_b32_e32 v25, s1
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[3:4], v[11:12], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[3:4], v[11:12], a[0:31] cbsz:1 abid:1
	v_bfe_u32 v3, v0, 3, 3
	v_and_b32_e32 v0, 32, v0
	v_sub_u32_e32 v0, v47, v0
	v_add3_u32 v26, v0, v42, v2
	v_mul_hi_i32 v0, v26, s3
	v_lshlrev_b32_e32 v4, 6, v41
	v_and_b32_e32 v3, 4, v3
	v_or3_b32 v27, v1, v4, v3
	v_lshrrev_b32_e32 v1, 31, v0
	v_ashrrev_i32_e32 v0, 6, v0
	v_add_u32_e32 v28, v0, v1
	v_mfma_f32_32x32x4f16 a[32:63], v[5:6], v[13:14], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[5:6], v[13:14], a[0:31] cbsz:1 abid:1
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[7:8], v[15:16], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[7:8], v[15:16], a[0:31] cbsz:1 abid:1
	ds_read_b128 v[0:3], v48 offset:28672
	ds_read_b128 v[4:7], v48 offset:30720
	ds_read_b128 v[11:14], v49 offset:12288
	ds_read_b128 v[19:22], v49 offset:14336
	v_add_u32_e32 v8, 32, v26
	v_mul_hi_i32 v15, v8, s3
	v_or_b32_e32 v16, 32, v27
	v_mfma_f32_32x32x4f16 a[32:63], v[9:10], v[17:18], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[9:10], v[17:18], a[0:31] cbsz:1 abid:1
	v_sub_u32_e32 v17, v27, v28
	v_lshrrev_b32_e32 v9, 31, v15
	v_ashrrev_i32_e32 v10, 6, v15
	v_mul_lo_u32 v15, v28, s5
	v_mul_lo_u32 v17, v17, s2
	v_add_u32_e32 v9, v10, v9
	v_sub_u32_e32 v10, v16, v28
	v_mul_lo_u32 v18, v9, s5
	v_sub_u32_e32 v27, v27, v9
	v_sub_u32_e32 v9, v16, v9
	v_mul_lo_u32 v10, v10, s2
	v_mul_lo_u32 v16, v27, s2
	v_mul_lo_u32 v27, v9, s2
	v_add_u32_e32 v9, v15, v26
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[0:1], v[11:12], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[0:1], v[11:12], a[0:31] cbsz:1 abid:1
	v_add_u32_e32 v0, v17, v9
	v_ashrrev_i32_e32 v1, 31, v0
	v_add_u32_e32 v26, v18, v8
	v_add_u32_e32 v8, v10, v9
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_ashrrev_i32_e32 v9, 31, v8
	v_add_co_u32_e32 v12, vcc, s0, v0
	v_lshlrev_b64 v[8:9], 1, v[8:9]
	v_addc_co_u32_e32 v15, vcc, v23, v1, vcc
	v_add_u32_e32 v10, v16, v26
	v_ashrrev_i32_e32 v11, 31, v10
	v_lshlrev_b64 v[10:11], 1, v[10:11]
	v_mfma_f32_32x32x4f16 a[32:63], v[2:3], v[13:14], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[2:3], v[13:14], a[0:31] cbsz:1 abid:1
	v_add_co_u32_e32 v14, vcc, s0, v8
	v_addc_co_u32_e32 v16, vcc, v25, v9, vcc
	v_add_co_u32_e32 v2, vcc, s6, v12
	v_addc_co_u32_e32 v3, vcc, 0, v15, vcc
	v_add_co_u32_e32 v12, vcc, s4, v12
	v_addc_co_u32_e32 v13, vcc, 0, v15, vcc
	v_add_co_u32_e32 v18, vcc, s0, v10
	v_addc_co_u32_e32 v23, vcc, v24, v11, vcc
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[32:63], v[4:5], v[19:20], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[4:5], v[19:20], a[0:31] cbsz:1 abid:1
	v_add_co_u32_e32 v4, vcc, s6, v14
	v_addc_co_u32_e32 v5, vcc, 0, v16, vcc
	v_add_co_u32_e32 v14, vcc, s4, v14
	v_addc_co_u32_e32 v15, vcc, 0, v16, vcc
	v_add_co_u32_e32 v16, vcc, s6, v18
	v_addc_co_u32_e32 v17, vcc, 0, v23, vcc
	v_add_co_u32_e32 v18, vcc, s4, v18
	v_addc_co_u32_e32 v19, vcc, 0, v23, vcc
	v_mfma_f32_32x32x4f16 a[32:63], v[6:7], v[21:22], a[32:63] cbsz:1
	v_mfma_f32_32x32x4f16 a[0:31], v[6:7], v[21:22], a[0:31] cbsz:1 abid:1
	s_nop 7
	s_nop 7
	s_nop 0
	v_accvgpr_read_b32 v6, a32
	v_accvgpr_read_b32 v7, a33
	v_accvgpr_read_b32 v20, a34
	v_accvgpr_read_b32 v21, a35
	v_accvgpr_read_b32 v22, a36
	v_accvgpr_read_b32 v23, a37
	v_accvgpr_read_b32 v24, a38
	v_accvgpr_read_b32 v25, a39
	v_accvgpr_read_b32 v28, a40
	v_accvgpr_read_b32 v29, a41
	v_accvgpr_read_b32 v30, a42
	v_accvgpr_read_b32 v31, a43
	v_accvgpr_read_b32 v32, a44
	v_accvgpr_read_b32 v33, a45
	v_accvgpr_read_b32 v34, a46
	v_accvgpr_read_b32 v35, a47
	v_accvgpr_read_b32 v36, a48
	v_accvgpr_read_b32 v37, a49
	v_accvgpr_read_b32 v38, a50
	v_accvgpr_read_b32 v39, a51
	v_accvgpr_read_b32 v40, a52
	v_accvgpr_read_b32 v41, a53
	v_accvgpr_read_b32 v42, a54
	v_accvgpr_read_b32 v43, a55
	v_accvgpr_read_b32 v44, a56
	v_accvgpr_read_b32 v45, a57
	v_accvgpr_read_b32 v46, a58
	v_accvgpr_read_b32 v47, a59
	v_accvgpr_read_b32 v48, a60
	v_accvgpr_read_b32 v49, a61
	v_accvgpr_read_b32 v50, a62
	v_accvgpr_read_b32 v51, a63
	v_accvgpr_read_b32 v52, a0
	v_accvgpr_read_b32 v53, a1
	v_accvgpr_read_b32 v54, a2
	v_accvgpr_read_b32 v55, a3
	v_accvgpr_read_b32 v56, a4
	v_accvgpr_read_b32 v57, a5
	v_accvgpr_read_b32 v58, a6
	v_accvgpr_read_b32 v59, a7
	v_accvgpr_read_b32 v60, a8
	v_accvgpr_read_b32 v61, a9
	v_accvgpr_read_b32 v62, a10
	v_accvgpr_read_b32 v63, a11
	v_accvgpr_read_b32 v64, a12
	v_accvgpr_read_b32 v65, a13
	v_accvgpr_read_b32 v66, a14
	v_accvgpr_read_b32 v67, a15
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_cvt_f16_f32_e32 v20, v20
	v_cvt_f16_f32_e32 v21, v21
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v23, v23
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v28, v28
	v_cvt_f16_f32_e32 v29, v29
	v_cvt_f16_f32_e32 v30, v30
	v_cvt_f16_f32_e32 v31, v31
	v_cvt_f16_f32_e32 v32, v32
	v_cvt_f16_f32_e32 v33, v33
	v_cvt_f16_f32_e32 v34, v34
	v_cvt_f16_f32_e32 v35, v35
	v_cvt_f16_f32_e32 v36, v36
	v_cvt_f16_f32_e32 v37, v37
	v_cvt_f16_f32_e32 v38, v38
	v_cvt_f16_f32_e32 v39, v39
	v_cvt_f16_f32_e32 v40, v40
	v_cvt_f16_f32_e32 v41, v41
	v_cvt_f16_f32_e32 v42, v42
	v_cvt_f16_f32_e32 v43, v43
	v_cvt_f16_f32_e32 v44, v44
	v_cvt_f16_f32_e32 v45, v45
	v_cvt_f16_f32_e32 v46, v46
	v_cvt_f16_f32_e32 v47, v47
	v_cvt_f16_f32_e32 v48, v48
	v_cvt_f16_f32_e32 v49, v49
	v_cvt_f16_f32_e32 v50, v50
	v_cvt_f16_f32_e32 v51, v51
	v_cvt_f16_f32_e32 v52, v52
	v_cvt_f16_f32_e32 v53, v53
	v_cvt_f16_f32_e32 v54, v54
	v_cvt_f16_f32_e32 v55, v55
	v_cvt_f16_f32_e32 v56, v56
	v_cvt_f16_f32_e32 v57, v57
	v_cvt_f16_f32_e32 v58, v58
	v_cvt_f16_f32_e32 v59, v59
	v_cvt_f16_f32_e32 v60, v60
	v_cvt_f16_f32_e32 v61, v61
	v_cvt_f16_f32_e32 v62, v62
	v_cvt_f16_f32_e32 v63, v63
	v_cvt_f16_f32_e32 v64, v64
	v_cvt_f16_f32_e32 v65, v65
	v_cvt_f16_f32_e32 v66, v66
	v_cvt_f16_f32_e32 v67, v67
	s_nop 0
	s_nop 0



/*
	global_store_short v[0:1], v6, s[0:1]
	global_store_short v[0:1], v7, s[0:1] offset:392
	global_store_short v[0:1], v20, s[0:1] offset:784
	global_store_short v[0:1], v21, s[0:1] offset:1176
	global_store_short v[0:1], v22, s[0:1] offset:3136
	global_store_short v[0:1], v23, s[0:1] offset:3528
	global_store_short v[0:1], v24, s[0:1] offset:3920
	global_store_short v[2:3], v25, off offset:216
	global_store_short v[2:3], v28, off offset:2176
	global_store_short v[2:3], v29, off offset:2568
	global_store_short v[2:3], v30, off offset:2960
	global_store_short v[2:3], v31, off offset:3352
	global_store_short v[12:13], v32, off offset:1216
	global_store_short v[12:13], v33, off offset:1608
	global_store_short v[12:13], v34, off offset:2000
	global_store_short v[12:13], v35, off offset:2392
	global_store_short v[10:11], v36, s[0:1]
	global_store_short v[10:11], v37, s[0:1] offset:392
	global_store_short v[10:11], v38, s[0:1] offset:784
	global_store_short v[10:11], v39, s[0:1] offset:1176
	global_store_short v[10:11], v40, s[0:1] offset:3136
	global_store_short v[10:11], v41, s[0:1] offset:3528
	global_store_short v[10:11], v42, s[0:1] offset:3920
	global_store_short v[16:17], v43, off offset:216
	global_store_short v[16:17], v44, off offset:2176
	global_store_short v[16:17], v45, off offset:2568
	global_store_short v[16:17], v46, off offset:2960
	global_store_short v[16:17], v47, off offset:3352
	global_store_short v[18:19], v48, off offset:1216
	global_store_short v[18:19], v49, off offset:1608
	global_store_short v[18:19], v50, off offset:2000
	global_store_short v[18:19], v51, off offset:2392
	global_store_short v[8:9], v52, s[0:1]
	global_store_short v[8:9], v53, s[0:1] offset:392
	global_store_short v[8:9], v54, s[0:1] offset:784
	global_store_short v[8:9], v55, s[0:1] offset:1176
	global_store_short v[8:9], v56, s[0:1] offset:3136
	global_store_short v[8:9], v57, s[0:1] offset:3528
	global_store_short v[8:9], v58, s[0:1] offset:3920
	global_store_short v[4:5], v59, off offset:216
	global_store_short v[4:5], v60, off offset:2176
	global_store_short v[4:5], v61, off offset:2568
	global_store_short v[4:5], v62, off offset:2960
	global_store_short v[4:5], v63, off offset:3352
	global_store_short v[14:15], v64, off offset:1216
	global_store_short v[14:15], v65, off offset:1608
	global_store_short v[14:15], v66, off offset:2000
	global_store_short v[14:15], v67, off offset:2392
	v_accvgpr_read_b32 v4, a17
	v_accvgpr_read_b32 v5, a18
	v_accvgpr_read_b32 v1, a16
	v_add_u32_e32 v0, v27, v26
	v_cvt_f16_f32_e32 v2, v1
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_accvgpr_read_b32 v7, a22
	v_cvt_f16_f32_e32 v7, v7
	v_accvgpr_read_b32 v8, a27
	v_add_co_u32_e32 v6, vcc, s0, v0
	v_mov_b32_e32 v3, s1
	v_cvt_f16_f32_e32 v8, v8
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1]
	global_store_short v[0:1], v4, s[0:1] offset:392
	global_store_short v[0:1], v5, s[0:1] offset:784
	v_accvgpr_read_b32 v2, a19
	v_accvgpr_read_b32 v4, a20
	v_accvgpr_read_b32 v5, a21
	v_cvt_f16_f32_e32 v2, v2
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1] offset:1176
	global_store_short v[0:1], v4, s[0:1] offset:3136
	global_store_short v[0:1], v5, s[0:1] offset:3528
	global_store_short v[0:1], v7, s[0:1] offset:3920
	v_accvgpr_read_b32 v4, a24
	v_accvgpr_read_b32 v5, a25
	v_accvgpr_read_b32 v7, a26
	v_accvgpr_read_b32 v0, a23
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s6, v6
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:216
	global_store_short v[0:1], v4, off offset:2176
	global_store_short v[0:1], v5, off offset:2568
	global_store_short v[0:1], v7, off offset:2960
	global_store_short v[0:1], v8, off offset:3352
	v_accvgpr_read_b32 v0, a28
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s4, v6
	v_accvgpr_read_b32 v4, a30
	v_accvgpr_read_b32 v5, a31
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a29
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1216
	global_store_short v[0:1], v3, off offset:1608
	global_store_short v[0:1], v4, off offset:2000
	global_store_short v[0:1], v5, off offset:2392
*/
	s_endpgm
	.section	.rodata,#alloc
	.p2align	6
	.amdhsa_kernel gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
		.amdhsa_group_segment_fixed_size 32768
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
		.amdhsa_next_free_vgpr 68
		.amdhsa_next_free_sgpr 68
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
; codeLenInByte = 4860
; NumSgprs: 72
; NumVgprs: 68
; NumAgprs: 64
; TotalNumVgprs: 68
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 32768 bytes/workgroup (compile time only)
; SGPRBlocks: 8
; VGPRBlocks: 16
; NumSGPRsForWavesPerEU: 72
; NumVGPRsForWavesPerEU: 68
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
    .group_segment_fixed_size: 32768
    .kernarg_segment_align: 8
    .kernarg_segment_size: 24
    .language:       OpenCL C
    .language_version:
      - 2
      - 0
    .max_flat_workgroup_size: 256
    .name:           gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
    .private_segment_fixed_size: 0
    .sgpr_count:     72
    .sgpr_spill_count: 0
    .symbol:         gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw.kd
    .vgpr_count:     68
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
