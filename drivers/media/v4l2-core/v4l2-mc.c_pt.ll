; ModuleID = '/llk/IR/drivers/media/v4l2-core/v4l2-mc.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/v4l2-mc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_mc_create_media_graph:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_mc_create_media_graph\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_mc_create_media_graph:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l_enable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l_enable_media_source\22\09\09\09\09\09"
module asm "__kstrtabns_v4l_enable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l_disable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l_disable_media_source\22\09\09\09\09\09"
module asm "__kstrtabns_v4l_disable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l_vb2q_enable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l_vb2q_enable_media_source\22\09\09\09\09\09"
module asm "__kstrtabns_v4l_vb2q_enable_media_source:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_create_fwnode_links_to_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_create_fwnode_links_to_pad\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_create_fwnode_links_to_pad:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_create_fwnode_links:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_create_fwnode_links\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_create_fwnode_links:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_pipeline_pm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_pipeline_pm_get\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_pipeline_pm_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_pipeline_pm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_pipeline_pm_put\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_pipeline_pm_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_v4l2_pipeline_link_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22v4l2_pipeline_link_notify\22\09\09\09\09\09"
module asm "__kstrtabns_v4l2_pipeline_link_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.66, %union.anon.67, ptr, i32, i8 }
%union.anon.66 = type { ptr }
%union.anon.67 = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [28 x i8] c"Didn't find any I/O entity\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Didn't find a MEDIA_ENT_F_IO_V4L\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create a sensor link\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Decoder not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Couldn't get tuner and/or PLL pad(s): (%d, %d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Couldn't create tuner->PLL link)\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"get decoder and/or PLL pad(s): (%d, %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"couldn't link PLL to decoder\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"couldn't get tuner and/or decoder pad(s): (%d, %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [62 x i8] c"couldn't get tuner and/or decoder pad(s) for audio: (%d, %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"couldn't link tuner->audio PLL\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"couldn't get decoder output pad for V4L I/O\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"couldn't link decoder output to V4L I/O\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"couldn't get decoder output pad for SDR\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"couldn't link decoder output to SDR\0A\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"couldn't get decoder output pad for VBI\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"couldn't link decoder output to VBI\0A\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"couldn't get tuner analog pad sink\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"couldn't get decoder analog pad sink\0A\00", align 1
@__kstrtab_v4l2_mc_create_media_graph = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_mc_create_media_graph = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_mc_create_media_graph = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_mc_create_media_graph to i32), ptr @__kstrtab_v4l2_mc_create_media_graph, ptr @__kstrtabns_v4l2_mc_create_media_graph }, section "___ksymtab_gpl+v4l2_mc_create_media_graph", align 4
@__kstrtab_v4l_enable_media_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l_enable_media_source = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l_enable_media_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l_enable_media_source to i32), ptr @__kstrtab_v4l_enable_media_source, ptr @__kstrtabns_v4l_enable_media_source }, section "___ksymtab_gpl+v4l_enable_media_source", align 4
@__kstrtab_v4l_disable_media_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l_disable_media_source = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l_disable_media_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l_disable_media_source to i32), ptr @__kstrtab_v4l_disable_media_source, ptr @__kstrtabns_v4l_disable_media_source }, section "___ksymtab_gpl+v4l_disable_media_source", align 4
@__kstrtab_v4l_vb2q_enable_media_source = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l_vb2q_enable_media_source = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l_vb2q_enable_media_source = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l_vb2q_enable_media_source to i32), ptr @__kstrtab_v4l_vb2q_enable_media_source, ptr @__kstrtabns_v4l_vb2q_enable_media_source }, section "___ksymtab_gpl+v4l_vb2q_enable_media_source", align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"link %s:%d -> %s:%d failed with %d\0A\00", align 1
@__kstrtab_v4l2_create_fwnode_links_to_pad = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_create_fwnode_links_to_pad = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_create_fwnode_links_to_pad = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_create_fwnode_links_to_pad to i32), ptr @__kstrtab_v4l2_create_fwnode_links_to_pad, ptr @__kstrtabns_v4l2_create_fwnode_links_to_pad }, section "___ksymtab_gpl+v4l2_create_fwnode_links_to_pad", align 4
@__kstrtab_v4l2_create_fwnode_links = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_create_fwnode_links = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_create_fwnode_links = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_create_fwnode_links to i32), ptr @__kstrtab_v4l2_create_fwnode_links, ptr @__kstrtabns_v4l2_create_fwnode_links }, section "___ksymtab_gpl+v4l2_create_fwnode_links", align 4
@__kstrtab_v4l2_pipeline_pm_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_pipeline_pm_get = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_pipeline_pm_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_pipeline_pm_get to i32), ptr @__kstrtab_v4l2_pipeline_pm_get, ptr @__kstrtabns_v4l2_pipeline_pm_get }, section "___ksymtab_gpl+v4l2_pipeline_pm_get", align 4
@.str.20 = private unnamed_addr constant [34 x i8] c"drivers/media/v4l2-core/v4l2-mc.c\00", align 1
@__kstrtab_v4l2_pipeline_pm_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_pipeline_pm_put = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_pipeline_pm_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_pipeline_pm_put to i32), ptr @__kstrtab_v4l2_pipeline_pm_put, ptr @__kstrtabns_v4l2_pipeline_pm_put }, section "___ksymtab_gpl+v4l2_pipeline_pm_put", align 4
@__kstrtab_v4l2_pipeline_link_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_v4l2_pipeline_link_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_v4l2_pipeline_link_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @v4l2_pipeline_link_notify to i32), ptr @__kstrtab_v4l2_pipeline_link_notify, ptr @__kstrtabns_v4l2_pipeline_link_notify }, section "___ksymtab_gpl+v4l2_pipeline_link_notify", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_v4l2_create_fwnode_links, ptr @__ksymtab_v4l2_create_fwnode_links_to_pad, ptr @__ksymtab_v4l2_mc_create_media_graph, ptr @__ksymtab_v4l2_pipeline_link_notify, ptr @__ksymtab_v4l2_pipeline_pm_get, ptr @__ksymtab_v4l2_pipeline_pm_put, ptr @__ksymtab_v4l_disable_media_source, ptr @__ksymtab_v4l_enable_media_source, ptr @__ksymtab_v4l_vb2q_enable_media_source], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_mc_create_media_graph(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %201, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.media_device, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %45, label %7

7:                                                ; preds = %28, %3
  %8 = phi ptr [ %37, %28 ], [ %5, %3 ]
  %9 = phi ptr [ %36, %28 ], [ null, %3 ]
  %10 = phi ptr [ %35, %28 ], [ null, %3 ]
  %11 = phi ptr [ %34, %28 ], [ null, %3 ]
  %12 = phi ptr [ %33, %28 ], [ null, %3 ]
  %13 = phi ptr [ %32, %28 ], [ null, %3 ]
  %14 = phi ptr [ %31, %28 ], [ null, %3 ]
  %15 = phi ptr [ %30, %28 ], [ null, %3 ]
  %16 = phi i1 [ %29, %28 ], [ false, %3 ]
  %17 = getelementptr i8, ptr %8, i32 -8
  %18 = getelementptr i8, ptr %8, i32 16
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %28 [
    i32 8193, label %20
    i32 8194, label %21
    i32 131077, label %22
    i32 131076, label %23
    i32 65537, label %24
    i32 4098, label %25
    i32 4099, label %26
    i32 131073, label %27
  ]

20:                                               ; preds = %7
  br label %28

21:                                               ; preds = %7
  br label %28

22:                                               ; preds = %7
  br label %28

23:                                               ; preds = %7
  br label %28

24:                                               ; preds = %7
  br label %28

25:                                               ; preds = %7
  br label %28

26:                                               ; preds = %7
  br label %28

27:                                               ; preds = %7
  br label %28

28:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %7
  %29 = phi i1 [ %16, %7 ], [ true, %27 ], [ %16, %26 ], [ %16, %25 ], [ %16, %24 ], [ %16, %23 ], [ %16, %22 ], [ %16, %21 ], [ %16, %20 ]
  %30 = phi ptr [ %15, %7 ], [ %15, %27 ], [ %17, %26 ], [ %15, %25 ], [ %15, %24 ], [ %15, %23 ], [ %15, %22 ], [ %15, %21 ], [ %15, %20 ]
  %31 = phi ptr [ %14, %7 ], [ %14, %27 ], [ %14, %26 ], [ %17, %25 ], [ %14, %24 ], [ %14, %23 ], [ %14, %22 ], [ %14, %21 ], [ %14, %20 ]
  %32 = phi ptr [ %13, %7 ], [ %13, %27 ], [ %13, %26 ], [ %13, %25 ], [ %17, %24 ], [ %13, %23 ], [ %13, %22 ], [ %13, %21 ], [ %13, %20 ]
  %33 = phi ptr [ %12, %7 ], [ %12, %27 ], [ %12, %26 ], [ %12, %25 ], [ %12, %24 ], [ %17, %23 ], [ %12, %22 ], [ %12, %21 ], [ %12, %20 ]
  %34 = phi ptr [ %11, %7 ], [ %11, %27 ], [ %11, %26 ], [ %11, %25 ], [ %11, %24 ], [ %11, %23 ], [ %17, %22 ], [ %11, %21 ], [ %11, %20 ]
  %35 = phi ptr [ %10, %7 ], [ %10, %27 ], [ %10, %26 ], [ %10, %25 ], [ %10, %24 ], [ %10, %23 ], [ %10, %22 ], [ %17, %21 ], [ %10, %20 ]
  %36 = phi ptr [ %9, %7 ], [ %9, %27 ], [ %9, %26 ], [ %9, %25 ], [ %9, %24 ], [ %9, %23 ], [ %9, %22 ], [ %9, %21 ], [ %17, %20 ]
  %37 = load ptr, ptr %8, align 4
  %38 = icmp eq ptr %37, %4
  br i1 %38, label %39, label %7

39:                                               ; preds = %28
  %40 = icmp ne ptr %32, null
  %41 = icmp ne ptr %31, null
  %42 = select i1 %40, i1 true, i1 %41
  %43 = icmp ne ptr %30, null
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %47, label %45

45:                                               ; preds = %39, %3
  %46 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str) #3
  br label %201

47:                                               ; preds = %39
  br i1 %29, label %48, label %68

48:                                               ; preds = %47
  br i1 %40, label %49, label %50

49:                                               ; preds = %48
  br i1 %6, label %66, label %52

50:                                               ; preds = %48
  %51 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.1) #3
  br label %201

52:                                               ; preds = %63, %49
  %53 = phi ptr [ %64, %63 ], [ %5, %49 ]
  %54 = getelementptr i8, ptr %53, i32 16
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 131073
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = getelementptr i8, ptr %53, i32 -8
  %59 = tail call i32 @media_create_pad_link(ptr noundef %58, i16 noundef zeroext 0, ptr noundef nonnull %32, i16 noundef zeroext 0, i32 noundef 1) #4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %62, ptr noundef nonnull @.str.2) #3
  br label %201

63:                                               ; preds = %57, %52
  %64 = load ptr, ptr %53, align 4
  %65 = icmp eq ptr %64, %4
  br i1 %65, label %66, label %52

66:                                               ; preds = %63, %49
  %67 = icmp eq ptr %33, null
  br i1 %67, label %201, label %72

68:                                               ; preds = %47
  %69 = icmp eq ptr %33, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  %71 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.3) #3
  br label %201

72:                                               ; preds = %68, %66
  %73 = icmp eq ptr %34, null
  br i1 %73, label %135, label %74

74:                                               ; preds = %72
  %75 = icmp eq ptr %36, null
  %76 = tail call i32 @media_get_pad_index(ptr noundef nonnull %34, i1 noundef zeroext false, i32 noundef 1) #4
  br i1 %75, label %106, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @media_get_pad_index(ptr noundef nonnull %36, i1 noundef zeroext true, i32 noundef 1) #4
  %79 = icmp slt i32 %76, 0
  %80 = icmp slt i32 %78, 0
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.4, i32 noundef %76, i32 noundef %78) #3
  br label %201

84:                                               ; preds = %77
  %85 = trunc i32 %76 to i16
  %86 = trunc i32 %78 to i16
  %87 = tail call i32 @media_create_pad_link(ptr noundef nonnull %34, i16 noundef zeroext %85, ptr noundef nonnull %36, i16 noundef zeroext %86, i32 noundef 1) #4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %90, ptr noundef nonnull @.str.5) #3
  br label %201

91:                                               ; preds = %84
  %92 = tail call i32 @media_get_pad_index(ptr noundef nonnull %36, i1 noundef zeroext false, i32 noundef 1) #4
  %93 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext true, i32 noundef 1) #4
  %94 = icmp slt i32 %92, 0
  %95 = icmp slt i32 %93, 0
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.6, i32 noundef %92, i32 noundef %93) #3
  br label %201

99:                                               ; preds = %91
  %100 = trunc i32 %92 to i16
  %101 = trunc i32 %93 to i16
  %102 = tail call i32 @media_create_pad_link(ptr noundef nonnull %36, i16 noundef zeroext %100, ptr noundef nonnull %33, i16 noundef zeroext %101, i32 noundef 1) #4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %99
  %105 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %105, ptr noundef nonnull @.str.7) #3
  br label %201

106:                                              ; preds = %74
  %107 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext true, i32 noundef 1) #4
  %108 = icmp slt i32 %76, 0
  %109 = icmp slt i32 %107, 0
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.8, i32 noundef %76, i32 noundef %107) #3
  br label %201

113:                                              ; preds = %106
  %114 = trunc i32 %76 to i16
  %115 = trunc i32 %107 to i16
  %116 = tail call i32 @media_create_pad_link(ptr noundef nonnull %34, i16 noundef zeroext %114, ptr noundef nonnull %33, i16 noundef zeroext %115, i32 noundef 1) #4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %201

118:                                              ; preds = %113, %99
  %119 = icmp eq ptr %35, null
  br i1 %119, label %135, label %120

120:                                              ; preds = %118
  %121 = tail call i32 @media_get_pad_index(ptr noundef nonnull %34, i1 noundef zeroext false, i32 noundef 3) #4
  %122 = tail call i32 @media_get_pad_index(ptr noundef nonnull %35, i1 noundef zeroext true, i32 noundef 3) #4
  %123 = icmp slt i32 %121, 0
  %124 = icmp slt i32 %122, 0
  %125 = select i1 %123, i1 true, i1 %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.9, i32 noundef %121, i32 noundef %122) #3
  br label %201

128:                                              ; preds = %120
  %129 = trunc i32 %121 to i16
  %130 = trunc i32 %122 to i16
  %131 = tail call i32 @media_create_pad_link(ptr noundef nonnull %34, i16 noundef zeroext %129, ptr noundef nonnull %35, i16 noundef zeroext %130, i32 noundef 1) #4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %134, ptr noundef nonnull @.str.10) #3
  br label %201

135:                                              ; preds = %128, %118, %72
  br i1 %40, label %136, label %147

136:                                              ; preds = %135
  %137 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext false, i32 noundef 2) #4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %140, ptr noundef nonnull @.str.11) #3
  br label %201

141:                                              ; preds = %136
  %142 = trunc i32 %137 to i16
  %143 = tail call i32 @media_create_pad_link(ptr noundef nonnull %33, i16 noundef zeroext %142, ptr noundef nonnull %32, i16 noundef zeroext 0, i32 noundef 1) #4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %146, ptr noundef nonnull @.str.12) #3
  br label %201

147:                                              ; preds = %141, %135
  br i1 %43, label %148, label %159

148:                                              ; preds = %147
  %149 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext false, i32 noundef 2) #4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.13) #3
  br label %201

153:                                              ; preds = %148
  %154 = trunc i32 %149 to i16
  %155 = tail call i32 @media_create_pad_link(ptr noundef nonnull %33, i16 noundef zeroext %154, ptr noundef nonnull %30, i16 noundef zeroext 0, i32 noundef 1) #4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %159, label %157

157:                                              ; preds = %153
  %158 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %158, ptr noundef nonnull @.str.14) #3
  br label %201

159:                                              ; preds = %153, %147
  br i1 %41, label %160, label %171

160:                                              ; preds = %159
  %161 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext false, i32 noundef 2) #4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %164, ptr noundef nonnull @.str.15) #3
  br label %201

165:                                              ; preds = %160
  %166 = trunc i32 %161 to i16
  %167 = tail call i32 @media_create_pad_link(ptr noundef nonnull %33, i16 noundef zeroext %166, ptr noundef nonnull %31, i16 noundef zeroext 0, i32 noundef 1) #4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %170, ptr noundef nonnull @.str.16) #3
  br label %201

171:                                              ; preds = %165, %159
  %172 = load ptr, ptr %4, align 4
  %173 = icmp eq ptr %172, %4
  br i1 %173, label %201, label %174

174:                                              ; preds = %197, %171
  %175 = phi ptr [ %199, %197 ], [ %172, %171 ]
  %176 = phi i32 [ %198, %197 ], [ 1, %171 ]
  %177 = getelementptr i8, ptr %175, i32 -8
  %178 = getelementptr i8, ptr %175, i32 16
  %179 = load i32, ptr %178, align 4
  switch i32 %179, label %197 [
    i32 196609, label %180
    i32 196610, label %186
    i32 196611, label %186
  ]

180:                                              ; preds = %174
  br i1 %73, label %197, label %181

181:                                              ; preds = %180
  %182 = tail call i32 @media_get_pad_index(ptr noundef nonnull %34, i1 noundef zeroext true, i32 noundef 1) #4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %185, ptr noundef nonnull @.str.17) #3
  br label %201

186:                                              ; preds = %174, %174
  %187 = tail call i32 @media_get_pad_index(ptr noundef nonnull %33, i1 noundef zeroext true, i32 noundef 1) #4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %190, ptr noundef nonnull @.str.18) #3
  br label %201

191:                                              ; preds = %186, %181
  %192 = phi i32 [ %182, %181 ], [ %187, %186 ]
  %193 = phi ptr [ %34, %181 ], [ %33, %186 ]
  %194 = trunc i32 %192 to i16
  %195 = tail call i32 @media_create_pad_link(ptr noundef %177, i16 noundef zeroext 0, ptr noundef nonnull %193, i16 noundef zeroext %194, i32 noundef %176) #4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %191, %180, %174
  %198 = phi i32 [ %176, %174 ], [ %176, %180 ], [ 0, %191 ]
  %199 = load ptr, ptr %175, align 4
  %200 = icmp eq ptr %199, %4
  br i1 %200, label %201, label %174

201:                                              ; preds = %197, %191, %189, %184, %171, %169, %163, %157, %151, %145, %139, %133, %126, %113, %111, %104, %97, %89, %82, %70, %66, %61, %50, %45, %1
  %202 = phi i32 [ %59, %61 ], [ -22, %82 ], [ %87, %89 ], [ -22, %97 ], [ %102, %104 ], [ -22, %126 ], [ %131, %133 ], [ -22, %139 ], [ %143, %145 ], [ -22, %151 ], [ %155, %157 ], [ -22, %163 ], [ %167, %169 ], [ -22, %189 ], [ -22, %184 ], [ -22, %111 ], [ -22, %70 ], [ -22, %50 ], [ -22, %45 ], [ 0, %1 ], [ 0, %66 ], [ %116, %113 ], [ 0, %171 ], [ %195, %191 ], [ 0, %197 ]
  ret i32 %202
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_get_pad_index(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l_enable_media_source(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 19
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.video_device, ptr %0, i32 0, i32 2
  %11 = tail call i32 %7(ptr noundef %0, ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 0, i32 -16
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ 0, %4 ], [ %13, %9 ]
  tail call void @mutex_unlock(ptr noundef %5) #4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ 0, %1 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l_disable_media_source(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %5) #4
  %6 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void %7(ptr noundef %0) #4
  br label %10

10:                                               ; preds = %9, %4
  tail call void @mutex_unlock(ptr noundef %5) #4
  br label %11

11:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l_vb2q_enable_media_source(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vb2_queue, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.media_device, ptr %10, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %13) #4
  %14 = getelementptr inbounds %struct.media_device, ptr %10, i32 0, i32 19
  %15 = load ptr, ptr %14, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 2
  %19 = tail call i32 %15(ptr noundef nonnull %7, ptr noundef %18) #4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 -16
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i32 [ 0, %12 ], [ %21, %17 ]
  tail call void @mutex_unlock(ptr noundef %13) #4
  br label %24

24:                                               ; preds = %22, %9, %5, %1
  %25 = phi i32 [ 0, %5 ], [ 0, %1 ], [ %23, %22 ], [ 0, %9 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %61, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %61

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 14
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr @dev_fwnode(ptr noundef %18) #4
  %20 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %19, ptr noundef null) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %61, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.media_pad, ptr %1, i32 0, i32 2
  %24 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 9
  br label %25

25:                                               ; preds = %56, %22
  %26 = phi ptr [ %20, %22 ], [ %59, %56 ]
  %27 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef %0, ptr noundef nonnull %26, i32 noundef 2) #4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %25
  %30 = tail call ptr @fwnode_graph_get_remote_endpoint(ptr noundef nonnull %26) #4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %56, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @media_entity_get_fwnode_pad(ptr noundef nonnull %10, ptr noundef nonnull %30, i32 noundef 1) #4
  tail call void @fwnode_handle_put(ptr noundef nonnull %30) #4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr %23, align 4
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load ptr, ptr %24, align 4
  %41 = getelementptr %struct.media_pad, ptr %40, i32 %27
  %42 = tail call ptr @media_entity_find_link(ptr noundef %41, ptr noundef %1) #4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = trunc i32 %27 to i16
  %46 = trunc i32 %33 to i16
  %47 = tail call i32 @media_create_pad_link(ptr noundef %0, i16 noundef zeroext %45, ptr noundef nonnull %10, i16 noundef zeroext %46, i32 noundef %2) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 14
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.media_entity, ptr %10, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.19, ptr noundef %53, i32 noundef %27, ptr noundef %55, i32 noundef %33, i32 noundef %47) #3
  tail call void @fwnode_handle_put(ptr noundef nonnull %26) #4
  br label %61

56:                                               ; preds = %44, %39, %35, %32, %29, %25
  %57 = load ptr, ptr %17, align 4
  %58 = tail call ptr @dev_fwnode(ptr noundef %57) #4
  %59 = tail call ptr @fwnode_graph_get_next_endpoint(ptr noundef %58, ptr noundef nonnull %26) #4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %25

61:                                               ; preds = %56, %49, %16, %12, %8, %3
  %62 = phi i32 [ -22, %12 ], [ -22, %3 ], [ %47, %49 ], [ -22, %8 ], [ 0, %16 ], [ 0, %56 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_get_fwnode_pad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_entity_find_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_create_fwnode_links(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 5
  %4 = load i16, ptr %3, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.media_entity, ptr %1, i32 0, i32 9
  br label %8

8:                                                ; preds = %22, %6
  %9 = phi i16 [ %4, %6 ], [ %23, %22 ]
  %10 = phi i32 [ 0, %6 ], [ %24, %22 ]
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr %struct.media_pad, ptr %11, i32 %10, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr %struct.media_pad, ptr %11, i32 %10
  %18 = tail call i32 @v4l2_create_fwnode_links_to_pad(ptr noundef %0, ptr noundef %17, i32 noundef 0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i16, ptr %3, align 4
  br label %22

22:                                               ; preds = %20, %8
  %23 = phi i16 [ %21, %20 ], [ %9, %8 ]
  %24 = add nuw nsw i32 %10, 1
  %25 = zext i16 %23 to i32
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %8, label %27

27:                                               ; preds = %22, %16, %2
  %28 = phi i32 [ 0, %2 ], [ %18, %16 ], [ 0, %22 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_pipeline_pm_get(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 531, i32 noundef 9, ptr noundef null) #4
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 17
  %11 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %0, i32 noundef 1, ptr noundef %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, -1
  store i32 %15, ptr %4, align 4
  br label %16

16:                                               ; preds = %13, %9
  tail call void @mutex_unlock(ptr noundef %3) #4
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @v4l2_pipeline_pm_put(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 16
  tail call void @mutex_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 13
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  store i32 %6, ptr %4, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 531, i32 noundef 9, ptr noundef null) #4
  br label %9

9:                                                ; preds = %8, %1
  %10 = getelementptr inbounds %struct.media_device, ptr %2, i32 0, i32 17
  %11 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %0, i32 noundef -1, ptr noundef %10) #4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = add i32 %14, 1
  store i32 %15, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %3) #4
  br label %18

16:                                               ; preds = %9
  tail call void @mutex_unlock(ptr noundef %3) #4
  %17 = icmp eq i32 %11, 0
  br i1 %17, label %19, label %18, !prof !9

18:                                               ; preds = %16, %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 552, i32 noundef 9, ptr noundef null) #4
  br label %19

19:                                               ; preds = %18, %16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @v4l2_pipeline_link_notify(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.media_device, ptr %4, i32 0, i32 17
  %6 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.media_pad, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.media_link, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.media_pad, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @media_graph_walk_start(ptr noundef %5, ptr noundef %9) #4
  %14 = tail call ptr @media_graph_walk_next(ptr noundef %5) #4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %26, %3
  %17 = phi ptr [ %28, %26 ], [ %14, %3 ]
  %18 = phi i32 [ %27, %26 ], [ 0, %3 ]
  %19 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.media_entity, ptr %17, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %18
  br label %26

26:                                               ; preds = %22, %16
  %27 = phi i32 [ %25, %22 ], [ %18, %16 ]
  %28 = tail call ptr @media_graph_walk_next(ptr noundef %5) #4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %16

30:                                               ; preds = %26, %3
  %31 = phi i32 [ 0, %3 ], [ %27, %26 ]
  tail call void @media_graph_walk_start(ptr noundef %5, ptr noundef %13) #4
  %32 = tail call ptr @media_graph_walk_next(ptr noundef %5) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %48, label %34

34:                                               ; preds = %44, %30
  %35 = phi ptr [ %46, %44 ], [ %32, %30 ]
  %36 = phi i32 [ %45, %44 ], [ 0, %30 ]
  %37 = getelementptr inbounds %struct.media_entity, ptr %35, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.media_entity, ptr %35, i32 0, i32 13
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, %36
  br label %44

44:                                               ; preds = %40, %34
  %45 = phi i32 [ %43, %40 ], [ %36, %34 ]
  %46 = tail call ptr @media_graph_walk_next(ptr noundef %5) #4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %34

48:                                               ; preds = %44, %30
  %49 = phi i32 [ 0, %30 ], [ %45, %44 ]
  %50 = icmp eq i32 %2, 1
  %51 = and i32 %1, 1
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = sub i32 0, %49
  %56 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %9, i32 noundef %55, ptr noundef %5)
  br label %66

57:                                               ; preds = %48
  %58 = icmp ne i32 %2, 0
  %59 = or i1 %58, %52
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %9, i32 noundef %49, ptr noundef %5)
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %13, i32 noundef %31, ptr noundef %5)
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63, %54
  %67 = phi i32 [ %31, %54 ], [ %49, %63 ]
  %68 = phi ptr [ %13, %54 ], [ %9, %63 ]
  %69 = phi i32 [ 0, %54 ], [ %64, %63 ]
  %70 = sub i32 0, %67
  %71 = tail call fastcc i32 @pipeline_pm_power(ptr noundef %68, i32 noundef %70, ptr noundef %5)
  br label %72

72:                                               ; preds = %66, %63, %60, %57
  %73 = phi i32 [ %61, %60 ], [ 0, %63 ], [ 0, %57 ], [ %69, %66 ]
  ret i32 %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pipeline_pm_power(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %37, label %5

5:                                                ; preds = %3
  tail call void @media_graph_walk_start(ptr noundef %2, ptr noundef %0) #4
  br label %6

6:                                                ; preds = %15, %5
  %7 = tail call ptr @media_graph_walk_next(ptr noundef %2) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %37, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.media_entity, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call fastcc i32 @pipeline_pm_power_one(ptr noundef nonnull %7, i32 noundef %1)
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %6, label %18

18:                                               ; preds = %15
  tail call void @media_graph_walk_start(ptr noundef %2, ptr noundef %0) #4
  %19 = tail call ptr @media_graph_walk_next(ptr noundef %2) #4
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %19, %7
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = sub i32 0, %1
  br label %25

25:                                               ; preds = %32, %23
  %26 = phi ptr [ %19, %23 ], [ %33, %32 ]
  %27 = getelementptr inbounds %struct.media_entity, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = tail call fastcc i32 @pipeline_pm_power_one(ptr noundef nonnull %26, i32 noundef %24)
  br label %32

32:                                               ; preds = %30, %25
  %33 = tail call ptr @media_graph_walk_next(ptr noundef %2) #4
  %34 = icmp ne ptr %33, null
  %35 = icmp ne ptr %33, %7
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %25, label %37

37:                                               ; preds = %32, %18, %6, %3
  %38 = phi i32 [ 0, %3 ], [ %16, %18 ], [ %16, %32 ], [ 0, %6 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_graph_walk_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_graph_walk_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pipeline_pm_power_one(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %10, label %8

8:                                                ; preds = %4, %2
  %9 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 13
  br label %39

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.media_entity, ptr %0, i32 0, i32 13
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = icmp sgt i32 %1, 0
  %15 = and i1 %14, %13
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %19, i32 0, i32 8
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %26, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi ptr [ %23, %32 ], [ %30, %28 ]
  %35 = tail call i32 %34(ptr noundef nonnull %0, i32 noundef 1) #4
  %36 = icmp slt i32 %35, 0
  %37 = icmp ne i32 %35, -515
  %38 = and i1 %36, %37
  br i1 %38, label %74, label %39

39:                                               ; preds = %33, %21, %16, %10, %8
  %40 = phi i1 [ false, %8 ], [ true, %33 ], [ true, %10 ], [ true, %21 ], [ true, %16 ]
  %41 = phi ptr [ %9, %8 ], [ %11, %33 ], [ %11, %10 ], [ %11, %21 ], [ %11, %16 ]
  %42 = phi ptr [ null, %8 ], [ %0, %33 ], [ %0, %10 ], [ %0, %21 ], [ %0, %16 ]
  %43 = load i32, ptr %41, align 4
  %44 = add i32 %43, %1
  store i32 %44, ptr %41, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48, !prof !8

46:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 475, i32 noundef 9, ptr noundef null) #4
  %47 = load i32, ptr %41, align 4
  br label %48

48:                                               ; preds = %46, %39
  %49 = phi i32 [ %47, %46 ], [ %44, %39 ]
  %50 = icmp eq i32 %49, 0
  %51 = icmp slt i32 %1, 0
  %52 = and i1 %51, %50
  %53 = and i1 %40, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %74, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %57, i32 0, i32 8
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %74, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %64, i32 0, i32 8
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %66
  %72 = phi ptr [ %61, %70 ], [ %68, %66 ]
  %73 = tail call i32 %72(ptr noundef nonnull %42, i32 noundef 0) #4
  br label %74

74:                                               ; preds = %71, %59, %54, %48, %33
  %75 = phi i32 [ %35, %33 ], [ 0, %59 ], [ 0, %54 ], [ 0, %48 ], [ 0, %71 ]
  ret i32 %75
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
