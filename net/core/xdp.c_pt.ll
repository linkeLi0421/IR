; ModuleID = '/llk/IR/net/core/xdp.c_pt.bc'
source_filename = "../net/core/xdp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_unreg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unreg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unreg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unreg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unreg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unreg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_reg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_unused\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_unused:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_is_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_is_reg\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_is_reg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_reg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_rxq_info_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_rxq_info_reg_mem_model\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_rxq_info_reg_mem_model:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame_rx_napi\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame_rx_napi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_flush_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_flush_frame_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_flush_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_return_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_return_frame_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_return_frame_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xdp_release_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22__xdp_release_frame\22\09\09\09\09\09"
module asm "__kstrtabns___xdp_release_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_attachment_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_attachment_setup\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_attachment_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_convert_zc_to_xdp_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_convert_zc_to_xdp_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_convert_zc_to_xdp_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_warn\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_warn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_alloc_skb_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_alloc_skb_bulk\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_alloc_skb_bulk:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22__xdp_build_skb_from_frame\22\09\09\09\09\09"
module asm "__kstrtabns___xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22xdp_build_skb_from_frame\22\09\09\09\09\09"
module asm "__kstrtabns_xdp_build_skb_from_frame:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.cpumask = type { [1 x i32] }
%struct.bpf_redirect_info = type { i32, i32, ptr, ptr, i32, i32, i32, %struct.bpf_nh_params }
%struct.bpf_nh_params = type { i32, %union.anon.177 }
%union.anon.177 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.70 }
%union.anon.70 = type { [4 x i32] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_mem_allocator = type { %struct.xdp_mem_info, %union.anon, %struct.rhash_head, %struct.callback_head }
%union.anon = type { ptr }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rhashtable_compare_arg = type { ptr, ptr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.bucket_table = type { i32, i32, i32, %struct.list_head, %struct.callback_head, ptr, %struct.lockdep_map, [32 x i8], [0 x ptr] }
%struct.lockdep_map = type {}
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [40 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.152, %struct.atomic_t }
%union.anon.2 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.152 = type { %struct.atomic_t }
%struct.xdp_frame_bulk = type { i32, ptr, [16 x ptr] }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netdev_bpf = type { i32, %union.anon.163 }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type { i32, ptr, ptr }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.sk_buff = type { %union.anon.49, %union.anon.52, %union.anon.53, [48 x i8], %union.anon.54, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.56, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type { ptr, ptr, %union.anon.51 }
%union.anon.51 = type { ptr }
%union.anon.52 = type { ptr }
%union.anon.53 = type { i64 }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, ptr }
%union.anon.56 = type { %struct.anon.57 }
%struct.anon.57 = type { [0 x i8], i16, [0 x i8], i16, %union.anon.58, i32, i32, i32, i16, i16, %union.anon.60, %union.anon.61, %union.anon.62, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.58 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.rhashtable_iter = type { ptr, ptr, ptr, %struct.rhashtable_walker, i32, i32, i8 }
%struct.rhashtable_walker = type { %struct.list_head, ptr }

@mem_id_ht = internal unnamed_addr global ptr null, align 4
@mem_id_rht_params = internal constant %struct.rhashtable_params { i16 64, i16 4, i16 4, i16 12, i32 65534, i16 8, i8 1, ptr @xdp_mem_id_hashfn, ptr null, ptr @xdp_mem_id_cmp }, align 4
@__kstrtab_xdp_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_unreg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_unreg_mem_model to i32), ptr @__kstrtab_xdp_unreg_mem_model, ptr @__kstrtabns_xdp_unreg_mem_model }, section "___ksymtab_gpl+xdp_unreg_mem_model", align 4
@.str = private unnamed_addr constant [15 x i8] c"net/core/xdp.c\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Missing register, driver bug\00", align 1
@__kstrtab_xdp_rxq_info_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unreg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unreg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unreg_mem_model to i32), ptr @__kstrtab_xdp_rxq_info_unreg_mem_model, ptr @__kstrtabns_xdp_rxq_info_unreg_mem_model }, section "___ksymtab_gpl+xdp_rxq_info_unreg_mem_model", align 4
@__kstrtab_xdp_rxq_info_unreg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unreg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unreg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unreg to i32), ptr @__kstrtab_xdp_rxq_info_unreg, ptr @__kstrtabns_xdp_rxq_info_unreg }, section "___ksymtab_gpl+xdp_rxq_info_unreg", align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Missing net_device from driver\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Driver promised not to register this\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Missing unregister, handled but fix driver\00", align 1
@__kstrtab_xdp_rxq_info_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_reg to i32), ptr @__kstrtab_xdp_rxq_info_reg, ptr @__kstrtabns_xdp_rxq_info_reg }, section "___ksymtab_gpl+xdp_rxq_info_reg", align 4
@__kstrtab_xdp_rxq_info_unused = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_unused = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_unused = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_unused to i32), ptr @__kstrtab_xdp_rxq_info_unused, ptr @__kstrtabns_xdp_rxq_info_unused }, section "___ksymtab_gpl+xdp_rxq_info_unused", align 4
@__kstrtab_xdp_rxq_info_is_reg = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_is_reg = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_is_reg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_is_reg to i32), ptr @__kstrtab_xdp_rxq_info_is_reg, ptr @__kstrtabns_xdp_rxq_info_is_reg }, section "___ksymtab_gpl+xdp_rxq_info_is_reg", align 4
@__kstrtab_xdp_reg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_reg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_reg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_reg_mem_model to i32), ptr @__kstrtab_xdp_reg_mem_model, ptr @__kstrtabns_xdp_reg_mem_model }, section "___ksymtab_gpl+xdp_reg_mem_model", align 4
@__kstrtab_xdp_rxq_info_reg_mem_model = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_rxq_info_reg_mem_model = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_rxq_info_reg_mem_model = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_rxq_info_reg_mem_model to i32), ptr @__kstrtab_xdp_rxq_info_reg_mem_model, ptr @__kstrtabns_xdp_rxq_info_reg_mem_model }, section "___ksymtab_gpl+xdp_rxq_info_reg_mem_model", align 4
@__kstrtab_xdp_return_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame to i32), ptr @__kstrtab_xdp_return_frame, ptr @__kstrtabns_xdp_return_frame }, section "___ksymtab_gpl+xdp_return_frame", align 4
@__kstrtab_xdp_return_frame_rx_napi = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame_rx_napi = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame_rx_napi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame_rx_napi to i32), ptr @__kstrtab_xdp_return_frame_rx_napi, ptr @__kstrtabns_xdp_return_frame_rx_napi }, section "___ksymtab_gpl+xdp_return_frame_rx_napi", align 4
@__kstrtab_xdp_flush_frame_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_flush_frame_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_flush_frame_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_flush_frame_bulk to i32), ptr @__kstrtab_xdp_flush_frame_bulk, ptr @__kstrtabns_xdp_flush_frame_bulk }, section "___ksymtab_gpl+xdp_flush_frame_bulk", align 4
@__kstrtab_xdp_return_frame_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_return_frame_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_return_frame_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_return_frame_bulk to i32), ptr @__kstrtab_xdp_return_frame_bulk, ptr @__kstrtabns_xdp_return_frame_bulk }, section "___ksymtab_gpl+xdp_return_frame_bulk", align 4
@__kstrtab___xdp_release_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns___xdp_release_frame = external dso_local constant [0 x i8], align 1
@__ksymtab___xdp_release_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xdp_release_frame to i32), ptr @__kstrtab___xdp_release_frame, ptr @__kstrtabns___xdp_release_frame }, section "___ksymtab_gpl+__xdp_release_frame", align 4
@__kstrtab_xdp_attachment_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_attachment_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_attachment_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_attachment_setup to i32), ptr @__kstrtab_xdp_attachment_setup, ptr @__kstrtabns_xdp_attachment_setup }, section "___ksymtab_gpl+xdp_attachment_setup", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_xdp_convert_zc_to_xdp_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_convert_zc_to_xdp_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_convert_zc_to_xdp_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_convert_zc_to_xdp_frame to i32), ptr @__kstrtab_xdp_convert_zc_to_xdp_frame, ptr @__kstrtabns_xdp_convert_zc_to_xdp_frame }, section "___ksymtab_gpl+xdp_convert_zc_to_xdp_frame", align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"XDP_WARN: %s(line:%d): %s\0A\00", align 1
@__kstrtab_xdp_warn = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_warn = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_warn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_warn to i32), ptr @__kstrtab_xdp_warn, ptr @__kstrtabns_xdp_warn }, section "___ksymtab_gpl+xdp_warn", align 4
@skbuff_head_cache = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_xdp_alloc_skb_bulk = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_alloc_skb_bulk = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_alloc_skb_bulk = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_alloc_skb_bulk to i32), ptr @__kstrtab_xdp_alloc_skb_bulk, ptr @__kstrtabns_xdp_alloc_skb_bulk }, section "___ksymtab_gpl+xdp_alloc_skb_bulk", align 4
@__kstrtab___xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns___xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__ksymtab___xdp_build_skb_from_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__xdp_build_skb_from_frame to i32), ptr @__kstrtab___xdp_build_skb_from_frame, ptr @__kstrtabns___xdp_build_skb_from_frame }, section "___ksymtab_gpl+__xdp_build_skb_from_frame", align 4
@__kstrtab_xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__kstrtabns_xdp_build_skb_from_frame = external dso_local constant [0 x i8], align 1
@__ksymtab_xdp_build_skb_from_frame = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xdp_build_skb_from_frame to i32), ptr @__kstrtab_xdp_build_skb_from_frame, ptr @__kstrtabns_xdp_build_skb_from_frame }, section "___ksymtab_gpl+xdp_build_skb_from_frame", align 4
@mem_id_init = internal unnamed_addr global i1 false, align 1
@mem_id_lock = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mem_id_lock, i64 12), ptr getelementptr (i8, ptr @mem_id_lock, i64 12) } }, align 4
@mem_id_pool = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 33554437, ptr null } }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mem_id_next = internal unnamed_addr global i32 1, align 4
@__tracepoint_mem_disconnect = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_mem_connect = external dso_local global %struct.tracepoint, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Incorrect XDP memory type (%d) usage\00", align 1
@bpf_redirect_info = external dso_local global %struct.bpf_redirect_info, section ".data..percpu", align 4
@llvm.compiler.used = appending global [19 x ptr] [ptr @__ksymtab___xdp_build_skb_from_frame, ptr @__ksymtab___xdp_release_frame, ptr @__ksymtab_xdp_alloc_skb_bulk, ptr @__ksymtab_xdp_attachment_setup, ptr @__ksymtab_xdp_build_skb_from_frame, ptr @__ksymtab_xdp_convert_zc_to_xdp_frame, ptr @__ksymtab_xdp_flush_frame_bulk, ptr @__ksymtab_xdp_reg_mem_model, ptr @__ksymtab_xdp_return_frame, ptr @__ksymtab_xdp_return_frame_bulk, ptr @__ksymtab_xdp_return_frame_rx_napi, ptr @__ksymtab_xdp_rxq_info_is_reg, ptr @__ksymtab_xdp_rxq_info_reg, ptr @__ksymtab_xdp_rxq_info_reg_mem_model, ptr @__ksymtab_xdp_rxq_info_unreg, ptr @__ksymtab_xdp_rxq_info_unreg_mem_model, ptr @__ksymtab_xdp_rxq_info_unused, ptr @__ksymtab_xdp_unreg_mem_model, ptr @__ksymtab_xdp_warn], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_unreg_mem_model(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %4 = getelementptr inbounds %struct.xdp_mem_info, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  store i32 %5, ptr %2, align 4
  store i32 0, ptr %4, align 4
  store i32 0, ptr %0, align 4
  %6 = icmp ne i32 %5, 0
  %7 = icmp eq i32 %3, 2
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %10 = load ptr, ptr @mem_id_ht, align 4
  %11 = call fastcc ptr @rhashtable_lookup(ptr noundef %10, ptr noundef nonnull %2, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %12 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  call void @page_pool_destroy(ptr noundef %13) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %14

14:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rhashtable_lookup(ptr noundef %0, ptr noundef %1, [7 x i32] %2) unnamed_addr #2 {
  %4 = alloca %struct.rhashtable_compare_arg, align 8
  %5 = extractvalue [7 x i32] %2, 6
  %6 = inttoptr i32 %5 to ptr
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr %0, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %4, i32 0, i32 1
  store ptr %1, ptr %7, align 4
  %8 = load volatile ptr, ptr %0, align 4
  %9 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 7
  %10 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 1
  %11 = icmp eq i32 %5, 0
  %12 = getelementptr inbounds %struct.rhashtable, ptr %0, i32 0, i32 3, i32 3
  br label %13

13:                                               ; preds = %73, %3
  %14 = phi ptr [ %8, %3 ], [ %75, %73 ]
  %15 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = load ptr, ptr %9, align 4
  %18 = load i32, ptr %10, align 4
  %19 = call i32 %17(ptr noundef %1, i32 noundef %18, i32 noundef %16) #14
  %20 = load i32, ptr %14, align 64
  %21 = add i32 %20, -1
  %22 = and i32 %21, %19
  %23 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !11

26:                                               ; preds = %13
  %27 = call ptr @rht_bucket_nested(ptr noundef %14, i32 noundef %22) #14
  br label %30

28:                                               ; preds = %13
  %29 = getelementptr %struct.bucket_table, ptr %14, i32 0, i32 8, i32 %22
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ %29, %28 ]
  %32 = ptrtoint ptr %31 to i32
  %33 = or i32 %32, 1
  %34 = inttoptr i32 %33 to ptr
  br label %35

35:                                               ; preds = %70, %30
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !12
  %36 = load volatile ptr, ptr %31, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = and i32 %37, -2
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %33, i32 %38
  %41 = inttoptr i32 %40 to ptr
  %42 = and i32 %40, 1
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %65, %35
  %45 = phi ptr [ %66, %65 ], [ %41, %35 ]
  %46 = load i16, ptr %12, align 2
  %47 = zext i16 %46 to i32
  %48 = sub nsw i32 0, %47
  %49 = getelementptr i8, ptr %45, i32 %48
  br i1 %11, label %53, label %50

50:                                               ; preds = %44
  %51 = call i32 %6(ptr noundef nonnull %4, ptr noundef %49) #14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %78, label %65

53:                                               ; preds = %44
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.rhashtable, ptr %54, i32 0, i32 3, i32 2
  %56 = load i16, ptr %55, align 4
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %49, i32 %57
  %59 = load ptr, ptr %7, align 4
  %60 = getelementptr inbounds %struct.rhashtable, ptr %54, i32 0, i32 3, i32 1
  %61 = load i16, ptr %60, align 2
  %62 = zext i16 %61 to i32
  %63 = call i32 @bcmp(ptr %58, ptr %59, i32 %62) #14
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %53, %50
  %66 = load volatile ptr, ptr %45, align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %44, label %70

70:                                               ; preds = %65, %35
  %71 = phi ptr [ %41, %35 ], [ %66, %65 ]
  %72 = icmp eq ptr %71, %34
  br i1 %72, label %73, label %35

73:                                               ; preds = %70
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !13
  %74 = getelementptr inbounds %struct.bucket_table, ptr %14, i32 0, i32 5
  %75 = load volatile ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %13, !prof !11

77:                                               ; preds = %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  br label %85

78:                                               ; preds = %53, %50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %79 = icmp eq ptr %45, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %78
  %81 = load i16, ptr %12, align 2
  %82 = zext i16 %81 to i32
  %83 = sub nsw i32 0, %82
  %84 = getelementptr i8, ptr %45, i32 %83
  br label %85

85:                                               ; preds = %80, %78, %77
  %86 = phi ptr [ %84, %80 ], [ null, %78 ], [ null, %77 ]
  ret ptr %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_rxq_info_unreg_mem_model(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %21

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %10 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3, i32 1
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %2, align 4
  store i32 0, ptr %10, align 4
  store i32 0, ptr %8, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp eq i32 %9, 2
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %16 = load ptr, ptr @mem_id_ht, align 4
  %17 = call fastcc ptr @rhashtable_lookup(ptr noundef %16, ptr noundef nonnull %2, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)]) #14
  %18 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  call void @page_pool_destroy(ptr noundef %19) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %20

20:                                               ; preds = %15, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %21

21:                                               ; preds = %20, %6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_rxq_info_unreg(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 8
  switch i32 %4, label %5 [
    i32 3, label %21
    i32 1, label %6
  ]

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %20

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %9 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3, i32 1
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %2, align 4
  store i32 0, ptr %9, align 4
  store i32 0, ptr %7, align 4
  %11 = icmp ne i32 %10, 0
  %12 = icmp eq i32 %8, 2
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %15 = load ptr, ptr @mem_id_ht, align 4
  %16 = call fastcc ptr @rhashtable_lookup(ptr noundef %15, ptr noundef nonnull %2, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)]) #14
  %17 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  call void @page_pool_destroy(ptr noundef %18) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %19

19:                                               ; preds = %14, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %20

20:                                               ; preds = %19, %5
  store i32 2, ptr %3, align 8
  store ptr null, ptr %0, align 64
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdp_rxq_info_reg(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 169, i32 noundef 9, ptr noundef nonnull @.str.2) #14
  br label %32

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %29 [
    i32 3, label %11
    i32 1, label %12
  ]

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 174, i32 noundef 9, ptr noundef nonnull @.str.3) #14
  br label %32

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef nonnull @.str.4) #14
  %13 = load i32, ptr %9, align 8
  switch i32 %13, label %14 [
    i32 3, label %29
    i32 1, label %15
  ]

14:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 138, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %29

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  %18 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %5, align 4
  store i32 0, ptr %18, align 4
  store i32 0, ptr %16, align 4
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq i32 %17, 2
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %24 = load ptr, ptr @mem_id_ht, align 4
  %25 = call fastcc ptr @rhashtable_lookup(ptr noundef %24, ptr noundef nonnull %5, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)]) #14
  %26 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @page_pool_destroy(ptr noundef %27) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %28

28:                                               ; preds = %23, %15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %29

29:                                               ; preds = %28, %14, %12, %8
  call void @llvm.memset.p0.i32(ptr noundef align 64 dereferenceable(64) %0, i8 0, i32 64, i1 false) #14
  store ptr %1, ptr %0, align 64
  %30 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 1
  store i32 %2, ptr %30, align 4
  %31 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 4
  store i32 %3, ptr %31, align 4
  store i32 1, ptr %9, align 8
  br label %32

32:                                               ; preds = %29, %11, %7
  %33 = phi i32 [ -22, %11 ], [ 0, %29 ], [ -19, %7 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xdp_rxq_info_unused(ptr nocapture noundef writeonly %0) #4 {
  %2 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  store i32 3, ptr %2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @xdp_rxq_info_is_reg(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 1
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdp_reg_mem_model(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call fastcc ptr @__xdp_reg_mem_model(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %4 to i32
  %7 = select i1 %5, i32 %6, i32 0
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__xdp_reg_mem_model(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #14
  %5 = icmp ult i32 %1, 4
  br i1 %5, label %6, label %63

6:                                                ; preds = %3
  store i32 %1, ptr %0, align 4
  %7 = icmp eq ptr %2, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 2
  %10 = select i1 %9, ptr inttoptr (i32 -22 to ptr), ptr null
  br label %63

11:                                               ; preds = %6
  %12 = load i1, ptr @mem_id_init, align 1
  br i1 %12, label %28, label %13

13:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef nonnull @mem_id_lock) #14
  %14 = load i1, ptr @mem_id_init, align 1
  br i1 %14, label %25, label %15, !prof !14

15:                                               ; preds = %13
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 88) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @rhashtable_init(ptr noundef nonnull %17, ptr noundef nonnull @mem_id_rht_params) #14
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  tail call void @kfree(ptr noundef nonnull %17) #14
  %23 = inttoptr i32 %20 to ptr
  br label %26

24:                                               ; preds = %19
  store ptr %17, ptr @mem_id_ht, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !15
  store i1 true, ptr @mem_id_init, align 1
  br label %25

25:                                               ; preds = %24, %13
  tail call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #14
  br label %28

26:                                               ; preds = %22, %15
  %27 = phi ptr [ inttoptr (i32 -12 to ptr), %15 ], [ %23, %22 ]
  tail call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 9, ptr noundef null) #14
  br label %63

28:                                               ; preds = %25, %11
  %29 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %30 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 24) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  tail call void @mutex_lock(ptr noundef nonnull @mem_id_lock) #14
  %33 = load i32, ptr @mem_id_next, align 4
  %34 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mem_id_pool, i32 noundef %33, i32 noundef 65533, i32 noundef 3264) #14
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = icmp eq i32 %34, -28
  br i1 %37, label %40, label %38

38:                                               ; preds = %40, %36
  %39 = phi i32 [ %34, %36 ], [ %41, %40 ]
  store i32 %39, ptr %4, align 4
  br label %60

40:                                               ; preds = %36
  store i32 1, ptr @mem_id_next, align 4
  %41 = tail call i32 @ida_alloc_range(ptr noundef nonnull @mem_id_pool, i32 noundef 1, i32 noundef 65533, i32 noundef 3264) #14
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %38, label %43

43:                                               ; preds = %40, %32
  %44 = phi i32 [ %34, %32 ], [ %41, %40 ]
  %45 = add nuw i32 %44, 1
  store i32 %45, ptr @mem_id_next, align 4
  store i32 %44, ptr %4, align 4
  %46 = getelementptr inbounds %struct.xdp_mem_info, ptr %0, i32 0, i32 1
  store i32 %44, ptr %46, align 4
  %47 = load i64, ptr %0, align 4
  store i64 %47, ptr %30, align 8
  %48 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %30, i32 0, i32 1
  store ptr %2, ptr %48, align 8
  %49 = load ptr, ptr @mem_id_ht, align 4
  %50 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %30, i32 0, i32 2
  %51 = call ptr @rhashtable_insert_slow(ptr noundef %49, ptr noundef nonnull %4, ptr noundef %50) #14
  %52 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, ptr %46, align 4
  call void @ida_free(ptr noundef nonnull @mem_id_pool, i32 noundef %54) #14
  store i32 0, ptr %46, align 4
  %55 = ptrtoint ptr %51 to i32
  br label %60

56:                                               ; preds = %43
  %57 = icmp eq i32 %1, 2
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  call void @page_pool_use_xdp_mem(ptr noundef nonnull %2, ptr noundef nonnull @mem_allocator_disconnect, ptr noundef %0) #14
  br label %59

59:                                               ; preds = %58, %56
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #14
  br label %63

60:                                               ; preds = %53, %38
  %61 = phi i32 [ %55, %53 ], [ %39, %38 ]
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #14
  call void @kfree(ptr noundef nonnull %30) #14
  %62 = inttoptr i32 %61 to ptr
  br label %63

63:                                               ; preds = %60, %59, %28, %26, %8, %3
  %64 = phi ptr [ %62, %60 ], [ %30, %59 ], [ %27, %26 ], [ inttoptr (i32 -95 to ptr), %3 ], [ inttoptr (i32 -12 to ptr), %28 ], [ %10, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #14
  ret ptr %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdp_rxq_info_reg_mem_model(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 352, i32 noundef 9, ptr noundef nonnull @.str.1) #14
  br label %35

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.xdp_rxq_info, ptr %0, i32 0, i32 3
  %10 = tail call fastcc ptr @__xdp_reg_mem_model(ptr noundef %9, i32 noundef %1, ptr noundef %2)
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = ptrtoint ptr %10 to i32
  br label %35

14:                                               ; preds = %8
  %15 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 1), align 4
  %16 = icmp sgt i32 %15, 0
  %17 = icmp ne ptr %10, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_connect, i32 0, i32 1), align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = tail call ptr @llvm.thread.pointer() #14
  %24 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = lshr i32 %25, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %25, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %22
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !16
  %34 = tail call i32 @__traceiter_mem_connect(ptr noundef null, ptr noundef nonnull %10, ptr noundef %0) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !17
  br label %35

35:                                               ; preds = %33, %22, %19, %14, %12, %7
  %36 = phi i32 [ -14, %7 ], [ %13, %12 ], [ 0, %14 ], [ 0, %19 ], [ 0, %22 ], [ 0, %33 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_return_frame(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4
  tail call fastcc void @__xdp_return(ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__xdp_return(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load i32, ptr %1, align 4
  switch i32 %4, label %62 [
    i32 2, label %5
    i32 0, label %39
    i32 1, label %40
    i32 3, label %63
  ]

5:                                                ; preds = %3
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %6 = load ptr, ptr @mem_id_ht, align 4
  %7 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %8 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %6, ptr noundef %7, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %9 = load ptr, ptr @mem_map, align 4
  %10 = ptrtoint ptr %0 to i32
  %11 = add i32 %10, 1073741824
  %12 = lshr i32 %11, 12
  %13 = getelementptr %struct.page, ptr %9, i32 %12, i32 1
  %14 = load volatile i32, ptr %13, align 4
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17, !prof !11

17:                                               ; preds = %5
  %18 = add i32 %14, -1
  br label %22

19:                                               ; preds = %5
  %20 = getelementptr %struct.page, ptr %9, i32 %12
  %21 = ptrtoint ptr %20 to i32
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi i32 [ %18, %17 ], [ %21, %19 ]
  %24 = inttoptr i32 %23 to ptr
  br i1 %2, label %25, label %35

25:                                               ; preds = %22
  %26 = tail call i32 @llvm.read_register.i32(metadata !0) #14
  %27 = inttoptr i32 %26 to ptr
  %28 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %27) #12, !srcloc !18
  %29 = add i32 %28, ptrtoint (ptr @bpf_redirect_info to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.bpf_redirect_info, ptr %30, i32 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %25, %22
  %36 = phi i1 [ false, %22 ], [ %34, %25 ]
  %37 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %8, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  tail call void @page_pool_put_page(ptr noundef %38, ptr noundef %24, i32 noundef -1, i1 noundef zeroext %36) #14
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %63

39:                                               ; preds = %3
  tail call void @page_frag_free(ptr noundef %0) #14
  br label %63

40:                                               ; preds = %3
  %41 = load ptr, ptr @mem_map, align 4
  %42 = ptrtoint ptr %0 to i32
  %43 = add i32 %42, 1073741824
  %44 = lshr i32 %43, 12
  %45 = getelementptr %struct.page, ptr %41, i32 %44, i32 1
  %46 = load volatile i32, ptr %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49, !prof !11

49:                                               ; preds = %40
  %50 = add i32 %46, -1
  br label %54

51:                                               ; preds = %40
  %52 = getelementptr %struct.page, ptr %41, i32 %44
  %53 = ptrtoint ptr %52 to i32
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i32 [ %50, %49 ], [ %53, %51 ]
  %56 = inttoptr i32 %55 to ptr
  %57 = getelementptr inbounds %struct.page, ptr %56, i32 0, i32 3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !19
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %57) #14, !srcloc !20
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %57, ptr %57, i32 1, ptr elementtype(i32) %57) #14, !srcloc !21
  %59 = extractvalue { i32, i32 } %58, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !22
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  tail call void @__put_page(ptr noundef %56) #14
  br label %63

62:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 403, i32 noundef 9, ptr noundef nonnull @.str.7, i32 noundef %4) #14
  br label %63

63:                                               ; preds = %62, %61, %54, %39, %35, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_return_frame_rx_napi(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4
  tail call fastcc void @__xdp_return(ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_flush_frame_bulk(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !14

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !14

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %3, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %0, i32 0, i32 2
  tail call void @page_pool_put_page_bulk(ptr noundef %10, ptr noundef %11, i32 noundef %6) #14
  store i32 0, ptr %0, align 4
  br label %12

12:                                               ; preds = %8, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page_bulk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_return_frame_bulk(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 4
  tail call fastcc void @__xdp_return(ptr noundef %7, ptr noundef %3, i1 noundef zeroext false)
  br label %40

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !14

12:                                               ; preds = %8
  %13 = load ptr, ptr @mem_id_ht, align 4
  %14 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4, i32 1
  %15 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %13, ptr noundef %14, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  store i32 0, ptr %1, align 4
  store ptr %15, ptr %9, align 4
  br label %23

16:                                               ; preds = %8
  %17 = load i32, ptr %1, align 4
  %18 = icmp eq i32 %17, 16
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %10, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.xdp_frame_bulk, ptr %1, i32 0, i32 2
  tail call void @page_pool_put_page_bulk(ptr noundef %21, ptr noundef %22, i32 noundef 16) #14
  store i32 0, ptr %1, align 4
  br label %23

23:                                               ; preds = %19, %16, %12
  %24 = phi i32 [ 0, %12 ], [ %17, %16 ], [ 0, %19 ]
  %25 = phi ptr [ %15, %12 ], [ %10, %16 ], [ %10, %19 ]
  %26 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.xdp_mem_info, ptr %25, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %35, label %31, !prof !11

31:                                               ; preds = %23
  tail call void @xdp_flush_frame_bulk(ptr noundef %1)
  %32 = load ptr, ptr @mem_id_ht, align 4
  %33 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %32, ptr noundef %26, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  store ptr %33, ptr %9, align 4
  %34 = load i32, ptr %1, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i32 [ %34, %31 ], [ %24, %23 ]
  %37 = load ptr, ptr %0, align 4
  %38 = add i32 %36, 1
  store i32 %38, ptr %1, align 4
  %39 = getelementptr %struct.xdp_frame_bulk, ptr %1, i32 0, i32 2, i32 %36
  store ptr %37, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_return_buff(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.xdp_rxq_info, ptr %4, i32 0, i32 3
  tail call fastcc void @__xdp_return(ptr noundef %2, ptr noundef %5, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__xdp_release_frame(ptr noundef %0, ptr noundef %1) #0 {
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %3 = load ptr, ptr @mem_id_ht, align 4
  %4 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %5 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %3, ptr noundef %4, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)])
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %0 to i32
  %8 = add i32 %7, 1073741824
  %9 = lshr i32 %8, 12
  %10 = getelementptr %struct.page, ptr %6, i32 %9, i32 1
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %2
  %15 = add i32 %11, -1
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr %struct.page, ptr %6, i32 %9
  %18 = ptrtoint ptr %17 to i32
  br label %19

19:                                               ; preds = %16, %14
  %20 = phi i32 [ %15, %14 ], [ %18, %16 ]
  %21 = icmp eq ptr %5, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = inttoptr i32 %20 to ptr
  %24 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %5, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  tail call void @page_pool_release_page(ptr noundef %25, ptr noundef %23) #14
  br label %26

26:                                               ; preds = %22, %19
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_release_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @xdp_attachment_setup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1
  %4 = getelementptr inbounds %struct.netdev_bpf, ptr %1, i32 0, i32 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %0, align 4
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr inbounds %struct.xdp_attachment_info, ptr %0, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xdp_convert_zc_to_xdp_frame(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = icmp ugt ptr %3, %4
  %6 = ptrtoint ptr %4 to i32
  %7 = ptrtoint ptr %3 to i32
  %8 = sub i32 %6, %7
  %9 = select i1 %5, i32 0, i32 %8
  %10 = getelementptr inbounds %struct.xdp_buff, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = sub i32 %12, %6
  %14 = add i32 %13, %9
  %15 = add i32 %14, -4073
  %16 = icmp ult i32 %15, -4097
  br i1 %16, label %43, label %17

17:                                               ; preds = %1
  %18 = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %19 = icmp eq ptr %18, null
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @mem_map, align 4
  %22 = ptrtoint ptr %18 to i32
  %23 = ptrtoint ptr %21 to i32
  %24 = sub i32 %22, %23
  %25 = lshr exact i32 %24, 5
  %26 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %27 = add i32 %25, %26
  %28 = shl i32 %27, 12
  %29 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %28, i32 -2130706432, i32 8454144) #16, !srcloc !23
  %30 = inttoptr i32 %29 to ptr
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(24) %30, i8 0, i32 24, i1 false)
  %31 = getelementptr i8, ptr %30, i32 24
  %32 = icmp eq i32 %9, 0
  %33 = select i1 %32, ptr %0, ptr %2
  %34 = load ptr, ptr %33, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 1 %34, i32 %14, i1 false)
  %35 = getelementptr i8, ptr %31, i32 %9
  store ptr %35, ptr %30, align 4
  %36 = trunc i32 %13 to i16
  %37 = getelementptr inbounds %struct.xdp_frame, ptr %30, i32 0, i32 1
  store i16 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.xdp_frame, ptr %30, i32 0, i32 2
  store i16 0, ptr %38, align 2
  %39 = getelementptr inbounds %struct.xdp_frame, ptr %30, i32 0, i32 3
  %40 = and i32 %9, 255
  %41 = or i32 %40, 1048576
  store i32 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.xdp_frame, ptr %30, i32 0, i32 4
  store i32 1, ptr %42, align 4
  br label %43

43:                                               ; preds = %20, %17, %1
  %44 = phi ptr [ %30, %20 ], [ null, %1 ], [ null, %17 ]
  ret ptr %44
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @xdp_warn(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 546, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %1, i32 noundef %2, ptr noundef %0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @xdp_alloc_skb_bulk(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr @skbuff_head_cache, align 4
  %5 = tail call i32 @kmem_cache_alloc_bulk(ptr noundef %4, i32 noundef %2, i32 noundef %1, ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, i32 -12, i32 0, !prof !14
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kmem_cache_alloc_bulk(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__xdp_build_skb_from_frame(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 2
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  %7 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 8
  %10 = load ptr, ptr %0, align 4
  %11 = sub nuw nsw i32 -24, %6
  %12 = getelementptr i8, ptr %10, i32 %11
  %13 = tail call ptr @build_skb_around(ptr noundef %1, ptr noundef %12, i32 noundef %9) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %77, label %15, !prof !14

15:                                               ; preds = %3
  %16 = add nuw nsw i32 %6, 24
  %17 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 17
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 %16
  store ptr %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 14
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %21, i32 %16
  store ptr %22, ptr %20, align 8
  %23 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %15
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !24
  unreachable

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 1
  %29 = load i16, ptr %28, align 4
  %30 = zext i16 %29 to i32
  %31 = getelementptr i8, ptr %22, i32 %30
  store ptr %31, ptr %20, align 8
  %32 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = add i32 %33, %30
  store i32 %34, ptr %32, align 8
  %35 = load i32, ptr %7, align 4
  %36 = and i32 %35, 255
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = trunc i32 %35 to i8
  %40 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 15
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.skb_shared_info, ptr %41, i32 0, i32 1
  store i8 %39, ptr %42, align 1
  br label %43

43:                                               ; preds = %38, %27
  %44 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %13, ptr noundef %2) #14
  %45 = getelementptr inbounds %struct.sk_buff, ptr %13, i32 0, i32 13, i32 0, i32 16
  store i16 %44, ptr %45, align 8
  %46 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %75

49:                                               ; preds = %43
  %50 = load ptr, ptr %0, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %51 = load ptr, ptr @mem_id_ht, align 4
  %52 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 4, i32 1
  %53 = tail call fastcc ptr @rhashtable_lookup(ptr noundef %51, ptr noundef %52, [7 x i32] [i32 262208, i32 786436, i32 65534, i32 65544, i32 ptrtoint (ptr @xdp_mem_id_hashfn to i32), i32 0, i32 ptrtoint (ptr @xdp_mem_id_cmp to i32)]) #14
  %54 = load ptr, ptr @mem_map, align 4
  %55 = ptrtoint ptr %50 to i32
  %56 = add i32 %55, 1073741824
  %57 = lshr i32 %56, 12
  %58 = getelementptr %struct.page, ptr %54, i32 %57, i32 1
  %59 = load volatile i32, ptr %58, align 4
  %60 = and i32 %59, 1
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %64, label %62, !prof !11

62:                                               ; preds = %49
  %63 = add i32 %59, -1
  br label %67

64:                                               ; preds = %49
  %65 = getelementptr %struct.page, ptr %54, i32 %57
  %66 = ptrtoint ptr %65 to i32
  br label %67

67:                                               ; preds = %64, %62
  %68 = phi i32 [ %63, %62 ], [ %66, %64 ]
  %69 = icmp eq ptr %53, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %67
  %71 = inttoptr i32 %68 to ptr
  %72 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %53, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  tail call void @page_pool_release_page(ptr noundef %73, ptr noundef %71) #14
  br label %74

74:                                               ; preds = %70, %67
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %75

75:                                               ; preds = %74, %43
  store ptr null, ptr %0, align 4
  %76 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 5
  store ptr null, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %3
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb_around(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xdp_build_skb_from_frame(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @skbuff_head_cache, align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %3, i32 noundef 2592) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !14

6:                                                ; preds = %2
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i32 144, i1 false)
  %7 = tail call ptr @__xdp_build_skb_from_frame(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @xdpf_clone(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 2
  %3 = load i16, ptr %2, align 2
  %4 = zext i16 %3 to i32
  %5 = add nuw nsw i32 %4, 24
  %6 = getelementptr inbounds %struct.xdp_frame, ptr %0, i32 0, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = add nuw nsw i32 %5, %8
  %10 = icmp ugt i32 %9, 4096
  br i1 %10, label %32, label %11, !prof !14

11:                                               ; preds = %1
  %12 = tail call ptr @__alloc_pages(i32 noundef 404000, i32 noundef 0, i32 noundef 0, ptr noundef null) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr @mem_map, align 4
  %16 = ptrtoint ptr %12 to i32
  %17 = ptrtoint ptr %15 to i32
  %18 = sub i32 %16, %17
  %19 = lshr exact i32 %18, 5
  %20 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %21 = add i32 %19, %20
  %22 = shl i32 %21, 12
  %23 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %22, i32 -2130706432, i32 8454144) #16, !srcloc !23
  %24 = inttoptr i32 %23 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 %24, ptr noundef align 4 %0, i32 %9, i1 false)
  %25 = getelementptr i8, ptr %24, i32 %5
  store ptr %25, ptr %24, align 4
  %26 = getelementptr inbounds %struct.xdp_frame, ptr %24, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %28, 1048576
  store i32 %29, ptr %26, align 4
  %30 = getelementptr inbounds %struct.xdp_frame, ptr %24, i32 0, i32 4
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %struct.xdp_frame, ptr %24, i32 0, i32 4, i32 1
  store i32 0, ptr %31, align 4
  br label %32

32:                                               ; preds = %14, %11, %1
  %33 = phi ptr [ %24, %14 ], [ null, %1 ], [ null, %11 ]
  ret ptr %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xdp_mem_id_hashfn(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = load i32, ptr %0, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @xdp_mem_id_cmp(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 {
  %3 = getelementptr inbounds %struct.rhashtable_compare_arg, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.xdp_mem_info, ptr %1, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %7, %5
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_insert_slow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_use_xdp_mem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mem_allocator_disconnect(ptr noundef readnone %0) #0 {
  %2 = alloca %struct.rhashtable_iter, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !25
  tail call void @mutex_lock(ptr noundef nonnull @mem_id_lock) #14
  %3 = load ptr, ptr @mem_id_ht, align 4
  call void @rhashtable_walk_enter(ptr noundef %3, ptr noundef nonnull %2) #14
  br label %4

4:                                                ; preds = %144, %1
  %5 = call i32 @rhashtable_walk_start_check(ptr noundef nonnull %2) #14
  %6 = call ptr @rhashtable_walk_next(ptr noundef nonnull %2) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %141, %4
  call void @rhashtable_walk_stop(ptr noundef nonnull %2) #14
  br label %146

9:                                                ; preds = %141, %4
  %10 = phi ptr [ %142, %141 ], [ %6, %4 ]
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %144, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %10, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %141

16:                                               ; preds = %12
  %17 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mem_disconnect, i32 0, i32 1), align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %16
  %20 = tail call ptr @llvm.thread.pointer() #14
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 5
  %24 = getelementptr i32, ptr @__cpu_online_mask, i32 %23
  %25 = load volatile i32, ptr %24, align 4
  %26 = and i32 %22, 31
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %19
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !26
  %31 = call i32 @__traceiter_mem_disconnect(ptr noundef null, ptr noundef nonnull %10) #14
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !27
  br label %32

32:                                               ; preds = %30, %19, %16
  %33 = load ptr, ptr @mem_id_ht, align 4
  %34 = getelementptr inbounds %struct.xdp_mem_allocator, ptr %10, i32 0, i32 2
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !9
  %35 = load volatile ptr, ptr %33, align 4
  %36 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 3, i32 3
  %37 = getelementptr %struct.xdp_mem_allocator, ptr %10, i32 0, i32 3
  br label %38

38:                                               ; preds = %135, %32
  %39 = phi ptr [ %35, %32 ], [ %137, %135 ]
  %40 = load i16, ptr %36, align 2
  %41 = zext i16 %40 to i32
  %42 = sub nsw i32 0, %41
  %43 = getelementptr i8, ptr %37, i32 %42
  %44 = load i32, ptr %43, align 4
  %45 = load i32, ptr %39, align 64
  %46 = add i32 %45, -1
  %47 = and i32 %46, %44
  %48 = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51, !prof !11

51:                                               ; preds = %38
  %52 = call ptr @__rht_bucket_nested(ptr noundef %39, i32 noundef %47) #14
  br label %55

53:                                               ; preds = %38
  %54 = getelementptr %struct.bucket_table, ptr %39, i32 0, i32 8, i32 %47
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi ptr [ %52, %51 ], [ %54, %53 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %135, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @llvm.thread.pointer() #14
  %60 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %61 = load volatile i32, ptr %60, align 4
  %62 = add i32 %61, 512
  store volatile i32 %62, ptr %60, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !28
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !29
  br label %63

63:                                               ; preds = %77, %58
  %64 = load volatile i32, ptr %56, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72, !prof !30

67:                                               ; preds = %63
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #14, !srcloc !20
  %68 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_or\0A1:\09ldrex\09$0, [$4]\0A\09orr\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #14, !srcloc !31
  %69 = extractvalue { i32, i32, i32 } %68, 0
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  %70 = and i32 %69, 1
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72, !prof !11

72:                                               ; preds = %67, %63
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !33
  br label %73

73:                                               ; preds = %73, %72
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !34
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #14, !srcloc !35
  %74 = load volatile i32, ptr %56, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %73

77:                                               ; preds = %73
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !36
  br label %63

78:                                               ; preds = %67
  %79 = load ptr, ptr %56, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = and i32 %80, -2
  %82 = icmp eq i32 %81, 0
  %83 = ptrtoint ptr %56 to i32
  %84 = or i32 %83, 1
  %85 = select i1 %82, i32 %84, i32 %81
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %78
  %89 = inttoptr i32 %85 to ptr
  %90 = icmp eq ptr %34, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load ptr, ptr %34, align 4
  br label %100

93:                                               ; preds = %106
  %94 = icmp eq ptr %108, %34
  br i1 %94, label %95, label %106

95:                                               ; preds = %93
  %96 = load ptr, ptr %34, align 4
  %97 = icmp eq ptr %107, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !37
  store volatile ptr %96, ptr %107, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !38
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #14, !srcloc !20
  %99 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #14, !srcloc !39
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  br label %114

100:                                              ; preds = %95, %91
  %101 = phi ptr [ %92, %91 ], [ %96, %95 ]
  %102 = ptrtoint ptr %101 to i32
  %103 = and i32 %102, 1
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, ptr %101, ptr null
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !41
  store volatile ptr %105, ptr %56, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !42
  br label %114

106:                                              ; preds = %93, %88
  %107 = phi ptr [ %108, %93 ], [ %89, %88 ]
  %108 = load ptr, ptr %107, align 4
  %109 = ptrtoint ptr %108 to i32
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %93, label %112

112:                                              ; preds = %106, %78
  call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !38
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %56) #14, !srcloc !20
  %113 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %56, ptr nonnull %56, i32 1, ptr nonnull elementtype(i32) %56) #14, !srcloc !39
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !40
  call fastcc void @local_bh_enable() #14
  br label %135

114:                                              ; preds = %100, %98
  call fastcc void @local_bh_enable() #14
  %115 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %115) #14, !srcloc !20
  %116 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %115, ptr %115, i32 1, ptr elementtype(i32) %115) #14, !srcloc !43
  %117 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 3, i32 6
  %118 = load i8, ptr %117, align 2, !range !44
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %140, label %120

120:                                              ; preds = %114
  %121 = load volatile i32, ptr %115, align 4
  %122 = load i32, ptr %39, align 64
  %123 = mul i32 %122, 3
  %124 = udiv i32 %123, 10
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 3, i32 5
  %128 = load i16, ptr %127, align 4
  %129 = zext i16 %128 to i32
  %130 = icmp ugt i32 %122, %129
  br i1 %130, label %131, label %140, !prof !14

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.rhashtable, ptr %33, i32 0, i32 5
  %133 = load ptr, ptr @system_wq, align 4
  %134 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %133, ptr noundef %132) #14
  br label %140

135:                                              ; preds = %112, %55
  %136 = getelementptr inbounds %struct.bucket_table, ptr %39, i32 0, i32 5
  %137 = load volatile ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %38

139:                                              ; preds = %135
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  br label %141

140:                                              ; preds = %131, %126, %120, %114
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !10
  call void @call_rcu(ptr noundef %37, ptr noundef nonnull @__xdp_mem_allocator_rcu_free) #14
  br label %141

141:                                              ; preds = %140, %139, %12
  %142 = call ptr @rhashtable_walk_next(ptr noundef nonnull %2) #14
  %143 = icmp eq ptr %142, null
  br i1 %143, label %8, label %9

144:                                              ; preds = %9
  call void @rhashtable_walk_stop(ptr noundef nonnull %2) #14
  %145 = icmp eq ptr %10, inttoptr (i32 -11 to ptr)
  br i1 %145, label %4, label %146

146:                                              ; preds = %144, %8
  call void @rhashtable_walk_exit(ptr noundef nonnull %2) #14
  call void @mutex_unlock(ptr noundef nonnull @mem_id_lock) #14
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @__xdp_mem_allocator_rcu_free(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load i32, ptr %3, align 4
  tail call void @ida_free(ptr noundef nonnull @mem_id_pool, i32 noundef %4) #14
  tail call void @kfree(ptr noundef %2) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mem_disconnect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rht_bucket_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 {
  br label %1

1:                                                ; preds = %0
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %1) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_mem_connect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_frag_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i64 2149378006}
!10 = !{i64 2149378223}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2155634338}
!13 = !{i64 2155637772}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2156715610}
!16 = !{i64 2156004687}
!17 = !{i64 2156004835}
!18 = !{i64 823911}
!19 = !{i64 2148501598}
!20 = !{i64 899533, i64 2148389504, i64 2148389530, i64 2148389577, i64 2148389599, i64 2148389627, i64 2148389647}
!21 = !{i64 2148403960, i64 2148403992, i64 2148404021, i64 2148404055, i64 2148404086, i64 2148404109}
!22 = !{i64 2148501801}
!23 = !{i64 2149059149, i64 2149059172, i64 2149059204, i64 2149059236, i64 2149059274, i64 2149059304}
!24 = !{i64 2153811214, i64 2153811702, i64 2153811251, i64 2153811307, i64 2153811341, i64 2153811365, i64 2153811406, i64 2153811427, i64 2153811455, i64 2153811489}
!25 = !{!"auto-init"}
!26 = !{i64 2155984304}
!27 = !{i64 2155984448}
!28 = !{i64 2149083093}
!29 = !{i64 2150887518}
!30 = !{!"branch_weights", i32 2146410443, i32 1073205}
!31 = !{i64 2148409381, i64 2148409413, i64 2148409442, i64 2148409476, i64 2148409507, i64 2148409530}
!32 = !{i64 2148514782}
!33 = !{i64 2150887629}
!34 = !{i64 2150887858}
!35 = !{i64 2150887700}
!36 = !{i64 2150887940}
!37 = !{i64 2155696349}
!38 = !{i64 2148513747}
!39 = !{i64 2148407840, i64 2148407872, i64 2148407901, i64 2148407935, i64 2148407966, i64 2148407989}
!40 = !{i64 2150888501}
!41 = !{i64 2155627870}
!42 = !{i64 2155630094}
!43 = !{i64 2148403276, i64 2148403302, i64 2148403331, i64 2148403365, i64 2148403396, i64 2148403419}
!44 = !{i8 0, i8 2}
