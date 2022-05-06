; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_drm.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_drm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_init:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_init\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_setup_lif:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_setup_lif\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_setup_lif:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_atomic_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_atomic_begin\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_atomic_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_atomic_update:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_atomic_update\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_atomic_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_atomic_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_atomic_flush\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_atomic_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_map_sg\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_map_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsp1_du_unmap_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22vsp1_du_unmap_sg\22\09\09\09\09\09"
module asm "__kstrtabns_vsp1_du_unmap_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.80, i16, i16, i16, [10 x i16] }
%union.anon.80 = type { i16 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.71], %struct.media_entity_enum, i32 }
%struct.anon.71 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_drm_pipeline = type { %struct.vsp1_pipeline, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.vsp1_du_crc_config, ptr, ptr }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.vsp1_du_crc_config = type { i32, i32 }
%struct.vsp1_drm = type { [2 x %struct.vsp1_drm_pipeline], %struct.mutex, [5 x %struct.anon.88] }
%struct.anon.88 = type { %struct.v4l2_rect, %struct.v4l2_rect, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.86, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.85, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.85 = type { i8 }
%struct.anon.86 = type { %struct.spinlock, %struct.anon.87, i32, i32, i8 }
%struct.anon.87 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_brx = type { %struct.vsp1_entity, i32, %struct.v4l2_ctrl_handler, [5 x %struct.anon.84], i32 }
%struct.anon.84 = type { ptr }
%struct.vsp1_du_lif_config = type { i32, i32, i8, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.vsp1_route = type { i32, i32, i32, [5 x i32], i32 }
%struct.vsp1_du_atomic_config = type { i32, i32, [3 x i32], %struct.v4l2_rect, %struct.v4l2_rect, i32, i32 }
%struct.vsp1_du_atomic_pipe_config = type { %struct.vsp1_du_crc_config, %struct.vsp1_du_writeback_config }
%struct.vsp1_du_writeback_config = type { i32, i32, [3 x i32] }
%struct.sg_table = type { ptr, i32, i32 }

@__kstrtab_vsp1_du_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_init = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_init to i32), ptr @__kstrtab_vsp1_du_init, ptr @__kstrtabns_vsp1_du_init }, section "___ksymtab_gpl+vsp1_du_init", align 4
@.str = private unnamed_addr constant [27 x i8] c"DRM pipeline stop timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"drivers/media/platform/vsp1/vsp1_drm.c\00", align 1
@__kstrtab_vsp1_du_setup_lif = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_setup_lif = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_setup_lif = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_setup_lif to i32), ptr @__kstrtab_vsp1_du_setup_lif, ptr @__kstrtabns_vsp1_du_setup_lif }, section "___ksymtab_gpl+vsp1_du_setup_lif", align 4
@__kstrtab_vsp1_du_atomic_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_atomic_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_atomic_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_atomic_begin to i32), ptr @__kstrtab_vsp1_du_atomic_begin, ptr @__kstrtabns_vsp1_du_atomic_begin }, section "___ksymtab_gpl+vsp1_du_atomic_begin", align 4
@__kstrtab_vsp1_du_atomic_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_atomic_update = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_atomic_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_atomic_update to i32), ptr @__kstrtab_vsp1_du_atomic_update, ptr @__kstrtabns_vsp1_du_atomic_update }, section "___ksymtab_gpl+vsp1_du_atomic_update", align 4
@__kstrtab_vsp1_du_atomic_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_atomic_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_atomic_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_atomic_flush to i32), ptr @__kstrtab_vsp1_du_atomic_flush, ptr @__kstrtabns_vsp1_du_atomic_flush }, section "___ksymtab_gpl+vsp1_du_atomic_flush", align 4
@__kstrtab_vsp1_du_map_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_map_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_map_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_map_sg to i32), ptr @__kstrtab_vsp1_du_map_sg, ptr @__kstrtabns_vsp1_du_map_sg }, section "___ksymtab_gpl+vsp1_du_map_sg", align 4
@__kstrtab_vsp1_du_unmap_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsp1_du_unmap_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_vsp1_du_unmap_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsp1_du_unmap_sg to i32), ptr @__kstrtab_vsp1_du_unmap_sg, ptr @__kstrtabns_vsp1_du_unmap_sg }, section "___ksymtab_gpl+vsp1_du_unmap_sg", align 4
@vsp1_drm_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&vsp1->drm->lock\00", align 1
@vsp1_drm_init.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"&drm_pipe->wait_queue\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"%s: failed to setup %s source\0A\00", align 1
@__func__.vsp1_du_pipeline_setup_inputs = private unnamed_addr constant [30 x i8] c"vsp1_du_pipeline_setup_inputs\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"BRU\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"BRS\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%s: failed to setup RPF.%u\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: failed to setup UIF after %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"DRM pipeline %u reconfiguration timeout\0A\00", align 1
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_vsp1_du_atomic_begin, ptr @__ksymtab_vsp1_du_atomic_flush, ptr @__ksymtab_vsp1_du_atomic_update, ptr @__ksymtab_vsp1_du_init, ptr @__ksymtab_vsp1_du_map_sg, ptr @__ksymtab_vsp1_du_setup_lif, ptr @__ksymtab_vsp1_du_unmap_sg], section "llvm.metadata"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @vsp1_du_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i32 -517, i32 0
  ret i32 %5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_du_setup_lif(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) #2 {
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_device_info, ptr %8, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %12, label %262

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 25
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1
  %16 = icmp eq ptr %2, null
  br i1 %16, label %17, label %132

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.vsp1_drm, ptr %14, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %18) #8
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 13
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @vsp1_pipeline_stop(ptr noundef %15) #8
  %22 = icmp eq i32 %21, -110
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load ptr, ptr %6, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str) #9
  br label %25

25:                                               ; preds = %23, %17
  %26 = getelementptr %struct.vsp1_pipeline, ptr %15, i32 0, i32 11, i32 0
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.vsp1_entity, ptr %27, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !8

33:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 684, i32 noundef 9, ptr noundef null) #8
  br label %34

34:                                               ; preds = %33, %29
  store ptr null, ptr %30, align 4
  %35 = getelementptr inbounds %struct.vsp1_entity, ptr %27, i32 0, i32 7
  %36 = getelementptr inbounds %struct.vsp1_entity, ptr %27, i32 0, i32 7, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = load ptr, ptr %35, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %37, ptr %39, align 4
  store volatile ptr %38, ptr %37, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %36, align 4
  store ptr null, ptr %26, align 4
  %40 = getelementptr inbounds %struct.vsp1_rwpf, ptr %27, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr %struct.vsp1_brx, ptr %20, i32 0, i32 3, i32 %41
  store ptr null, ptr %42, align 4
  br label %43

43:                                               ; preds = %34, %25
  %44 = getelementptr %struct.vsp1_pipeline, ptr %15, i32 0, i32 11, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.vsp1_entity, ptr %45, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %47
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 684, i32 noundef 9, ptr noundef null) #8
  br label %52

52:                                               ; preds = %51, %47
  store ptr null, ptr %48, align 4
  %53 = getelementptr inbounds %struct.vsp1_entity, ptr %45, i32 0, i32 7
  %54 = getelementptr inbounds %struct.vsp1_entity, ptr %45, i32 0, i32 7, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  store ptr %55, ptr %57, align 4
  store volatile ptr %56, ptr %55, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %53, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %54, align 4
  store ptr null, ptr %44, align 4
  %58 = getelementptr inbounds %struct.vsp1_rwpf, ptr %45, i32 0, i32 7
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr %struct.vsp1_brx, ptr %20, i32 0, i32 3, i32 %59
  store ptr null, ptr %60, align 4
  br label %61

61:                                               ; preds = %52, %43
  %62 = getelementptr %struct.vsp1_pipeline, ptr %15, i32 0, i32 11, i32 2
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.vsp1_entity, ptr %63, i32 0, i32 5
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !8

69:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 684, i32 noundef 9, ptr noundef null) #8
  br label %70

70:                                               ; preds = %69, %65
  store ptr null, ptr %66, align 4
  %71 = getelementptr inbounds %struct.vsp1_entity, ptr %63, i32 0, i32 7
  %72 = getelementptr inbounds %struct.vsp1_entity, ptr %63, i32 0, i32 7, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load ptr, ptr %71, align 4
  %75 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %73, ptr %75, align 4
  store volatile ptr %74, ptr %73, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %71, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %72, align 4
  store ptr null, ptr %62, align 4
  %76 = getelementptr inbounds %struct.vsp1_rwpf, ptr %63, i32 0, i32 7
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.vsp1_brx, ptr %20, i32 0, i32 3, i32 %77
  store ptr null, ptr %78, align 4
  br label %79

79:                                               ; preds = %70, %61
  %80 = getelementptr %struct.vsp1_pipeline, ptr %15, i32 0, i32 11, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %97, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.vsp1_entity, ptr %81, i32 0, i32 5
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !8

87:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 684, i32 noundef 9, ptr noundef null) #8
  br label %88

88:                                               ; preds = %87, %83
  store ptr null, ptr %84, align 4
  %89 = getelementptr inbounds %struct.vsp1_entity, ptr %81, i32 0, i32 7
  %90 = getelementptr inbounds %struct.vsp1_entity, ptr %81, i32 0, i32 7, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %89, align 4
  %93 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %91, ptr %93, align 4
  store volatile ptr %92, ptr %91, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %89, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %90, align 4
  store ptr null, ptr %80, align 4
  %94 = getelementptr inbounds %struct.vsp1_rwpf, ptr %81, i32 0, i32 7
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr %struct.vsp1_brx, ptr %20, i32 0, i32 3, i32 %95
  store ptr null, ptr %96, align 4
  br label %97

97:                                               ; preds = %88, %79
  %98 = getelementptr %struct.vsp1_pipeline, ptr %15, i32 0, i32 11, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.vsp1_entity, ptr %99, i32 0, i32 5
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106, !prof !8

105:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 684, i32 noundef 9, ptr noundef null) #8
  br label %106

106:                                              ; preds = %105, %101
  store ptr null, ptr %102, align 4
  %107 = getelementptr inbounds %struct.vsp1_entity, ptr %99, i32 0, i32 7
  %108 = getelementptr inbounds %struct.vsp1_entity, ptr %99, i32 0, i32 7, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = load ptr, ptr %107, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %110, i32 0, i32 1
  store ptr %109, ptr %111, align 4
  store volatile ptr %110, ptr %109, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %107, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %108, align 4
  store ptr null, ptr %98, align 4
  %112 = getelementptr inbounds %struct.vsp1_rwpf, ptr %99, i32 0, i32 7
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr %struct.vsp1_brx, ptr %20, i32 0, i32 3, i32 %113
  store ptr null, ptr %114, align 4
  br label %115

115:                                              ; preds = %106, %97
  %116 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1, i32 7
  store ptr null, ptr %116, align 4
  %117 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 10
  store i32 0, ptr %117, align 4
  %118 = load ptr, ptr %19, align 4
  %119 = getelementptr inbounds %struct.vsp1_entity, ptr %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.vsp1_entity, ptr %118, i32 0, i32 7, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %119, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %119, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %120, align 4
  %124 = load ptr, ptr %19, align 4
  %125 = getelementptr inbounds %struct.vsp1_entity, ptr %124, i32 0, i32 5
  store ptr null, ptr %125, align 4
  store ptr null, ptr %19, align 4
  %126 = load ptr, ptr %13, align 4
  %127 = getelementptr inbounds %struct.vsp1_drm, ptr %126, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %127) #8
  %128 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 12
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.vsp1_rwpf, ptr %129, i32 0, i32 14
  %131 = load ptr, ptr %130, align 4
  tail call void @vsp1_dlm_reset(ptr noundef %131) #8
  tail call void @vsp1_device_put(ptr noundef %6) #8
  br label %262

132:                                              ; preds = %12
  %133 = load i32, ptr %2, align 4
  %134 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1, i32 1
  store i32 %133, ptr %134, align 4
  %135 = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %2, i32 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1, i32 2
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %2, i32 0, i32 2
  %139 = load i8, ptr %138, align 4, !range !9
  %140 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 22
  store i8 %139, ptr %140, align 1
  %141 = load ptr, ptr %13, align 4
  %142 = getelementptr inbounds %struct.vsp1_drm, ptr %141, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %142) #8
  %143 = tail call fastcc i32 @vsp1_du_pipeline_setup_inputs(ptr noundef %6, ptr noundef %15)
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %254, label %145

145:                                              ; preds = %132
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #8
  %146 = getelementptr inbounds i8, ptr %4, i32 24
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %146, i8 0, i32 64, i1 false) #8
  store i32 1, ptr %4, align 4
  %147 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 1
  store i32 0, ptr %147, align 4
  %148 = load i32, ptr %134, align 4
  %149 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2
  store i32 %148, ptr %149, align 4
  %150 = load i32, ptr %137, align 4
  %151 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 1
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 2
  store i32 4109, ptr %152, align 4
  %153 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 2, i32 3
  store i32 1, ptr %153, align 4
  %154 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 12
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.vsp1_entity, ptr %155, i32 0, i32 13
  %157 = getelementptr inbounds %struct.vsp1_entity, ptr %155, i32 0, i32 13, i32 6
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %158, i32 0, i32 7
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %234, label %162

162:                                              ; preds = %145
  %163 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %160, i32 0, i32 5
  %164 = load ptr, ptr %163, align 4
  %165 = icmp eq ptr %164, null
  br i1 %165, label %234, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %173, label %169

169:                                              ; preds = %166
  %170 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %167, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %174

173:                                              ; preds = %169, %166
  br label %174

174:                                              ; preds = %173, %169
  %175 = phi ptr [ %164, %173 ], [ %171, %169 ]
  %176 = call i32 %175(ptr noundef nonnull %156, ptr noundef null, ptr noundef nonnull %4) #8
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %234, label %178

178:                                              ; preds = %174
  store i32 1, ptr %147, align 4
  %179 = load ptr, ptr %154, align 4
  %180 = getelementptr inbounds %struct.vsp1_entity, ptr %179, i32 0, i32 13
  %181 = getelementptr inbounds %struct.vsp1_entity, ptr %179, i32 0, i32 13, i32 6
  %182 = load ptr, ptr %181, align 4
  %183 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %182, i32 0, i32 7
  %184 = load ptr, ptr %183, align 4
  %185 = icmp eq ptr %184, null
  br i1 %185, label %234, label %186

186:                                              ; preds = %178
  %187 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %184, i32 0, i32 4
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %234, label %190

190:                                              ; preds = %186
  br i1 %168, label %195, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %167, i32 0, i32 4
  %193 = load ptr, ptr %192, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %190
  br label %196

196:                                              ; preds = %195, %191
  %197 = phi ptr [ %188, %195 ], [ %193, %191 ]
  %198 = call i32 %197(ptr noundef nonnull %180, ptr noundef null, ptr noundef nonnull %4) #8
  %199 = icmp slt i32 %198, 0
  br i1 %199, label %234, label %200

200:                                              ; preds = %196
  store i32 0, ptr %147, align 4
  %201 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 16
  %202 = load ptr, ptr %201, align 4
  %203 = getelementptr inbounds %struct.vsp1_entity, ptr %202, i32 0, i32 13
  %204 = getelementptr inbounds %struct.vsp1_entity, ptr %202, i32 0, i32 13, i32 6
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %205, i32 0, i32 7
  %207 = load ptr, ptr %206, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %234, label %209

209:                                              ; preds = %200
  %210 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %207, i32 0, i32 5
  %211 = load ptr, ptr %210, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %234, label %213

213:                                              ; preds = %209
  br i1 %168, label %218, label %214

214:                                              ; preds = %213
  %215 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %167, i32 0, i32 5
  %216 = load ptr, ptr %215, align 4
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %214, %213
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi ptr [ %211, %218 ], [ %216, %214 ]
  %221 = call i32 %220(ptr noundef nonnull %203, ptr noundef null, ptr noundef nonnull %4) #8
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %219
  %224 = load i32, ptr %149, align 4
  %225 = load i32, ptr %134, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i32, ptr %151, align 4
  %229 = load i32, ptr %137, align 4
  %230 = icmp eq i32 %228, %229
  %231 = load i32, ptr %152, align 4
  %232 = icmp eq i32 %231, 4109
  %233 = select i1 %230, i1 %232, i1 false
  br i1 %233, label %236, label %234

234:                                              ; preds = %227, %223, %219, %209, %200, %196, %186, %178, %174, %162, %145
  %235 = phi i32 [ -515, %209 ], [ -515, %200 ], [ -515, %186 ], [ -515, %178 ], [ -515, %162 ], [ -515, %145 ], [ -32, %227 ], [ -32, %223 ], [ %221, %219 ], [ %198, %196 ], [ %176, %174 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  br label %254

236:                                              ; preds = %227
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  %237 = call i32 @vsp1_device_get(ptr noundef %6) #8
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %254, label %239

239:                                              ; preds = %236
  %240 = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %2, i32 0, i32 3
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1, i32 7
  store ptr %241, ptr %242, align 4
  %243 = getelementptr inbounds %struct.vsp1_du_lif_config, ptr %2, i32 0, i32 4
  %244 = load ptr, ptr %243, align 4
  %245 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %14, i32 0, i32 %1, i32 8
  store ptr %244, ptr %245, align 4
  %246 = mul i32 %1, 60
  %247 = add i32 %246, 124
  %248 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 3
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr i8, ptr %249, i32 %247
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 0) #8, !srcloc !11
  %251 = add i32 %246, 120
  %252 = load ptr, ptr %248, align 4
  %253 = getelementptr i8, ptr %252, i32 %251
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %253, i32 0) #8, !srcloc !11
  call fastcc void @vsp1_du_pipeline_configure(ptr noundef %15)
  br label %254

254:                                              ; preds = %239, %236, %234, %132
  %255 = phi i32 [ %143, %132 ], [ %237, %236 ], [ %237, %239 ], [ %235, %234 ]
  %256 = load ptr, ptr %13, align 4
  %257 = getelementptr inbounds %struct.vsp1_drm, ptr %256, i32 0, i32 1
  call void @mutex_unlock(ptr noundef %257) #8
  %258 = icmp slt i32 %255, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %254
  %260 = getelementptr inbounds %struct.vsp1_pipeline, ptr %15, i32 0, i32 1
  %261 = call i32 @_raw_spin_lock_irqsave(ptr noundef %260) #8
  call void @vsp1_pipeline_run(ptr noundef %15) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %260, i32 noundef %261) #8
  br label %262

262:                                              ; preds = %259, %254, %115, %3
  %263 = phi i32 [ 0, %259 ], [ 0, %115 ], [ -22, %3 ], [ %255, %254 ]
  ret i32 %263
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_pipeline_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dlm_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @vsp1_du_pipeline_setup_inputs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.v4l2_subdev_format, align 4
  %4 = alloca %struct.v4l2_subdev_format, align 4
  %5 = alloca %struct.v4l2_subdev_selection, align 4
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca %struct.v4l2_subdev_format, align 4
  %8 = alloca %struct.wait_queue_entry, align 4
  %9 = alloca [5 x ptr], align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %9, i8 0, i32 20, i1 false)
  %10 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 10
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.vsp1_device_info, ptr %12, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #8
  %17 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %17, i8 0, i32 84, i1 false) #8
  store i32 1, ptr %7, align 4
  br label %70

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 25
  br label %20

20:                                               ; preds = %55, %18
  %21 = phi ptr [ %12, %18 ], [ %56, %55 ]
  %22 = phi i32 [ 0, %18 ], [ %57, %55 ]
  %23 = phi i32 [ 0, %18 ], [ %58, %55 ]
  %24 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 15, i32 %23
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.vsp1_pipeline, ptr %1, i32 0, i32 11, i32 %23
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29

29:                                               ; preds = %20
  %30 = add i32 %22, 1
  store i32 %30, ptr %10, align 4
  %31 = icmp eq i32 %22, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr inbounds %struct.vsp1_entity, ptr %25, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.vsp1_drm, ptr %33, i32 0, i32 2, i32 %35, i32 2
  %37 = load i32, ptr %36, align 4
  br label %38

38:                                               ; preds = %48, %32
  %39 = phi i32 [ %22, %32 ], [ %40, %48 ]
  %40 = add i32 %39, -1
  %41 = getelementptr [5 x ptr], ptr %9, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.vsp1_entity, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr %struct.vsp1_drm, ptr %33, i32 0, i32 2, i32 %44, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, %37
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = getelementptr [5 x ptr], ptr %9, i32 0, i32 %39
  store ptr %42, ptr %49, align 4
  %50 = icmp eq i32 %40, 0
  br i1 %50, label %51, label %38

51:                                               ; preds = %48, %38, %29
  %52 = phi i32 [ 0, %29 ], [ 0, %48 ], [ %39, %38 ]
  %53 = getelementptr [5 x ptr], ptr %9, i32 0, i32 %52
  store ptr %25, ptr %53, align 4
  %54 = load ptr, ptr %11, align 4
  br label %55

55:                                               ; preds = %51, %20
  %56 = phi ptr [ %21, %20 ], [ %54, %51 ]
  %57 = phi i32 [ %22, %20 ], [ %30, %51 ]
  %58 = add nuw i32 %23, 1
  %59 = getelementptr inbounds %struct.vsp1_device_info, ptr %56, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %20, label %62

62:                                               ; preds = %55
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %7) #8
  %63 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %63, i8 0, i32 84, i1 false) #8
  store i32 1, ptr %7, align 4
  %64 = icmp ugt i32 %57, 2
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 7
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %69 = load ptr, ptr %68, align 4
  br label %93

70:                                               ; preds = %62, %16
  %71 = phi ptr [ %12, %16 ], [ %56, %62 ]
  %72 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 3
  %77 = load i8, ptr %76, align 4, !range !9
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %168, label %79

79:                                               ; preds = %75, %70
  %80 = getelementptr inbounds %struct.vsp1_device_info, ptr %71, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.vsp1_entity, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %84, %79
  %91 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 6
  %92 = load ptr, ptr %91, align 8
  br label %93

93:                                               ; preds = %90, %84, %65
  %94 = phi ptr [ %69, %65 ], [ %73, %90 ], [ %73, %84 ]
  %95 = phi ptr [ %67, %65 ], [ %92, %90 ], [ %86, %84 ]
  %96 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %97 = icmp eq ptr %95, %94
  br i1 %97, label %168, label %98

98:                                               ; preds = %93
  %99 = icmp eq ptr %94, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.vsp1_entity, ptr %94, i32 0, i32 7
  %102 = getelementptr inbounds %struct.vsp1_entity, ptr %94, i32 0, i32 7, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %101, align 4
  %105 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %103, ptr %105, align 4
  store volatile ptr %104, ptr %103, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %101, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %102, align 4
  %106 = load ptr, ptr %96, align 4
  %107 = getelementptr inbounds %struct.vsp1_entity, ptr %106, i32 0, i32 11
  store ptr null, ptr %107, align 4
  %108 = load ptr, ptr %96, align 4
  %109 = getelementptr inbounds %struct.vsp1_entity, ptr %108, i32 0, i32 5
  store ptr null, ptr %109, align 4
  store ptr null, ptr %96, align 4
  br label %110

110:                                              ; preds = %100, %98
  %111 = getelementptr inbounds %struct.vsp1_entity, ptr %95, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %144, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %112, i32 0, i32 3
  store i8 1, ptr %115, align 4
  %116 = tail call fastcc i32 @vsp1_du_pipeline_setup_inputs(ptr noundef %0, ptr noundef nonnull %112) #8
  tail call fastcc void @vsp1_du_pipeline_configure(ptr noundef nonnull %112) #8
  %117 = load i8, ptr %115, align 4, !range !9
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %8, i8 0, i32 20, i1 false) #8, !annotation !12
  call void @init_wait_entry(ptr noundef nonnull %8, i32 noundef 0) #8
  %120 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %112, i32 0, i32 4
  %121 = call i32 @prepare_to_wait_event(ptr noundef %120, ptr noundef nonnull %8, i32 noundef 2) #8
  %122 = load i8, ptr %115, align 4, !range !9
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  call void @finish_wait(ptr noundef %120, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #8
  br label %144

125:                                              ; preds = %125, %119
  %126 = phi i32 [ %134, %125 ], [ 50, %119 ]
  %127 = call i32 @schedule_timeout(i32 noundef %126) #8
  %128 = call i32 @prepare_to_wait_event(ptr noundef %120, ptr noundef nonnull %8, i32 noundef 2) #8
  %129 = load i8, ptr %115, align 4, !range !9
  %130 = icmp ne i8 %129, 0
  %131 = xor i1 %130, true
  %132 = icmp ne i32 %127, 0
  %133 = select i1 %130, i1 true, i1 %132
  %134 = select i1 %133, i32 %127, i32 1
  %135 = icmp eq i32 %134, 0
  %136 = select i1 %131, i1 true, i1 %135
  br i1 %136, label %137, label %125

137:                                              ; preds = %125
  call void @finish_wait(ptr noundef %120, ptr noundef nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #8
  br i1 %135, label %138, label %144

138:                                              ; preds = %137
  %139 = load ptr, ptr %0, align 8
  %140 = getelementptr inbounds %struct.vsp1_pipeline, ptr %112, i32 0, i32 16
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr inbounds %struct.vsp1_entity, ptr %141, i32 0, i32 3
  %143 = load i32, ptr %142, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %139, ptr noundef nonnull @.str.10, i32 noundef %143) #9
  br label %144

144:                                              ; preds = %138, %137, %124, %114, %110
  br i1 %99, label %155, label %145

145:                                              ; preds = %144
  %146 = getelementptr inbounds %struct.vsp1_entity, ptr %94, i32 0, i32 5
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.vsp1_entity, ptr %94, i32 0, i32 7
  %151 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19
  %152 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19, i32 1
  %153 = load ptr, ptr %152, align 4
  store ptr %150, ptr %152, align 4
  store ptr %151, ptr %150, align 4
  %154 = getelementptr inbounds %struct.vsp1_entity, ptr %94, i32 0, i32 7, i32 1
  store ptr %153, ptr %154, align 4
  store volatile ptr %150, ptr %153, align 4
  br label %155

155:                                              ; preds = %149, %145, %144
  store ptr %95, ptr %96, align 4
  store ptr %1, ptr %111, align 4
  %156 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %96, align 4
  %159 = getelementptr inbounds %struct.vsp1_entity, ptr %158, i32 0, i32 11
  store ptr %157, ptr %159, align 4
  %160 = load ptr, ptr %96, align 4
  %161 = getelementptr inbounds %struct.vsp1_entity, ptr %160, i32 0, i32 12
  store i32 0, ptr %161, align 4
  %162 = load ptr, ptr %96, align 4
  %163 = getelementptr inbounds %struct.vsp1_entity, ptr %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19
  %165 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19, i32 1
  %166 = load ptr, ptr %165, align 4
  store ptr %163, ptr %165, align 4
  store ptr %164, ptr %163, align 4
  %167 = getelementptr inbounds %struct.vsp1_entity, ptr %162, i32 0, i32 7, i32 1
  store ptr %166, ptr %167, align 4
  store volatile ptr %163, ptr %166, align 4
  br label %168

168:                                              ; preds = %155, %93, %75
  %169 = phi ptr [ %96, %155 ], [ %96, %93 ], [ %72, %75 ]
  %170 = phi ptr [ %95, %155 ], [ %94, %93 ], [ %73, %75 ]
  %171 = getelementptr inbounds %struct.vsp1_entity, ptr %170, i32 0, i32 9
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 1
  store i32 %172, ptr %173, align 4
  %174 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 1
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2
  store i32 %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 1
  store i32 %178, ptr %179, align 4
  %180 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %7, i32 0, i32 2, i32 3
  store i32 1, ptr %180, align 4
  %181 = getelementptr inbounds %struct.vsp1_entity, ptr %170, i32 0, i32 13
  %182 = getelementptr inbounds %struct.vsp1_entity, ptr %170, i32 0, i32 13, i32 6
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %183, i32 0, i32 7
  %185 = load ptr, ptr %184, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %211, label %187

187:                                              ; preds = %168
  %188 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %185, i32 0, i32 5
  %189 = load ptr, ptr %188, align 4
  %190 = icmp eq ptr %189, null
  br i1 %190, label %211, label %191

191:                                              ; preds = %187
  %192 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %193 = icmp eq ptr %192, null
  br i1 %193, label %198, label %194

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 5
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %191
  br label %199

199:                                              ; preds = %198, %194
  %200 = phi ptr [ %189, %198 ], [ %196, %194 ]
  %201 = call i32 %200(ptr noundef nonnull %181, ptr noundef null, ptr noundef nonnull %7) #8
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load i32, ptr %176, align 4
  %205 = load i32, ptr %174, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i32, ptr %179, align 4
  %209 = load i32, ptr %177, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %219, label %211

211:                                              ; preds = %207, %203, %199, %187, %168
  %212 = phi i32 [ -32, %207 ], [ -32, %203 ], [ %201, %199 ], [ -515, %187 ], [ -515, %168 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #8
  %213 = load ptr, ptr %0, align 8
  %214 = load ptr, ptr %169, align 4
  %215 = getelementptr inbounds %struct.vsp1_entity, ptr %214, i32 0, i32 2
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 1
  %218 = select i1 %217, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.vsp1_du_pipeline_setup_inputs, ptr noundef nonnull %218) #9
  br label %574

219:                                              ; preds = %207
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %7) #8
  %220 = load ptr, ptr %169, align 4
  %221 = getelementptr inbounds %struct.vsp1_entity, ptr %220, i32 0, i32 9
  %222 = load i32, ptr %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %474, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19
  %226 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19, i32 1
  %227 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 6
  %228 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 6, i32 1
  %229 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 5
  %230 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 25
  %231 = getelementptr inbounds i8, ptr %6, i32 24
  %232 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 1
  %233 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2
  %234 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 1
  %235 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 2
  %236 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %6, i32 0, i32 2, i32 3
  %237 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 5
  %238 = getelementptr inbounds i8, ptr %5, i32 12
  %239 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 1
  %240 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 2
  %241 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %5, i32 0, i32 4
  %242 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 7
  %243 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 4
  %244 = getelementptr inbounds i8, ptr %4, i32 8
  %245 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %4, i32 0, i32 1
  br label %246

246:                                              ; preds = %467, %224
  %247 = phi i32 [ 0, %224 ], [ %469, %467 ]
  %248 = phi i1 [ false, %224 ], [ %468, %467 ]
  %249 = getelementptr [5 x ptr], ptr %9, i32 0, i32 %247
  %250 = load ptr, ptr %249, align 4
  %251 = icmp eq ptr %250, null
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = getelementptr %struct.vsp1_brx, ptr %220, i32 0, i32 3, i32 %247
  store ptr null, ptr %253, align 4
  br label %467

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 5
  %256 = load ptr, ptr %255, align 4
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  store ptr %1, ptr %255, align 4
  %259 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 7
  %260 = load ptr, ptr %226, align 4
  store ptr %259, ptr %226, align 4
  store ptr %225, ptr %259, align 4
  %261 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 7, i32 1
  store ptr %260, ptr %261, align 4
  store volatile ptr %259, ptr %260, align 4
  br label %262

262:                                              ; preds = %258, %254
  %263 = getelementptr %struct.vsp1_brx, ptr %220, i32 0, i32 3, i32 %247
  store ptr %250, ptr %263, align 4
  %264 = getelementptr inbounds %struct.vsp1_rwpf, ptr %250, i32 0, i32 7
  store i32 %247, ptr %264, align 4
  %265 = load ptr, ptr %169, align 4
  %266 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 11
  store ptr %265, ptr %266, align 4
  %267 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 12
  store i32 %247, ptr %267, align 4
  %268 = load i32, ptr %227, align 4
  %269 = icmp eq i32 %268, 1
  br i1 %269, label %270, label %275

270:                                              ; preds = %262
  %271 = load i32, ptr %228, align 4
  %272 = icmp eq i32 %271, %247
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load ptr, ptr %229, align 4
  br label %275

275:                                              ; preds = %273, %270, %262
  %276 = phi ptr [ %274, %273 ], [ null, %270 ], [ null, %262 ]
  %277 = icmp eq ptr %276, null
  %278 = xor i1 %277, true
  %279 = select i1 %278, i1 true, i1 %248
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %5, i8 0, i32 64, i1 false) #8, !annotation !12
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %6) #8
  %280 = load ptr, ptr %230, align 4
  %281 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 3
  %282 = load i32, ptr %281, align 4
  %283 = getelementptr %struct.vsp1_drm, ptr %280, i32 0, i32 2, i32 %282
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %231, i8 0, i32 64, i1 false) #8
  store i32 1, ptr %6, align 4
  store i32 0, ptr %232, align 4
  %284 = getelementptr inbounds %struct.v4l2_rect, ptr %283, i32 0, i32 2
  %285 = load i32, ptr %284, align 4
  %286 = load i32, ptr %283, align 4
  %287 = add i32 %286, %285
  store i32 %287, ptr %233, align 4
  %288 = getelementptr inbounds %struct.v4l2_rect, ptr %283, i32 0, i32 3
  %289 = load i32, ptr %288, align 4
  %290 = getelementptr inbounds %struct.v4l2_rect, ptr %283, i32 0, i32 1
  %291 = load i32, ptr %290, align 4
  %292 = add i32 %291, %289
  store i32 %292, ptr %234, align 4
  %293 = getelementptr inbounds %struct.vsp1_rwpf, ptr %250, i32 0, i32 6
  %294 = load ptr, ptr %293, align 4
  %295 = getelementptr inbounds %struct.vsp1_format_info, ptr %294, i32 0, i32 1
  %296 = load i32, ptr %295, align 4
  store i32 %296, ptr %235, align 4
  store i32 1, ptr %236, align 4
  %297 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 13
  %298 = getelementptr inbounds %struct.vsp1_entity, ptr %250, i32 0, i32 13, i32 6
  %299 = load ptr, ptr %298, align 4
  %300 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %299, i32 0, i32 7
  %301 = load ptr, ptr %300, align 4
  %302 = icmp eq ptr %301, null
  br i1 %302, label %463, label %303

303:                                              ; preds = %275
  %304 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %301, i32 0, i32 5
  %305 = load ptr, ptr %304, align 4
  %306 = icmp eq ptr %305, null
  br i1 %306, label %463, label %307

307:                                              ; preds = %303
  br i1 %193, label %311, label %308

308:                                              ; preds = %307
  %309 = load ptr, ptr %237, align 4
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %312

311:                                              ; preds = %308, %307
  br label %312

312:                                              ; preds = %311, %308
  %313 = phi ptr [ %305, %311 ], [ %309, %308 ]
  %314 = call i32 %313(ptr noundef nonnull %297, ptr noundef null, ptr noundef nonnull %6) #8
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %463, label %316

316:                                              ; preds = %312
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %238, i8 0, i32 52, i1 false) #8
  store i32 1, ptr %5, align 4
  store i32 0, ptr %239, align 4
  store i32 0, ptr %240, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %241, ptr noundef align 4 dereferenceable(16) %283, i32 16, i1 false) #8
  %317 = load ptr, ptr %298, align 4
  %318 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %317, i32 0, i32 7
  %319 = load ptr, ptr %318, align 4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %463, label %321

321:                                              ; preds = %316
  %322 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %319, i32 0, i32 7
  %323 = load ptr, ptr %322, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %463, label %325

325:                                              ; preds = %321
  br i1 %193, label %329, label %326

326:                                              ; preds = %325
  %327 = load ptr, ptr %242, align 4
  %328 = icmp eq ptr %327, null
  br i1 %328, label %329, label %330

329:                                              ; preds = %326, %325
  br label %330

330:                                              ; preds = %329, %326
  %331 = phi ptr [ %323, %329 ], [ %327, %326 ]
  %332 = call i32 %331(ptr noundef nonnull %297, ptr noundef null, ptr noundef nonnull %5) #8
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %463, label %334

334:                                              ; preds = %330
  store i32 1, ptr %232, align 4
  %335 = load ptr, ptr %298, align 4
  %336 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %335, i32 0, i32 7
  %337 = load ptr, ptr %336, align 4
  %338 = icmp eq ptr %337, null
  br i1 %338, label %463, label %339

339:                                              ; preds = %334
  %340 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %337, i32 0, i32 4
  %341 = load ptr, ptr %340, align 4
  %342 = icmp eq ptr %341, null
  br i1 %342, label %463, label %343

343:                                              ; preds = %339
  br i1 %193, label %347, label %344

344:                                              ; preds = %343
  %345 = load ptr, ptr %243, align 4
  %346 = icmp eq ptr %345, null
  br i1 %346, label %347, label %348

347:                                              ; preds = %344, %343
  br label %348

348:                                              ; preds = %347, %344
  %349 = phi ptr [ %341, %347 ], [ %345, %344 ]
  %350 = call i32 %349(ptr noundef nonnull %297, ptr noundef null, ptr noundef nonnull %6) #8
  %351 = icmp slt i32 %350, 0
  br i1 %351, label %463, label %352

352:                                              ; preds = %348
  store i32 4109, ptr %235, align 4
  %353 = load ptr, ptr %298, align 4
  %354 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %353, i32 0, i32 7
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %463, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %355, i32 0, i32 5
  %359 = load ptr, ptr %358, align 4
  %360 = icmp eq ptr %359, null
  br i1 %360, label %463, label %361

361:                                              ; preds = %357
  br i1 %193, label %365, label %362

362:                                              ; preds = %361
  %363 = load ptr, ptr %237, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %365, label %366

365:                                              ; preds = %362, %361
  br label %366

366:                                              ; preds = %365, %362
  %367 = phi ptr [ %359, %365 ], [ %363, %362 ]
  %368 = call i32 %367(ptr noundef nonnull %297, ptr noundef null, ptr noundef nonnull %6) #8
  %369 = icmp slt i32 %368, 0
  br i1 %369, label %463, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %169, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #8
  br i1 %277, label %414, label %372

372:                                              ; preds = %370
  store ptr %276, ptr %266, align 4
  store i32 0, ptr %267, align 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %244, i8 0, i32 80, i1 false) #8
  store i32 1, ptr %4, align 4
  store i32 1, ptr %245, align 4
  %373 = load ptr, ptr %298, align 4
  %374 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %373, i32 0, i32 7
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %412, label %377

377:                                              ; preds = %372
  %378 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %375, i32 0, i32 4
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, null
  br i1 %380, label %412, label %381

381:                                              ; preds = %377
  br i1 %193, label %385, label %382

382:                                              ; preds = %381
  %383 = load ptr, ptr %243, align 4
  %384 = icmp eq ptr %383, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %382, %381
  br label %386

386:                                              ; preds = %385, %382
  %387 = phi ptr [ %379, %385 ], [ %383, %382 ]
  %388 = call i32 %387(ptr noundef nonnull %297, ptr noundef null, ptr noundef nonnull %4) #8
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %412, label %390

390:                                              ; preds = %386
  store i32 0, ptr %245, align 4
  %391 = getelementptr inbounds %struct.vsp1_entity, ptr %276, i32 0, i32 13
  %392 = getelementptr inbounds %struct.vsp1_entity, ptr %276, i32 0, i32 13, i32 6
  %393 = load ptr, ptr %392, align 4
  %394 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %393, i32 0, i32 7
  %395 = load ptr, ptr %394, align 4
  %396 = icmp eq ptr %395, null
  br i1 %396, label %412, label %397

397:                                              ; preds = %390
  %398 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %395, i32 0, i32 5
  %399 = load ptr, ptr %398, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %412, label %401

401:                                              ; preds = %397
  br i1 %193, label %405, label %402

402:                                              ; preds = %401
  %403 = load ptr, ptr %237, align 4
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %406

405:                                              ; preds = %402, %401
  br label %406

406:                                              ; preds = %405, %402
  %407 = phi ptr [ %399, %405 ], [ %403, %402 ]
  %408 = call i32 %407(ptr noundef nonnull %391, ptr noundef null, ptr noundef nonnull %4) #8
  %409 = icmp slt i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.vsp1_entity, ptr %276, i32 0, i32 11
  br label %414

412:                                              ; preds = %406, %397, %390, %386, %377, %372
  %413 = phi i32 [ -515, %397 ], [ -515, %390 ], [ -515, %377 ], [ -515, %372 ], [ %408, %406 ], [ %388, %386 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  br label %463

414:                                              ; preds = %410, %370
  %415 = phi ptr [ %411, %410 ], [ %266, %370 ]
  %416 = phi ptr [ %276, %410 ], [ %250, %370 ]
  store ptr %371, ptr %415, align 4
  %417 = getelementptr inbounds %struct.vsp1_entity, ptr %416, i32 0, i32 12
  store i32 %247, ptr %417, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #8
  store i32 %247, ptr %232, align 4
  %418 = load ptr, ptr %169, align 4
  %419 = getelementptr inbounds %struct.vsp1_entity, ptr %418, i32 0, i32 13
  %420 = getelementptr inbounds %struct.vsp1_entity, ptr %418, i32 0, i32 13, i32 6
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %421, i32 0, i32 7
  %423 = load ptr, ptr %422, align 4
  %424 = icmp eq ptr %423, null
  br i1 %424, label %463, label %425

425:                                              ; preds = %414
  %426 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %423, i32 0, i32 5
  %427 = load ptr, ptr %426, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %463, label %429

429:                                              ; preds = %425
  br i1 %193, label %433, label %430

430:                                              ; preds = %429
  %431 = load ptr, ptr %237, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %434

433:                                              ; preds = %430, %429
  br label %434

434:                                              ; preds = %433, %430
  %435 = phi ptr [ %427, %433 ], [ %431, %430 ]
  %436 = call i32 %435(ptr noundef nonnull %419, ptr noundef null, ptr noundef nonnull %6) #8
  %437 = icmp slt i32 %436, 0
  br i1 %437, label %463, label %438

438:                                              ; preds = %434
  store i32 %247, ptr %239, align 4
  store i32 256, ptr %240, align 4
  %439 = load ptr, ptr %230, align 4
  %440 = load i32, ptr %281, align 4
  %441 = getelementptr %struct.vsp1_drm, ptr %439, i32 0, i32 2, i32 %440, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %241, ptr noundef align 4 dereferenceable(16) %441, i32 16, i1 false) #8
  %442 = load ptr, ptr %169, align 4
  %443 = getelementptr inbounds %struct.vsp1_entity, ptr %442, i32 0, i32 13
  %444 = getelementptr inbounds %struct.vsp1_entity, ptr %442, i32 0, i32 13, i32 6
  %445 = load ptr, ptr %444, align 4
  %446 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %445, i32 0, i32 7
  %447 = load ptr, ptr %446, align 4
  %448 = icmp eq ptr %447, null
  br i1 %448, label %463, label %449

449:                                              ; preds = %438
  %450 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %447, i32 0, i32 7
  %451 = load ptr, ptr %450, align 4
  %452 = icmp eq ptr %451, null
  br i1 %452, label %463, label %453

453:                                              ; preds = %449
  br i1 %193, label %457, label %454

454:                                              ; preds = %453
  %455 = load ptr, ptr %242, align 4
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %458

457:                                              ; preds = %454, %453
  br label %458

458:                                              ; preds = %457, %454
  %459 = phi ptr [ %451, %457 ], [ %455, %454 ]
  %460 = call i32 %459(ptr noundef nonnull %443, ptr noundef null, ptr noundef nonnull %5) #8
  %461 = icmp slt i32 %460, 0
  br i1 %461, label %463, label %462

462:                                              ; preds = %458
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  br label %467

463:                                              ; preds = %458, %449, %438, %434, %425, %414, %412, %366, %357, %352, %348, %339, %334, %330, %321, %316, %312, %303, %275
  %464 = phi i32 [ %413, %412 ], [ -515, %425 ], [ -515, %414 ], [ -515, %352 ], [ -515, %357 ], [ -515, %334 ], [ -515, %339 ], [ -515, %316 ], [ -515, %321 ], [ -515, %303 ], [ -515, %275 ], [ %436, %434 ], [ %368, %366 ], [ %350, %348 ], [ %332, %330 ], [ %314, %312 ], [ %460, %458 ], [ -515, %438 ], [ -515, %449 ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #8
  %465 = load ptr, ptr %0, align 8
  %466 = load i32, ptr %281, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %465, ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.vsp1_du_pipeline_setup_inputs, i32 noundef %466) #9
  br label %574

467:                                              ; preds = %462, %252
  %468 = phi i1 [ %279, %462 ], [ %248, %252 ]
  %469 = add nuw i32 %247, 1
  %470 = load ptr, ptr %169, align 4
  %471 = getelementptr inbounds %struct.vsp1_entity, ptr %470, i32 0, i32 9
  %472 = load i32, ptr %471, align 4
  %473 = icmp ult i32 %469, %472
  br i1 %473, label %246, label %474

474:                                              ; preds = %467, %219
  %475 = phi i1 [ false, %219 ], [ %468, %467 ]
  %476 = phi ptr [ %220, %219 ], [ %470, %467 ]
  %477 = phi i32 [ 0, %219 ], [ %472, %467 ]
  %478 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 6
  %479 = load i32, ptr %478, align 4
  %480 = icmp eq i32 %479, 2
  br i1 %480, label %485, label %481

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %483 = load ptr, ptr %482, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %484 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 11
  br label %537

485:                                              ; preds = %474
  %486 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 5
  %487 = load ptr, ptr %486, align 4
  %488 = icmp eq ptr %487, null
  %489 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 12
  %490 = load ptr, ptr %489, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %3) #8
  %491 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 11
  br i1 %488, label %537, label %492

492:                                              ; preds = %485
  store ptr %487, ptr %491, align 4
  %493 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 12
  store i32 0, ptr %493, align 4
  %494 = getelementptr inbounds i8, ptr %3, i32 8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(88) %494, i8 0, i32 80, i1 false) #8
  store i32 1, ptr %3, align 4
  %495 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %3, i32 0, i32 1
  store i32 %477, ptr %495, align 4
  %496 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 13
  %497 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 13, i32 6
  %498 = load ptr, ptr %497, align 4
  %499 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %498, i32 0, i32 7
  %500 = load ptr, ptr %499, align 4
  %501 = icmp eq ptr %500, null
  br i1 %501, label %549, label %502

502:                                              ; preds = %492
  %503 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %500, i32 0, i32 4
  %504 = load ptr, ptr %503, align 4
  %505 = icmp eq ptr %504, null
  br i1 %505, label %549, label %506

506:                                              ; preds = %502
  br i1 %193, label %511, label %507

507:                                              ; preds = %506
  %508 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 4
  %509 = load ptr, ptr %508, align 4
  %510 = icmp eq ptr %509, null
  br i1 %510, label %511, label %512

511:                                              ; preds = %507, %506
  br label %512

512:                                              ; preds = %511, %507
  %513 = phi ptr [ %504, %511 ], [ %509, %507 ]
  %514 = call i32 %513(ptr noundef nonnull %496, ptr noundef null, ptr noundef nonnull %3) #8
  %515 = icmp slt i32 %514, 0
  br i1 %515, label %549, label %516

516:                                              ; preds = %512
  store i32 0, ptr %495, align 4
  %517 = getelementptr inbounds %struct.vsp1_entity, ptr %487, i32 0, i32 13
  %518 = getelementptr inbounds %struct.vsp1_entity, ptr %487, i32 0, i32 13, i32 6
  %519 = load ptr, ptr %518, align 4
  %520 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %519, i32 0, i32 7
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, null
  br i1 %522, label %549, label %523

523:                                              ; preds = %516
  %524 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %521, i32 0, i32 5
  %525 = load ptr, ptr %524, align 4
  %526 = icmp eq ptr %525, null
  br i1 %526, label %549, label %527

527:                                              ; preds = %523
  br i1 %193, label %532, label %528

528:                                              ; preds = %527
  %529 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %192, i32 0, i32 5
  %530 = load ptr, ptr %529, align 4
  %531 = icmp eq ptr %530, null
  br i1 %531, label %532, label %533

532:                                              ; preds = %528, %527
  br label %533

533:                                              ; preds = %532, %528
  %534 = phi ptr [ %525, %532 ], [ %530, %528 ]
  %535 = call i32 %534(ptr noundef nonnull %517, ptr noundef null, ptr noundef nonnull %3) #8
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %549, label %544

537:                                              ; preds = %485, %481
  %538 = phi ptr [ %490, %485 ], [ %483, %481 ]
  %539 = phi ptr [ %491, %485 ], [ %484, %481 ]
  store ptr %538, ptr %539, align 4
  %540 = getelementptr inbounds %struct.vsp1_entity, ptr %476, i32 0, i32 12
  store i32 0, ptr %540, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  %541 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %1, i32 0, i32 5
  %542 = load ptr, ptr %541, align 4
  %543 = icmp eq ptr %542, null
  br i1 %543, label %574, label %558

544:                                              ; preds = %533
  %545 = getelementptr inbounds %struct.vsp1_entity, ptr %487, i32 0, i32 11
  store ptr %490, ptr %545, align 4
  %546 = getelementptr inbounds %struct.vsp1_entity, ptr %487, i32 0, i32 12
  store i32 0, ptr %546, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  %547 = load ptr, ptr %486, align 4
  %548 = icmp eq ptr %547, null
  br i1 %548, label %574, label %561

549:                                              ; preds = %533, %523, %516, %512, %502, %492
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %3) #8
  %550 = load ptr, ptr %0, align 8
  %551 = load ptr, ptr %169, align 4
  %552 = getelementptr inbounds %struct.vsp1_entity, ptr %551, i32 0, i32 2
  %553 = load i32, ptr %552, align 4
  %554 = icmp eq i32 %553, 1
  %555 = select i1 %554, ptr @.str.6, ptr @.str.7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %550, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.vsp1_du_pipeline_setup_inputs, ptr noundef nonnull %555) #9
  %556 = load ptr, ptr %486, align 4
  %557 = icmp eq ptr %556, null
  br i1 %557, label %574, label %561

558:                                              ; preds = %537
  br i1 %475, label %561, label %559

559:                                              ; preds = %558
  %560 = getelementptr inbounds %struct.vsp1_entity, ptr %542, i32 0, i32 5
  store ptr null, ptr %560, align 4
  br label %574

561:                                              ; preds = %558, %549, %544
  %562 = phi ptr [ %541, %558 ], [ %486, %549 ], [ %486, %544 ]
  %563 = phi ptr [ %542, %558 ], [ %556, %549 ], [ %547, %544 ]
  %564 = getelementptr inbounds %struct.vsp1_entity, ptr %563, i32 0, i32 5
  %565 = load ptr, ptr %564, align 4
  %566 = icmp eq ptr %565, null
  br i1 %566, label %567, label %574

567:                                              ; preds = %561
  store ptr %1, ptr %564, align 4
  %568 = load ptr, ptr %562, align 4
  %569 = getelementptr inbounds %struct.vsp1_entity, ptr %568, i32 0, i32 7
  %570 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19
  %571 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 19, i32 1
  %572 = load ptr, ptr %571, align 4
  store ptr %569, ptr %571, align 4
  store ptr %570, ptr %569, align 4
  %573 = getelementptr inbounds %struct.vsp1_entity, ptr %568, i32 0, i32 7, i32 1
  store ptr %572, ptr %573, align 4
  store volatile ptr %569, ptr %572, align 4
  br label %574

574:                                              ; preds = %567, %561, %559, %549, %544, %537, %463, %211
  %575 = phi i32 [ %212, %211 ], [ %464, %463 ], [ 0, %537 ], [ 0, %561 ], [ 0, %567 ], [ 0, %559 ], [ 0, %549 ], [ 0, %544 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #8
  ret i32 %575
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_device_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @vsp1_du_pipeline_configure(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 13
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @vsp1_dl_list_get(ptr noundef %9) #8
  %11 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.vsp1_pipeline, ptr %0, i32 0, i32 19
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %12
  br i1 %14, label %35, label %15

15:                                               ; preds = %33, %1
  %16 = phi ptr [ %17, %33 ], [ %13, %1 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %16, i32 -12
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = getelementptr i8, ptr %16, i32 -16
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.vsp1_route, ptr %23, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  tail call void @vsp1_dl_body_write(ptr noundef %11, i32 noundef %25, i32 noundef 63) #8
  %26 = getelementptr i8, ptr %16, i32 20
  store ptr null, ptr %26, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %16, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 4
  store volatile ptr %29, ptr %28, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %27, align 4
  br label %33

31:                                               ; preds = %15
  %32 = getelementptr i8, ptr %16, i32 -32
  tail call void @vsp1_entity_route_setup(ptr noundef %32, ptr noundef %0, ptr noundef %11) #8
  tail call void @vsp1_entity_configure_stream(ptr noundef %32, ptr noundef %0, ptr noundef %10, ptr noundef %11) #8
  tail call void @vsp1_entity_configure_frame(ptr noundef %32, ptr noundef %0, ptr noundef %10, ptr noundef %11) #8
  tail call void @vsp1_entity_configure_partition(ptr noundef %32, ptr noundef %0, ptr noundef %10, ptr noundef %11) #8
  br label %33

33:                                               ; preds = %31, %21
  %34 = icmp eq ptr %17, %12
  br i1 %34, label %35, label %15

35:                                               ; preds = %33, %1
  %36 = icmp eq i8 %7, 0
  %37 = icmp eq i8 %3, 0
  %38 = select i1 %37, i32 0, i32 4
  %39 = or i32 %38, 2
  %40 = select i1 %36, i32 %38, i32 %39
  tail call void @vsp1_dl_list_commit(ptr noundef %10, i32 noundef %40) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_run(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @vsp1_du_atomic_begin(ptr nocapture %0, i32 %1) #5 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_du_atomic_update(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %8, i32 0, i32 %1
  %10 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.vsp1_device_info, ptr %11, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp ugt i32 %13, %2
  br i1 %14, label %15, label %68

15:                                               ; preds = %4
  %16 = getelementptr %struct.vsp1_device, ptr %6, i32 0, i32 15, i32 %2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %3, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vsp1_entity, ptr %17, i32 0, i32 5
  store ptr null, ptr %20, align 4
  br label %65

21:                                               ; preds = %15
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @vsp1_get_format_info(ptr noundef %6, i32 noundef %22) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %68, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.vsp1_format_info, ptr %25, i32 0, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.vsp1_format_info, ptr %25, i32 0, i32 8
  %33 = load i32, ptr %32, align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ 1, %27 ]
  %36 = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 6
  store ptr %25, ptr %36, align 4
  %37 = load i32, ptr %28, align 4
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 5, i32 6
  store i8 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 5, i32 5, i32 0, i32 1
  store i32 %24, ptr %40, align 4
  %41 = udiv i32 %24, %35
  %42 = getelementptr %struct.vsp1_rwpf, ptr %17, i32 0, i32 5, i32 5, i32 1, i32 1
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 8
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds %struct.vsp1_rwpf, ptr %17, i32 0, i32 12
  store i32 %47, ptr %48, align 4
  %49 = getelementptr %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 2, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr %struct.vsp1_rwpf, ptr %17, i32 0, i32 12, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = getelementptr %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 2, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.vsp1_rwpf, ptr %17, i32 0, i32 12, i32 0, i32 2
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr %struct.vsp1_drm, ptr %55, i32 0, i32 2, i32 %2
  %57 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %56, ptr noundef align 4 dereferenceable(16) %57, i32 16, i1 false)
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr %struct.vsp1_drm, ptr %58, i32 0, i32 2, i32 %2, i32 1
  %60 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(16) %59, ptr noundef align 4 dereferenceable(16) %60, i32 16, i1 false)
  %61 = getelementptr inbounds %struct.vsp1_du_atomic_config, ptr %3, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %7, align 4
  %64 = getelementptr %struct.vsp1_drm, ptr %63, i32 0, i32 2, i32 %2, i32 2
  store i32 %62, ptr %64, align 4
  br label %65

65:                                               ; preds = %34, %19
  %66 = phi ptr [ %17, %34 ], [ null, %19 ]
  %67 = getelementptr %struct.vsp1_pipeline, ptr %9, i32 0, i32 11, i32 %2
  store ptr %66, ptr %67, align 4
  br label %68

68:                                               ; preds = %65, %21, %4
  %69 = phi i32 [ -22, %4 ], [ -22, %21 ], [ 0, %65 ]
  ret i32 %69
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_du_atomic_flush(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 25
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %7, i32 0, i32 %1
  %9 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %7, i32 0, i32 %1, i32 6
  %10 = load i64, ptr %2, align 4
  store i64 %10, ptr %9, align 4
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr inbounds %struct.vsp1_drm, ptr %11, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, ptr %2, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %54, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.vsp1_pipeline, ptr %8, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, ptr %2, i32 0, i32 1, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = tail call ptr @vsp1_get_format_info(ptr noundef %5, i32 noundef %14) #8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %53, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.vsp1_format_info, ptr %21, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.vsp1_format_info, ptr %21, i32 0, i32 8
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %29, %27 ], [ 1, %23 ]
  %32 = getelementptr inbounds %struct.vsp1_rwpf, ptr %18, i32 0, i32 6
  store ptr %21, ptr %32, align 4
  %33 = load i32, ptr %24, align 4
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.vsp1_rwpf, ptr %18, i32 0, i32 5, i32 6
  store i8 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.vsp1_rwpf, ptr %18, i32 0, i32 5, i32 5, i32 0, i32 1
  store i32 %20, ptr %36, align 4
  %37 = udiv i32 %20, %31
  %38 = getelementptr %struct.vsp1_rwpf, ptr %18, i32 0, i32 5, i32 5, i32 1, i32 1
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.vsp1_du_atomic_pipe_config, ptr %2, i32 0, i32 1, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = load ptr, ptr %17, align 4
  %42 = getelementptr inbounds %struct.vsp1_rwpf, ptr %41, i32 0, i32 12
  store i32 %40, ptr %42, align 4
  %43 = getelementptr %struct.vsp1_du_atomic_pipe_config, ptr %2, i32 0, i32 1, i32 2, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %17, align 4
  %46 = getelementptr %struct.vsp1_rwpf, ptr %45, i32 0, i32 12, i32 0, i32 1
  store i32 %44, ptr %46, align 4
  %47 = getelementptr %struct.vsp1_du_atomic_pipe_config, ptr %2, i32 0, i32 1, i32 2, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %17, align 4
  %50 = getelementptr %struct.vsp1_rwpf, ptr %49, i32 0, i32 12, i32 0, i32 2
  store i32 %48, ptr %50, align 4
  %51 = load ptr, ptr %17, align 4
  %52 = getelementptr inbounds %struct.vsp1_rwpf, ptr %51, i32 0, i32 13
  store i8 1, ptr %52, align 4
  br label %54

53:                                               ; preds = %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 893, i32 noundef 9, ptr noundef null) #8
  br label %56

54:                                               ; preds = %30, %3
  %55 = tail call fastcc i32 @vsp1_du_pipeline_setup_inputs(ptr noundef %5, ptr noundef %8)
  tail call fastcc void @vsp1_du_pipeline_configure(ptr noundef %8)
  br label %56

56:                                               ; preds = %54, %53
  %57 = load ptr, ptr %6, align 4
  %58 = getelementptr inbounds %struct.vsp1_drm, ptr %57, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef %58) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_du_map_sg(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @dma_map_sgtable(ptr noundef %6, ptr noundef %1, i32 noundef 1, i32 noundef 32) #8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_du_unmap_sg(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.vsp1_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr inbounds %struct.sg_table, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %6, ptr noundef %7, i32 noundef %9, i32 noundef 1, i32 noundef 32) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vsp1_drm_init(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 856, i32 noundef 3520) #8
  %4 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 25
  store ptr %3, ptr %4, align 4
  %5 = icmp eq ptr %3, null
  br i1 %5, label %74, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.vsp1_drm, ptr %3, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @vsp1_drm_init.__key) #8
  %8 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_device_info, ptr %9, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %57, %6
  %14 = phi ptr [ %9, %6 ], [ %58, %57 ]
  %15 = getelementptr inbounds %struct.vsp1_device_info, ptr %14, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %74, label %63

18:                                               ; preds = %57, %6
  %19 = phi i32 [ %59, %57 ], [ 0, %6 ]
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %20, i32 0, i32 %19
  %22 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %20, i32 0, i32 %19, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %22, ptr noundef nonnull @.str.4, ptr noundef nonnull @vsp1_drm_init.__key.3) #8
  tail call void @vsp1_pipeline_init(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.vsp1_pipeline, ptr %21, i32 0, i32 4
  store ptr @vsp1_du_pipeline_frame_end, ptr %23, align 4
  %24 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 19, i32 %19
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vsp1_pipeline, ptr %21, i32 0, i32 12
  store ptr %25, ptr %26, align 4
  %27 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 13, i32 %19
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vsp1_pipeline, ptr %21, i32 0, i32 16
  store ptr %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.vsp1_entity, ptr %25, i32 0, i32 5
  store ptr %21, ptr %30, align 4
  %31 = load ptr, ptr %29, align 4
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr inbounds %struct.vsp1_entity, ptr %32, i32 0, i32 11
  store ptr %31, ptr %33, align 4
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.vsp1_entity, ptr %34, i32 0, i32 12
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr %26, align 4
  %37 = getelementptr inbounds %struct.vsp1_entity, ptr %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.vsp1_pipeline, ptr %21, i32 0, i32 19
  %39 = getelementptr inbounds %struct.vsp1_pipeline, ptr %21, i32 0, i32 19, i32 1
  %40 = load ptr, ptr %39, align 4
  store ptr %37, ptr %39, align 4
  store ptr %38, ptr %37, align 4
  %41 = getelementptr inbounds %struct.vsp1_entity, ptr %36, i32 0, i32 7, i32 1
  store ptr %40, ptr %41, align 4
  store volatile ptr %37, ptr %40, align 4
  %42 = load ptr, ptr %29, align 4
  %43 = getelementptr inbounds %struct.vsp1_entity, ptr %42, i32 0, i32 5
  store ptr %21, ptr %43, align 4
  %44 = load ptr, ptr %29, align 4
  %45 = getelementptr inbounds %struct.vsp1_entity, ptr %44, i32 0, i32 7
  %46 = load ptr, ptr %39, align 4
  store ptr %45, ptr %39, align 4
  store ptr %38, ptr %45, align 4
  %47 = getelementptr inbounds %struct.vsp1_entity, ptr %44, i32 0, i32 7, i32 1
  store ptr %46, ptr %47, align 4
  store volatile ptr %45, ptr %46, align 4
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr inbounds %struct.vsp1_device_info, ptr %48, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %19, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %18
  %53 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 18, i32 %19
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr [2 x %struct.vsp1_drm_pipeline], ptr %20, i32 0, i32 %19, i32 5
  store ptr %54, ptr %55, align 4
  %56 = load ptr, ptr %8, align 4
  br label %57

57:                                               ; preds = %52, %18
  %58 = phi ptr [ %56, %52 ], [ %48, %18 ]
  %59 = add nuw i32 %19, 1
  %60 = getelementptr inbounds %struct.vsp1_device_info, ptr %58, i32 0, i32 4
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %18, label %13

63:                                               ; preds = %63, %13
  %64 = phi i32 [ %69, %63 ], [ 0, %13 ]
  %65 = getelementptr %struct.vsp1_device, ptr %0, i32 0, i32 15, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.vsp1_entity, ptr %66, i32 0, i32 7
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr inbounds %struct.vsp1_entity, ptr %66, i32 0, i32 7, i32 1
  store ptr %67, ptr %68, align 4
  %69 = add nuw i32 %64, 1
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr inbounds %struct.vsp1_device_info, ptr %70, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %63, label %74

74:                                               ; preds = %63, %13, %1
  %75 = phi i32 [ -12, %1 ], [ 0, %13 ], [ 0, %63 ]
  ret i32 %75
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vsp1_du_pipeline_frame_end(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %1, 3
  %10 = icmp eq ptr %8, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @vsp1_uif_get_crc(ptr noundef nonnull %8) #8
  %13 = load ptr, ptr %3, align 4
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi ptr [ %13, %11 ], [ %4, %6 ]
  %16 = phi i32 [ %12, %11 ], [ 0, %6 ]
  %17 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 8
  %18 = load ptr, ptr %17, align 4
  tail call void %15(ptr noundef %18, i32 noundef %9, i32 noundef %16) #8
  br label %19

19:                                               ; preds = %14, %2
  %20 = and i32 %1, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 3
  store i8 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vsp1_drm_pipeline, ptr %0, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %24, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %25

25:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @vsp1_drm_cleanup(ptr nocapture noundef %0) local_unnamed_addr #5 {
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get_body0(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_route_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_stream(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_frame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_configure_partition(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_list_commit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_get_format_info(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_uif_get_crc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!10 = !{i64 2152519482}
!11 = !{i64 4978389}
!12 = !{!"auto-init"}
