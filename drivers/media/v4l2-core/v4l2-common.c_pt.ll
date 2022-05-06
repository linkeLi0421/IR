; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-common.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_ctrl_query_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_ctrl_query_fill\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_ctrl_query_fill:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l_bound_align_image:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l_bound_align_image\22\09\09\09\09\09"
module asm "__kstrtabns_v4l_bound_align_image:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___v4l2_find_nearest_size:\09\09\09\09\09"
module asm "\09.asciz \09\22__v4l2_find_nearest_size\22\09\09\09\09\09"
module asm "__kstrtabns___v4l2_find_nearest_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_g_parm_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_g_parm_cap\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_g_parm_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_s_parm_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_s_parm_cap\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_s_parm_cap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_format_info\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_format_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_apply_frmsize_constraints:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_apply_frmsize_constraints\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_apply_frmsize_constraints:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fill_pixfmt_mp:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fill_pixfmt_mp\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fill_pixfmt_mp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_fill_pixfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_fill_pixfmt\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_fill_pixfmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_get_link_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_get_link_freq\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_get_link_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_format_info = type { i32, i8, i8, i8, [4 x i8], i8, i8, [4 x i8], [4 x i8] }
%struct.v4l2_queryctrl = type { i32, i32, [32 x i8], i32, i32, i32, i32, i32, [2 x i32] }
%struct.v4l2_subdev_frame_interval = type { i32, %struct.v4l2_fract, [9 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_streamparm = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.85, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.85 = type { i8 }
%struct.v4l2_pix_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.86, i32, i32 }
%union.anon.86 = type { i32 }
%struct.v4l2_querymenu = type <{ i32, i32, %union.anon.87, i32 }>
%union.anon.87 = type { i64, [24 x i8] }

@__kstrtab_v4l2_ctrl_query_fill = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_ctrl_query_fill = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_ctrl_query_fill = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_ctrl_query_fill to i32), ptr @__kstrtab_v4l2_ctrl_query_fill, ptr @__kstrtabns_v4l2_ctrl_query_fill }, section "___ksymtab+v4l2_ctrl_query_fill", align 4
@__kstrtab_v4l_bound_align_image = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l_bound_align_image = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l_bound_align_image = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l_bound_align_image to i32), ptr @__kstrtab_v4l_bound_align_image, ptr @__kstrtabns_v4l_bound_align_image }, section "___ksymtab_gpl+v4l_bound_align_image", align 4
@__kstrtab___v4l2_find_nearest_size = external dso_local constant [0 x i8], align 1
@__kstrtabns___v4l2_find_nearest_size = external dso_local constant [0 x i8], align 1
@__ksymtab___v4l2_find_nearest_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__v4l2_find_nearest_size to i32), ptr @__kstrtab___v4l2_find_nearest_size, ptr @__kstrtabns___v4l2_find_nearest_size }, section "___ksymtab_gpl+__v4l2_find_nearest_size", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__kstrtab_v4l2_g_parm_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_g_parm_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_g_parm_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_g_parm_cap to i32), ptr @__kstrtab_v4l2_g_parm_cap, ptr @__kstrtabns_v4l2_g_parm_cap }, section "___ksymtab_gpl+v4l2_g_parm_cap", align 4
@__kstrtab_v4l2_s_parm_cap = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_s_parm_cap = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_s_parm_cap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_s_parm_cap to i32), ptr @__kstrtab_v4l2_s_parm_cap, ptr @__kstrtabns_v4l2_s_parm_cap }, section "___ksymtab_gpl+v4l2_s_parm_cap", align 4
@v4l2_format_info.formats = internal constant [65 x %struct.v4l2_format_info] [%struct.v4l2_format_info { i32 861030210, i8 2, i8 1, i8 1, [4 x i8] c"\03\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 859981650, i8 2, i8 1, i8 1, [4 x i8] c"\03\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 861295432, i8 2, i8 1, i8 1, [4 x i8] c"\03\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 877807426, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875713112, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875714642, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 876758866, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875714626, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875709016, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 878072648, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875708738, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875708993, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875713089, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875708754, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1346520914, i8 2, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1329743698, i8 2, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1213351746, i8 2, i8 1, i8 1, [4 x i8] c"\04\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1448695129, i8 1, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1431918169, i8 1, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1498831189, i8 1, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1498765654, i8 1, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842094158, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825382478, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 909203022, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825644622, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875714126, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842290766, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 961959257, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 4, i8 4, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 961893977, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 4, i8 4, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1345401140, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 4, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842093913, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842094169, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1345466932, i8 1, i8 1, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1497715271, i8 1, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842093654, i8 1, i8 1, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842091865, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825380185, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 909200729, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825642329, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 875711833, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842288473, i8 1, i8 3, i8 3, [4 x i8] c"\01\01\01\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842091854, i8 1, i8 2, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825380174, i8 1, i8 2, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 2, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 909200718, i8 1, i8 2, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825642318, i8 1, i8 2, i8 2, [4 x i8] c"\01\02\00\00", i8 2, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 825770306, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1196573255, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1195528775, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 1111967570, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 808535874, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 808534599, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 808534338, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 808535890, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943800929, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943802209, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943810401, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943805025, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943800930, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943802210, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 808535106, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 943805026, i8 3, i8 1, i8 1, [4 x i8] c"\01\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842090306, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842089031, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842088770, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }, %struct.v4l2_format_info { i32 842090322, i8 3, i8 1, i8 1, [4 x i8] c"\02\00\00\00", i8 1, i8 1, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer }], align 4
@__kstrtab_v4l2_format_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_format_info = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_format_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_format_info to i32), ptr @__kstrtab_v4l2_format_info, ptr @__kstrtabns_v4l2_format_info }, section "___ksymtab+v4l2_format_info", align 4
@__kstrtab_v4l2_apply_frmsize_constraints = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_apply_frmsize_constraints = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_apply_frmsize_constraints = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_apply_frmsize_constraints to i32), ptr @__kstrtab_v4l2_apply_frmsize_constraints, ptr @__kstrtabns_v4l2_apply_frmsize_constraints }, section "___ksymtab_gpl+v4l2_apply_frmsize_constraints", align 4
@__kstrtab_v4l2_fill_pixfmt_mp = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fill_pixfmt_mp = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fill_pixfmt_mp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fill_pixfmt_mp to i32), ptr @__kstrtab_v4l2_fill_pixfmt_mp, ptr @__kstrtabns_v4l2_fill_pixfmt_mp }, section "___ksymtab_gpl+v4l2_fill_pixfmt_mp", align 4
@__kstrtab_v4l2_fill_pixfmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_fill_pixfmt = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_fill_pixfmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_fill_pixfmt to i32), ptr @__kstrtab_v4l2_fill_pixfmt, ptr @__kstrtabns_v4l2_fill_pixfmt }, section "___ksymtab_gpl+v4l2_fill_pixfmt", align 4
@.str = private unnamed_addr constant [77 x i8] c"\014%s: Link frequency estimated using pixel rate: result might be inaccurate\0A\00", align 1
@__func__.v4l2_get_link_freq = private unnamed_addr constant [19 x i8] c"v4l2_get_link_freq\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"\014%s: Consider implementing support for V4L2_CID_LINK_FREQ in the transmitter driver\0A\00", align 1
@__kstrtab_v4l2_get_link_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_get_link_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_get_link_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_get_link_freq to i32), ptr @__kstrtab_v4l2_get_link_freq, ptr @__kstrtabns_v4l2_get_link_freq }, section "___ksymtab_gpl+v4l2_get_link_freq", align 4
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab___v4l2_find_nearest_size, ptr @__ksymtab_v4l2_apply_frmsize_constraints, ptr @__ksymtab_v4l2_ctrl_query_fill, ptr @__ksymtab_v4l2_fill_pixfmt, ptr @__ksymtab_v4l2_fill_pixfmt_mp, ptr @__ksymtab_v4l2_format_info, ptr @__ksymtab_v4l2_g_parm_cap, ptr @__ksymtab_v4l2_get_link_freq, ptr @__ksymtab_v4l2_s_parm_cap, ptr @__ksymtab_v4l_bound_align_image], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_ctrl_query_fill(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca ptr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store ptr null, ptr %6, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %11 = sext i32 %1 to i64
  store i64 %11, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %12 = sext i32 %2 to i64
  store i64 %12, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #11
  %13 = sext i32 %3 to i64
  store i64 %13, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  %14 = sext i32 %4 to i64
  store i64 %14, ptr %10, align 8
  %15 = load i32, ptr %0, align 4
  %16 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 1
  %17 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 7
  call void @v4l2_ctrl_fill(i32 noundef %15, ptr noundef nonnull %6, ptr noundef %16, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef %17) #11
  %18 = load ptr, ptr %6, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %37, label %20

20:                                               ; preds = %5
  %21 = load i64, ptr %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 3
  store i32 %22, ptr %23, align 4
  %24 = load i64, ptr %8, align 8
  %25 = trunc i64 %24 to i32
  %26 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = load i64, ptr %9, align 8
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 5
  store i32 %28, ptr %29, align 4
  %30 = load i64, ptr %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 8
  %34 = getelementptr %struct.v4l2_queryctrl, ptr %0, i32 0, i32 8, i32 1
  store i32 0, ptr %34, align 4
  store i32 0, ptr %33, align 4
  %35 = getelementptr inbounds %struct.v4l2_queryctrl, ptr %0, i32 0, i32 2
  %36 = call i32 @strscpy(ptr noundef %35, ptr noundef nonnull %18, i32 noundef 32) #11
  br label %37

37:                                               ; preds = %20, %5
  %38 = phi i32 [ 0, %20 ], [ -22, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %38
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_fill(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l_bound_align_image(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #3 {
  %10 = load i32, ptr %0, align 4
  %11 = shl nsw i32 -1, %3
  %12 = xor i32 %11, -1
  %13 = add i32 %12, %1
  %14 = and i32 %13, %11
  %15 = tail call i32 @llvm.umax.i32(i32 %14, i32 %10) #11
  %16 = and i32 %11, %2
  %17 = tail call i32 @llvm.umin.i32(i32 %15, i32 %16) #11
  %18 = icmp eq i32 %3, 0
  %19 = add i32 %3, -1
  %20 = shl nuw i32 1, %19
  %21 = add i32 %17, %20
  %22 = and i32 %21, %11
  %23 = select i1 %18, i32 %17, i32 %22
  store i32 %23, ptr %0, align 4
  %24 = load i32, ptr %4, align 4
  %25 = shl nsw i32 -1, %7
  %26 = xor i32 %25, -1
  %27 = add i32 %26, %5
  %28 = and i32 %27, %25
  %29 = tail call i32 @llvm.umax.i32(i32 %28, i32 %24) #11
  %30 = and i32 %25, %6
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30) #11
  %32 = icmp eq i32 %7, 0
  %33 = add i32 %7, -1
  %34 = shl nuw i32 1, %33
  %35 = add i32 %31, %34
  %36 = and i32 %35, %25
  %37 = select i1 %32, i32 %31, i32 %36
  store i32 %37, ptr %4, align 4
  %38 = icmp eq i32 %8, 0
  br i1 %38, label %96, label %39

39:                                               ; preds = %9
  %40 = load i32, ptr %0, align 4
  %41 = tail call i32 @llvm.cttz.i32(i32 %40, i1 false) #11, !range !9
  %42 = tail call i32 @llvm.cttz.i32(i32 %37, i1 false) #11, !range !9
  %43 = add nuw nsw i32 %41, %42
  %44 = icmp ult i32 %43, %8
  br i1 %44, label %45, label %96

45:                                               ; preds = %39
  %46 = add i32 %1, -1
  %47 = xor i32 %46, %2
  %48 = tail call i32 @llvm.ctlz.i32(i32 %47, i1 false) #11, !range !9
  %49 = sub nsw i32 31, %48
  %50 = add i32 %5, -1
  %51 = xor i32 %50, %6
  %52 = tail call i32 @llvm.ctlz.i32(i32 %51, i1 false) #11, !range !9
  %53 = sub nsw i32 31, %52
  br label %54

54:                                               ; preds = %91, %45
  %55 = phi i32 [ %42, %45 ], [ %92, %91 ]
  %56 = phi i32 [ %41, %45 ], [ %93, %91 ]
  %57 = icmp ult i32 %55, %53
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = icmp ule i32 %56, %55
  %60 = icmp ult i32 %56, %49
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %78

62:                                               ; preds = %58, %54
  %63 = load i32, ptr %0, align 4
  %64 = add i32 %56, 1
  %65 = shl nsw i32 -1, %64
  %66 = xor i32 %65, -1
  %67 = add i32 %66, %1
  %68 = and i32 %67, %65
  %69 = tail call i32 @llvm.umax.i32(i32 %68, i32 %63) #11
  %70 = and i32 %65, %2
  %71 = tail call i32 @llvm.umin.i32(i32 %69, i32 %70) #11
  %72 = icmp eq i32 %64, 0
  %73 = shl nuw i32 1, %56
  %74 = add i32 %71, %73
  %75 = and i32 %74, %65
  %76 = select i1 %72, i32 %71, i32 %75
  store i32 %76, ptr %0, align 4
  %77 = tail call i32 @llvm.cttz.i32(i32 %76, i1 false) #11, !range !9
  br label %91

78:                                               ; preds = %58
  %79 = load i32, ptr %4, align 4
  %80 = shl i32 -2, %55
  %81 = xor i32 %80, -1
  %82 = add i32 %81, %5
  %83 = and i32 %82, %80
  %84 = tail call i32 @llvm.umax.i32(i32 %83, i32 %79) #11
  %85 = and i32 %80, %6
  %86 = tail call i32 @llvm.umin.i32(i32 %84, i32 %85) #11
  %87 = shl nuw i32 1, %55
  %88 = add i32 %86, %87
  %89 = and i32 %88, %80
  store i32 %89, ptr %4, align 4
  %90 = tail call i32 @llvm.cttz.i32(i32 %89, i1 false) #11, !range !9
  br label %91

91:                                               ; preds = %78, %62
  %92 = phi i32 [ %55, %62 ], [ %90, %78 ]
  %93 = phi i32 [ %77, %62 ], [ %56, %78 ]
  %94 = add i32 %93, %92
  %95 = icmp ult i32 %94, %8
  br i1 %95, label %54, label %96

96:                                               ; preds = %91, %39, %9
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @__v4l2_find_nearest_size(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #4 {
  %8 = icmp ne ptr %0, null
  %9 = icmp ne i32 %1, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %28, %7
  %12 = phi ptr [ %31, %28 ], [ %0, %7 ]
  %13 = phi i32 [ %29, %28 ], [ -1, %7 ]
  %14 = phi ptr [ %27, %28 ], [ null, %7 ]
  %15 = phi i32 [ %30, %28 ], [ 0, %7 ]
  %16 = getelementptr i8, ptr %12, i32 %3
  %17 = getelementptr i8, ptr %12, i32 %4
  %18 = load i32, ptr %16, align 4
  %19 = sub i32 %18, %5
  %20 = tail call i32 @llvm.abs.i32(i32 %19, i1 false)
  %21 = load i32, ptr %17, align 4
  %22 = sub i32 %21, %6
  %23 = tail call i32 @llvm.abs.i32(i32 %22, i1 false)
  %24 = add i32 %23, %20
  %25 = icmp ugt i32 %24, %13
  %26 = icmp eq i32 %24, 0
  %27 = select i1 %25, ptr %14, ptr %12
  br i1 %26, label %33, label %28

28:                                               ; preds = %11
  %29 = tail call i32 @llvm.umin.i32(i32 %24, i32 %13)
  %30 = add nuw i32 %15, 1
  %31 = getelementptr i8, ptr %12, i32 %2
  %32 = icmp eq i32 %30, %1
  br i1 %32, label %33, label %11

33:                                               ; preds = %28, %11, %7
  %34 = phi ptr [ null, %7 ], [ %27, %11 ], [ %27, %28 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_g_parm_cap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i32 48, i1 false)
  %5 = load i32, ptr %2, align 4
  switch i32 %5, label %52 [
    i32 1, label %6
    i32 9, label %6
  ]

6:                                                ; preds = %3, %3
  %7 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 16777216
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 2, ptr %12, align 4
  br label %13

13:                                               ; preds = %11, %6
  %14 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 12
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  store i32 4096, ptr %24, align 4
  br label %25

25:                                               ; preds = %23, %19, %13
  %26 = icmp eq ptr %1, null
  br i1 %26, label %52, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %30, i32 0, i32 12
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %37, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %36
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi ptr [ %34, %43 ], [ %41, %39 ]
  %46 = call i32 %45(ptr noundef nonnull %1, ptr noundef nonnull %4) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  %50 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %4, i32 0, i32 1
  %51 = load i64, ptr %50, align 4
  store i64 %51, ptr %49, align 4
  br label %52

52:                                               ; preds = %48, %44, %32, %27, %25, %3
  %53 = phi i32 [ -22, %3 ], [ 0, %48 ], [ %46, %44 ], [ -515, %27 ], [ -515, %32 ], [ -19, %25 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  ret i32 %53
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_s_parm_cap(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca %struct.v4l2_subdev_frame_interval, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #11
  %5 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  %8 = load i64, ptr %7, align 4
  store i64 %8, ptr %5, align 4
  %9 = load i32, ptr %2, align 4
  switch i32 %9, label %51 [
    i32 1, label %10
    i32 9, label %10
  ]

10:                                               ; preds = %3, %3
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(200) %6, i8 0, i32 200, i1 false)
  %11 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 4
  %12 = load i32, ptr %11, align 8
  %13 = lshr i32 %12, 23
  %14 = and i32 %13, 2
  %15 = getelementptr inbounds %struct.v4l2_streamparm, ptr %2, i32 0, i32 1, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %19, i32 0, i32 12
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 4096, ptr %6, align 4
  br label %26

26:                                               ; preds = %25, %21, %10
  %27 = icmp eq ptr %1, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %26
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %31, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %38, i32 0, i32 13
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %37
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi ptr [ %35, %44 ], [ %42, %40 ]
  %47 = call i32 %46(ptr noundef nonnull %1, ptr noundef nonnull %4) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, ptr %5, align 4
  store i64 %50, ptr %7, align 4
  br label %51

51:                                               ; preds = %49, %45, %33, %28, %26, %3
  %52 = phi i32 [ -22, %3 ], [ 0, %49 ], [ %47, %45 ], [ -515, %28 ], [ -515, %33 ], [ -19, %26 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #11
  ret i32 %52
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync)
define dso_local ptr @v4l2_format_info(i32 noundef %0) #6 {
  br label %5

2:                                                ; preds = %5
  %3 = add nuw nsw i32 %6, 1
  %4 = icmp eq i32 %3, 65
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %1
  %6 = phi i32 [ 0, %1 ], [ %3, %2 ]
  %7 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %7, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @v4l2_apply_frmsize_constraints(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef readonly %2) #7 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %35, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.v4l2_frmsize_stepwise, ptr %2, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_frmsize_stepwise, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @llvm.umax.i32(i32 %6, i32 %7) #11
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %9) #11
  %14 = icmp eq i32 %11, 0
  %15 = add i32 %13, -1
  %16 = add i32 %11, -1
  %17 = or i32 %15, %16
  %18 = add i32 %17, 1
  %19 = select i1 %14, i32 %13, i32 %18
  store i32 %19, ptr %0, align 4
  %20 = load i32, ptr %1, align 4
  %21 = getelementptr inbounds %struct.v4l2_frmsize_stepwise, ptr %2, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.v4l2_frmsize_stepwise, ptr %2, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.v4l2_frmsize_stepwise, ptr %2, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %20, i32 %22) #11
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %24) #11
  %29 = icmp eq i32 %26, 0
  %30 = add i32 %28, -1
  %31 = add i32 %26, -1
  %32 = or i32 %30, %31
  %33 = add i32 %32, 1
  %34 = select i1 %29, i32 %28, i32 %33
  store i32 %34, ptr %1, align 4
  br label %35

35:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_fill_pixfmt_mp(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8 {
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %135, label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ 0, %4 ], [ %6, %5 ]
  %10 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %135, label %15

15:                                               ; preds = %13
  store i32 %2, ptr %0, align 1
  %16 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 1
  store i32 %3, ptr %16, align 1
  %17 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 2
  store i32 %1, ptr %17, align 1
  %18 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 6
  store i8 %19, ptr %20, align 1
  %21 = and i32 %9, 536870911
  %22 = add nsw i32 %21, -45
  %23 = icmp ult i32 %22, -10
  br i1 %23, label %48, label %24

24:                                               ; preds = %15
  %25 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 3
  %26 = load i8, ptr %25, align 2
  %27 = add i32 %2, -1
  %28 = add i32 %3, -1
  %29 = call i8 @llvm.umax.i8(i8 %26, i8 1)
  %30 = zext i8 %29 to i32
  %31 = getelementptr %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5, i32 0
  %32 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4, i32 0
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul i32 %34, %2
  %36 = getelementptr %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i32 %35, ptr %36, align 1
  %37 = mul i32 %35, %3
  store i32 %37, ptr %31, align 1
  %38 = icmp ult i8 %26, 2
  br i1 %38, label %135, label %39

39:                                               ; preds = %24
  %40 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 6
  %41 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr %40, align 4
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %43, -1
  %47 = add nsw i32 %45, -1
  br label %104

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5
  %50 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = mul i32 %52, %2
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5, i32 0, i32 1
  store i32 %53, ptr %54, align 1
  %55 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 3
  %56 = load i8, ptr %55, align 2
  %57 = add i32 %2, -1
  %58 = add i32 %3, -1
  %59 = call i8 @llvm.umax.i8(i8 %56, i8 1)
  %60 = zext i8 %59 to i32
  %61 = mul i32 %52, %2
  %62 = mul i32 %61, %3
  store i32 %62, ptr %49, align 1
  %63 = icmp ult i8 %56, 2
  br i1 %63, label %135, label %64

64:                                               ; preds = %48
  %65 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 6
  %66 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 5
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i8, ptr %65, align 4
  %70 = zext i8 %69 to i32
  %71 = add nsw i32 %68, -1
  %72 = add nsw i32 %70, -1
  br label %73

73:                                               ; preds = %73, %64
  %74 = phi i32 [ %62, %64 ], [ %101, %73 ]
  %75 = phi i32 [ 1, %64 ], [ %102, %73 ]
  %76 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 7, i32 %75
  %77 = load i8, ptr %76, align 1
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, i8 1, i8 %77
  %80 = zext i8 %79 to i32
  %81 = add i32 %57, %80
  %82 = sub nsw i32 0, %80
  %83 = and i32 %81, %82
  %84 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 8, i32 %75
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, i8 1, i8 %85
  %88 = zext i8 %87 to i32
  %89 = add i32 %58, %88
  %90 = sub nsw i32 0, %88
  %91 = and i32 %89, %90
  %92 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4, i32 %75
  %93 = load i8, ptr %92, align 1
  %94 = zext i8 %93 to i32
  %95 = add i32 %71, %83
  %96 = udiv i32 %95, %68
  %97 = mul i32 %96, %94
  %98 = add i32 %72, %91
  %99 = udiv i32 %98, %70
  %100 = mul i32 %97, %99
  %101 = add i32 %74, %100
  store i32 %101, ptr %49, align 1
  %102 = add nuw nsw i32 %75, 1
  %103 = icmp eq i32 %102, %60
  br i1 %103, label %135, label %73, !llvm.loop !10

104:                                              ; preds = %104, %39
  %105 = phi i32 [ 1, %39 ], [ %133, %104 ]
  %106 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 7, i32 %105
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %108, i8 1, i8 %107
  %110 = zext i8 %109 to i32
  %111 = add i32 %27, %110
  %112 = sub nsw i32 0, %110
  %113 = and i32 %111, %112
  %114 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 8, i32 %105
  %115 = load i8, ptr %114, align 1
  %116 = icmp eq i8 %115, 0
  %117 = select i1 %116, i8 1, i8 %115
  %118 = zext i8 %117 to i32
  %119 = add i32 %28, %118
  %120 = sub nsw i32 0, %118
  %121 = and i32 %119, %120
  %122 = getelementptr %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5, i32 %105
  %123 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4, i32 %105
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add i32 %46, %113
  %127 = udiv i32 %126, %43
  %128 = mul i32 %127, %125
  %129 = getelementptr %struct.v4l2_pix_format_mplane, ptr %0, i32 0, i32 5, i32 %105, i32 1
  store i32 %128, ptr %129, align 1
  %130 = add i32 %47, %121
  %131 = udiv i32 %130, %45
  %132 = mul i32 %131, %128
  store i32 %132, ptr %122, align 1
  %133 = add nuw nsw i32 %105, 1
  %134 = icmp eq i32 %133, %30
  br i1 %134, label %135, label %104, !llvm.loop !12

135:                                              ; preds = %104, %73, %48, %24, %13, %5
  %136 = phi i32 [ -22, %13 ], [ 0, %48 ], [ 0, %24 ], [ 0, %73 ], [ 0, %104 ], [ -22, %5 ]
  ret i32 %136
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_fill_pixfmt(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #8 {
  br label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i32 %9, 1
  %7 = icmp eq i32 %6, 65
  br i1 %7, label %77, label %8

8:                                                ; preds = %5, %4
  %9 = phi i32 [ 0, %4 ], [ %6, %5 ]
  %10 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %5

13:                                               ; preds = %8
  %14 = icmp eq ptr %10, null
  br i1 %14, label %77, label %15

15:                                               ; preds = %13
  %16 = and i32 %9, 536870911
  %17 = add nsw i32 %16, -35
  %18 = icmp ult i32 %17, 10
  br i1 %18, label %77, label %19

19:                                               ; preds = %15
  store i32 %2, ptr %0, align 4
  %20 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 1
  store i32 %3, ptr %20, align 4
  %21 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 2
  store i32 %1, ptr %21, align 4
  %22 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = mul i32 %24, %2
  %26 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 4
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.v4l2_pix_format, ptr %0, i32 0, i32 5
  %28 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 3
  %29 = load i8, ptr %28, align 2
  %30 = add i32 %2, -1
  %31 = add i32 %3, -1
  %32 = call i8 @llvm.umax.i8(i8 %29, i8 1)
  %33 = zext i8 %32 to i32
  %34 = mul i32 %24, %2
  %35 = mul i32 %34, %3
  store i32 %35, ptr %27, align 4
  %36 = icmp ult i8 %29, 2
  br i1 %36, label %77, label %37

37:                                               ; preds = %19
  %38 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 6
  %39 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 5
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, ptr %38, align 4
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %41, -1
  %45 = add nsw i32 %43, -1
  br label %46

46:                                               ; preds = %46, %37
  %47 = phi i32 [ %35, %37 ], [ %74, %46 ]
  %48 = phi i32 [ 1, %37 ], [ %75, %46 ]
  %49 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 7, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i8 1, i8 %50
  %53 = zext i8 %52 to i32
  %54 = add i32 %30, %53
  %55 = sub nsw i32 0, %53
  %56 = and i32 %54, %55
  %57 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 8, i32 %48
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i8 1, i8 %58
  %61 = zext i8 %60 to i32
  %62 = add i32 %31, %61
  %63 = sub nsw i32 0, %61
  %64 = and i32 %62, %63
  %65 = getelementptr [65 x %struct.v4l2_format_info], ptr @v4l2_format_info.formats, i32 0, i32 %9, i32 4, i32 %48
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %44, %56
  %69 = udiv i32 %68, %41
  %70 = mul i32 %69, %67
  %71 = add i32 %45, %64
  %72 = udiv i32 %71, %43
  %73 = mul i32 %70, %72
  %74 = add i32 %47, %73
  store i32 %74, ptr %27, align 4
  %75 = add nuw nsw i32 %48, 1
  %76 = icmp eq i32 %75, %33
  br i1 %76, label %77, label %46, !llvm.loop !13

77:                                               ; preds = %46, %19, %15, %13, %5
  %78 = phi i32 [ -22, %13 ], [ -22, %15 ], [ 0, %19 ], [ 0, %46 ], [ -22, %5 ]
  ret i32 %78
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @v4l2_get_link_freq(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.v4l2_querymenu, align 4
  %5 = tail call ptr @v4l2_ctrl_find(ptr noundef %0, i32 noundef 10422529) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %4) #11
  %8 = getelementptr inbounds i8, ptr %4, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(44) %8, i8 0, i32 36, i1 false)
  store i32 10422529, ptr %4, align 4
  %9 = tail call i32 @v4l2_ctrl_g_ctrl(ptr noundef nonnull %5) #11
  %10 = getelementptr inbounds %struct.v4l2_querymenu, ptr %4, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = call i32 @v4l2_querymenu(ptr noundef %0, ptr noundef nonnull %4) #11
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.v4l2_querymenu, ptr %4, i32 0, i32 2
  %14 = load i64, ptr %13, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %4) #11
  br i1 %12, label %38, label %42

15:                                               ; preds = %3
  %16 = icmp ne i32 %1, 0
  %17 = icmp ne i32 %2, 0
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %42

19:                                               ; preds = %15
  %20 = tail call ptr @v4l2_ctrl_find(ptr noundef %0, i32 noundef 10422530) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %42, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef nonnull %20) #11
  %24 = zext i32 %1 to i64
  %25 = mul i64 %23, %24
  %26 = icmp ult i64 %25, 4294967296
  br i1 %26, label %27, label %31, !prof !14

27:                                               ; preds = %22
  %28 = trunc i64 %25 to i32
  %29 = udiv i32 %28, %2
  %30 = zext i32 %29 to i64
  br label %34

31:                                               ; preds = %22
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %2, i64 %25) #12, !srcloc !15
  %33 = extractvalue { i64, i64 } %32, 1
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.v4l2_get_link_freq) #13
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.v4l2_get_link_freq) #13
  br label %38

38:                                               ; preds = %34, %7
  %39 = phi i64 [ %14, %7 ], [ %35, %34 ]
  %40 = icmp sgt i64 %39, 0
  %41 = select i1 %40, i64 %39, i64 -22
  br label %42

42:                                               ; preds = %38, %19, %15, %7
  %43 = phi i64 [ %41, %38 ], [ -2, %7 ], [ -2, %15 ], [ -2, %19 ]
  ret i64 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_g_ctrl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_querymenu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @v4l2_ctrl_g_ctrl_int64(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

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
!8 = !{!"auto-init"}
!9 = !{i32 0, i32 33}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2147909200, i64 2147909480, i64 2147909814, i64 2147910148}
