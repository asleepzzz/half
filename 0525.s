	.text
	;.amdgcn_target "amdgcn-amd-amdhsa--gfx908+sram-ecc"
	.weak	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw ; -- Begin function gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
	.p2align	8
	.type	gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw,@function
gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw: ; @gridwise_convolution_forward_implicit_gemm_v4r4_xdlops_nchw_kcyx_nkhw
; %bb.0:                                ; %entry
	s_load_dwordx2 s[8:9], s[4:5], 0x0
	s_load_dwordx2 s[2:3], s[4:5], 0x8
	s_load_dwordx2 s[0:1], s[4:5], 0x10

;// test out kevin int test
        s_load_dwordx2 s[10:11], s[4:5], 0x18
        s_waitcnt lgkmcnt(0)
        v_mov_b32 v6,0x0
        v_mov_b32 v7,0x0
        v_mov_b32 v8,0x2
        global_store_dword v[6:7], v[8], s[10:11]
        s_waitcnt vmcnt(0)
        
;//test out kevin int test end

/*

	s_mov_b32 s4, 0x5397829d
	v_mov_b32_e32 v1, s4
	v_mul_hi_i32 v1, s6, v1
	s_mov_b32 s5, 0xfff9e0
	v_lshrrev_b32_e32 v7, 2, v0
	v_lshrrev_b32_e32 v35, 7, v0
	v_lshrrev_b32_e32 v2, 31, v1
	v_ashrrev_i32_e32 v1, 9, v1
	v_add_u32_e32 v2, v1, v2
	v_mov_b32_e32 v1, s6
	v_mad_i32_i24 v1, v2, s5, v1
	v_ashrrev_i32_e32 v3, 31, v1
	v_lshrrev_b32_e32 v3, 29, v3
	v_add_u32_e32 v3, v1, v3
	v_ashrrev_i32_e32 v4, 3, v3
	v_and_b32_e32 v3, -8, v3
	v_sub_u32_e32 v5, v1, v3
	v_and_b32_e32 v3, 0xfc, v0
	v_sub_u32_e32 v11, v0, v3
	v_and_b32_e32 v3, 0xc0, v0
	v_sub_u32_e32 v3, v0, v3
	v_ashrrev_i32_e32 v6, 31, v3
	v_lshrrev_b32_e32 v6, 27, v6
	v_add_u32_e32 v6, v3, v6
	v_ashrrev_i32_e32 v29, 5, v6
	v_and_b32_e32 v6, 0xffffffe0, v6
	v_lshlrev_b32_e32 v1, 7, v4
	v_sub_u32_e32 v6, v3, v6
	v_lshl_add_u32 v8, v6, 2, v1
	v_mul_hi_i32 v3, v8, s4
	v_lshlrev_b32_e32 v28, 10, v2
	v_lshrrev_b32_e32 v4, 6, v0
	v_lshlrev_b32_e32 v9, 2, v29
	v_lshl_or_b32 v30, v4, 3, v28
	v_lshrrev_b32_e32 v12, 31, v3
	v_ashrrev_i32_e32 v3, 6, v3
	v_add_u32_e32 v10, v30, v9
	s_movk_i32 s4, 0xc4
	v_add_u32_e32 v3, v3, v12
	s_mov_b32 s5, 0x30f3c
	v_mul_lo_u32 v31, v3, s5
	v_mul_lo_u32 v10, v10, s4
	v_lshlrev_b32_e32 v3, 11, v7
	v_lshlrev_b32_e32 v2, 3, v11
	v_lshl_or_b32 v32, v5, 17, v3
	v_add3_u32 v3, v2, v28, v32
	v_lshl_add_u32 v34, v4, 10, v9
	v_ashrrev_i32_e32 v4, 31, v3
	v_add3_u32 v8, v8, v10, v31
	v_lshlrev_b64 v[9:10], 1, v[3:4]
	v_lshlrev_b32_e32 v4, 11, v11
	v_lshl_or_b32 v36, v7, 5, v4
	s_waitcnt lgkmcnt(0)
	v_mov_b32_e32 v4, s9
	v_lshlrev_b32_e32 v33, 5, v6
	v_mov_b32_e32 v6, 0xffff
	s_movk_i32 s5, 0x2000
	v_and_b32_e32 v3, 64, v0
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
	global_load_dwordx4 v[12:15], v[9:10], s[2:3]
	global_load_dwordx4 v[16:19], v[9:10], s[2:3] offset:2048
	v_ashrrev_i32_e32 v9, 31, v8
	v_lshlrev_b64 v[20:21], 1, v[8:9]
	v_mov_b32_e32 v9, 0xffff0000
	v_add_co_u32_e32 v37, vcc, s8, v20
	v_addc_co_u32_e32 v38, vcc, v4, v21, vcc
	v_add_lshl_u32 v8, v34, v33, 1
	v_and_b32_e32 v4, 63, v0
	v_lshlrev_b32_e32 v10, 10, v35
	v_lshlrev_b32_e32 v11, 4, v4
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
	global_load_dwordx2 v[22:23], v[20:21], s[8:9]
	global_load_dwordx2 v[24:25], v[20:21], s[8:9] offset:392
	global_load_dwordx2 v[26:27], v[20:21], s[8:9] offset:784
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
	v_accvgpr_write_b32 a35, 0
	v_accvgpr_write_b32 a34, 0
	v_accvgpr_write_b32 a33, 0
	v_accvgpr_write_b32 a32, 0
	s_mov_b32 s10, s7
	v_or3_b32 v10, v10, v11, s5
	v_lshlrev_b32_e32 v2, 6, v35
	v_add_u32_e32 v7, s5, v36
	v_lshl_or_b32 v11, v3, 4, v11
	s_mov_b32 s32, s10
	s_nop 0
	s_nop 0
	global_load_dwordx2 v[20:21], v[20:21], s[8:9] offset:1176
	s_waitcnt vmcnt(5)
	v_bfi_b32 v15, v6, v15, v15
	v_bfi_b32 v14, v6, v14, v14
	v_bfi_b32 v13, v6, v13, v13
	v_bfi_b32 v12, v6, v12, v12
	s_waitcnt vmcnt(4)
	v_bfi_b32 v19, v6, v19, v19
	v_bfi_b32 v18, v6, v18, v18
	v_bfi_b32 v17, v6, v17, v17
	v_bfi_b32 v16, v6, v16, v16
	ds_write_b128 v36, v[12:15] offset:8192
	ds_write_b128 v36, v[16:19] offset:8208
	s_waitcnt vmcnt(3)
	v_and_b32_e32 v14, v6, v22
	v_lshrrev_b32_e32 v16, 16, v22
	s_waitcnt vmcnt(1)
	v_lshrrev_b32_e32 v15, 16, v26
	v_and_b32_e32 v17, v6, v27
	v_lshrrev_b32_e32 v19, 16, v27
	v_and_b32_e32 v12, v6, v26
	v_and_b32_e32 v18, v6, v23
	v_lshrrev_b32_e32 v22, 16, v23
	s_waitcnt vmcnt(0)
	v_lshl_or_b32 v13, v20, 16, v12
	v_lshl_or_b32 v12, v24, 16, v14
	v_and_or_b32 v15, v20, v9, v15
	v_and_or_b32 v14, v24, v9, v16
	v_lshl_or_b32 v16, v25, 16, v18
	v_lshl_or_b32 v17, v21, 16, v17
	v_and_or_b32 v19, v21, v9, v19
	v_and_or_b32 v18, v25, v9, v22
	ds_write2_b64 v8, v[12:13], v[14:15] offset1:2
	ds_write2_b64 v8, v[16:17], v[18:19] offset0:4 offset1:6
	v_lshlrev_b32_e32 v12, 3, v0
	v_add3_u32 v13, v32, v28, v12
	v_and_b32_e32 v12, 0x7e0, v12
	v_sub_u32_e32 v12, v13, v12
	v_ashrrev_i32_e32 v13, 31, v12
	v_lshlrev_b64 v[12:13], 1, v[12:13]
	v_mov_b32_e32 v14, s3
	v_add_co_u32_e32 v12, vcc, s2, v12
	v_addc_co_u32_e32 v13, vcc, v13, v14, vcc
	v_mul_lo_u32 v14, v30, s4
	v_mul_i32_i24_e32 v15, 0x290, v29
	s_movk_i32 s3, 0x840
	v_add_co_u32_e32 v12, vcc, s3, v12
	v_add3_u32 v14, v31, v15, v14
	v_lshlrev_b32_e32 v15, 2, v0
	v_add3_u32 v14, v14, v1, v15
	v_and_b32_e32 v15, 0x300, v15
	v_sub_u32_e32 v18, v14, v15
	v_add_u32_e32 v14, 0x1acc, v18
	v_ashrrev_i32_e32 v15, 31, v14
	v_lshlrev_b64 v[14:15], 1, v[14:15]
	v_addc_co_u32_e32 v13, vcc, 0, v13, vcc
	v_mov_b32_e32 v16, s9
	v_add_co_u32_e32 v14, vcc, s8, v14
	v_addc_co_u32_e32 v15, vcc, v16, v15, vcc
	v_add_u32_e32 v16, 0x1a08, v18
	v_ashrrev_i32_e32 v17, 31, v16
	v_lshlrev_b64 v[16:17], 1, v[16:17]
	v_mov_b32_e32 v19, s9
	v_add_co_u32_e32 v16, vcc, s8, v16
	v_add_u32_e32 v18, 0x1944, v18
	v_addc_co_u32_e32 v17, vcc, v19, v17, vcc
	v_ashrrev_i32_e32 v19, 31, v18
	v_lshlrev_b64 v[18:19], 1, v[18:19]
	v_mov_b32_e32 v20, s9
	v_add_co_u32_e32 v18, vcc, s8, v18
	v_addc_co_u32_e32 v19, vcc, v20, v19, vcc
	s_movk_i32 s3, 0x3100
	v_add_co_u32_e32 v20, vcc, s3, v37
	s_mov_b32 s2, 0
	v_addc_co_u32_e32 v21, vcc, 0, v38, vcc
BB0_1:                                  ; %_ZN2ck27TransformedTensorCoordinateINS_27TransformedTensorDescriptorINS1_INS1_INS_22NativeTensorDescriptorIJNS_15NativeDimensionILi128ELi200704EEENS3_ILi1024ELi196EEENS3_ILi14ELi14EEENS3_ILi14ELi1EEEEEENS_5TupleIJNS_11PassThroughILi128EEENSA_ILi1024EEENS_3PadINS_8SequenceIJLi14ELi14EEEENSE_IJLi0ELi0EEEESG_Lb0EEEEEENS9_IJNSE_IJLi0EEEENSE_IJLi1EEEENSE_IJLi2ELi3EEEEEEESM_EENS9_IJSB_SC_NS_5EmbedILi14ENSE_IJLi1ELi14EEEENSE_IJLi1ELi1ELi0EEEELb0EEESR_EEENS9_IJSJ_SK_NSE_IJLi2EEEENSE_IJLi3EEEEEEENS9_IJSJ_SK_SL_NSE_IJLi4ELi5EEEEEEEEENS9_IJNS_5MergeINSE_IJLi1024ELi1ELi1EEEEEENSZ_INSE_IJLi128ELi14ELi14EEEEEEEEENS9_IJNSE_IJLi1ELi2ELi4EEEENSE_IJLi0ELi3ELi5EEEEEEENS9_IJSJ_SK_EEEEEEpLERKNS_5ArrayIiLi2EEE.exit.i
                                        ; =>This Inner Loop Header: Depth=1
	s_nop 0
	s_nop 0
	global_load_dwordx4 v[26:29], v[12:13], off
	global_load_dwordx2 v[46:47], v[20:21], off
	global_load_dwordx2 v[48:49], v[18:19], off
	global_load_dwordx2 v[50:51], v[16:17], off
	global_load_dwordx2 v[52:53], v[14:15], off
	global_load_dwordx4 v[22:25], v[12:13], off offset:-2048
	s_waitcnt vmcnt(0) lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[30:33], v10
	ds_read_b128 v[34:37], v11
	ds_read_b128 v[38:41], v11 offset:2048
	ds_read_b128 v[42:45], v10 offset:2048
	v_add_co_u32_e32 v12, vcc, 64, v12
	v_addc_co_u32_e32 v13, vcc, 0, v13, vcc
	v_add_co_u32_e32 v14, vcc, s3, v14
	v_addc_co_u32_e32 v15, vcc, 0, v15, vcc
	v_add_co_u32_e32 v16, vcc, s3, v16
	s_waitcnt lgkmcnt(2)
	v_mfma_f32_32x32x4f16 a[32:63], v[30:31], v[34:35], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[30:31], v[34:35], a[0:31] cbsz:1
	s_add_i32 s2, s2, 4
	s_cmpk_lt_u32 s2, 0x7c
	v_addc_co_u32_e32 v17, vcc, 0, v17, vcc
	v_add_co_u32_e32 v18, vcc, s3, v18
	v_addc_co_u32_e32 v19, vcc, 0, v19, vcc
	v_add_co_u32_e32 v20, vcc, s3, v20
	v_addc_co_u32_e32 v21, vcc, 0, v21, vcc
	v_mfma_f32_32x32x4f16 a[32:63], v[32:33], v[36:37], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[32:33], v[36:37], a[0:31] cbsz:1
	ds_read_b128 v[30:33], v10 offset:4096
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[32:63], v[42:43], v[38:39], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[42:43], v[38:39], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[44:45], v[40:41], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[44:45], v[40:41], a[0:31] cbsz:1
	ds_read_b128 v[34:37], v11 offset:4096
	ds_read_b128 v[38:41], v11 offset:6144
	ds_read_b128 v[42:45], v10 offset:6144
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	v_and_b32_e32 v59, v6, v46
	v_mfma_f32_32x32x4f16 a[32:63], v[30:31], v[34:35], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[30:31], v[34:35], a[0:31] cbsz:1
	v_lshrrev_b32_e32 v30, 16, v26
	v_and_b32_e32 v26, v6, v26
	v_lshrrev_b32_e32 v31, 16, v29
	v_and_b32_e32 v29, v6, v29
	v_lshrrev_b32_e32 v34, 16, v27
	v_and_b32_e32 v27, v6, v27
	v_lshrrev_b32_e32 v35, 16, v28
	v_and_b32_e32 v28, v6, v28
	v_lshrrev_b32_e32 v54, 16, v22
	v_and_b32_e32 v22, v6, v22
	v_lshrrev_b32_e32 v55, 16, v25
	v_and_b32_e32 v25, v6, v25
	v_lshrrev_b32_e32 v56, 16, v23
	v_and_b32_e32 v23, v6, v23
	v_mfma_f32_32x32x4f16 a[32:63], v[32:33], v[36:37], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[32:33], v[36:37], a[0:31] cbsz:1
	v_lshrrev_b32_e32 v57, 16, v24
	v_and_b32_e32 v24, v6, v24
	v_and_b32_e32 v58, v6, v50
	v_and_b32_e32 v60, v6, v51
	v_lshrrev_b32_e32 v50, 16, v50
	v_lshrrev_b32_e32 v46, 16, v46
	v_and_b32_e32 v61, v6, v47
	v_lshrrev_b32_e32 v62, 16, v47
	v_lshrrev_b32_e32 v51, 16, v51
	v_lshl_or_b32 v29, v31, 16, v29
	v_lshl_or_b32 v28, v35, 16, v28
	v_lshl_or_b32 v27, v34, 16, v27
	v_lshl_or_b32 v26, v30, 16, v26
	v_and_or_b32 v35, v52, v9, v50
	v_mfma_f32_32x32x4f16 a[32:63], v[42:43], v[38:39], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[42:43], v[38:39], a[0:31] cbsz:1
	v_and_or_b32 v34, v48, v9, v46
	v_lshl_or_b32 v46, v49, 16, v61
	v_lshl_or_b32 v25, v55, 16, v25
	v_lshl_or_b32 v24, v57, 16, v24
	v_lshl_or_b32 v23, v56, 16, v23
	v_lshl_or_b32 v22, v54, 16, v22
	v_lshl_or_b32 v31, v52, 16, v58
	v_lshl_or_b32 v30, v48, 16, v59
	v_lshl_or_b32 v47, v53, 16, v60
	v_and_or_b32 v50, v53, v9, v51
	v_and_or_b32 v49, v49, v9, v62
	ds_write_b128 v7, v[22:25]
	ds_write_b128 v7, v[26:29] offset:16
	ds_write2_b64 v8, v[30:31], v[34:35] offset1:2
	v_mfma_f32_32x32x4f16 a[32:63], v[44:45], v[40:41], a[32:63] cbsz:1 abid:1
	v_mfma_f32_32x32x4f16 a[0:31], v[44:45], v[40:41], a[0:31] cbsz:1
	ds_write2_b64 v8, v[46:47], v[49:50] offset0:4 offset1:6
	s_cbranch_scc1 BB0_1
; %bb.2:                                ; %_ZNK2ck62GridwiseBatchedGemmTransposedANormalBNormalCXdlopsFp16Bfp16_v2ILi1568ELi256EDF16_fDF16_KNS_27TransformedTensorDescriptorINS_22NativeTensorDescriptorIJNS_15NativeDimensionILi1024ELi1024EEENS3_ILi1024ELi1EEEEEENS_5TupleIJNS_11PassThroughILi1024EEENS_7UnMergeINS_8SequenceIJLi1ELi128ELi8EEEEEEEEENS7_IJNSB_IJLi0EEEENSB_IJLi1EEEEEEENS7_IJNSB_IJLi2EEEENSB_IJLi0ELi1ELi3EEEEEEEEEKNS1_INS1_INS1_INS1_INS2_IJNS3_ILi128ELi200704EEENS3_ILi1024ELi196EEENS3_ILi14ELi14EEENS3_ILi14ELi1EEEEEENS7_IJNS8_ILi128EEES9_NS_3PadINSB_IJLi14ELi14EEEENSB_IJLi0ELi0EEEESV_Lb0EEEEEENS7_IJSF_SG_NSB_IJLi2ELi3EEEEEEESZ_EENS7_IJSS_S9_NS_5EmbedILi14ENSB_IJLi1ELi14EEEENSB_IJLi1ELi1ELi0EEEELb0EEES14_EEENS7_IJSF_SG_SI_NSB_IJLi3EEEEEEENS7_IJSF_SG_SY_NSB_IJLi4ELi5EEEEEEEEENS7_IJNS_5MergeINSB_IJLi1024ELi1ELi1EEEEEENS1B_INSB_IJLi128ELi14ELi14EEEEEEEEENS7_IJNSB_IJLi1ELi2ELi4EEEENSB_IJLi0ELi3ELi5EEEEEEESH_EENS7_IJSD_NS8_ILi25088EEEEEESH_NS7_IJSJ_SI_EEEEEKNS1_INS2_IJNS3_ILi1ELi0EEESN_SO_SP_SQ_EEENS7_IJNS8_ILi1EEES9_S1F_EEENS7_IJSF_SI_NSB_IJLi1ELi3
	s_waitcnt lgkmcnt(0)
	s_barrier
	s_waitcnt lgkmcnt(0)
	ds_read_b128 v[6:9], v10
	ds_read_b128 v[12:15], v10 offset:2048
	ds_read_b128 v[16:19], v11
	ds_read_b128 v[20:23], v11 offset:2048
	v_and_b32_e32 v0, 32, v0
	v_sub_u32_e32 v0, v4, v0
	v_add3_u32 v0, v0, v3, v1
	v_add_u32_e32 v3, 32, v0
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[6:7], v[16:17], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[6:7], v[16:17], a[32:63] cbsz:1 abid:1
	s_mov_b32 s2, 0x5397829d
	s_mov_b32 s3, 0x31000
	s_movk_i32 s4, 0xc4
	s_movk_i32 s5, 0x1000
	s_movk_i32 s6, 0x2000
	v_mfma_f32_32x32x4f16 a[0:31], v[8:9], v[18:19], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[8:9], v[18:19], a[32:63] cbsz:1 abid:1
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[0:31], v[12:13], v[20:21], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[12:13], v[20:21], a[32:63] cbsz:1 abid:1
	v_lshlrev_b32_e32 v13, 7, v5
	ds_read_b128 v[5:8], v10 offset:4096
	ds_read_b128 v[16:19], v10 offset:6144
	ds_read_b128 v[24:27], v11 offset:4096
	ds_read_b128 v[9:12], v11 offset:6144
	v_lshrrev_b32_e32 v20, 3, v4
	v_and_b32_e32 v20, 4, v20
	v_or3_b32 v13, v13, v2, v20
	v_ashrrev_i32_e32 v1, 31, v13
	v_lshrrev_b32_e32 v1, 29, v1
	v_mul_hi_i32 v2, v0, s2
	v_add_u32_e32 v1, v13, v1
	v_mul_hi_i32 v4, v3, s2
	v_and_b32_e32 v1, -8, v1
	v_mfma_f32_32x32x4f16 a[0:31], v[14:15], v[22:23], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[14:15], v[22:23], a[32:63] cbsz:1 abid:1
	v_mov_b32_e32 v14, s1
	v_mov_b32_e32 v15, s1
	s_waitcnt lgkmcnt(1)
	v_mfma_f32_32x32x4f16 a[0:31], v[5:6], v[24:25], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[5:6], v[24:25], a[32:63] cbsz:1 abid:1
	v_sub_u32_e32 v5, v13, v1
	v_lshrrev_b32_e32 v6, 31, v2
	v_ashrrev_i32_e32 v2, 6, v2
	v_ashrrev_i32_e32 v20, 31, v5
	v_add_u32_e32 v21, v2, v6
	v_lshrrev_b32_e32 v2, 31, v4
	v_ashrrev_i32_e32 v4, 6, v4
	v_lshrrev_b32_e32 v6, 30, v20
	v_add_u32_e32 v23, v4, v2
	v_add_u32_e32 v2, v5, v6
	v_sub_u32_e32 v22, v1, v21
	v_and_b32_e32 v2, -4, v2
	v_sub_u32_e32 v1, v1, v23
	v_mul_lo_u32 v20, v21, s3
	v_mfma_f32_32x32x4f16 a[0:31], v[7:8], v[26:27], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[7:8], v[26:27], a[32:63] cbsz:1 abid:1
	v_add_u32_e32 v5, v22, v2
	v_add_u32_e32 v1, v1, v2
	v_mul_lo_u32 v4, v23, s3
	v_mul_lo_u32 v2, v5, s4
	v_mul_lo_u32 v1, v1, s4
	v_add_u32_e32 v8, v20, v0
	v_add_u32_e32 v20, v4, v3
	v_add_u32_e32 v0, v2, v8
	v_add_u32_e32 v2, v1, v20
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_ashrrev_i32_e32 v3, 31, v2
	v_add_co_u32_e32 v6, vcc, s0, v0
	v_addc_co_u32_e32 v7, vcc, v14, v1, vcc
	s_waitcnt lgkmcnt(0)
	v_mfma_f32_32x32x4f16 a[0:31], v[16:17], v[9:10], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[16:17], v[9:10], a[32:63] cbsz:1 abid:1
	v_add_co_u32_e32 v4, vcc, s5, v6
	v_addc_co_u32_e32 v5, vcc, 0, v7, vcc
	v_add_co_u32_e32 v6, vcc, s6, v6
	v_addc_co_u32_e32 v7, vcc, 0, v7, vcc
	v_lshlrev_b64 v[2:3], 1, v[2:3]
	v_mfma_f32_32x32x4f16 a[0:31], v[18:19], v[11:12], a[0:31] cbsz:1
	v_mfma_f32_32x32x4f16 a[32:63], v[18:19], v[11:12], a[32:63] cbsz:1 abid:1
	s_nop 7
	s_nop 7
	s_nop 0
	v_accvgpr_read_b32 v9, a0
	v_accvgpr_read_b32 v10, a1
	v_accvgpr_read_b32 v11, a2
	v_accvgpr_read_b32 v12, a3
	v_accvgpr_read_b32 v14, a4
	v_accvgpr_read_b32 v16, a5
	v_accvgpr_read_b32 v17, a6
	v_accvgpr_read_b32 v18, a7
	v_accvgpr_read_b32 v19, a8
	v_accvgpr_read_b32 v22, a9
	v_accvgpr_read_b32 v24, a10
	v_accvgpr_read_b32 v25, a11
	v_accvgpr_read_b32 v26, a12
	v_accvgpr_read_b32 v27, a13
	v_accvgpr_read_b32 v28, a14
	v_accvgpr_read_b32 v29, a15
	s_setreg_imm32_b32 hwreg(HW_REG_MODE, 2, 2), 0
	v_cvt_f16_f32_e32 v9, v9
	v_cvt_f16_f32_e32 v10, v10
	v_cvt_f16_f32_e32 v11, v11
	v_cvt_f16_f32_e32 v12, v12
	v_cvt_f16_f32_e32 v14, v14
	v_cvt_f16_f32_e32 v16, v16
	v_cvt_f16_f32_e32 v17, v17
	v_cvt_f16_f32_e32 v18, v18
	v_cvt_f16_f32_e32 v19, v19
	v_cvt_f16_f32_e32 v22, v22
	v_cvt_f16_f32_e32 v24, v24
	v_cvt_f16_f32_e32 v25, v25
	v_cvt_f16_f32_e32 v26, v26
	v_cvt_f16_f32_e32 v27, v27
	v_cvt_f16_f32_e32 v28, v28
	v_cvt_f16_f32_e32 v29, v29
	v_accvgpr_read_b32 v30, a16
	v_accvgpr_read_b32 v31, a17
	v_accvgpr_read_b32 v32, a18
	v_cvt_f16_f32_e32 v30, v30
	v_cvt_f16_f32_e32 v31, v31
	v_cvt_f16_f32_e32 v32, v32
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v9, s[0:1]
	global_store_short v[0:1], v10, s[0:1] offset:392
	global_store_short v[0:1], v11, s[0:1] offset:784
	global_store_short v[0:1], v12, s[0:1] offset:1176
	global_store_short v[0:1], v14, s[0:1] offset:3136
	global_store_short v[0:1], v16, s[0:1] offset:3528
	global_store_short v[0:1], v17, s[0:1] offset:3920
	global_store_short v[4:5], v18, off offset:216
	global_store_short v[4:5], v19, off offset:2176
	global_store_short v[4:5], v22, off offset:2568
	global_store_short v[4:5], v24, off offset:2960
	global_store_short v[4:5], v25, off offset:3352
	global_store_short v[6:7], v26, off offset:1216
	global_store_short v[6:7], v27, off offset:1608
	global_store_short v[6:7], v28, off offset:2000
	global_store_short v[6:7], v29, off offset:2392
	v_accvgpr_read_b32 v0, a19
	v_accvgpr_read_b32 v1, a20
	v_accvgpr_read_b32 v6, a21
	v_accvgpr_read_b32 v7, a22
	v_cvt_f16_f32_e32 v0, v0
	v_cvt_f16_f32_e32 v1, v1
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v4, vcc, s0, v2
	v_accvgpr_read_b32 v9, a27
	v_addc_co_u32_e32 v5, vcc, v15, v3, vcc
	v_cvt_f16_f32_e32 v9, v9
	v_accvgpr_read_b32 v10, a43
	v_cvt_f16_f32_e32 v10, v10
	s_nop 0
	s_nop 0
	global_store_short v[2:3], v30, s[0:1]
	global_store_short v[2:3], v31, s[0:1] offset:392
	global_store_short v[2:3], v32, s[0:1] offset:784
	global_store_short v[2:3], v0, s[0:1] offset:1176
	global_store_short v[2:3], v1, s[0:1] offset:3136
	global_store_short v[2:3], v6, s[0:1] offset:3528
	global_store_short v[2:3], v7, s[0:1] offset:3920
	v_accvgpr_read_b32 v3, a24
	v_accvgpr_read_b32 v6, a25
	v_accvgpr_read_b32 v7, a26
	v_accvgpr_read_b32 v0, a23
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v6, v6
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s5, v4
	v_addc_co_u32_e32 v1, vcc, 0, v5, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:216
	global_store_short v[0:1], v3, off offset:2176
	global_store_short v[0:1], v6, off offset:2568
	global_store_short v[0:1], v7, off offset:2960
	global_store_short v[0:1], v9, off offset:3352
	v_or_b32_e32 v6, 32, v13
	v_ashrrev_i32_e32 v7, 31, v6
	v_lshrrev_b32_e32 v7, 29, v7
	v_add_u32_e32 v7, v6, v7
	v_and_b32_e32 v7, -8, v7
	v_sub_u32_e32 v6, v6, v7
	v_ashrrev_i32_e32 v9, 31, v6
	v_accvgpr_read_b32 v0, a28
	v_lshrrev_b32_e32 v9, 30, v9
	v_add_u32_e32 v6, v6, v9
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s6, v4
	v_accvgpr_read_b32 v3, a29
	v_accvgpr_read_b32 v4, a30
	v_addc_co_u32_e32 v1, vcc, 0, v5, vcc
	v_accvgpr_read_b32 v5, a31
	v_sub_u32_e32 v9, v7, v21
	v_and_b32_e32 v6, -4, v6
	v_add_u32_e32 v9, v9, v6
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_mul_lo_u32 v9, v9, s4
	v_sub_u32_e32 v7, v7, v23
	v_add_u32_e32 v6, v7, v6
	v_mul_lo_u32 v6, v6, s4
	v_accvgpr_read_b32 v7, a54
	v_cvt_f16_f32_e32 v7, v7
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1216
	global_store_short v[0:1], v3, off offset:1608
	global_store_short v[0:1], v4, off offset:2000
	global_store_short v[0:1], v5, off offset:2392
	v_accvgpr_read_b32 v4, a33
	v_accvgpr_read_b32 v5, a34
	v_accvgpr_read_b32 v1, a32
	v_add_u32_e32 v0, v9, v8
	v_cvt_f16_f32_e32 v2, v1
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_accvgpr_read_b32 v9, a38
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v8, vcc, s0, v0
	v_mov_b32_e32 v3, s1
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1]
	global_store_short v[0:1], v4, s[0:1] offset:392
	global_store_short v[0:1], v5, s[0:1] offset:784
	v_accvgpr_read_b32 v2, a35
	v_accvgpr_read_b32 v4, a36
	v_accvgpr_read_b32 v5, a37
	v_cvt_f16_f32_e32 v2, v2
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1] offset:1176
	global_store_short v[0:1], v4, s[0:1] offset:3136
	global_store_short v[0:1], v5, s[0:1] offset:3528
	global_store_short v[0:1], v9, s[0:1] offset:3920
	v_accvgpr_read_b32 v4, a40
	v_accvgpr_read_b32 v5, a41
	v_accvgpr_read_b32 v9, a42
	v_accvgpr_read_b32 v0, a39
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v9, v9
	v_add_co_u32_e32 v0, vcc, s5, v8
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:216
	global_store_short v[0:1], v4, off offset:2176
	global_store_short v[0:1], v5, off offset:2568
	global_store_short v[0:1], v9, off offset:2960
	global_store_short v[0:1], v10, off offset:3352
	v_accvgpr_read_b32 v0, a44
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s6, v8
	v_accvgpr_read_b32 v4, a46
	v_accvgpr_read_b32 v5, a47
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a45
	v_cvt_f16_f32_e32 v3, v3
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_accvgpr_read_b32 v8, a59
	v_cvt_f16_f32_e32 v8, v8
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:1216
	global_store_short v[0:1], v3, off offset:1608
	global_store_short v[0:1], v4, off offset:2000
	global_store_short v[0:1], v5, off offset:2392
	v_accvgpr_read_b32 v4, a49
	v_accvgpr_read_b32 v5, a50
	v_accvgpr_read_b32 v1, a48
	v_add_u32_e32 v0, v6, v20
	v_cvt_f16_f32_e32 v2, v1
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_ashrrev_i32_e32 v1, 31, v0
	v_lshlrev_b64 v[0:1], 1, v[0:1]
	v_mov_b32_e32 v3, s1
	v_add_co_u32_e32 v6, vcc, s0, v0
	v_addc_co_u32_e32 v3, vcc, v3, v1, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1]
	global_store_short v[0:1], v4, s[0:1] offset:392
	global_store_short v[0:1], v5, s[0:1] offset:784
	v_accvgpr_read_b32 v2, a51
	v_accvgpr_read_b32 v4, a52
	v_accvgpr_read_b32 v5, a53
	v_cvt_f16_f32_e32 v2, v2
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, s[0:1] offset:1176
	global_store_short v[0:1], v4, s[0:1] offset:3136
	global_store_short v[0:1], v5, s[0:1] offset:3528
	global_store_short v[0:1], v7, s[0:1] offset:3920
	v_accvgpr_read_b32 v4, a56
	v_accvgpr_read_b32 v5, a57
	v_accvgpr_read_b32 v7, a58
	v_accvgpr_read_b32 v0, a55
	v_cvt_f16_f32_e32 v2, v0
	v_cvt_f16_f32_e32 v4, v4
	v_cvt_f16_f32_e32 v5, v5
	v_cvt_f16_f32_e32 v7, v7
	v_add_co_u32_e32 v0, vcc, s5, v6
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	s_nop 0
	s_nop 0
	global_store_short v[0:1], v2, off offset:216
	global_store_short v[0:1], v4, off offset:2176
	global_store_short v[0:1], v5, off offset:2568
	global_store_short v[0:1], v7, off offset:2960
	global_store_short v[0:1], v8, off offset:3352
	v_accvgpr_read_b32 v0, a60
	v_cvt_f16_f32_e32 v2, v0
	v_add_co_u32_e32 v0, vcc, s6, v6
	v_accvgpr_read_b32 v4, a62
	v_accvgpr_read_b32 v5, a63
	v_addc_co_u32_e32 v1, vcc, 0, v3, vcc
	v_accvgpr_read_b32 v3, a61
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
		.amdhsa_next_free_vgpr 64
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
; codeLenInByte = 4072
; NumSgprs: 37
; NumVgprs: 63
; NumAgprs: 64
; TotalNumVgprs: 64
; ScratchSize: 0
; MemoryBound: 0
; FloatMode: 192
; IeeeMode: 1
; LDSByteSize: 16384 bytes/workgroup (compile time only)
; SGPRBlocks: 4
; VGPRBlocks: 15
; NumSGPRsForWavesPerEU: 37
; NumVGPRsForWavesPerEU: 64
; Occupancy: 4
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
    .kernarg_segment_size: 32
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
    .vgpr_count:     64
    .vgpr_spill_count: 0
    .wavefront_size: 64
amdhsa.version:
  - 1
  - 0
...

	.end_amdgpu_metadata
