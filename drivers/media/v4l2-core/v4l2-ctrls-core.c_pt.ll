; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-ctrls-core.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-ctrls-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_notify\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_handler_init_class:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_handler_init_class\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_handler_init_class:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_handler_free:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_handler_free\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_handler_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_find\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_find:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_custom:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_custom\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_custom:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_std:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_std\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_std:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_std_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_std_menu\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_std_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_std_menu_items:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_std_menu_items\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_std_menu_items:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_std_compound:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_std_compound\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_std_compound:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_int_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_int_menu\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_int_menu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_add_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_add_handler\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_add_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_radio_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_radio_filter\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_radio_filter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_cluster:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_cluster\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_cluster:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_auto_cluster:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_auto_cluster\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_auto_cluster:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_activate\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_activate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___v4l2_ctrl_grab:\09\09\09\09\09"
module asm "\09.asciz \09\22__v4l2_ctrl_grab\22\09\09\09\09\09"
module asm "__kstrtabns___v4l2_ctrl_grab:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___v4l2_ctrl_handler_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22__v4l2_ctrl_handler_setup\22\09\09\09\09\09"
module asm "__kstrtabns___v4l2_ctrl_handler_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_handler_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_handler_setup\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_handler_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_handler_log_status:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_handler_log_status\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_handler_log_status:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_new_fwnode_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_new_fwnode_properties\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_new_fwnode_properties:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_ctrl_type_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_event = type { i32, %union.anon.73, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }
%union.anon.73 = type { %struct.v4l2_event_ctrl, [24 x i8] }
%struct.v4l2_event_ctrl = type { i32, i32, %union.anon.74, i32, i32, i32, i32, i32 }
%union.anon.74 = type { i64 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.66, %union.anon.67, i32, ptr, i32, %struct.anon.68, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.66 = type { i64 }
%union.anon.67 = type { ptr }
%struct.anon.68 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_ref = type { %struct.list_head, ptr, ptr, ptr, i8, i8, i8, %union.v4l2_ctrl_ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_fwnode_device_properties = type { i32, i32 }
%struct.v4l2_ctrl_mpeg2_sequence = type { i16, i16, i32, i16, i8, i8 }
%struct.v4l2_ctrl_mpeg2_picture = type { i64, i64, i32, [2 x [2 x i8]], i8, i8, i8, [5 x i8] }
%struct.v4l2_ctrl_mpeg2_quantisation = type { [64 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.v4l2_ctrl_vp8_frame = type { %struct.v4l2_vp8_segment, %struct.v4l2_vp8_loop_filter, %struct.v4l2_vp8_quantization, %struct.v4l2_vp8_entropy, %struct.v4l2_vp8_entropy_coder_state, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, [8 x i32], i64, i64, i64, i64 }
%struct.v4l2_vp8_segment = type { [4 x i8], [4 x i8], [3 x i8], i8, i32 }
%struct.v4l2_vp8_loop_filter = type { [4 x i8], [4 x i8], i8, i8, i16, i32 }
%struct.v4l2_vp8_quantization = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_vp8_entropy = type { [4 x [8 x [3 x [11 x i8]]]], [4 x i8], [3 x i8], [2 x [19 x i8]], [3 x i8] }
%struct.v4l2_vp8_entropy_coder_state = type { i8, i8, i8, i8 }
%struct.v4l2_ctrl_fwht_params = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_hdr10_mastering_display = type { [3 x i16], [3 x i16], i16, i16, i32, i32 }
%struct.v4l2_ctrl_h264_sps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [255 x i32], i32, i32, i16, i16, i32 }
%struct.v4l2_ctrl_h264_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16 }
%struct.v4l2_ctrl_h264_pred_weights = type { i16, i16, [2 x %struct.v4l2_h264_weight_factors] }
%struct.v4l2_h264_weight_factors = type { [32 x i16], [32 x i16], [32 x [2 x i16]], [32 x [2 x i16]] }
%struct.v4l2_ctrl_h264_slice_params = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [32 x %struct.v4l2_h264_reference], [32 x %struct.v4l2_h264_reference], i32 }
%struct.v4l2_h264_reference = type { i8, i8 }
%struct.v4l2_ctrl_h264_decode_params = type { [16 x %struct.v4l2_h264_dpb_entry], i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_h264_dpb_entry = type { i64, i32, i16, i8, [5 x i8], i32, i32, i32 }
%struct.v4l2_ctrl_hevc_sps = type { i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i64 }
%struct.v4l2_ctrl_hevc_pps = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, [20 x i8], [22 x i8], i8, i8, i8, [4 x i8], i64 }
%struct.v4l2_ctrl_hevc_decode_params = type { i32, i8, [16 x %struct.v4l2_hevc_dpb_entry], i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], i64 }
%struct.v4l2_hevc_dpb_entry = type { i64, i8, i8, [2 x i16], [2 x i8] }
%struct.v4l2_ctrl_hevc_slice_params = type { i32, i32, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [16 x i8], [16 x i8], i8, %struct.v4l2_hevc_pred_weight_table, i64 }
%struct.v4l2_hevc_pred_weight_table = type { [16 x i8], [16 x i8], [16 x [2 x i8]], [16 x [2 x i8]], [16 x i8], [16 x i8], [16 x [2 x i8]], [16 x [2 x i8]], [6 x i8], i8, i8 }
%struct.v4l2_ctrl_vp9_frame = type { %struct.v4l2_vp9_loop_filter, %struct.v4l2_vp9_quantization, %struct.v4l2_vp9_segmentation, i32, i16, i16, i16, i16, i16, i16, i64, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_loop_filter = type { [4 x i8], [2 x i8], i8, i8, i8, [7 x i8] }
%struct.v4l2_vp9_quantization = type { i8, i8, i8, i8, [4 x i8] }
%struct.v4l2_vp9_segmentation = type { [8 x [4 x i16]], [8 x i8], [7 x i8], [3 x i8], i8, [5 x i8] }
%struct.v4l2_area = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"drivers/media/v4l2-core/v4l2-ctrls-core.c\00", align 1
@__kstrtab_v4l2_ctrl_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_notify to i32), ptr @__kstrtab_v4l2_ctrl_notify, ptr @__kstrtabns_v4l2_ctrl_notify }, section "___ksymtab+v4l2_ctrl_notify", align 4
@v4l2_ctrl_handler_init_class.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"&hdl->_lock\00", align 1
@__kstrtab_v4l2_ctrl_handler_init_class = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_handler_init_class = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_handler_init_class = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_handler_init_class to i32), ptr @__kstrtab_v4l2_ctrl_handler_init_class, ptr @__kstrtabns_v4l2_ctrl_handler_init_class }, section "___ksymtab+v4l2_ctrl_handler_init_class", align 4
@__kstrtab_v4l2_ctrl_handler_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_handler_free = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_handler_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_handler_free to i32), ptr @__kstrtab_v4l2_ctrl_handler_free, ptr @__kstrtabns_v4l2_ctrl_handler_free }, section "___ksymtab+v4l2_ctrl_handler_free", align 4
@__kstrtab_v4l2_ctrl_find = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_find = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_find = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_find to i32), ptr @__kstrtab_v4l2_ctrl_find, ptr @__kstrtabns_v4l2_ctrl_find }, section "___ksymtab+v4l2_ctrl_find", align 4
@__kstrtab_v4l2_ctrl_new_custom = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_custom = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_custom = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_custom to i32), ptr @__kstrtab_v4l2_ctrl_new_custom, ptr @__kstrtabns_v4l2_ctrl_new_custom }, section "___ksymtab+v4l2_ctrl_new_custom", align 4
@__kstrtab_v4l2_ctrl_new_std = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_std = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_std = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_std to i32), ptr @__kstrtab_v4l2_ctrl_new_std, ptr @__kstrtabns_v4l2_ctrl_new_std }, section "___ksymtab+v4l2_ctrl_new_std", align 4
@__kstrtab_v4l2_ctrl_new_std_menu = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_std_menu = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_std_menu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_std_menu to i32), ptr @__kstrtab_v4l2_ctrl_new_std_menu, ptr @__kstrtabns_v4l2_ctrl_new_std_menu }, section "___ksymtab+v4l2_ctrl_new_std_menu", align 4
@__kstrtab_v4l2_ctrl_new_std_menu_items = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_std_menu_items = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_std_menu_items = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_std_menu_items to i32), ptr @__kstrtab_v4l2_ctrl_new_std_menu_items, ptr @__kstrtabns_v4l2_ctrl_new_std_menu_items }, section "___ksymtab+v4l2_ctrl_new_std_menu_items", align 4
@__kstrtab_v4l2_ctrl_new_std_compound = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_std_compound = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_std_compound = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_std_compound to i32), ptr @__kstrtab_v4l2_ctrl_new_std_compound, ptr @__kstrtabns_v4l2_ctrl_new_std_compound }, section "___ksymtab+v4l2_ctrl_new_std_compound", align 4
@__kstrtab_v4l2_ctrl_new_int_menu = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_int_menu = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_int_menu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_int_menu to i32), ptr @__kstrtab_v4l2_ctrl_new_int_menu, ptr @__kstrtabns_v4l2_ctrl_new_int_menu }, section "___ksymtab+v4l2_ctrl_new_int_menu", align 4
@__kstrtab_v4l2_ctrl_add_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_add_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_add_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_add_handler to i32), ptr @__kstrtab_v4l2_ctrl_add_handler, ptr @__kstrtabns_v4l2_ctrl_add_handler }, section "___ksymtab+v4l2_ctrl_add_handler", align 4
@__kstrtab_v4l2_ctrl_radio_filter = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_radio_filter = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_radio_filter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_radio_filter to i32), ptr @__kstrtab_v4l2_ctrl_radio_filter, ptr @__kstrtabns_v4l2_ctrl_radio_filter }, section "___ksymtab+v4l2_ctrl_radio_filter", align 4
@__kstrtab_v4l2_ctrl_cluster = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_cluster = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_cluster = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_cluster to i32), ptr @__kstrtab_v4l2_ctrl_cluster, ptr @__kstrtabns_v4l2_ctrl_cluster }, section "___ksymtab+v4l2_ctrl_cluster", align 4
@__kstrtab_v4l2_ctrl_auto_cluster = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_auto_cluster = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_auto_cluster = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_auto_cluster to i32), ptr @__kstrtab_v4l2_ctrl_auto_cluster, ptr @__kstrtabns_v4l2_ctrl_auto_cluster }, section "___ksymtab+v4l2_ctrl_auto_cluster", align 4
@__kstrtab_v4l2_ctrl_activate = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_activate = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_activate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_activate to i32), ptr @__kstrtab_v4l2_ctrl_activate, ptr @__kstrtabns_v4l2_ctrl_activate }, section "___ksymtab+v4l2_ctrl_activate", align 4
@__kstrtab___v4l2_ctrl_grab = external dso_local constant [0 x i8], align 1
@__kstrtabns___v4l2_ctrl_grab = external dso_local constant [0 x i8], align 1
@__ksymtab___v4l2_ctrl_grab = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__v4l2_ctrl_grab to i32), ptr @__kstrtab___v4l2_ctrl_grab, ptr @__kstrtabns___v4l2_ctrl_grab }, section "___ksymtab+__v4l2_ctrl_grab", align 4
@__kstrtab___v4l2_ctrl_handler_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns___v4l2_ctrl_handler_setup = external dso_local constant [0 x i8], align 1
@__ksymtab___v4l2_ctrl_handler_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__v4l2_ctrl_handler_setup to i32), ptr @__kstrtab___v4l2_ctrl_handler_setup, ptr @__kstrtabns___v4l2_ctrl_handler_setup }, section "___ksymtab_gpl+__v4l2_ctrl_handler_setup", align 4
@__kstrtab_v4l2_ctrl_handler_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_handler_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_handler_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_handler_setup to i32), ptr @__kstrtab_v4l2_ctrl_handler_setup, ptr @__kstrtabns_v4l2_ctrl_handler_setup }, section "___ksymtab+v4l2_ctrl_handler_setup", align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__kstrtab_v4l2_ctrl_handler_log_status = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_handler_log_status = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_handler_log_status = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_handler_log_status to i32), ptr @__kstrtab_v4l2_ctrl_handler_log_status, ptr @__kstrtabns_v4l2_ctrl_handler_log_status }, section "___ksymtab+v4l2_ctrl_handler_log_status", align 4
@__kstrtab_v4l2_ctrl_new_fwnode_properties = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_new_fwnode_properties = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_new_fwnode_properties = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_new_fwnode_properties to i32), ptr @__kstrtab_v4l2_ctrl_new_fwnode_properties, ptr @__kstrtabns_v4l2_ctrl_new_fwnode_properties }, section "___ksymtab+v4l2_ctrl_new_fwnode_properties", align 4
@std_type_ops = internal constant %struct.v4l2_ctrl_type_ops { ptr @std_equal, ptr @std_init, ptr @std_log, ptr @std_validate }, align 4
@mpeg2_intra_quant_matrix = internal unnamed_addr constant [64 x i8] c"\08\10\10\13\10\13\16\16\16\16\16\16\1A\18\1A\1B\1B\1B\1A\1A\1A\1A\1B\1B\1B\1D\1D\1D\22\22\22\1D\1D\1D\1B\1B\1D\1D  \22\22%&%##\22#&&(((00..88:EES", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"\01c[%u]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\01c \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\01c%d\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\01c%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"\01c%lld\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"\01c0x%08x\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"\01c%u\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"\01cH264_SPS\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"\01cH264_PPS\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"\01cH264_SCALING_MATRIX\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\01cH264_SLICE_PARAMS\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"\01cH264_DECODE_PARAMS\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"\01cH264_PRED_WEIGHTS\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"\01cFWHT_PARAMS\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"\01cVP8_FRAME\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\01cHDR10_CLL_INFO\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"\01cHDR10_MASTERING_DISPLAY\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"\01cMPEG2_QUANTISATION\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"\01cMPEG2_SEQUENCE\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\01cMPEG2_PICTURE\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"\01cVP9_COMPRESSED_HDR\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"\01cVP9_FRAME\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"\01cunknown type %d\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"\016%s%s%s: \00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"\01c inactive\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"\01c grabbed\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"\01c volatile\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"\01c\0A\00", align 1
@llvm.compiler.used = appending global [20 x ptr] [ptr @__ksymtab___v4l2_ctrl_grab, ptr @__ksymtab___v4l2_ctrl_handler_setup, ptr @__ksymtab_v4l2_ctrl_activate, ptr @__ksymtab_v4l2_ctrl_add_handler, ptr @__ksymtab_v4l2_ctrl_auto_cluster, ptr @__ksymtab_v4l2_ctrl_cluster, ptr @__ksymtab_v4l2_ctrl_find, ptr @__ksymtab_v4l2_ctrl_handler_free, ptr @__ksymtab_v4l2_ctrl_handler_init_class, ptr @__ksymtab_v4l2_ctrl_handler_log_status, ptr @__ksymtab_v4l2_ctrl_handler_setup, ptr @__ksymtab_v4l2_ctrl_new_custom, ptr @__ksymtab_v4l2_ctrl_new_fwnode_properties, ptr @__ksymtab_v4l2_ctrl_new_int_menu, ptr @__ksymtab_v4l2_ctrl_new_std, ptr @__ksymtab_v4l2_ctrl_new_std_compound, ptr @__ksymtab_v4l2_ctrl_new_std_menu, ptr @__ksymtab_v4l2_ctrl_new_std_menu_items, ptr @__ksymtab_v4l2_ctrl_notify, ptr @__ksymtab_v4l2_ctrl_radio_filter], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @send_initial_event(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.v4l2_event, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 20
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 64
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 3, i32 2
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 5
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1
  store i32 %8, ptr %12, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %17, 1
  %19 = and i32 %18, 256
  %20 = or i32 %19, %5
  %21 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 3
  store i32 %20, ptr %21, align 8
  %22 = and i32 %17, 128
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 26
  %26 = load ptr, ptr %25, align 4
  %27 = load i64, ptr %26, align 8
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i64 [ %27, %24 ], [ 0, %2 ]
  %30 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 2
  store i64 %29, ptr %30, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 11
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 12
  %36 = load i64, ptr %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 5
  store i32 %37, ptr %38, align 8
  switch i32 %14, label %39 [
    i32 3, label %43
    i32 9, label %43
  ]

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 18
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  br label %43

43:                                               ; preds = %39, %28, %28
  %44 = phi i32 [ %42, %39 ], [ 1, %28 ], [ 1, %28 ]
  %45 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 13
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.v4l2_event, ptr %3, i32 0, i32 1, i32 0, i32 7
  store i32 %48, ptr %49, align 8
  call void @v4l2_event_queue_fh(ptr noundef %0, ptr noundef nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @send_event(ptr noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.v4l2_event, align 8
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 1
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %66, label %8

8:                                                ; preds = %3
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i32 136, i1 false) #16
  store i32 3, ptr %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 5
  store i32 %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1
  store i32 %2, ptr %12, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 20
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = shl i32 %19, 1
  %21 = and i32 %20, 256
  %22 = or i32 %21, %17
  %23 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 3
  store i32 %22, ptr %23, align 8
  %24 = and i32 %19, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 26
  %28 = load ptr, ptr %27, align 4
  %29 = load i64, ptr %28, align 8
  br label %30

30:                                               ; preds = %26, %8
  %31 = phi i64 [ %29, %26 ], [ 0, %8 ]
  %32 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 2
  store i64 %31, ptr %32, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 11
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 4
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 12
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 5
  store i32 %39, ptr %40, align 8
  switch i32 %14, label %41 [
    i32 3, label %45
    i32 9, label %45
  ]

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 18
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  br label %45

45:                                               ; preds = %41, %30, %30
  %46 = phi i32 [ %44, %41 ], [ 1, %30 ], [ 1, %30 ]
  %47 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 6
  store i32 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 13
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = getelementptr inbounds %struct.v4l2_event, ptr %4, i32 0, i32 1, i32 0, i32 7
  store i32 %50, ptr %51, align 8
  br label %52

52:                                               ; preds = %63, %45
  %53 = phi ptr [ %64, %63 ], [ %6, %45 ]
  %54 = getelementptr i8, ptr %53, i32 -4
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %53, i32 -8
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57, %52
  call void @v4l2_event_queue_fh(ptr noundef %55, ptr noundef nonnull %4) #16
  br label %63

63:                                               ; preds = %62, %57
  %64 = load ptr, ptr %53, align 8
  %65 = icmp eq ptr %64, %5
  br i1 %65, label %66, label %52

66:                                               ; preds = %63, %3
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_notify(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %3
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -1025
  store i32 %10, ptr %8, align 4
  br label %26

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ne ptr %15, null
  %17 = icmp ne ptr %15, %1
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %20, !prof !8

19:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 966, i32 noundef 9, ptr noundef null) #16
  br label %26

20:                                               ; preds = %11
  store ptr %1, ptr %14, align 4
  %21 = load ptr, ptr %12, align 8
  %22 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %21, i32 0, i32 7
  store ptr %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = or i32 %24, 1024
  store i32 %25, ptr %23, align 4
  br label %26

26:                                               ; preds = %20, %19, %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @new_to_cur(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %76, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 25
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 26
  %13 = load i32, ptr %11, align 8
  %14 = load i32, ptr %12, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = inttoptr i32 %13 to ptr
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 14
  %18 = load i32, ptr %17, align 8
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 15
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, %18
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %15, ptr align 1 %16, i32 %21, i1 false) #16
  br label %22

22:                                               ; preds = %10, %5
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %51, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 20
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, -145
  store i32 %28, ptr %26, align 4
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 23
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %33, 11
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %36, %25
  %43 = or i32 %28, 16
  store i32 %43, ptr %26, align 4
  %44 = load ptr, ptr %30, align 4
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %44, i32 0, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 512
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = or i32 %27, 144
  store i32 %50, ptr %26, align 4
  br label %51

51:                                               ; preds = %49, %42, %36, %22
  %52 = phi ptr [ %0, %22 ], [ null, %42 ], [ null, %49 ], [ null, %36 ]
  %53 = or i32 %8, %2
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %6, align 4
  %57 = and i32 %56, 2
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr null, ptr %52
  %60 = xor i1 %9, true
  %61 = zext i1 %60 to i32
  %62 = or i32 %61, %2
  tail call void @send_event(ptr noundef %59, ptr noundef nonnull %1, i32 noundef %62)
  %63 = load i32, ptr %6, align 4
  %64 = and i32 %63, 1024
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i1 true, i1 %9
  br i1 %66, label %76, label %67

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %69, i32 0, i32 6
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %69, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  tail call void %71(ptr noundef nonnull %1, ptr noundef %75) #16
  br label %76

76:                                               ; preds = %73, %67, %55, %51, %3
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cur_to_new(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 26
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  %6 = load i32, ptr %4, align 4
  %7 = load i32, ptr %5, align 8
  %8 = inttoptr i32 %7 to ptr
  %9 = inttoptr i32 %6 to ptr
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 14
  %11 = load i32, ptr %10, align 8
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %11
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %9, i32 %14, i1 false) #16
  br label %15

15:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @new_to_req(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 25
  %11 = load i32, ptr %10, align 8
  %12 = inttoptr i32 %9 to ptr
  %13 = inttoptr i32 %11 to ptr
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %13, i32 %18, i1 false) #16
  br label %19

19:                                               ; preds = %7, %3
  %20 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 6
  store i8 1, ptr %20, align 2
  br label %21

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @cur_to_req(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 26
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %9 to ptr
  %13 = inttoptr i32 %11 to ptr
  %14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 14
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 15
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %17, %15
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %13, i32 %18, i1 false) #16
  br label %19

19:                                               ; preds = %7, %3
  %20 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 6
  store i8 1, ptr %20, align 2
  br label %21

21:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @req_to_new(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 2, !range !9
  %6 = icmp eq i8 %5, 0
  %7 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %6, label %13, label %10

10:                                               ; preds = %3
  br i1 %9, label %28, label %11

11:                                               ; preds = %10
  %12 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %0, i32 0, i32 7
  br label %16

13:                                               ; preds = %3
  br i1 %9, label %28, label %14

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 26
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi ptr [ %15, %14 ], [ %12, %11 ]
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 25
  %19 = load i32, ptr %18, align 8
  %20 = load i32, ptr %17, align 4
  %21 = inttoptr i32 %19 to ptr
  %22 = inttoptr i32 %20 to ptr
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 14
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 15
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %22, i32 %27, i1 false) #16
  br label %28

28:                                               ; preds = %16, %13, %10, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @check_range(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #5 {
  switch i32 %0, label %55 [
    i32 2, label %6
    i32 256, label %12
    i32 257, label %12
    i32 258, label %12
    i32 1, label %12
    i32 5, label %12
    i32 8, label %21
    i32 3, label %31
    i32 9, label %31
    i32 7, label %46
  ]

6:                                                ; preds = %5
  %7 = icmp ne i64 %3, 1
  %8 = icmp sgt i64 %2, 1
  %9 = or i1 %8, %7
  %10 = icmp slt i64 %1, 0
  %11 = or i1 %10, %9
  br i1 %11, label %55, label %12

12:                                               ; preds = %6, %5, %5, %5, %5, %5
  %13 = icmp eq i64 %3, 0
  %14 = icmp sgt i64 %1, %2
  %15 = or i1 %14, %13
  %16 = icmp slt i64 %4, %1
  %17 = or i1 %15, %16
  %18 = icmp sgt i64 %4, %2
  %19 = or i1 %18, %17
  %20 = select i1 %19, i32 -34, i32 0
  br label %55

21:                                               ; preds = %5
  %22 = or i64 %3, %1
  %23 = icmp eq i64 %22, 0
  %24 = icmp ne i64 %2, 0
  %25 = and i1 %24, %23
  br i1 %25, label %26, label %55

26:                                               ; preds = %21
  %27 = xor i64 %2, -1
  %28 = and i64 %27, %4
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 0, i32 -34
  br label %55

31:                                               ; preds = %5, %5
  %32 = icmp sgt i64 %1, %2
  %33 = icmp slt i64 %4, %1
  %34 = or i1 %32, %33
  %35 = icmp sgt i64 %4, %2
  %36 = or i1 %35, %34
  br i1 %36, label %55, label %37

37:                                               ; preds = %31
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = trunc i64 %4 to i32
  %41 = shl nuw i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = and i64 %42, %3
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %39, %37
  br label %55

46:                                               ; preds = %5
  %47 = icmp sgt i64 %1, %2
  %48 = icmp slt i64 %1, 0
  %49 = or i1 %48, %47
  %50 = icmp eq i64 %3, 0
  %51 = or i1 %49, %50
  %52 = icmp ne i64 %4, 0
  %53 = or i1 %51, %52
  %54 = select i1 %53, i32 -34, i32 0
  br label %55

55:                                               ; preds = %46, %45, %39, %31, %26, %21, %12, %6, %5
  %56 = phi i32 [ 0, %45 ], [ -34, %6 ], [ -34, %21 ], [ -34, %31 ], [ -22, %39 ], [ %54, %46 ], [ 0, %5 ], [ %20, %12 ], [ %30, %26 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @validate_new(ptr noundef %0, [1 x i32] %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 14
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 7
  br label %5

5:                                                ; preds = %9, %2
  %6 = phi i32 [ 0, %2 ], [ %14, %9 ]
  %7 = load i32, ptr %3, align 8
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %6, [1 x i32] %1) #16
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %5, label %16

16:                                               ; preds = %9, %5
  %17 = phi i32 [ %13, %9 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #0 {
  tail call void @__mutex_init(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @v4l2_ctrl_handler_init_class.__key) #16
  %5 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  store ptr %0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2, i32 1
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = lshr i32 %1, 3
  %11 = trunc i32 %10 to i16
  %12 = add i16 %11, 1
  %13 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 8
  store i16 %12, ptr %13, align 4
  %14 = zext i16 %12 to i32
  %15 = shl nuw nsw i32 %14, 2
  %16 = tail call noalias ptr @kvmalloc_node(i32 noundef %15, i32 noundef 3520, i32 noundef -1) #17
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  %19 = select i1 %18, i32 -12, i32 0
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  store i32 %19, ptr %20, align 4
  tail call void @v4l2_ctrl_handler_init_request(ptr noundef %0) #16
  %21 = load i32, ptr %20, align 4
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_init_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_free(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %47, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  tail call void @v4l2_ctrl_handler_free_request(ptr noundef nonnull %0) #16
  %8 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @mutex_lock(ptr noundef %9) #16
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %20, label %13

13:                                               ; preds = %13, %7
  %14 = phi ptr [ %15, %13 ], [ %11, %7 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  tail call void @kfree(ptr noundef %14) #16
  %19 = icmp eq ptr %15, %10
  br i1 %19, label %20, label %13

20:                                               ; preds = %13, %7
  %21 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %42, label %24

24:                                               ; preds = %40, %20
  %25 = phi ptr [ %26, %40 ], [ %22, %20 ]
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  store volatile ptr %26, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  %30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %25, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %24
  %34 = phi ptr [ %35, %33 ], [ %31, %24 ]
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %34, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  %39 = icmp eq ptr %35, %30
  br i1 %39, label %40, label %33

40:                                               ; preds = %33, %24
  tail call void @kvfree(ptr noundef %25) #16
  %41 = icmp eq ptr %26, %21
  br i1 %41, label %42, label %24

42:                                               ; preds = %40, %20
  %43 = load ptr, ptr %4, align 4
  tail call void @kvfree(ptr noundef %43) #16
  store ptr null, ptr %4, align 4
  %44 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 4
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  store i32 0, ptr %45, align 4
  %46 = load ptr, ptr %8, align 4
  tail call void @mutex_unlock(ptr noundef %46) #16
  br label %47

47:                                               ; preds = %42, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free_request(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_ref(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = and i32 %1, 268435455
  %4 = icmp ugt i32 %3, 134217727
  br i1 %4, label %5, label %36

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %70, label %9

9:                                                ; preds = %5
  %10 = add nsw i32 %3, -134217728
  br label %11

11:                                               ; preds = %32, %9
  %12 = phi ptr [ %34, %32 ], [ %7, %9 ]
  %13 = phi i32 [ %33, %32 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %12, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 268369920
  %19 = icmp ne i32 %18, 9961472
  %20 = and i32 %17, 61440
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %19, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = icmp eq i32 %13, 0
  br i1 %29, label %70, label %30

30:                                               ; preds = %28
  %31 = add i32 %13, -1
  br label %32

32:                                               ; preds = %30, %23, %11
  %33 = phi i32 [ %31, %30 ], [ %13, %23 ], [ %13, %11 ]
  %34 = load ptr, ptr %12, align 4
  %35 = icmp eq ptr %34, %6
  br i1 %35, label %70, label %11

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 8
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = urem i32 %3, %39
  %41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 4
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %42, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 8
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %70, label %50

50:                                               ; preds = %44, %36
  %51 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %50
  %55 = getelementptr ptr, ptr %52, i32 %40
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %70, label %58

58:                                               ; preds = %65, %54
  %59 = phi ptr [ %67, %65 ], [ %56, %54 ]
  %60 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %61, i32 0, i32 8
  %63 = load i32, ptr %62, align 8
  %64 = icmp eq i32 %63, %3
  br i1 %64, label %69, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %59, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %58

69:                                               ; preds = %58
  store ptr %59, ptr %41, align 4
  br label %70

70:                                               ; preds = %69, %65, %54, %50, %44, %32, %28, %5
  %71 = phi ptr [ %42, %44 ], [ %59, %69 ], [ null, %5 ], [ null, %54 ], [ null, %50 ], [ %12, %28 ], [ null, %32 ], [ null, %65 ]
  ret ptr %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_ref_lock(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %77, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  tail call void @mutex_lock(ptr noundef %6) #16
  %7 = and i32 %1, 268435455
  %8 = icmp ugt i32 %7, 134217727
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %74, label %13

13:                                               ; preds = %9
  %14 = add nsw i32 %7, -134217728
  br label %15

15:                                               ; preds = %36, %13
  %16 = phi ptr [ %38, %36 ], [ %11, %13 ]
  %17 = phi i32 [ %37, %36 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %16, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 268369920
  %23 = icmp ne i32 %22, 9961472
  %24 = and i32 %21, 61440
  %25 = icmp eq i32 %24, 0
  %26 = or i1 %23, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %19, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = icmp eq i32 %17, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %32
  %35 = add i32 %17, -1
  br label %36

36:                                               ; preds = %34, %27, %15
  %37 = phi i32 [ %35, %34 ], [ %17, %27 ], [ %17, %15 ]
  %38 = load ptr, ptr %16, align 4
  %39 = icmp eq ptr %38, %10
  br i1 %39, label %74, label %15

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 8
  %42 = load i16, ptr %41, align 4
  %43 = zext i16 %42 to i32
  %44 = urem i32 %7, %43
  %45 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %46, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %50, i32 0, i32 8
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, %7
  br i1 %53, label %74, label %54

54:                                               ; preds = %48, %40
  %55 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = getelementptr ptr, ptr %56, i32 %44
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %74, label %62

62:                                               ; preds = %69, %58
  %63 = phi ptr [ %71, %69 ], [ %60, %58 ]
  %64 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.v4l2_ctrl, ptr %65, i32 0, i32 8
  %67 = load i32, ptr %66, align 8
  %68 = icmp eq i32 %67, %7
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %63, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %62

73:                                               ; preds = %62
  store ptr %63, ptr %45, align 4
  br label %74

74:                                               ; preds = %73, %69, %58, %54, %48, %36, %32, %9
  %75 = phi ptr [ %46, %48 ], [ %63, %73 ], [ null, %9 ], [ null, %58 ], [ null, %54 ], [ null, %36 ], [ %16, %32 ], [ null, %69 ]
  %76 = load ptr, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %76) #16
  br label %77

77:                                               ; preds = %74, %2
  %78 = phi ptr [ %75, %74 ], [ null, %2 ]
  ret ptr %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_find(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @find_ref_lock(ptr noundef %0, i32 noundef %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  br label %8

8:                                                ; preds = %5, %2
  %9 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @handler_new_ref(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = zext i1 %3 to i8
  %7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 268369920
  %10 = or i32 %9, 1
  %11 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 8
  %12 = load i16, ptr %11, align 4
  %13 = zext i16 %12 to i32
  %14 = urem i32 %8, %13
  %15 = icmp eq ptr %2, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store ptr null, ptr %2, align 4
  br label %17

17:                                               ; preds = %16, %5
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 10
  %19 = load i32, ptr %18, align 8
  %20 = icmp ugt i32 %19, 255
  %21 = icmp eq i32 %8, %10
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @find_ref_lock(ptr noundef %0, i32 noundef %10)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %0, ptr noundef null, i32 noundef %10, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  br label %116

32:                                               ; preds = %26, %23, %17
  %33 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %116

36:                                               ; preds = %32
  br i1 %4, label %37, label %43

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 14
  %39 = load i32, ptr %38, align 8
  %40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 15
  %41 = load i32, ptr %40, align 4
  %42 = mul i32 %41, %39
  br label %43

43:                                               ; preds = %37, %36
  %44 = phi i32 [ %42, %37 ], [ 0, %36 ]
  %45 = add i32 %44, 28
  %46 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #17
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, ptr %33, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %116

51:                                               ; preds = %48
  store i32 -12, ptr %33, align 4
  br label %116

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %46, i32 0, i32 2
  store ptr %1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %46, i32 0, i32 4
  store i8 %6, ptr %54, align 4
  %55 = icmp eq i32 %44, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = getelementptr %struct.v4l2_ctrl_ref, ptr %46, i32 1
  %58 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %46, i32 0, i32 7
  store ptr %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %56, %52
  store volatile ptr %46, ptr %46, align 64
  %60 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %46, ptr %60, align 4
  %61 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void @mutex_lock(ptr noundef %62) #16
  %63 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3
  %64 = load volatile ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  %66 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3, i32 1
  %67 = load ptr, ptr %66, align 4
  br i1 %65, label %76, label %68

68:                                               ; preds = %59
  %69 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %67, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 8
  %73 = icmp ugt i32 %8, %72
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = icmp eq ptr %64, %63
  br i1 %75, label %100, label %78

76:                                               ; preds = %68, %59
  %77 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 3, i32 1
  br label %96

78:                                               ; preds = %85, %74
  %79 = phi ptr [ %86, %85 ], [ %64, %74 ]
  %80 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_ctrl, ptr %81, i32 0, i32 8
  %83 = load i32, ptr %82, align 8
  %84 = icmp ult i32 %83, %8
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load ptr, ptr %79, align 4
  %87 = icmp eq ptr %86, %63
  br i1 %87, label %100, label %78

88:                                               ; preds = %78
  %89 = icmp eq i32 %83, %8
  br i1 %89, label %90, label %91

90:                                               ; preds = %88
  tail call void @kfree(ptr noundef nonnull %46) #16
  br label %114

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.list_head, ptr %94, i32 0, i32 1
  br label %96

96:                                               ; preds = %91, %76
  %97 = phi ptr [ %95, %91 ], [ %77, %76 ]
  %98 = phi ptr [ %94, %91 ], [ %63, %76 ]
  %99 = phi ptr [ %93, %91 ], [ %67, %76 ]
  store ptr %46, ptr %97, align 4
  store ptr %98, ptr %46, align 64
  store ptr %99, ptr %60, align 4
  store volatile ptr %46, ptr %99, align 4
  br label %100

100:                                              ; preds = %96, %85, %74
  %101 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 5
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr ptr, ptr %102, i32 %14
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %46, i32 0, i32 1
  store ptr %104, ptr %105, align 8
  store ptr %46, ptr %103, align 4
  br i1 %15, label %107, label %106

106:                                              ; preds = %100
  store ptr %46, ptr %2, align 4
  br label %107

107:                                              ; preds = %106, %100
  %108 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = icmp eq ptr %109, %0
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 3
  store ptr %53, ptr %112, align 4
  %113 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 4
  store i32 1, ptr %113, align 8
  br label %114

114:                                              ; preds = %111, %107, %90
  %115 = load ptr, ptr %61, align 4
  tail call void @mutex_unlock(ptr noundef %115) #16
  br label %116

116:                                              ; preds = %114, %51, %48, %32, %29
  %117 = phi i32 [ 0, %114 ], [ %31, %29 ], [ %34, %32 ], [ -12, %48 ], [ -12, %51 ]
  ret i32 %117
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_std(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %3, ptr %8, align 8
  store i64 %4, ptr %9, align 8
  store i64 %5, ptr %10, align 8
  store i64 %6, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  store ptr null, ptr %12, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 0, ptr %13, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  store i32 0, ptr %14, align 4, !annotation !10
  call void @v4l2_ctrl_fill(i32 noundef %2, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14) #16
  %15 = load i32, ptr %13, align 4
  %16 = freeze i32 %15
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %19, label %18

18:                                               ; preds = %7
  switch i32 %16, label %24 [
    i32 9, label %19
    i32 3, label %19
  ]

19:                                               ; preds = %18, %18, %7
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  store i32 -22, ptr %20, align 4
  br label %32

24:                                               ; preds = %18
  %25 = load ptr, ptr %12, align 4
  %26 = load i64, ptr %8, align 8
  %27 = load i64, ptr %9, align 8
  %28 = load i64, ptr %10, align 8
  %29 = load i64, ptr %11, align 8
  %30 = load i32, ptr %14, align 4
  %31 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %25, i32 noundef %16, i64 noundef %26, i64 noundef %27, i64 noundef %28, i64 noundef %29, ptr noundef null, i32 noundef 0, i32 noundef %30, ptr noundef null, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef null)
  br label %32

32:                                               ; preds = %24, %23, %19
  %33 = phi ptr [ %31, %24 ], [ null, %19 ], [ null, %23 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  ret ptr %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %11 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  store ptr %12, ptr %4, align 4
  %13 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 14
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 15
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  %17 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 8
  store i32 %18, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  %19 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 12
  %20 = load i32, ptr %19, align 8
  store i32 %20, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %21 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 5
  %22 = load i64, ptr %21, align 8
  store i64 %22, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %23 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 6
  %24 = load i64, ptr %23, align 8
  store i64 %24, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  %25 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 7
  %26 = load i64, ptr %25, align 8
  store i64 %26, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %27 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 8
  %28 = load i64, ptr %27, align 8
  store i64 %28, ptr %10, align 8
  %29 = icmp eq ptr %12, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 2
  %32 = load i32, ptr %31, align 8
  call void @v4l2_ctrl_fill(i32 noundef %32, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #16
  %33 = load i32, ptr %5, align 4
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i32 [ %33, %30 ], [ %18, %3 ]
  switch i32 %35, label %39 [
    i32 9, label %36
    i32 3, label %36
  ]

36:                                               ; preds = %34, %34
  %37 = load i64, ptr %9, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %43, !prof !11

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 13
  %41 = load i64, ptr %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43, !prof !11

43:                                               ; preds = %39, %36
  %44 = phi i32 [ 1569, %36 ], [ 1571, %39 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %44, i32 noundef 9, ptr noundef null) #16
  br label %45

45:                                               ; preds = %43, %39, %36
  %46 = load i32, ptr %5, align 4
  %47 = icmp ne i32 %46, 3
  %48 = icmp ne ptr %14, null
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 2
  %52 = load i32, ptr %51, align 8
  %53 = call ptr @v4l2_ctrl_get_menu(i32 noundef %52) #16
  %54 = load i32, ptr %5, align 4
  br label %64

55:                                               ; preds = %45
  %56 = icmp ne i32 %46, 9
  %57 = icmp ne ptr %16, null
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  store i32 -22, ptr %60, align 4
  br label %100

64:                                               ; preds = %55, %50
  %65 = phi i32 [ %46, %55 ], [ %54, %50 ]
  %66 = phi ptr [ %14, %55 ], [ %53, %50 ]
  %67 = load ptr, ptr %1, align 8
  %68 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 2
  %71 = load i32, ptr %70, align 8
  %72 = load ptr, ptr %4, align 4
  %73 = load i64, ptr %7, align 8
  %74 = load i64, ptr %8, align 8
  switch i32 %35, label %77 [
    i32 9, label %75
    i32 3, label %75
  ]

75:                                               ; preds = %64, %64
  %76 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 13
  br label %77

77:                                               ; preds = %75, %64
  %78 = phi ptr [ %76, %75 ], [ %9, %64 ]
  %79 = load i64, ptr %78, align 8
  %80 = load i64, ptr %10, align 8
  %81 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 10
  %82 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 11
  %83 = load i32, ptr %82, align 4
  %84 = load i32, ptr %6, align 4
  %85 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 9
  %86 = load i32, ptr %85, align 8
  %87 = insertvalue [1 x i32] undef, i32 %86, 0
  %88 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %67, ptr noundef %69, i32 noundef %71, ptr noundef %72, i32 noundef %65, i64 noundef %73, i64 noundef %74, i64 noundef %79, i64 noundef %80, ptr noundef %81, i32 noundef %83, i32 noundef %84, ptr noundef %66, ptr noundef %16, [1 x i32] %87, ptr noundef %2)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.v4l2_ctrl_config, ptr %1, i32 0, i32 16
  %92 = load i8, ptr %91, align 8
  %93 = getelementptr inbounds %struct.v4l2_ctrl, ptr %88, i32 0, i32 5
  %94 = load i32, ptr %93, align 4
  %95 = shl i8 %92, 3
  %96 = and i8 %95, 8
  %97 = zext i8 %96 to i32
  %98 = and i32 %94, -9
  %99 = or i32 %98, %97
  store i32 %99, ptr %93, align 4
  br label %100

100:                                              ; preds = %90, %77, %63, %59
  %101 = phi ptr [ %88, %90 ], [ null, %77 ], [ null, %59 ], [ null, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  ret ptr %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_fill(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef readonly %10, i32 noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, [1 x i32] %15, ptr noundef %16) unnamed_addr #0 {
  %18 = extractvalue [1 x i32] %15, 0
  %19 = inttoptr i32 %18 to ptr
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %221

23:                                               ; preds = %17
  %24 = icmp eq ptr %10, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %10, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = getelementptr i32, ptr %10, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %45, label %32

32:                                               ; preds = %28
  %33 = mul i32 %30, %26
  %34 = getelementptr i32, ptr %10, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = mul i32 %35, %33
  %39 = getelementptr i32, ptr %10, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 3, i32 4
  %43 = select i1 %41, i32 1, i32 %40
  %44 = mul i32 %38, %43
  br label %45

45:                                               ; preds = %37, %32, %28, %25, %23
  %46 = phi i32 [ 0, %23 ], [ 0, %25 ], [ 1, %28 ], [ 2, %32 ], [ %42, %37 ]
  %47 = phi i32 [ 1, %23 ], [ 1, %25 ], [ %26, %28 ], [ %33, %32 ], [ %44, %37 ]
  %48 = icmp ne i32 %46, 0
  switch i32 %5, label %75 [
    i32 5, label %78
    i32 7, label %49
    i32 256, label %52
    i32 257, label %53
    i32 258, label %54
    i32 593, label %55
    i32 594, label %56
    i32 592, label %57
    i32 544, label %58
    i32 512, label %59
    i32 513, label %60
    i32 514, label %61
    i32 515, label %62
    i32 516, label %63
    i32 517, label %64
    i32 576, label %65
    i32 288, label %66
    i32 289, label %67
    i32 290, label %68
    i32 291, label %69
    i32 292, label %70
    i32 272, label %71
    i32 273, label %72
    i32 608, label %73
    i32 609, label %74
    i32 262, label %78
  ]

49:                                               ; preds = %45
  %50 = trunc i64 %7 to i32
  %51 = add i32 %50, 1
  br label %78

52:                                               ; preds = %45
  br label %78

53:                                               ; preds = %45
  br label %78

54:                                               ; preds = %45
  br label %78

55:                                               ; preds = %45
  br label %78

56:                                               ; preds = %45
  br label %78

57:                                               ; preds = %45
  br label %78

58:                                               ; preds = %45
  br label %78

59:                                               ; preds = %45
  br label %78

60:                                               ; preds = %45
  br label %78

61:                                               ; preds = %45
  br label %78

62:                                               ; preds = %45
  br label %78

63:                                               ; preds = %45
  br label %78

64:                                               ; preds = %45
  br label %78

65:                                               ; preds = %45
  br label %78

66:                                               ; preds = %45
  br label %78

67:                                               ; preds = %45
  br label %78

68:                                               ; preds = %45
  br label %78

69:                                               ; preds = %45
  br label %78

70:                                               ; preds = %45
  br label %78

71:                                               ; preds = %45
  br label %78

72:                                               ; preds = %45
  br label %78

73:                                               ; preds = %45
  br label %78

74:                                               ; preds = %45
  br label %78

75:                                               ; preds = %45
  %76 = icmp ult i32 %5, 256
  %77 = select i1 %76, i32 4, i32 %11
  br label %78

78:                                               ; preds = %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %49, %45, %45
  %79 = phi i32 [ 168, %74 ], [ 2040, %73 ], [ 24, %72 ], [ 4, %71 ], [ 328, %70 ], [ 1000, %69 ], [ 280, %68 ], [ 72, %67 ], [ 32, %66 ], [ 1232, %65 ], [ 772, %64 ], [ 560, %63 ], [ 152, %62 ], [ 480, %61 ], [ 12, %60 ], [ 1048, %59 ], [ 40, %58 ], [ 256, %57 ], [ 32, %56 ], [ 12, %55 ], [ 4, %54 ], [ 2, %53 ], [ 1, %52 ], [ %51, %49 ], [ 8, %45 ], [ 8, %45 ], [ %77, %75 ]
  %80 = mul i32 %79, %47
  %81 = icmp ne i32 %3, 0
  %82 = icmp ne ptr %4, null
  %83 = and i1 %81, %82
  %84 = icmp ne i32 %79, 0
  %85 = and i1 %83, %84
  %86 = icmp ult i32 %3, 134217728
  %87 = and i1 %86, %85
  br i1 %87, label %88, label %96

88:                                               ; preds = %78
  %89 = icmp eq i32 %5, 3
  %90 = icmp eq ptr %13, null
  %91 = and i1 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = icmp eq i32 %5, 9
  %94 = icmp eq ptr %14, null
  %95 = and i1 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %88, %78
  store i32 -34, ptr %20, align 4
  br label %221

97:                                               ; preds = %92
  %98 = tail call i32 @check_range(i32 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9)
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i32 %98, ptr %20, align 4
  br label %221

101:                                              ; preds = %97
  %102 = and i32 %5, -3
  %103 = icmp eq i32 %102, 4
  %104 = and i1 %103, %48
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i32 -22, ptr %20, align 4
  br label %221

106:                                              ; preds = %101
  switch i32 %5, label %111 [
    i32 4, label %107
    i32 6, label %109
  ]

107:                                              ; preds = %106
  %108 = or i32 %12, 576
  br label %118

109:                                              ; preds = %106
  %110 = or i32 %12, 4
  br label %118

111:                                              ; preds = %106
  %112 = icmp eq i32 %102, 5
  %113 = icmp ugt i32 %5, 255
  %114 = or i1 %113, %112
  %115 = or i1 %114, %48
  %116 = shl i32 %80, 1
  %117 = select i1 %115, i32 %116, i32 0
  br label %118

118:                                              ; preds = %111, %109, %107
  %119 = phi i32 [ %108, %107 ], [ %110, %109 ], [ %12, %111 ]
  %120 = phi i32 [ 0, %107 ], [ 0, %109 ], [ %117, %111 ]
  %121 = icmp ugt i32 %5, 255
  %122 = icmp ne i32 %18, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = add i32 %79, 152
  %125 = select i1 %123, i32 %124, i32 152
  %126 = add i32 %125, %120
  %127 = tail call noalias ptr @kvmalloc_node(i32 noundef %126, i32 noundef 3520, i32 noundef -1) #17
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, ptr %20, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %221

132:                                              ; preds = %129
  store i32 -12, ptr %20, align 4
  br label %221

133:                                              ; preds = %118
  store volatile ptr %127, ptr %127, align 4
  %134 = getelementptr inbounds %struct.list_head, ptr %127, i32 0, i32 1
  store ptr %127, ptr %134, align 4
  %135 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 1
  store volatile ptr %135, ptr %135, align 4
  %136 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 1, i32 1
  store ptr %135, ptr %136, align 4
  %137 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 2
  store ptr %0, ptr %137, align 8
  %138 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 6
  store ptr %1, ptr %138, align 8
  %139 = icmp eq ptr %2, null
  %140 = select i1 %139, ptr @std_type_ops, ptr %2
  %141 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 7
  store ptr %140, ptr %141, align 4
  %142 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 8
  store i32 %3, ptr %142, align 8
  %143 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 9
  store ptr %4, ptr %143, align 4
  %144 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 10
  store i32 %5, ptr %144, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 20
  store i32 %119, ptr %145, align 4
  %146 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 11
  store i64 %6, ptr %146, align 8
  %147 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 12
  store i64 %7, ptr %147, align 8
  %148 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 18
  store i64 %8, ptr %148, align 8
  %149 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 13
  store i64 %9, ptr %149, align 8
  %150 = icmp ne i32 %5, 7
  %151 = or i1 %150, %48
  %152 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = select i1 %151, i32 0, i32 64
  %155 = and i32 %153, -481
  %156 = or i1 %121, %48
  %157 = select i1 %151, i32 0, i32 128
  %158 = select i1 %156, i32 128, i32 %157
  %159 = xor i1 %156, true
  %160 = and i1 %150, %159
  %161 = icmp ne i32 %5, 5
  %162 = and i1 %161, %160
  %163 = select i1 %162, i32 32, i32 0
  %164 = select i1 %48, i32 256, i32 0
  %165 = or i32 %154, %164
  %166 = or i32 %165, %158
  %167 = or i32 %166, %163
  %168 = or i32 %167, %155
  store i32 %168, ptr %152, align 4
  %169 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 14
  store i32 %47, ptr %169, align 8
  %170 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 17
  store i32 %46, ptr %170, align 8
  %171 = icmp eq i32 %46, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %133
  %173 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 16
  %174 = shl nuw nsw i32 %46, 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %173, ptr align 4 %10, i32 %174, i1 false)
  br label %175

175:                                              ; preds = %172, %133
  %176 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 15
  store i32 %79, ptr %176, align 4
  switch i32 %5, label %180 [
    i32 9, label %177
    i32 3, label %177
  ]

177:                                              ; preds = %175, %175
  %178 = select i1 %89, ptr %13, ptr %14
  %179 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 19
  store ptr %178, ptr %179, align 8
  br label %180

180:                                              ; preds = %177, %175
  %181 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 21
  store ptr %16, ptr %181, align 8
  %182 = trunc i64 %9 to i32
  %183 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 22
  store i32 %182, ptr %183, align 4
  %184 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 23
  store i32 %182, ptr %184, align 8
  %185 = getelementptr %struct.v4l2_ctrl, ptr %127, i32 1
  %186 = getelementptr i8, ptr %185, i32 %80
  %187 = select i1 %162, ptr %183, ptr %185
  %188 = select i1 %162, ptr %184, ptr %186
  %189 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 25
  store ptr %187, ptr %189, align 8
  %190 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 26
  store ptr %188, ptr %190, align 4
  br i1 %123, label %191, label %194

191:                                              ; preds = %180
  %192 = getelementptr i8, ptr %188, i32 %80
  %193 = getelementptr inbounds %struct.v4l2_ctrl, ptr %127, i32 0, i32 24
  store ptr %192, ptr %193, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %192, ptr nonnull align 1 %19, i32 %79, i1 false)
  br label %194

194:                                              ; preds = %191, %180
  %195 = icmp eq i32 %47, 0
  br i1 %195, label %210, label %196

196:                                              ; preds = %196, %194
  %197 = phi i32 [ %208, %196 ], [ 0, %194 ]
  %198 = load ptr, ptr %141, align 4
  %199 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = load i32, ptr %190, align 4
  %202 = insertvalue [1 x i32] undef, i32 %201, 0
  tail call void %200(ptr noundef nonnull %127, i32 noundef %197, [1 x i32] %202) #16
  %203 = load ptr, ptr %141, align 4
  %204 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = load i32, ptr %189, align 8
  %207 = insertvalue [1 x i32] undef, i32 %206, 0
  tail call void %205(ptr noundef nonnull %127, i32 noundef %197, [1 x i32] %207) #16
  %208 = add nuw i32 %197, 1
  %209 = icmp eq i32 %208, %47
  br i1 %209, label %210, label %196

210:                                              ; preds = %196, %194
  %211 = tail call i32 @handler_new_ref(ptr noundef %0, ptr noundef nonnull %127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false)
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %210
  tail call void @kvfree(ptr noundef nonnull %127) #16
  br label %221

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  tail call void @mutex_lock(ptr noundef %216) #16
  %217 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2
  %218 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2, i32 1
  %219 = load ptr, ptr %218, align 4
  store ptr %127, ptr %218, align 4
  store ptr %217, ptr %127, align 4
  store ptr %219, ptr %134, align 4
  store volatile ptr %127, ptr %219, align 4
  %220 = load ptr, ptr %215, align 4
  tail call void @mutex_unlock(ptr noundef %220) #16
  br label %221

221:                                              ; preds = %214, %213, %132, %129, %105, %100, %96, %17
  %222 = phi ptr [ null, %96 ], [ null, %100 ], [ null, %105 ], [ null, %213 ], [ %127, %214 ], [ null, %17 ], [ null, %129 ], [ null, %132 ]
  ret ptr %222
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i64 noundef %4, i8 noundef zeroext %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store ptr null, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store i32 0, ptr %9, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %15 = zext i8 %3 to i64
  store i64 %15, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %16 = zext i8 %5 to i64
  store i64 %16, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  store i64 0, ptr %13, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  store i32 0, ptr %14, align 4, !annotation !10
  call void @v4l2_ctrl_fill(i32 noundef %2, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14) #16
  %17 = load i32, ptr %9, align 4
  switch i32 %17, label %22 [
    i32 3, label %18
    i32 9, label %20
  ]

18:                                               ; preds = %6
  %19 = call ptr @v4l2_ctrl_get_menu(i32 noundef %2) #16
  br label %22

20:                                               ; preds = %6
  %21 = call ptr @v4l2_ctrl_get_int_menu(i32 noundef %2, ptr noundef nonnull %7) #16
  br label %22

22:                                               ; preds = %20, %18, %6
  %23 = phi ptr [ %19, %18 ], [ null, %20 ], [ null, %6 ]
  %24 = phi ptr [ null, %18 ], [ %21, %20 ], [ null, %6 ]
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, ptr %11, align 8
  br i1 %26, label %30, label %39

30:                                               ; preds = %28
  %31 = load i32, ptr %7, align 4
  %32 = zext i32 %31 to i64
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30, %22
  %35 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  store i32 -22, ptr %35, align 4
  br label %45

39:                                               ; preds = %30, %28
  %40 = load ptr, ptr %8, align 4
  %41 = load i32, ptr %9, align 4
  %42 = load i64, ptr %12, align 8
  %43 = load i32, ptr %14, align 4
  %44 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %40, i32 noundef %41, i64 noundef 0, i64 noundef %29, i64 noundef %4, i64 noundef %42, ptr noundef null, i32 noundef 0, i32 noundef %43, ptr noundef %23, ptr noundef %24, [1 x i32] zeroinitializer, ptr noundef null)
  br label %45

45:                                               ; preds = %39, %38, %34
  %46 = phi ptr [ %44, %39 ], [ null, %34 ], [ null, %38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret ptr %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_int_menu(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_std_menu_items(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i64 noundef %4, i8 noundef zeroext %5, ptr noundef %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  store ptr null, ptr %9, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  store i32 0, ptr %10, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 0, ptr %11, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  store i64 0, ptr %12, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #16
  %15 = zext i8 %3 to i64
  store i64 %15, ptr %13, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #16
  %16 = zext i8 %5 to i64
  store i64 %16, ptr %14, align 8
  %17 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %2) #16
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  store i32 -22, ptr %20, align 4
  br label %40

24:                                               ; preds = %7
  call void @v4l2_ctrl_fill(i32 noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %10) #16
  %25 = load i32, ptr %8, align 4
  %26 = icmp ne i32 %25, 3
  %27 = icmp eq ptr %6, null
  %28 = or i1 %27, %26
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  store i32 -22, ptr %30, align 4
  br label %40

34:                                               ; preds = %24
  %35 = load ptr, ptr %9, align 4
  %36 = load i64, ptr %13, align 8
  %37 = load i64, ptr %14, align 8
  %38 = load i32, ptr %10, align 4
  %39 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %35, i32 noundef 3, i64 noundef 0, i64 noundef %36, i64 noundef %4, i64 noundef %37, ptr noundef null, i32 noundef 0, i32 noundef %38, ptr noundef nonnull %6, ptr noundef null, [1 x i32] zeroinitializer, ptr noundef null)
  br label %40

40:                                               ; preds = %34, %33, %29, %23, %19
  %41 = phi ptr [ %39, %34 ], [ null, %19 ], [ null, %23 ], [ null, %29 ], [ null, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  ret ptr %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_std_compound(ptr noundef %0, ptr noundef %1, i32 noundef %2, [1 x i32] %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #16
  store ptr null, ptr %5, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store i32 0, ptr %6, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store i32 0, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store i64 0, ptr %8, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store i64 0, ptr %9, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  store i64 0, ptr %11, align 8, !annotation !10
  call void @v4l2_ctrl_fill(i32 noundef %2, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %7) #16
  %12 = load i32, ptr %6, align 4
  %13 = icmp ult i32 %12, 256
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  store i32 -22, ptr %15, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 4
  %21 = load i64, ptr %8, align 8
  %22 = load i64, ptr %9, align 8
  %23 = load i64, ptr %10, align 8
  %24 = load i64, ptr %11, align 8
  %25 = load i32, ptr %7, align 4
  %26 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %20, i32 noundef %12, i64 noundef %21, i64 noundef %22, i64 noundef %23, i64 noundef %24, ptr noundef null, i32 noundef 0, i32 noundef %25, ptr noundef null, ptr noundef null, [1 x i32] %3, ptr noundef null)
  br label %27

27:                                               ; preds = %19, %18, %14
  %28 = phi ptr [ %26, %19 ], [ null, %14 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #16
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @v4l2_ctrl_new_int_menu(ptr noundef %0, ptr noundef %1, i32 noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #16
  store ptr null, ptr %7, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store i64 0, ptr %9, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store i64 0, ptr %10, align 8, !annotation !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #16
  %14 = zext i8 %3 to i64
  store i64 %14, ptr %11, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #16
  %15 = zext i8 %4 to i64
  store i64 %15, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  store i32 0, ptr %13, align 4, !annotation !10
  call void @v4l2_ctrl_fill(i32 noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %13) #16
  %16 = load i32, ptr %8, align 4
  %17 = icmp eq i32 %16, 9
  br i1 %17, label %23, label %18

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  store i32 -22, ptr %19, align 4
  br label %29

23:                                               ; preds = %6
  %24 = load ptr, ptr %7, align 4
  %25 = load i64, ptr %11, align 8
  %26 = load i64, ptr %12, align 8
  %27 = load i32, ptr %13, align 4
  %28 = call fastcc ptr @v4l2_ctrl_new(ptr noundef %0, ptr noundef %1, ptr noundef null, i32 noundef %2, ptr noundef %24, i32 noundef 9, i64 noundef 0, i64 noundef %25, i64 noundef 0, i64 noundef %26, ptr noundef null, i32 noundef 0, i32 noundef %27, ptr noundef null, ptr noundef %5, [1 x i32] zeroinitializer, ptr noundef null)
  br label %29

29:                                               ; preds = %23, %22, %18
  %30 = phi ptr [ %28, %23 ], [ null, %18 ], [ null, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #16
  ret ptr %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_add_handler(ptr noundef %0, ptr noundef readonly %1, ptr noundef readonly %2, i1 noundef zeroext %3) #0 {
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  %8 = icmp eq ptr %0, %1
  %9 = or i1 %8, %7
  br i1 %9, label %45, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @mutex_lock(ptr noundef %16) #16
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %1, i32 0, i32 3
  %18 = icmp eq ptr %2, null
  %19 = load ptr, ptr %17, align 4
  %20 = icmp eq ptr %19, %17
  br i1 %20, label %42, label %21

21:                                               ; preds = %39, %14
  %22 = phi ptr [ %40, %39 ], [ %19, %14 ]
  %23 = getelementptr inbounds %struct.v4l2_ctrl_ref, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 10
  %31 = load i32, ptr %30, align 8
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  br i1 %18, label %36, label %34

34:                                               ; preds = %33
  %35 = tail call zeroext i1 %2(ptr noundef %24) #16
  br i1 %35, label %36, label %39

36:                                               ; preds = %34, %33
  %37 = tail call i32 @handler_new_ref(ptr noundef nonnull %0, ptr noundef %24, ptr noundef null, i1 noundef zeroext %3, i1 noundef zeroext false)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %34, %29, %21
  %40 = load ptr, ptr %22, align 4
  %41 = icmp eq ptr %40, %17
  br i1 %41, label %42, label %21

42:                                               ; preds = %39, %36, %14
  %43 = phi i32 [ 0, %14 ], [ 0, %39 ], [ %37, %36 ]
  %44 = load ptr, ptr %15, align 4
  tail call void @mutex_unlock(ptr noundef %44) #16
  br label %45

45:                                               ; preds = %42, %10, %4
  %46 = phi i32 [ %43, %42 ], [ 0, %4 ], [ %12, %10 ]
  ret i32 %46
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @v4l2_ctrl_radio_filter(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 268369920
  switch i32 %4, label %5 [
    i32 10158080, label %8
    i32 10551296, label %8
  ]

5:                                                ; preds = %1
  %6 = add i32 %3, -9963781
  %7 = icmp ult i32 %6, 6
  br label %8

8:                                                ; preds = %5, %1, %1
  %9 = phi i1 [ true, %1 ], [ true, %1 ], [ %7, %5 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_cluster(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !8

7:                                                ; preds = %4, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1787, i32 noundef 9, ptr noundef null) #16
  br label %39

8:                                                ; preds = %28, %4
  %9 = phi ptr [ %30, %28 ], [ %5, %4 ]
  %10 = phi i1 [ %25, %28 ], [ false, %4 ]
  %11 = phi i32 [ %26, %28 ], [ 0, %4 ]
  %12 = icmp eq ptr %9, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %8
  %14 = getelementptr ptr, ptr %1, i32 %11
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %9, i32 0, i32 3
  store ptr %1, ptr %15, align 4
  %16 = load ptr, ptr %14, align 4
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %16, i32 0, i32 4
  store i32 %0, ptr %17, align 8
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 20
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %22, i1 true, i1 %10
  br label %24

24:                                               ; preds = %13, %8
  %25 = phi i1 [ %10, %8 ], [ %23, %13 ]
  %26 = add nuw i32 %11, 1
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr ptr, ptr %1, i32 %26
  %30 = load ptr, ptr %29, align 4
  br label %8

31:                                               ; preds = %24
  %32 = load ptr, ptr %1, align 4
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -513
  %36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %32, i32 0, i32 5
  %37 = select i1 %25, i32 512, i32 0
  %38 = or i32 %35, %37
  store i32 %38, ptr %36, align 4
  br label %39

39:                                               ; preds = %31, %7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_auto_cluster(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, i1 noundef zeroext %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq i32 %0, 0
  %7 = icmp eq ptr %5, null
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1787, i32 noundef 9, ptr noundef null) #16
  br label %40

10:                                               ; preds = %30, %4
  %11 = phi ptr [ %32, %30 ], [ %5, %4 ]
  %12 = phi i1 [ %27, %30 ], [ false, %4 ]
  %13 = phi i32 [ %28, %30 ], [ 0, %4 ]
  %14 = icmp eq ptr %11, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %10
  %16 = getelementptr ptr, ptr %1, i32 %13
  %17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 3
  store ptr %1, ptr %17, align 4
  %18 = load ptr, ptr %16, align 4
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 4
  store i32 %0, ptr %19, align 8
  %20 = load ptr, ptr %16, align 4
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 20
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %24, i1 true, i1 %12
  br label %26

26:                                               ; preds = %15, %10
  %27 = phi i1 [ %12, %10 ], [ %25, %15 ]
  %28 = add nuw i32 %13, 1
  %29 = icmp eq i32 %28, %0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = getelementptr ptr, ptr %1, i32 %28
  %32 = load ptr, ptr %31, align 4
  br label %10

33:                                               ; preds = %26
  %34 = load ptr, ptr %1, align 4
  %35 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, -513
  %38 = select i1 %27, i32 512, i32 0
  %39 = or i32 %37, %38
  store i32 %39, ptr %35, align 4
  br label %40

40:                                               ; preds = %33, %9
  %41 = icmp ult i32 %0, 2
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1810, i32 noundef 9, ptr noundef null) #16
  br label %43

43:                                               ; preds = %42, %40
  %44 = zext i8 %2 to i64
  %45 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 11
  %46 = load i64, ptr %45, align 8
  %47 = icmp sgt i64 %46, %44
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 12
  %50 = load i64, ptr %49, align 8
  %51 = icmp slt i64 %50, %44
  br i1 %51, label %52, label %53, !prof !8

52:                                               ; preds = %48, %43
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1811, i32 noundef 9, ptr noundef null) #16
  br label %53

53:                                               ; preds = %52, %48
  br i1 %3, label %54, label %62

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load ptr, ptr %56, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %62, !prof !8

61:                                               ; preds = %58, %54
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1812, i32 noundef 9, ptr noundef null) #16
  br label %62

62:                                               ; preds = %61, %58, %53
  %63 = phi i32 [ 16, %53 ], [ 144, %61 ], [ 144, %58 ]
  %64 = phi i32 [ 0, %53 ], [ 512, %61 ], [ 512, %58 ]
  %65 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = and i32 %66, -522769
  %68 = or i32 %64, %67
  %69 = zext i8 %2 to i32
  %70 = shl nuw nsw i32 %69, 11
  %71 = or i32 %68, %70
  %72 = or i32 %71, 16
  store i32 %72, ptr %65, align 4
  %73 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 20
  %74 = load i32, ptr %73, align 4
  %75 = or i32 %74, 8
  store i32 %75, ptr %73, align 4
  %76 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 23
  %77 = load i32, ptr %76, align 8
  %78 = icmp eq i32 %77, %69
  %79 = select i1 %78, i32 0, i32 %63
  %80 = icmp ugt i32 %0, 1
  br i1 %80, label %81, label %93

81:                                               ; preds = %90, %62
  %82 = phi i32 [ %91, %90 ], [ 1, %62 ]
  %83 = getelementptr ptr, ptr %1, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.v4l2_ctrl, ptr %84, i32 0, i32 20
  %88 = load i32, ptr %87, align 4
  %89 = or i32 %88, %79
  store i32 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = add nuw i32 %82, 1
  %92 = icmp eq i32 %91, %0
  br i1 %92, label %93, label %81

93:                                               ; preds = %90, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @update_from_auto_cluster(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 8
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %31

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 3
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi i32 [ %3, %5 ], [ %28, %27 ]
  %9 = phi i32 [ 1, %5 ], [ %29, %27 ]
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr ptr, ptr %10, i32 %9
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 26
  %16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 25
  %17 = load i32, ptr %15, align 4
  %18 = load i32, ptr %16, align 8
  %19 = inttoptr i32 %18 to ptr
  %20 = inttoptr i32 %17 to ptr
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 14
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 15
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %22
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %19, ptr align 1 %20, i32 %25, i1 false) #16
  %26 = load i32, ptr %2, align 8
  br label %27

27:                                               ; preds = %14, %7
  %28 = phi i32 [ %8, %7 ], [ %26, %14 ]
  %29 = add nuw i32 %9, 1
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %7, label %31

31:                                               ; preds = %27, %1
  %32 = phi i32 [ %3, %1 ], [ %28, %27 ]
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %34, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = tail call i32 %37(ptr noundef %0) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32, ptr %2, align 8
  br label %44

44:                                               ; preds = %42, %36, %31
  %45 = phi i32 [ %43, %42 ], [ %32, %31 ], [ %32, %36 ]
  %46 = icmp ugt i32 %45, 1
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 3
  br label %49

49:                                               ; preds = %61, %47
  %50 = phi i32 [ %45, %47 ], [ %62, %61 ]
  %51 = phi i32 [ 1, %47 ], [ %63, %61 ]
  %52 = load ptr, ptr %48, align 4
  %53 = getelementptr ptr, ptr %52, i32 %51
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  %59 = or i32 %58, 2
  store i32 %59, ptr %57, align 4
  %60 = load i32, ptr %2, align 8
  br label %61

61:                                               ; preds = %56, %49
  %62 = phi i32 [ %50, %49 ], [ %60, %56 ]
  %63 = add nuw i32 %51, 1
  %64 = icmp ult i32 %63, %62
  br i1 %64, label %49, label %65

65:                                               ; preds = %61, %44, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @try_or_set_cluster(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 3
  br label %10

10:                                               ; preds = %41, %8
  %11 = phi i32 [ %6, %8 ], [ %42, %41 ]
  %12 = phi i32 [ 0, %8 ], [ %43, %41 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %41, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 26
  %24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 25
  %25 = load i32, ptr %23, align 4
  %26 = load i32, ptr %24, align 8
  %27 = inttoptr i32 %26 to ptr
  %28 = inttoptr i32 %25 to ptr
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 14
  %30 = load i32, ptr %29, align 8
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 15
  %32 = load i32, ptr %31, align 4
  %33 = mul i32 %32, %30
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %27, ptr align 1 %28, i32 %33, i1 false) #16
  %34 = load i32, ptr %5, align 8
  br label %41

35:                                               ; preds = %17
  br i1 %2, label %36, label %41

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 20
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %187

41:                                               ; preds = %36, %35, %22, %10
  %42 = phi i32 [ %11, %35 ], [ %11, %36 ], [ %34, %22 ], [ %11, %10 ]
  %43 = add nuw i32 %12, 1
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %10, label %45

45:                                               ; preds = %41, %4
  %46 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.v4l2_ctrl_ops, ptr %47, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 %51(ptr noundef %1) #16
  br label %55

55:                                               ; preds = %53, %49, %45
  %56 = phi i32 [ %54, %53 ], [ 0, %49 ], [ 0, %45 ]
  %57 = icmp eq i32 %56, 0
  %58 = and i1 %57, %2
  br i1 %58, label %59, label %187

59:                                               ; preds = %55
  %60 = load i32, ptr %5, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %187, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 3
  br label %64

64:                                               ; preds = %113, %62
  %65 = phi i32 [ 0, %62 ], [ %115, %113 ]
  %66 = phi i1 [ false, %62 ], [ %114, %113 ]
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr ptr, ptr %67, i32 %65
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %113, label %71

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 20
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 512
  %75 = icmp eq i32 %74, 0
  %76 = xor i1 %75, true
  %77 = select i1 %76, i1 true, i1 %66
  %78 = and i32 %73, 128
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 14
  br i1 %75, label %82, label %103

82:                                               ; preds = %80
  %83 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 7
  %84 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 26
  %85 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 25
  br label %90

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -5
  store i32 %89, ptr %87, align 4
  br label %113

90:                                               ; preds = %94, %82
  %91 = phi i32 [ 0, %82 ], [ %102, %94 ]
  %92 = load i32, ptr %81, align 8
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load ptr, ptr %83, align 4
  %96 = load ptr, ptr %95, align 4
  %97 = load i32, ptr %84, align 4
  %98 = insertvalue [1 x i32] undef, i32 %97, 0
  %99 = load i32, ptr %85, align 8
  %100 = insertvalue [1 x i32] undef, i32 %99, 0
  %101 = tail call zeroext i1 %96(ptr noundef nonnull %69, i32 noundef %91, [1 x i32] %98, [1 x i32] %100) #16
  %102 = add nuw i32 %91, 1
  br i1 %101, label %90, label %103

103:                                              ; preds = %94, %90, %80
  %104 = phi i32 [ 4, %80 ], [ 0, %90 ], [ 4, %94 ]
  %105 = getelementptr inbounds %struct.v4l2_ctrl, ptr %69, i32 0, i32 5
  %106 = load i32, ptr %105, align 4
  %107 = and i32 %106, -5
  %108 = or i32 %107, %104
  store i32 %108, ptr %105, align 4
  %109 = lshr exact i32 %104, 2
  %110 = zext i1 %77 to i32
  %111 = or i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br label %113

113:                                              ; preds = %103, %86, %64
  %114 = phi i1 [ %77, %86 ], [ %112, %103 ], [ %66, %64 ]
  %115 = add nuw i32 %65, 1
  %116 = load i32, ptr %5, align 8
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %64, label %118

118:                                              ; preds = %113
  br i1 %114, label %119, label %187

119:                                              ; preds = %118
  %120 = load ptr, ptr %46, align 8
  %121 = icmp eq ptr %120, null
  br i1 %121, label %129, label %122

122:                                              ; preds = %119
  %123 = getelementptr inbounds %struct.v4l2_ctrl_ops, ptr %120, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %122
  %127 = tail call i32 %124(ptr noundef %1) #16
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %187

129:                                              ; preds = %126, %122, %119
  %130 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 5
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 16
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 23
  %136 = load i32, ptr %135, align 8
  %137 = lshr i32 %131, 11
  %138 = and i32 %137, 255
  %139 = icmp eq i32 %136, %138
  %140 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, %138
  %143 = xor i1 %139, %142
  br label %144

144:                                              ; preds = %134, %129
  %145 = phi i1 [ %143, %134 ], [ false, %129 ]
  %146 = load i32, ptr %5, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %187, label %148

148:                                              ; preds = %144
  %149 = xor i1 %145, true
  %150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %1, i32 0, i32 22
  br label %151

151:                                              ; preds = %176, %148
  %152 = phi i32 [ 0, %148 ], [ %184, %176 ]
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %153, i1 true, i1 %149
  br i1 %154, label %176, label %155

155:                                              ; preds = %151
  %156 = load i32, ptr %130, align 4
  %157 = and i32 %156, 16
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %176, label %159

159:                                              ; preds = %155
  %160 = load i32, ptr %150, align 4
  %161 = lshr i32 %156, 11
  %162 = and i32 %161, 255
  %163 = icmp ne i32 %160, %162
  %164 = and i32 %156, 512
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %176, label %167

167:                                              ; preds = %159
  %168 = load ptr, ptr %63, align 4
  %169 = getelementptr ptr, ptr %168, i32 %152
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172

172:                                              ; preds = %167
  %173 = getelementptr inbounds %struct.v4l2_ctrl, ptr %170, i32 0, i32 5
  %174 = load i32, ptr %173, align 4
  %175 = or i32 %174, 4
  store i32 %175, ptr %173, align 4
  br label %176

176:                                              ; preds = %172, %167, %159, %155, %151
  %177 = load ptr, ptr %63, align 4
  %178 = getelementptr ptr, ptr %177, i32 %152
  %179 = load ptr, ptr %178, align 4
  %180 = icmp sgt i32 %152, 0
  %181 = select i1 %145, i1 %180, i1 false
  %182 = select i1 %181, i32 2, i32 0
  %183 = or i32 %182, %3
  tail call void @new_to_cur(ptr noundef %0, ptr noundef %179, i32 noundef %183)
  %184 = add nuw i32 %152, 1
  %185 = load i32, ptr %5, align 8
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %151, label %187

187:                                              ; preds = %176, %144, %126, %118, %59, %55, %36
  %188 = phi i32 [ %56, %55 ], [ 0, %118 ], [ %127, %126 ], [ 0, %59 ], [ 0, %144 ], [ 0, %176 ], [ -16, %36 ]
  ret i32 %188
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_activate(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 20
  br i1 %1, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @_test_and_set_bit(i32 noundef 4, ptr noundef %5) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %13

9:                                                ; preds = %4
  %10 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %6
  tail call void @send_event(ptr noundef null, ptr noundef nonnull %0, i32 noundef 2)
  br label %13

13:                                               ; preds = %12, %9, %6, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__v4l2_ctrl_grab(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 20
  br i1 %1, label %9, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %5) #16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %12

9:                                                ; preds = %4
  %10 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %5) #16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  tail call void @send_event(ptr noundef null, ptr noundef nonnull %0, i32 noundef 2)
  br label %13

13:                                               ; preds = %12, %9, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__v4l2_ctrl_handler_setup(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %91, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %91, label %10

7:                                                ; preds = %10
  %8 = load ptr, ptr %4, align 4
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %91, label %17

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %15, %10 ], [ %5, %3 ]
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -2
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = icmp eq ptr %15, %4
  br i1 %16, label %7, label %10

17:                                               ; preds = %88, %7
  %18 = phi ptr [ %89, %88 ], [ %8, %7 ]
  %19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 10
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %88, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.v4l2_ctrl, ptr %18, i32 0, i32 20
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %88

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %77, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 3
  br label %41

41:                                               ; preds = %73, %39
  %42 = phi i32 [ %37, %39 ], [ %74, %73 ]
  %43 = phi i32 [ 0, %39 ], [ %75, %73 ]
  %44 = load ptr, ptr %40, align 4
  %45 = getelementptr ptr, ptr %44, i32 %43
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %73, label %48

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 26
  %50 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 25
  %51 = load i32, ptr %49, align 4
  %52 = load i32, ptr %50, align 8
  %53 = inttoptr i32 %52 to ptr
  %54 = inttoptr i32 %51 to ptr
  %55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 14
  %56 = load i32, ptr %55, align 8
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %46, i32 0, i32 15
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %53, ptr align 1 %54, i32 %59, i1 false) #16
  %60 = load ptr, ptr %40, align 4
  %61 = getelementptr ptr, ptr %60, i32 %43
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %62, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 2
  store i32 %65, ptr %63, align 4
  %66 = load ptr, ptr %40, align 4
  %67 = getelementptr ptr, ptr %66, i32 %43
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_ctrl, ptr %68, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  %71 = or i32 %70, 1
  store i32 %71, ptr %69, align 4
  %72 = load i32, ptr %36, align 8
  br label %73

73:                                               ; preds = %48, %41
  %74 = phi i32 [ %42, %41 ], [ %72, %48 ]
  %75 = add nuw i32 %43, 1
  %76 = icmp ult i32 %75, %74
  br i1 %76, label %41, label %77

77:                                               ; preds = %73, %35
  %78 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 6
  %79 = load ptr, ptr %78, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %88, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.v4l2_ctrl_ops, ptr %79, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = tail call i32 %83(ptr noundef %21) #16
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85, %81, %77, %30, %26, %17
  %89 = load ptr, ptr %18, align 4
  %90 = icmp eq ptr %89, %4
  br i1 %90, label %91, label %17

91:                                               ; preds = %88, %85, %7, %3, %1
  %92 = phi i32 [ 0, %1 ], [ 0, %7 ], [ 0, %3 ], [ 0, %88 ], [ %86, %85 ]
  ret i32 %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @mutex_lock(ptr noundef %5) #16
  %6 = tail call i32 @__v4l2_ctrl_handler_setup(ptr noundef nonnull %0)
  %7 = load ptr, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %7) #16
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_ctrl_handler_log_status(ptr noundef readonly %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %69, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr @.str.2, ptr %1
  %7 = tail call i32 @strlen(ptr noundef %6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = add i32 %7, -1
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 32
  %14 = select i1 %13, ptr @.str.2, ptr @.str.3
  br label %15

15:                                               ; preds = %9, %4
  %16 = phi ptr [ @.str.2, %4 ], [ %14, %9 ]
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  tail call void @mutex_lock(ptr noundef %18) #16
  %19 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %19
  br i1 %21, label %67, label %22

22:                                               ; preds = %64, %15
  %23 = phi ptr [ %65, %64 ], [ %20, %15 ]
  %24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 20
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 65
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 10
  %30 = load i32, ptr %29, align 8
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %64, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 9
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %6, ptr noundef nonnull %16, ptr noundef %34) #18
  %36 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_ctrl_type_ops, ptr %37, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  tail call void %39(ptr noundef %23) #16
  %40 = load i32, ptr %24, align 4
  %41 = and i32 %40, 146
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = and i32 %40, 16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  %48 = load i32, ptr %24, align 4
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %48, %46 ], [ %40, %43 ]
  %51 = and i32 %50, 2
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #18
  %55 = load i32, ptr %24, align 4
  br label %56

56:                                               ; preds = %53, %49
  %57 = phi i32 [ %55, %53 ], [ %50, %49 ]
  %58 = and i32 %57, 128
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #18
  br label %62

62:                                               ; preds = %60, %56, %32
  %63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #18
  br label %64

64:                                               ; preds = %62, %28, %22
  %65 = load ptr, ptr %23, align 4
  %66 = icmp eq ptr %65, %19
  br i1 %66, label %67, label %22

67:                                               ; preds = %64, %15
  %68 = load ptr, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef %68) #16
  br label %69

69:                                               ; preds = %67, %2
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_new_fwnode_properties(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %2, align 4
  switch i32 %4, label %19 [
    i32 -1, label %9
    i32 0, label %5
    i32 1, label %5
    i32 2, label %5
  ]

5:                                                ; preds = %3, %3, %3
  %6 = trunc i32 %4 to i8
  %7 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %0, ptr noundef %1, i32 noundef 10094882, i8 noundef zeroext 2, i64 noundef 0, i8 noundef zeroext %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5, %3
  %10 = getelementptr inbounds %struct.v4l2_fwnode_device_properties, ptr %2, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = zext i32 %11 to i64
  %15 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %0, ptr noundef %1, i32 noundef 10094883, i64 noundef %14, i64 noundef %14, i64 noundef 1, i64 noundef %14)
  br label %16

16:                                               ; preds = %13, %9, %5
  %17 = getelementptr inbounds %struct.v4l2_ctrl_handler, ptr %0, i32 0, i32 9
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %16, %3
  %20 = phi i32 [ -22, %3 ], [ %18, %16 ]
  ret i32 %20
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @std_equal(ptr nocapture noundef readonly %0, i32 noundef %1, [1 x i32] %2, [1 x i32] %3) #11 {
  %5 = extractvalue [1 x i32] %2, 0
  %6 = inttoptr i32 %5 to ptr
  %7 = extractvalue [1 x i32] %3, 0
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  switch i32 %10, label %43 [
    i32 4, label %62
    i32 7, label %11
    i32 5, label %19
    i32 256, label %25
    i32 257, label %31
    i32 258, label %37
  ]

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %13 = load i32, ptr %12, align 4
  %14 = mul i32 %13, %1
  %15 = getelementptr i8, ptr %6, i32 %14
  %16 = getelementptr i8, ptr %8, i32 %14
  %17 = tail call i32 @strcmp(ptr noundef %15, ptr noundef %16)
  %18 = icmp eq i32 %17, 0
  br label %62

19:                                               ; preds = %4
  %20 = getelementptr i64, ptr %6, i32 %1
  %21 = load i64, ptr %20, align 8
  %22 = getelementptr i64, ptr %8, i32 %1
  %23 = load i64, ptr %22, align 8
  %24 = icmp eq i64 %21, %23
  br label %62

25:                                               ; preds = %4
  %26 = getelementptr i8, ptr %6, i32 %1
  %27 = load i8, ptr %26, align 1
  %28 = getelementptr i8, ptr %8, i32 %1
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %27, %29
  br label %62

31:                                               ; preds = %4
  %32 = getelementptr i16, ptr %6, i32 %1
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr i16, ptr %8, i32 %1
  %35 = load i16, ptr %34, align 2
  %36 = icmp eq i16 %33, %35
  br label %62

37:                                               ; preds = %4
  %38 = getelementptr i32, ptr %6, i32 %1
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr i32, ptr %8, i32 %1
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %39, %41
  br label %62

43:                                               ; preds = %4
  %44 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = getelementptr i32, ptr %6, i32 %1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i32, ptr %8, i32 %1
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br label %62

54:                                               ; preds = %43
  %55 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = mul i32 %56, %1
  %58 = getelementptr i8, ptr %6, i32 %57
  %59 = getelementptr i8, ptr %8, i32 %57
  %60 = tail call i32 @bcmp(ptr %58, ptr %59, i32 %56)
  %61 = icmp eq i32 %60, 0
  br label %62

62:                                               ; preds = %54, %48, %37, %31, %25, %19, %11, %4
  %63 = phi i1 [ %53, %48 ], [ %61, %54 ], [ %42, %37 ], [ %36, %31 ], [ %30, %25 ], [ %24, %19 ], [ %18, %11 ], [ false, %4 ]
  ret i1 %63
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @std_init(ptr nocapture noundef readonly %0, i32 noundef %1, [1 x i32] %2) #4 {
  %4 = extractvalue [1 x i32] %2, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %46 [
    i32 7, label %8
    i32 5, label %20
    i32 1, label %24
    i32 9, label %24
    i32 3, label %24
    i32 8, label %24
    i32 2, label %24
    i32 4, label %29
    i32 6, label %29
    i32 256, label %31
    i32 257, label %36
    i32 258, label %41
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %1
  %12 = getelementptr i8, ptr %5, i32 %11
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  tail call void @llvm.memset.p0.i32(ptr align 1 %12, i8 32, i32 %15, i1 false)
  %16 = load i64, ptr %13, align 8
  %17 = trunc i64 %16 to i32
  %18 = add i32 %11, %17
  %19 = getelementptr i8, ptr %5, i32 %18
  store i8 0, ptr %19, align 1
  br label %72

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 13
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr i64, ptr %5, i32 %1
  store i64 %22, ptr %23, align 8
  br label %72

24:                                               ; preds = %3, %3, %3, %3, %3
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 13
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = getelementptr i32, ptr %5, i32 %1
  store i32 %27, ptr %28, align 4
  br label %72

29:                                               ; preds = %3, %3
  %30 = getelementptr i32, ptr %5, i32 %1
  store i32 0, ptr %30, align 4
  br label %72

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 13
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i8
  %35 = getelementptr i8, ptr %5, i32 %1
  store i8 %34, ptr %35, align 1
  br label %72

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 13
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  %40 = getelementptr i16, ptr %5, i32 %1
  store i16 %39, ptr %40, align 2
  br label %72

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 13
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = getelementptr i32, ptr %5, i32 %1
  store i32 %44, ptr %45, align 4
  br label %72

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %48 = load i32, ptr %47, align 4
  %49 = mul i32 %48, %1
  %50 = getelementptr i8, ptr %5, i32 %49
  %51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 24
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %50, ptr nonnull align 1 %52, i32 %48, i1 false) #16
  br label %56

55:                                               ; preds = %46
  tail call void @llvm.memset.p0.i32(ptr align 1 %50, i8 0, i32 %48, i1 false) #16
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, ptr %6, align 8
  switch i32 %57, label %72 [
    i32 593, label %58
    i32 594, label %60
    i32 592, label %63
    i32 576, label %65
    i32 544, label %67
  ]

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_sequence, ptr %50, i32 0, i32 4
  store i8 1, ptr %59, align 2
  br label %72

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %50, i32 0, i32 5
  store i8 1, ptr %61, align 1
  %62 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %50, i32 0, i32 4
  store i8 1, ptr %62, align 8
  br label %72

63:                                               ; preds = %56
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(64) %50, ptr noundef nonnull align 1 dereferenceable(64) @mpeg2_intra_quant_matrix, i32 64, i1 false) #16
  %64 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_quantisation, ptr %50, i32 0, i32 1
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(64) %64, i8 16, i32 64, i1 false) #16
  br label %72

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %50, i32 0, i32 14
  store i8 1, ptr %66, align 1
  br label %72

67:                                               ; preds = %56
  %68 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %50, i32 0, i32 1
  store i32 3, ptr %68, align 8
  %69 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %50, i32 0, i32 2
  store i32 1280, ptr %69, align 4
  %70 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %50, i32 0, i32 3
  store i32 720, ptr %70, align 8
  %71 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %50, i32 0, i32 4
  store i32 655360, ptr %71, align 4
  br label %72

72:                                               ; preds = %67, %65, %63, %60, %58, %56, %41, %36, %31, %29, %24, %20, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @std_log(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 26
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %12, %8
  %13 = phi i32 [ %17, %12 ], [ 0, %8 ]
  %14 = getelementptr %struct.v4l2_ctrl, ptr %0, i32 0, i32 16, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %15) #18
  %17 = add nuw i32 %13, 1
  %18 = load i32, ptr %9, align 8
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %12, label %20

20:                                               ; preds = %12, %8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #18
  br label %22

22:                                               ; preds = %20, %1
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 10
  %24 = load i32, ptr %23, align 8
  switch i32 %24, label %96 [
    i32 1, label %25
    i32 2, label %28
    i32 3, label %33
    i32 9, label %40
    i32 8, label %47
    i32 5, label %50
    i32 7, label %53
    i32 256, label %55
    i32 257, label %59
    i32 258, label %63
    i32 512, label %66
    i32 513, label %68
    i32 514, label %70
    i32 515, label %72
    i32 516, label %74
    i32 517, label %76
    i32 544, label %78
    i32 576, label %80
    i32 272, label %82
    i32 273, label %84
    i32 592, label %86
    i32 593, label %88
    i32 594, label %90
    i32 608, label %92
    i32 609, label %94
  ]

25:                                               ; preds = %22
  %26 = load i32, ptr %3, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %26) #18
  br label %98

28:                                               ; preds = %22
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, ptr @.str.9, ptr @.str.8
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %31) #18
  br label %98

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 19
  %35 = load ptr, ptr %34, align 8
  %36 = load i32, ptr %3, align 4
  %37 = getelementptr ptr, ptr %35, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %38) #18
  br label %98

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 19
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %3, align 4
  %44 = getelementptr i64, ptr %42, i32 %43
  %45 = load i64, ptr %44, align 8
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %45) #18
  br label %98

47:                                               ; preds = %22
  %48 = load i32, ptr %3, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %48) #18
  br label %98

50:                                               ; preds = %22
  %51 = load i64, ptr %3, align 8
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i64 noundef %51) #18
  br label %98

53:                                               ; preds = %22
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3) #18
  br label %98

55:                                               ; preds = %22
  %56 = load i8, ptr %3, align 1
  %57 = zext i8 %56 to i32
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %57) #18
  br label %98

59:                                               ; preds = %22
  %60 = load i16, ptr %3, align 2
  %61 = zext i16 %60 to i32
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %61) #18
  br label %98

63:                                               ; preds = %22
  %64 = load i32, ptr %3, align 4
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %64) #18
  br label %98

66:                                               ; preds = %22
  %67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #18
  br label %98

68:                                               ; preds = %22
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #18
  br label %98

70:                                               ; preds = %22
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #18
  br label %98

72:                                               ; preds = %22
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #18
  br label %98

74:                                               ; preds = %22
  %75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #18
  br label %98

76:                                               ; preds = %22
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #18
  br label %98

78:                                               ; preds = %22
  %79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #18
  br label %98

80:                                               ; preds = %22
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #18
  br label %98

82:                                               ; preds = %22
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #18
  br label %98

84:                                               ; preds = %22
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #18
  br label %98

86:                                               ; preds = %22
  %87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #18
  br label %98

88:                                               ; preds = %22
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #18
  br label %98

90:                                               ; preds = %22
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #18
  br label %98

92:                                               ; preds = %22
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #18
  br label %98

94:                                               ; preds = %22
  %95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #18
  br label %98

96:                                               ; preds = %22
  %97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %24) #18
  br label %98

98:                                               ; preds = %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %63, %59, %55, %53, %50, %47, %40, %33, %28, %25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @std_validate(ptr noundef readonly %0, i32 noundef %1, [1 x i32] %2) #0 {
  %4 = extractvalue [1 x i32] %2, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %313 [
    i32 1, label %8
    i32 5, label %57
    i32 256, label %89
    i32 257, label %145
    i32 258, label %201
    i32 2, label %250
    i32 3, label %255
    i32 9, label %255
    i32 8, label %285
    i32 4, label %292
    i32 6, label %292
    i32 7, label %294
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %10 = load i64, ptr %9, align 8
  %11 = icmp sgt i64 %10, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %14 = load i64, ptr %13, align 8
  %15 = getelementptr i32, ptr %5, i32 %1
  %16 = load i32, ptr %15, align 4
  %17 = lshr i64 %14, 1
  %18 = trunc i64 %17 to i32
  br label %33

19:                                               ; preds = %8
  %20 = getelementptr i32, ptr %5, i32 %1
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %24 = load i64, ptr %23, align 8
  %25 = shl i64 %24, 31
  %26 = ashr i64 %25, 32
  %27 = sub i64 %10, %26
  %28 = icmp sgt i64 %27, %22
  %29 = lshr i64 %24, 1
  %30 = trunc i64 %29 to i32
  br i1 %28, label %33, label %31

31:                                               ; preds = %19
  %32 = trunc i64 %10 to i32
  store i32 %32, ptr %20, align 4
  br label %38

33:                                               ; preds = %19, %12
  %34 = phi i32 [ %16, %12 ], [ %21, %19 ]
  %35 = phi i32 [ %18, %12 ], [ %30, %19 ]
  %36 = getelementptr i32, ptr %5, i32 %1
  %37 = add i32 %34, %35
  store i32 %37, ptr %36, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %37, %33 ], [ %32, %31 ]
  %40 = getelementptr i32, ptr %5, i32 %1
  %41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = tail call i32 @llvm.smax.i32(i32 %39, i32 %43)
  %45 = load i64, ptr %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = tail call i32 @llvm.smin.i32(i32 %44, i32 %46)
  store i32 %47, ptr %40, align 4
  %48 = load i64, ptr %41, align 8
  %49 = trunc i64 %48 to i32
  %50 = sub i32 %47, %49
  %51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %52 = load i64, ptr %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = urem i32 %50, %53
  %55 = sub i32 %49, %54
  %56 = add i32 %55, %50
  store i32 %56, ptr %40, align 4
  br label %739

57:                                               ; preds = %3
  %58 = getelementptr i64, ptr %5, i32 %1
  %59 = load i64, ptr %58, align 8
  %60 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %61 = load i64, ptr %60, align 8
  %62 = icmp slt i64 %61, 0
  %63 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %64 = load i64, ptr %63, align 8
  %65 = lshr i64 %64, 1
  %66 = sub nsw i64 %61, %65
  %67 = icmp slt i64 %59, %66
  %68 = select i1 %62, i1 true, i1 %67
  %69 = add i64 %65, %59
  %70 = select i1 %68, i64 %69, i64 %61
  %71 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %72 = load i64, ptr %71, align 8
  %73 = tail call i64 @llvm.smax.i64(i64 %70, i64 %72)
  %74 = tail call i64 @llvm.smin.i64(i64 %73, i64 %61)
  %75 = sub i64 %74, %72
  %76 = trunc i64 %64 to i32
  %77 = icmp ult i64 %75, 4294967296
  br i1 %77, label %78, label %82, !prof !11

78:                                               ; preds = %57
  %79 = trunc i64 %75 to i32
  %80 = udiv i32 %79, %76
  %81 = zext i32 %80 to i64
  br label %85

82:                                               ; preds = %57
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %76, i64 %75) #19, !srcloc !13
  %84 = extractvalue { i64, i64 } %83, 1
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i64 [ %81, %78 ], [ %84, %82 ]
  %87 = mul i64 %86, %64
  %88 = add i64 %87, %72
  store i64 %88, ptr %58, align 8
  br label %739

89:                                               ; preds = %3
  %90 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %91 = load i64, ptr %90, align 8
  %92 = icmp sgt i64 %91, -1
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %95 = load i64, ptr %94, align 8
  %96 = getelementptr i8, ptr %5, i32 %1
  %97 = load i8, ptr %96, align 1
  %98 = lshr i64 %95, 1
  %99 = trunc i64 %98 to i8
  br label %114

100:                                              ; preds = %89
  %101 = getelementptr i8, ptr %5, i32 %1
  %102 = load i8, ptr %101, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %105 = load i64, ptr %104, align 8
  %106 = shl i64 %105, 31
  %107 = ashr i64 %106, 32
  %108 = sub i64 %91, %107
  %109 = icmp sgt i64 %108, %103
  %110 = lshr i64 %105, 1
  %111 = trunc i64 %110 to i8
  br i1 %109, label %114, label %112

112:                                              ; preds = %100
  %113 = trunc i64 %91 to i8
  store i8 %113, ptr %101, align 1
  br label %119

114:                                              ; preds = %100, %93
  %115 = phi i8 [ %97, %93 ], [ %102, %100 ]
  %116 = phi i8 [ %99, %93 ], [ %111, %100 ]
  %117 = getelementptr i8, ptr %5, i32 %1
  %118 = add i8 %115, %116
  store i8 %118, ptr %117, align 1
  br label %119

119:                                              ; preds = %114, %112
  %120 = phi i8 [ %118, %114 ], [ %113, %112 ]
  %121 = getelementptr i8, ptr %5, i32 %1
  %122 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = zext i8 %120 to i32
  %126 = and i32 %124, 255
  %127 = tail call i32 @llvm.umax.i32(i32 %126, i32 %125)
  %128 = load i64, ptr %90, align 8
  %129 = trunc i64 %128 to i32
  %130 = and i32 %129, 255
  %131 = tail call i32 @llvm.umin.i32(i32 %127, i32 %130)
  %132 = trunc i32 %131 to i8
  store i8 %132, ptr %121, align 1
  %133 = load i64, ptr %122, align 8
  %134 = trunc i64 %133 to i32
  %135 = sub i32 %131, %134
  %136 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %137 = load i64, ptr %136, align 8
  %138 = and i32 %135, 255
  %139 = trunc i64 %137 to i32
  %140 = udiv i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = mul i64 %137, %141
  %143 = add i64 %142, %133
  %144 = trunc i64 %143 to i8
  store i8 %144, ptr %121, align 1
  br label %739

145:                                              ; preds = %3
  %146 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %147 = load i64, ptr %146, align 8
  %148 = icmp sgt i64 %147, -1
  br i1 %148, label %156, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %151 = load i64, ptr %150, align 8
  %152 = getelementptr i16, ptr %5, i32 %1
  %153 = load i16, ptr %152, align 2
  %154 = lshr i64 %151, 1
  %155 = trunc i64 %154 to i16
  br label %170

156:                                              ; preds = %145
  %157 = getelementptr i16, ptr %5, i32 %1
  %158 = load i16, ptr %157, align 2
  %159 = zext i16 %158 to i64
  %160 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %161 = load i64, ptr %160, align 8
  %162 = shl i64 %161, 31
  %163 = ashr i64 %162, 32
  %164 = sub i64 %147, %163
  %165 = icmp sgt i64 %164, %159
  %166 = lshr i64 %161, 1
  %167 = trunc i64 %166 to i16
  br i1 %165, label %170, label %168

168:                                              ; preds = %156
  %169 = trunc i64 %147 to i16
  store i16 %169, ptr %157, align 2
  br label %175

170:                                              ; preds = %156, %149
  %171 = phi i16 [ %153, %149 ], [ %158, %156 ]
  %172 = phi i16 [ %155, %149 ], [ %167, %156 ]
  %173 = getelementptr i16, ptr %5, i32 %1
  %174 = add i16 %171, %172
  store i16 %174, ptr %173, align 2
  br label %175

175:                                              ; preds = %170, %168
  %176 = phi i16 [ %174, %170 ], [ %169, %168 ]
  %177 = getelementptr i16, ptr %5, i32 %1
  %178 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = zext i16 %176 to i32
  %182 = and i32 %180, 65535
  %183 = tail call i32 @llvm.umax.i32(i32 %182, i32 %181)
  %184 = load i64, ptr %146, align 8
  %185 = trunc i64 %184 to i32
  %186 = and i32 %185, 65535
  %187 = tail call i32 @llvm.umin.i32(i32 %183, i32 %186)
  %188 = trunc i32 %187 to i16
  store i16 %188, ptr %177, align 2
  %189 = load i64, ptr %178, align 8
  %190 = trunc i64 %189 to i32
  %191 = sub i32 %187, %190
  %192 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %193 = load i64, ptr %192, align 8
  %194 = and i32 %191, 65535
  %195 = trunc i64 %193 to i32
  %196 = udiv i32 %194, %195
  %197 = zext i32 %196 to i64
  %198 = mul i64 %193, %197
  %199 = add i64 %198, %189
  %200 = trunc i64 %199 to i16
  store i16 %200, ptr %177, align 2
  br label %739

201:                                              ; preds = %3
  %202 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %203 = load i64, ptr %202, align 8
  %204 = icmp sgt i64 %203, -1
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %207 = load i64, ptr %206, align 8
  %208 = getelementptr i32, ptr %5, i32 %1
  %209 = load i32, ptr %208, align 4
  %210 = lshr i64 %207, 1
  %211 = trunc i64 %210 to i32
  br label %226

212:                                              ; preds = %201
  %213 = getelementptr i32, ptr %5, i32 %1
  %214 = load i32, ptr %213, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %217 = load i64, ptr %216, align 8
  %218 = shl i64 %217, 31
  %219 = ashr i64 %218, 32
  %220 = sub i64 %203, %219
  %221 = icmp sgt i64 %220, %215
  %222 = lshr i64 %217, 1
  %223 = trunc i64 %222 to i32
  br i1 %221, label %226, label %224

224:                                              ; preds = %212
  %225 = trunc i64 %203 to i32
  store i32 %225, ptr %213, align 4
  br label %231

226:                                              ; preds = %212, %205
  %227 = phi i32 [ %209, %205 ], [ %214, %212 ]
  %228 = phi i32 [ %211, %205 ], [ %223, %212 ]
  %229 = getelementptr i32, ptr %5, i32 %1
  %230 = add i32 %227, %228
  store i32 %230, ptr %229, align 4
  br label %231

231:                                              ; preds = %226, %224
  %232 = phi i32 [ %230, %226 ], [ %225, %224 ]
  %233 = getelementptr i32, ptr %5, i32 %1
  %234 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %235 = load i64, ptr %234, align 8
  %236 = trunc i64 %235 to i32
  %237 = tail call i32 @llvm.umax.i32(i32 %232, i32 %236)
  %238 = load i64, ptr %202, align 8
  %239 = trunc i64 %238 to i32
  %240 = tail call i32 @llvm.umin.i32(i32 %237, i32 %239)
  store i32 %240, ptr %233, align 4
  %241 = load i64, ptr %234, align 8
  %242 = trunc i64 %241 to i32
  %243 = sub i32 %240, %242
  %244 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %245 = load i64, ptr %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = urem i32 %243, %246
  %248 = sub i32 %242, %247
  %249 = add i32 %248, %243
  store i32 %249, ptr %233, align 4
  br label %739

250:                                              ; preds = %3
  %251 = getelementptr i32, ptr %5, i32 %1
  %252 = load i32, ptr %251, align 4
  %253 = icmp ne i32 %252, 0
  %254 = zext i1 %253 to i32
  store i32 %254, ptr %251, align 4
  br label %739

255:                                              ; preds = %3, %3
  %256 = getelementptr i32, ptr %5, i32 %1
  %257 = load i32, ptr %256, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %260 = load i64, ptr %259, align 8
  %261 = icmp sgt i64 %260, %258
  br i1 %261, label %739, label %262

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %264 = load i64, ptr %263, align 8
  %265 = icmp slt i64 %264, %258
  br i1 %265, label %739, label %266

266:                                              ; preds = %262
  %267 = icmp slt i32 %257, 64
  br i1 %267, label %268, label %275

268:                                              ; preds = %266
  %269 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %270 = load i64, ptr %269, align 8
  %271 = zext i32 %257 to i64
  %272 = shl nuw i64 1, %271
  %273 = and i64 %270, %272
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %739

275:                                              ; preds = %268, %266
  %276 = icmp eq i32 %7, 3
  br i1 %276, label %277, label %284

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 19
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr ptr, ptr %279, i32 %257
  %281 = load ptr, ptr %280, align 4
  %282 = load i8, ptr %281, align 1
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %739, label %284

284:                                              ; preds = %277, %275
  br label %739

285:                                              ; preds = %3
  %286 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 12
  %287 = load i64, ptr %286, align 8
  %288 = getelementptr i32, ptr %5, i32 %1
  %289 = load i32, ptr %288, align 4
  %290 = trunc i64 %287 to i32
  %291 = and i32 %289, %290
  store i32 %291, ptr %288, align 4
  br label %739

292:                                              ; preds = %3, %3
  %293 = getelementptr i32, ptr %5, i32 %1
  store i32 0, ptr %293, align 4
  br label %739

294:                                              ; preds = %3
  %295 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %296 = load i32, ptr %295, align 4
  %297 = mul i32 %296, %1
  %298 = getelementptr i8, ptr %5, i32 %297
  %299 = tail call i32 @strlen(ptr noundef %298)
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 11
  %302 = load i64, ptr %301, align 8
  %303 = icmp sgt i64 %302, %300
  br i1 %303, label %739, label %304

304:                                              ; preds = %294
  %305 = trunc i64 %302 to i32
  %306 = sub i32 %299, %305
  %307 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 18
  %308 = load i64, ptr %307, align 8
  %309 = trunc i64 %308 to i32
  %310 = urem i32 %306, %309
  %311 = icmp eq i32 %310, 0
  %312 = select i1 %311, i32 0, i32 -34
  br label %739

313:                                              ; preds = %3
  %314 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 15
  %315 = load i32, ptr %314, align 4
  %316 = mul i32 %315, %1
  %317 = getelementptr i8, ptr %5, i32 %316
  switch i32 %7, label %739 [
    i32 593, label %323
    i32 594, label %328
    i32 592, label %738
    i32 544, label %344
    i32 512, label %356
    i32 513, label %416
    i32 514, label %738
    i32 517, label %452
    i32 515, label %459
    i32 516, label %505
    i32 576, label %542
    i32 288, label %555
    i32 289, label %567
    i32 292, label %589
    i32 290, label %603
    i32 272, label %738
    i32 273, label %318
    i32 291, label %738
    i32 608, label %655
    i32 609, label %659
    i32 262, label %731
  ]

318:                                              ; preds = %313
  %319 = getelementptr inbounds %struct.v4l2_ctrl_hdr10_mastering_display, ptr %317, i32 0, i32 1
  %320 = load i16, ptr %317, align 2
  %321 = add i16 %320, 28535
  %322 = icmp ult i16 %321, 28540
  br i1 %322, label %739, label %632

323:                                              ; preds = %313
  %324 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_sequence, ptr %317, i32 0, i32 4
  %325 = load i8, ptr %324, align 2
  %326 = add i8 %325, -1
  %327 = icmp ult i8 %326, 3
  br i1 %327, label %738, label %739

328:                                              ; preds = %313
  %329 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %317, i32 0, i32 6
  %330 = load i8, ptr %329, align 2
  %331 = icmp ult i8 %330, 4
  br i1 %331, label %332, label %739

332:                                              ; preds = %328
  %333 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %317, i32 0, i32 5
  %334 = load i8, ptr %333, align 1
  %335 = add i8 %334, -1
  %336 = icmp ult i8 %335, 3
  br i1 %336, label %337, label %739

337:                                              ; preds = %332
  %338 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %317, i32 0, i32 4
  %339 = load i8, ptr %338, align 8
  %340 = add i8 %339, -1
  %341 = icmp ult i8 %340, 3
  br i1 %341, label %342, label %739

342:                                              ; preds = %337
  %343 = getelementptr inbounds %struct.v4l2_ctrl_mpeg2_picture, ptr %317, i32 0, i32 7
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %343, i8 0, i32 5, i1 false) #16
  br label %738

344:                                              ; preds = %313
  %345 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %317, i32 0, i32 1
  %346 = load i32, ptr %345, align 8
  %347 = icmp ult i32 %346, 3
  br i1 %347, label %739, label %348

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %317, i32 0, i32 2
  %350 = load i32, ptr %349, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %739, label %352

352:                                              ; preds = %348
  %353 = getelementptr inbounds %struct.v4l2_ctrl_fwht_params, ptr %317, i32 0, i32 3
  %354 = load i32, ptr %353, align 8
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %739, label %738

356:                                              ; preds = %313
  %357 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 8
  %358 = load i8, ptr %357, align 4
  %359 = icmp eq i8 %358, 0
  br i1 %359, label %362, label %360

360:                                              ; preds = %356
  %361 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 9
  store i8 0, ptr %361, align 1
  br label %364

362:                                              ; preds = %356
  %363 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(1029) %363, i8 0, i64 1029, i1 false) #16
  br label %364

364:                                              ; preds = %362, %360
  %365 = load i8, ptr %317, align 4
  switch i8 %365, label %366 [
    i8 100, label %373
    i8 110, label %373
    i8 122, label %373
    i8 -12, label %373
    i8 44, label %373
    i8 83, label %373
    i8 86, label %373
    i8 118, label %373
    i8 -128, label %373
    i8 -118, label %373
    i8 -117, label %373
    i8 -122, label %373
    i8 -121, label %373
  ]

366:                                              ; preds = %364
  %367 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 4
  store i8 1, ptr %367, align 4
  %368 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 5
  store i8 0, ptr %368, align 1
  %369 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 6
  store i8 0, ptr %369, align 2
  %370 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 17
  %371 = load i32, ptr %370, align 4
  %372 = and i32 %371, -4
  store i32 %372, ptr %370, align 4
  br label %373

373:                                              ; preds = %366, %364, %364, %364, %364, %364, %364, %364, %364, %364, %364, %364, %364, %364
  %374 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 17
  %375 = load i32, ptr %374, align 4
  %376 = and i32 %375, 16
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %373
  %379 = and i32 %375, -33
  store i32 %379, ptr %374, align 4
  br label %380

380:                                              ; preds = %378, %373
  %381 = icmp ult i8 %365, 122
  br i1 %381, label %382, label %386

382:                                              ; preds = %380
  %383 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 4
  %384 = load i8, ptr %383, align 4
  %385 = icmp ugt i8 %384, 1
  br i1 %385, label %739, label %394

386:                                              ; preds = %380
  %387 = icmp ult i8 %365, -12
  %388 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 4
  %389 = load i8, ptr %388, align 4
  br i1 %387, label %390, label %392

390:                                              ; preds = %386
  %391 = icmp ugt i8 %389, 2
  br i1 %391, label %739, label %394

392:                                              ; preds = %386
  %393 = icmp ugt i8 %389, 3
  br i1 %393, label %739, label %394

394:                                              ; preds = %392, %390, %382
  %395 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 5
  %396 = load i8, ptr %395, align 1
  %397 = icmp ugt i8 %396, 6
  br i1 %397, label %739, label %398

398:                                              ; preds = %394
  %399 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 6
  %400 = load i8, ptr %399, align 2
  %401 = icmp ugt i8 %400, 6
  br i1 %401, label %739, label %402

402:                                              ; preds = %398
  %403 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 7
  %404 = load i8, ptr %403, align 1
  %405 = icmp ugt i8 %404, 12
  %406 = icmp ugt i8 %358, 2
  %407 = select i1 %405, i1 true, i1 %406
  br i1 %407, label %739, label %408

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 9
  %410 = load i8, ptr %409, align 1
  %411 = icmp ugt i8 %410, 12
  br i1 %411, label %739, label %412

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct.v4l2_ctrl_h264_sps, ptr %317, i32 0, i32 10
  %414 = load i8, ptr %413, align 2
  %415 = icmp ugt i8 %414, 32
  br i1 %415, label %739, label %738

416:                                              ; preds = %313
  %417 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 2
  %418 = load i8, ptr %417, align 2
  %419 = icmp ugt i8 %418, 7
  br i1 %419, label %739, label %420

420:                                              ; preds = %416
  %421 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 3
  %422 = load i8, ptr %421, align 1
  %423 = icmp ugt i8 %422, 31
  br i1 %423, label %739, label %424

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 4
  %426 = load i8, ptr %425, align 2
  %427 = icmp ugt i8 %426, 31
  br i1 %427, label %739, label %428

428:                                              ; preds = %424
  %429 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 5
  %430 = load i8, ptr %429, align 1
  %431 = icmp ugt i8 %430, 2
  br i1 %431, label %739, label %432

432:                                              ; preds = %428
  %433 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 6
  %434 = load i8, ptr %433, align 2
  %435 = add i8 %434, -26
  %436 = icmp ult i8 %435, -88
  br i1 %436, label %739, label %437

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 7
  %439 = load i8, ptr %438, align 1
  %440 = add i8 %439, -26
  %441 = icmp ult i8 %440, -52
  br i1 %441, label %739, label %442

442:                                              ; preds = %437
  %443 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 8
  %444 = load i8, ptr %443, align 2
  %445 = add i8 %444, -13
  %446 = icmp ult i8 %445, -25
  br i1 %446, label %739, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.v4l2_ctrl_h264_pps, ptr %317, i32 0, i32 9
  %449 = load i8, ptr %448, align 1
  %450 = add i8 %449, -13
  %451 = icmp ult i8 %450, -25
  br i1 %451, label %739, label %738

452:                                              ; preds = %313
  %453 = load i16, ptr %317, align 2
  %454 = icmp ugt i16 %453, 7
  br i1 %454, label %739, label %455

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.v4l2_ctrl_h264_pred_weights, ptr %317, i32 0, i32 1
  %457 = load i16, ptr %456, align 2
  %458 = icmp ugt i16 %457, 7
  br i1 %458, label %739, label %738

459:                                              ; preds = %313
  %460 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 2
  %461 = load i8, ptr %460, align 4
  %462 = icmp eq i8 %461, 1
  br i1 %462, label %467, label %463

463:                                              ; preds = %459
  %464 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 16
  %465 = load i32, ptr %464, align 4
  %466 = and i32 %465, -2
  store i32 %466, ptr %464, align 4
  br label %467

467:                                              ; preds = %463, %459
  %468 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 3
  %469 = load i8, ptr %468, align 1
  %470 = icmp ugt i8 %469, 2
  br i1 %470, label %739, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 5
  %473 = load i8, ptr %472, align 1
  %474 = icmp ugt i8 %473, 2
  br i1 %474, label %739, label %475

475:                                              ; preds = %471
  %476 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 8
  %477 = load i8, ptr %476, align 2
  %478 = icmp ugt i8 %477, 2
  br i1 %478, label %739, label %479

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 9
  %481 = load i8, ptr %480, align 1
  %482 = add i8 %481, -7
  %483 = icmp ult i8 %482, -13
  br i1 %483, label %739, label %484

484:                                              ; preds = %479
  %485 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 10
  %486 = load i8, ptr %485, align 4
  %487 = add i8 %486, -7
  %488 = icmp ult i8 %487, -13
  br i1 %488, label %739, label %489

489:                                              ; preds = %484
  switch i8 %461, label %492 [
    i8 2, label %490
    i8 4, label %490
  ]

490:                                              ; preds = %489, %489
  %491 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 11
  store i8 0, ptr %491, align 1
  br label %492

492:                                              ; preds = %490, %489
  br i1 %462, label %495, label %493

493:                                              ; preds = %492
  %494 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 12
  store i8 0, ptr %494, align 2
  br label %495

495:                                              ; preds = %493, %492
  %496 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 11
  %497 = load i8, ptr %496, align 1
  %498 = icmp ugt i8 %497, 31
  br i1 %498, label %739, label %499

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 12
  %501 = load i8, ptr %500, align 2
  %502 = icmp ugt i8 %501, 31
  br i1 %502, label %739, label %503

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.v4l2_ctrl_h264_slice_params, ptr %317, i32 0, i32 13
  store i8 0, ptr %504, align 1
  br label %738

505:                                              ; preds = %313
  %506 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %317, i32 0, i32 1
  %507 = load i16, ptr %506, align 8
  %508 = icmp ugt i16 %507, 3
  br i1 %508, label %739, label %509

509:                                              ; preds = %505
  %510 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %317, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %510, i8 0, i32 5, i1 false) #16
  %511 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 1
  %512 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %511, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %512, i8 0, i32 5, i1 false) #16
  %513 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 2
  %514 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %513, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %514, i8 0, i32 5, i1 false) #16
  %515 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 3
  %516 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %515, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %516, i8 0, i32 5, i1 false) #16
  %517 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 4
  %518 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %517, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %518, i8 0, i32 5, i1 false) #16
  %519 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 5
  %520 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %519, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %520, i8 0, i32 5, i1 false) #16
  %521 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 6
  %522 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %521, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %522, i8 0, i32 5, i1 false) #16
  %523 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 7
  %524 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %523, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %524, i8 0, i32 5, i1 false) #16
  %525 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 8
  %526 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %525, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %526, i8 0, i32 5, i1 false) #16
  %527 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 9
  %528 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %527, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %528, i8 0, i32 5, i1 false) #16
  %529 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 10
  %530 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %529, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %530, i8 0, i32 5, i1 false) #16
  %531 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 11
  %532 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %531, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %532, i8 0, i32 5, i1 false) #16
  %533 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 12
  %534 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %533, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %534, i8 0, i32 5, i1 false) #16
  %535 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 13
  %536 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %535, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %536, i8 0, i32 5, i1 false) #16
  %537 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 14
  %538 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %537, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %538, i8 0, i32 5, i1 false) #16
  %539 = getelementptr [16 x %struct.v4l2_h264_dpb_entry], ptr %317, i32 0, i32 15
  %540 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, ptr %539, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %540, i8 0, i32 5, i1 false) #16
  %541 = getelementptr inbounds %struct.v4l2_ctrl_h264_decode_params, ptr %317, i32 0, i32 13
  store i32 0, ptr %541, align 8
  br label %738

542:                                              ; preds = %313
  %543 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %317, i32 0, i32 14
  %544 = load i8, ptr %543, align 1
  switch i8 %544, label %739 [
    i8 1, label %545
    i8 2, label %545
    i8 4, label %545
    i8 8, label %545
  ]

545:                                              ; preds = %542, %542, %542, %542
  %546 = getelementptr inbounds %struct.v4l2_vp8_segment, ptr %317, i32 0, i32 3
  store i8 0, ptr %546, align 1
  %547 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %317, i32 0, i32 1
  %548 = getelementptr inbounds %struct.v4l2_vp8_loop_filter, ptr %547, i32 0, i32 4
  store i16 0, ptr %548, align 2
  %549 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %317, i32 0, i32 2
  %550 = getelementptr inbounds %struct.v4l2_vp8_quantization, ptr %549, i32 0, i32 6
  store i16 0, ptr %550, align 2
  %551 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %317, i32 0, i32 3
  %552 = getelementptr inbounds %struct.v4l2_vp8_entropy, ptr %551, i32 0, i32 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(3) %552, i8 0, i32 3, i1 false) #16
  %553 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame, ptr %317, i32 0, i32 4
  %554 = getelementptr inbounds %struct.v4l2_vp8_entropy_coder_state, ptr %553, i32 0, i32 3
  store i8 0, ptr %554, align 1
  br label %738

555:                                              ; preds = %313
  %556 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %317, i32 0, i32 22
  %557 = load i64, ptr %556, align 8
  %558 = and i64 %557, 16
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %560, label %562

560:                                              ; preds = %555
  %561 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %317, i32 0, i32 14
  store i32 0, ptr %561, align 8
  br label %562

562:                                              ; preds = %560, %555
  %563 = and i64 %557, 64
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %565, label %738

565:                                              ; preds = %562
  %566 = getelementptr inbounds %struct.v4l2_ctrl_hevc_sps, ptr %317, i32 0, i32 19
  store i8 0, ptr %566, align 1
  br label %738

567:                                              ; preds = %313
  %568 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 15
  %569 = load i64, ptr %568, align 8
  %570 = and i64 %569, 64
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %574

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 4
  store i8 0, ptr %573, align 4
  br label %574

574:                                              ; preds = %572, %567
  %575 = and i64 %569, 2048
  %576 = icmp eq i64 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 7
  %579 = and i64 %569, -8193
  tail call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(44) %578, i8 0, i64 44, i1 false) #16
  store i64 %579, ptr %568, align 8
  br label %580

580:                                              ; preds = %577, %574
  %581 = phi i64 [ %579, %577 ], [ %569, %574 ]
  %582 = and i64 %581, 65536
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %580
  %585 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 11
  store i8 0, ptr %585, align 1
  %586 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 12
  store i8 0, ptr %586, align 4
  br label %587

587:                                              ; preds = %584, %580
  %588 = getelementptr inbounds %struct.v4l2_ctrl_hevc_pps, ptr %317, i32 0, i32 14
  store i32 0, ptr %588, align 2
  br label %738

589:                                              ; preds = %313
  %590 = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %317, i32 0, i32 1
  %591 = load i8, ptr %590, align 4
  %592 = icmp ugt i8 %591, 16
  br i1 %592, label %739, label %593

593:                                              ; preds = %589
  %594 = icmp eq i8 %591, 0
  br i1 %594, label %738, label %595

595:                                              ; preds = %593
  %596 = getelementptr inbounds %struct.v4l2_ctrl_hevc_decode_params, ptr %317, i32 0, i32 2
  %597 = zext i8 %591 to i32
  br label %598

598:                                              ; preds = %598, %595
  %599 = phi i32 [ 0, %595 ], [ %601, %598 ]
  %600 = getelementptr [16 x %struct.v4l2_hevc_dpb_entry], ptr %596, i32 0, i32 %599, i32 4
  store i16 0, ptr %600, align 2
  %601 = add nuw nsw i32 %599, 1
  %602 = icmp eq i32 %601, %597
  br i1 %602, label %738, label %598

603:                                              ; preds = %313
  %604 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %317, i32 0, i32 24
  %605 = getelementptr inbounds %struct.v4l2_hevc_pred_weight_table, ptr %604, i32 0, i32 8
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %605, i8 0, i32 6, i1 false) #16
  %606 = getelementptr inbounds %struct.v4l2_ctrl_hevc_slice_params, ptr %317, i32 0, i32 23
  store i8 0, ptr %606, align 8
  br label %738

607:                                              ; preds = %632
  %608 = getelementptr [3 x i16], ptr %317, i32 0, i32 1
  %609 = load i16, ptr %608, align 2
  %610 = add i16 %609, 28535
  %611 = icmp ult i16 %610, 28540
  br i1 %611, label %739, label %612

612:                                              ; preds = %607
  %613 = getelementptr [3 x i16], ptr %319, i32 0, i32 1
  %614 = load i16, ptr %613, align 2
  %615 = add i16 %614, 23535
  %616 = icmp ult i16 %615, 23540
  br i1 %616, label %739, label %617

617:                                              ; preds = %612
  %618 = getelementptr [3 x i16], ptr %317, i32 0, i32 2
  %619 = load i16, ptr %618, align 2
  %620 = add i16 %619, 28535
  %621 = icmp ult i16 %620, 28540
  br i1 %621, label %739, label %622

622:                                              ; preds = %617
  %623 = getelementptr [3 x i16], ptr %319, i32 0, i32 2
  %624 = load i16, ptr %623, align 2
  %625 = add i16 %624, 23535
  %626 = icmp ult i16 %625, 23540
  br i1 %626, label %739, label %627

627:                                              ; preds = %622
  %628 = getelementptr inbounds %struct.v4l2_ctrl_hdr10_mastering_display, ptr %317, i32 0, i32 2
  %629 = load i16, ptr %628, align 4
  %630 = add i16 %629, 28535
  %631 = icmp ult i16 %630, 28540
  br i1 %631, label %739, label %636

632:                                              ; preds = %318
  %633 = load i16, ptr %319, align 2
  %634 = add i16 %633, 23535
  %635 = icmp ult i16 %634, 23540
  br i1 %635, label %739, label %607

636:                                              ; preds = %627
  %637 = getelementptr inbounds %struct.v4l2_ctrl_hdr10_mastering_display, ptr %317, i32 0, i32 3
  %638 = load i16, ptr %637, align 2
  %639 = add i16 %638, 23535
  %640 = icmp ult i16 %639, 23540
  br i1 %640, label %739, label %641

641:                                              ; preds = %636
  %642 = getelementptr inbounds %struct.v4l2_ctrl_hdr10_mastering_display, ptr %317, i32 0, i32 4
  %643 = load i32, ptr %642, align 4
  %644 = add i32 %643, -100000001
  %645 = icmp ult i32 %644, -99950001
  br i1 %645, label %739, label %646

646:                                              ; preds = %641
  %647 = getelementptr inbounds %struct.v4l2_ctrl_hdr10_mastering_display, ptr %317, i32 0, i32 5
  %648 = load i32, ptr %647, align 4
  %649 = add i32 %648, -50001
  %650 = icmp ult i32 %649, -50000
  br i1 %650, label %739, label %651

651:                                              ; preds = %646
  %652 = icmp eq i32 %643, 50000
  %653 = icmp eq i32 %648, 50000
  %654 = select i1 %652, i1 %653, i1 false
  br i1 %654, label %739, label %738

655:                                              ; preds = %313
  %656 = load i8, ptr %317, align 1
  %657 = icmp ugt i8 %656, 4
  %658 = select i1 %657, i32 -22, i32 0
  br label %739

659:                                              ; preds = %313
  %660 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 3
  %661 = load i32, ptr %660, align 8
  %662 = icmp ugt i32 %661, 1023
  %663 = and i32 %661, 36
  %664 = icmp eq i32 %663, 36
  %665 = or i1 %662, %664
  br i1 %665, label %739, label %666

666:                                              ; preds = %659
  %667 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 16
  %668 = load i8, ptr %667, align 1
  %669 = icmp ugt i8 %668, 3
  br i1 %669, label %739, label %670

670:                                              ; preds = %666
  %671 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 14
  %672 = load i8, ptr %671, align 1
  %673 = icmp ugt i8 %672, 2
  br i1 %673, label %739, label %674

674:                                              ; preds = %670
  %675 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 15
  %676 = load i8, ptr %675, align 2
  %677 = icmp ugt i8 %676, 3
  br i1 %677, label %739, label %678

678:                                              ; preds = %674
  %679 = icmp ult i8 %668, 2
  %680 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 17
  %681 = load i8, ptr %680, align 4
  br i1 %679, label %682, label %684

682:                                              ; preds = %678
  %683 = icmp eq i8 %681, 8
  br i1 %683, label %685, label %739

684:                                              ; preds = %678
  switch i8 %681, label %739 [
    i8 10, label %685
    i8 12, label %685
  ]

685:                                              ; preds = %684, %684, %682
  switch i8 %668, label %694 [
    i8 0, label %686
    i8 2, label %686
    i8 1, label %691
    i8 3, label %691
  ]

686:                                              ; preds = %685, %685
  %687 = and i32 %661, 384
  %688 = icmp ne i32 %687, 384
  %689 = icmp eq i8 %668, 1
  %690 = select i1 %688, i1 true, i1 %689
  br i1 %690, label %739, label %694

691:                                              ; preds = %685, %685
  %692 = and i32 %661, 384
  %693 = icmp eq i32 %692, 384
  br i1 %693, label %739, label %694

694:                                              ; preds = %691, %686, %685
  %695 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 18
  %696 = load i8, ptr %695, align 1
  %697 = icmp ugt i8 %696, 4
  br i1 %697, label %739, label %698

698:                                              ; preds = %694
  %699 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 19
  %700 = load i8, ptr %699, align 2
  %701 = icmp ugt i8 %700, 6
  br i1 %701, label %739, label %702

702:                                              ; preds = %698
  %703 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 21
  %704 = load i8, ptr %703, align 8
  %705 = icmp ugt i8 %704, 2
  br i1 %705, label %739, label %706

706:                                              ; preds = %702
  %707 = tail call fastcc i32 @validate_vp9_lf_params(ptr noundef %317) #16
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %739

709:                                              ; preds = %706
  %710 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 1, i32 1
  %711 = load i8, ptr %710, align 1
  %712 = add i8 %711, -16
  %713 = icmp ult i8 %712, -31
  br i1 %713, label %739, label %714

714:                                              ; preds = %709
  %715 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 1, i32 2
  %716 = load i8, ptr %715, align 1
  %717 = add i8 %716, -16
  %718 = icmp ult i8 %717, -31
  br i1 %718, label %739, label %719

719:                                              ; preds = %714
  %720 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 1, i32 3
  %721 = load i8, ptr %720, align 1
  %722 = add i8 %721, -16
  %723 = icmp ult i8 %722, -31
  br i1 %723, label %739, label %724

724:                                              ; preds = %719
  %725 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 1, i32 4
  store i32 0, ptr %725, align 1
  %726 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 2
  %727 = tail call fastcc i32 @validate_vp9_seg_params(ptr noundef %726) #16
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %739

729:                                              ; preds = %724
  %730 = getelementptr inbounds %struct.v4l2_ctrl_vp9_frame, ptr %317, i32 0, i32 22
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %730, i8 0, i32 7, i1 false) #16
  br label %739

731:                                              ; preds = %313
  %732 = load i32, ptr %317, align 4
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %739, label %734

734:                                              ; preds = %731
  %735 = getelementptr inbounds %struct.v4l2_area, ptr %317, i32 0, i32 1
  %736 = load i32, ptr %735, align 4
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %739, label %738

738:                                              ; preds = %734, %651, %603, %598, %593, %587, %565, %562, %545, %509, %503, %455, %447, %412, %352, %342, %323, %313, %313, %313, %313
  br label %739

739:                                              ; preds = %738, %734, %731, %729, %724, %719, %714, %709, %706, %702, %698, %694, %691, %686, %684, %682, %674, %670, %666, %659, %655, %651, %646, %641, %636, %632, %627, %622, %617, %612, %607, %589, %542, %505, %499, %495, %484, %479, %475, %471, %467, %455, %452, %447, %442, %437, %432, %428, %424, %420, %416, %412, %408, %402, %398, %394, %392, %390, %382, %352, %348, %344, %337, %332, %328, %323, %318, %313, %304, %294, %292, %285, %284, %277, %268, %262, %255, %250, %231, %175, %119, %85, %38
  %740 = phi i32 [ 0, %292 ], [ 0, %285 ], [ 0, %284 ], [ 0, %250 ], [ 0, %231 ], [ 0, %175 ], [ 0, %119 ], [ 0, %85 ], [ 0, %38 ], [ -34, %262 ], [ -34, %255 ], [ -22, %268 ], [ -22, %277 ], [ -34, %294 ], [ %312, %304 ], [ 0, %738 ], [ %658, %655 ], [ -22, %323 ], [ -22, %328 ], [ -22, %332 ], [ -22, %337 ], [ -22, %344 ], [ -22, %352 ], [ -22, %348 ], [ -22, %382 ], [ -22, %390 ], [ -22, %392 ], [ -22, %394 ], [ -22, %398 ], [ -22, %402 ], [ -22, %408 ], [ -22, %412 ], [ -22, %416 ], [ -22, %420 ], [ -22, %424 ], [ -22, %428 ], [ -22, %432 ], [ -22, %437 ], [ -22, %442 ], [ -22, %447 ], [ -22, %452 ], [ -22, %455 ], [ -22, %467 ], [ -22, %471 ], [ -22, %475 ], [ -22, %479 ], [ -22, %484 ], [ -22, %495 ], [ -22, %499 ], [ -22, %505 ], [ -22, %542 ], [ -22, %589 ], [ -22, %636 ], [ -22, %627 ], [ -22, %646 ], [ -22, %641 ], [ -22, %651 ], [ -22, %734 ], [ -22, %731 ], [ -22, %313 ], [ 0, %729 ], [ -22, %659 ], [ -22, %666 ], [ -22, %670 ], [ -22, %674 ], [ -22, %684 ], [ -22, %682 ], [ -22, %686 ], [ -22, %691 ], [ -22, %694 ], [ -22, %698 ], [ -22, %702 ], [ %707, %706 ], [ %727, %724 ], [ -22, %719 ], [ -22, %714 ], [ -22, %709 ], [ -22, %622 ], [ -22, %617 ], [ -22, %612 ], [ -22, %607 ], [ -22, %632 ], [ -22, %318 ]
  ret i32 %740
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #12

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_vp9_lf_params(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 1
  %4 = icmp ult i8 %3, 4
  br i1 %4, label %5, label %44

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, 63
  br i1 %8, label %44, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 7
  br i1 %12, label %44, label %13

13:                                               ; preds = %9
  %14 = load i8, ptr %0, align 1
  %15 = add i8 %14, -64
  %16 = icmp ult i8 %15, -127
  br i1 %16, label %44, label %17

17:                                               ; preds = %13
  %18 = getelementptr [4 x i8], ptr %0, i32 0, i32 1
  %19 = load i8, ptr %18, align 1
  %20 = add i8 %19, -64
  %21 = icmp ult i8 %20, -127
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = getelementptr [4 x i8], ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 1
  %25 = add i8 %24, -64
  %26 = icmp ult i8 %25, -127
  br i1 %26, label %44, label %27

27:                                               ; preds = %22
  %28 = getelementptr [4 x i8], ptr %0, i32 0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = add i8 %29, -64
  %31 = icmp ult i8 %30, -127
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 1, i32 0
  %34 = load i8, ptr %33, align 1
  %35 = add i8 %34, -64
  %36 = icmp ult i8 %35, -127
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 1, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = add i8 %39, -64
  %41 = icmp ult i8 %40, -127
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.v4l2_vp9_loop_filter, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(7) %43, i8 0, i32 7, i1 false)
  br label %44

44:                                               ; preds = %42, %37, %32, %27, %22, %17, %13, %9, %5, %1
  %45 = phi i32 [ 0, %42 ], [ -22, %1 ], [ -22, %5 ], [ -22, %9 ], [ -22, %37 ], [ -22, %32 ], [ -22, %27 ], [ -22, %22 ], [ -22, %17 ], [ -22, %13 ]
  ret i32 %45
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @validate_vp9_seg_params(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 4
  %3 = load i8, ptr %2, align 2
  %4 = icmp ult i8 %3, 32
  br i1 %4, label %5, label %190

5:                                                ; preds = %1
  %6 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 0
  %7 = load i8, ptr %6, align 1
  %8 = icmp ult i8 %7, 16
  br i1 %8, label %9, label %190

9:                                                ; preds = %5
  %10 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp ult i8 %11, 16
  br i1 %12, label %13, label %190

13:                                               ; preds = %9
  %14 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp ult i8 %15, 16
  br i1 %16, label %17, label %190

17:                                               ; preds = %13
  %18 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = icmp ult i8 %19, 16
  br i1 %20, label %21, label %190

21:                                               ; preds = %17
  %22 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp ult i8 %23, 16
  br i1 %24, label %25, label %190

25:                                               ; preds = %21
  %26 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 5
  %27 = load i8, ptr %26, align 1
  %28 = icmp ult i8 %27, 16
  br i1 %28, label %29, label %190

29:                                               ; preds = %25
  %30 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 6
  %31 = load i8, ptr %30, align 1
  %32 = icmp ult i8 %31, 16
  br i1 %32, label %33, label %190

33:                                               ; preds = %29
  %34 = getelementptr %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 1, i32 7
  %35 = load i8, ptr %34, align 1
  %36 = icmp ult i8 %35, 16
  br i1 %36, label %37, label %190

37:                                               ; preds = %33
  %38 = load i16, ptr %0, align 2
  %39 = add i16 %38, -256
  %40 = icmp ult i16 %39, -511
  br i1 %40, label %190, label %41

41:                                               ; preds = %37
  %42 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = add i16 %43, -64
  %45 = icmp ult i16 %44, -127
  br i1 %45, label %190, label %46

46:                                               ; preds = %41
  %47 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 0, i32 2
  %48 = load i16, ptr %47, align 2
  %49 = add i16 %48, -4
  %50 = icmp ult i16 %49, -7
  br i1 %50, label %190, label %51

51:                                               ; preds = %46
  %52 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 0, i32 3
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %55, label %190

55:                                               ; preds = %51
  %56 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 1, i32 0
  %57 = load i16, ptr %56, align 2
  %58 = add i16 %57, -256
  %59 = icmp ult i16 %58, -511
  br i1 %59, label %190, label %60

60:                                               ; preds = %55
  %61 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 1, i32 1
  %62 = load i16, ptr %61, align 2
  %63 = add i16 %62, -64
  %64 = icmp ult i16 %63, -127
  br i1 %64, label %190, label %65

65:                                               ; preds = %60
  %66 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 1, i32 2
  %67 = load i16, ptr %66, align 2
  %68 = add i16 %67, -4
  %69 = icmp ult i16 %68, -7
  br i1 %69, label %190, label %70

70:                                               ; preds = %65
  %71 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 1, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %74, label %190

74:                                               ; preds = %70
  %75 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 2, i32 0
  %76 = load i16, ptr %75, align 2
  %77 = add i16 %76, -256
  %78 = icmp ult i16 %77, -511
  br i1 %78, label %190, label %79

79:                                               ; preds = %74
  %80 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 2, i32 1
  %81 = load i16, ptr %80, align 2
  %82 = add i16 %81, -64
  %83 = icmp ult i16 %82, -127
  br i1 %83, label %190, label %84

84:                                               ; preds = %79
  %85 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 2, i32 2
  %86 = load i16, ptr %85, align 2
  %87 = add i16 %86, -4
  %88 = icmp ult i16 %87, -7
  br i1 %88, label %190, label %89

89:                                               ; preds = %84
  %90 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 2, i32 3
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %190

93:                                               ; preds = %89
  %94 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 3, i32 0
  %95 = load i16, ptr %94, align 2
  %96 = add i16 %95, -256
  %97 = icmp ult i16 %96, -511
  br i1 %97, label %190, label %98

98:                                               ; preds = %93
  %99 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 3, i32 1
  %100 = load i16, ptr %99, align 2
  %101 = add i16 %100, -64
  %102 = icmp ult i16 %101, -127
  br i1 %102, label %190, label %103

103:                                              ; preds = %98
  %104 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 3, i32 2
  %105 = load i16, ptr %104, align 2
  %106 = add i16 %105, -4
  %107 = icmp ult i16 %106, -7
  br i1 %107, label %190, label %108

108:                                              ; preds = %103
  %109 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 3, i32 3
  %110 = load i16, ptr %109, align 2
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %190

112:                                              ; preds = %108
  %113 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 4, i32 0
  %114 = load i16, ptr %113, align 2
  %115 = add i16 %114, -256
  %116 = icmp ult i16 %115, -511
  br i1 %116, label %190, label %117

117:                                              ; preds = %112
  %118 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 4, i32 1
  %119 = load i16, ptr %118, align 2
  %120 = add i16 %119, -64
  %121 = icmp ult i16 %120, -127
  br i1 %121, label %190, label %122

122:                                              ; preds = %117
  %123 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 4, i32 2
  %124 = load i16, ptr %123, align 2
  %125 = add i16 %124, -4
  %126 = icmp ult i16 %125, -7
  br i1 %126, label %190, label %127

127:                                              ; preds = %122
  %128 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 4, i32 3
  %129 = load i16, ptr %128, align 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %190

131:                                              ; preds = %127
  %132 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 5, i32 0
  %133 = load i16, ptr %132, align 2
  %134 = add i16 %133, -256
  %135 = icmp ult i16 %134, -511
  br i1 %135, label %190, label %136

136:                                              ; preds = %131
  %137 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 5, i32 1
  %138 = load i16, ptr %137, align 2
  %139 = add i16 %138, -64
  %140 = icmp ult i16 %139, -127
  br i1 %140, label %190, label %141

141:                                              ; preds = %136
  %142 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 5, i32 2
  %143 = load i16, ptr %142, align 2
  %144 = add i16 %143, -4
  %145 = icmp ult i16 %144, -7
  br i1 %145, label %190, label %146

146:                                              ; preds = %141
  %147 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 5, i32 3
  %148 = load i16, ptr %147, align 2
  %149 = icmp eq i16 %148, 0
  br i1 %149, label %150, label %190

150:                                              ; preds = %146
  %151 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 6, i32 0
  %152 = load i16, ptr %151, align 2
  %153 = add i16 %152, -256
  %154 = icmp ult i16 %153, -511
  br i1 %154, label %190, label %155

155:                                              ; preds = %150
  %156 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 6, i32 1
  %157 = load i16, ptr %156, align 2
  %158 = add i16 %157, -64
  %159 = icmp ult i16 %158, -127
  br i1 %159, label %190, label %160

160:                                              ; preds = %155
  %161 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 6, i32 2
  %162 = load i16, ptr %161, align 2
  %163 = add i16 %162, -4
  %164 = icmp ult i16 %163, -7
  br i1 %164, label %190, label %165

165:                                              ; preds = %160
  %166 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 6, i32 3
  %167 = load i16, ptr %166, align 2
  %168 = icmp eq i16 %167, 0
  br i1 %168, label %169, label %190

169:                                              ; preds = %165
  %170 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 7, i32 0
  %171 = load i16, ptr %170, align 2
  %172 = add i16 %171, -256
  %173 = icmp ult i16 %172, -511
  br i1 %173, label %190, label %174

174:                                              ; preds = %169
  %175 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 7, i32 1
  %176 = load i16, ptr %175, align 2
  %177 = add i16 %176, -64
  %178 = icmp ult i16 %177, -127
  br i1 %178, label %190, label %179

179:                                              ; preds = %174
  %180 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 7, i32 2
  %181 = load i16, ptr %180, align 2
  %182 = add i16 %181, -4
  %183 = icmp ult i16 %182, -7
  br i1 %183, label %190, label %184

184:                                              ; preds = %179
  %185 = getelementptr [8 x [4 x i16]], ptr %0, i32 0, i32 7, i32 3
  %186 = load i16, ptr %185, align 2
  %187 = icmp eq i16 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.v4l2_vp9_segmentation, ptr %0, i32 0, i32 5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %189, i8 0, i32 5, i1 false)
  br label %190

190:                                              ; preds = %188, %184, %179, %174, %169, %165, %160, %155, %150, %146, %141, %136, %131, %127, %122, %117, %112, %108, %103, %98, %93, %89, %84, %79, %74, %70, %65, %60, %55, %51, %46, %41, %37, %33, %29, %25, %21, %17, %13, %9, %5, %1
  %191 = phi i32 [ 0, %188 ], [ -22, %1 ], [ -22, %33 ], [ -22, %29 ], [ -22, %25 ], [ -22, %21 ], [ -22, %17 ], [ -22, %13 ], [ -22, %9 ], [ -22, %5 ], [ -22, %184 ], [ -22, %179 ], [ -22, %174 ], [ -22, %169 ], [ -22, %165 ], [ -22, %160 ], [ -22, %155 ], [ -22, %150 ], [ -22, %146 ], [ -22, %141 ], [ -22, %136 ], [ -22, %131 ], [ -22, %127 ], [ -22, %122 ], [ -22, %117 ], [ -22, %112 ], [ -22, %108 ], [ -22, %103 ], [ -22, %98 ], [ -22, %93 ], [ -22, %89 ], [ -22, %84 ], [ -22, %79 ], [ -22, %74 ], [ -22, %70 ], [ -22, %65 ], [ -22, %60 ], [ -22, %55 ], [ -22, %51 ], [ -22, %46 ], [ -22, %41 ], [ -22, %37 ]
  ret i32 %191
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind readnone }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{!"branch_weights", i32 2002, i32 2000}
!13 = !{i64 2148246752, i64 2148247032, i64 2148247366, i64 2148247700}
