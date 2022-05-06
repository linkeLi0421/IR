; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_wpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_wpf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.82, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }
%struct.anon.82 = type { %struct.spinlock, %struct.anon.83, i32, i32, i8 }
%struct.anon.83 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.vsp1_partition = type { %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window, %struct.vsp1_partition_window }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_video = type { %struct.list_head, ptr, ptr, %struct.video_device, i32, %struct.media_pad, %struct.mutex, i32, %struct.vb2_queue, %struct.spinlock, %struct.list_head }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }

@wpf_entity_ops = internal constant %struct.vsp1_entity_operations { ptr @vsp1_wpf_destroy, ptr @wpf_configure_stream, ptr @wpf_configure_frame, ptr @wpf_configure_partition, ptr @wpf_max_width, ptr @wpf_partition }, align 4
@.str = private unnamed_addr constant [7 x i8] c"wpf.%u\00", align 1
@wpf_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @wpf_video_ops, ptr null, ptr null, ptr null, ptr @vsp1_rwpf_pad_ops }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"wpf%u: failed to initialize controls\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Failed to obtain a dl list, disabling writeback\0A\00", align 1
@wpf_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wpf_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@vsp1_rwpf_pad_ops = external dso_local constant %struct.v4l2_subdev_pad_ops, align 4
@vsp1_wpf_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vsp1_wpf_s_ctrl }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_wpf_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 664, i32 noundef 3520) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.vsp1_device_info, ptr %9, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 2
  %13 = select i1 %12, i32 2048, i32 8190
  %14 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 4
  store i32 %13, ptr %15, align 4
  %16 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 1
  store ptr @wpf_entity_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 2
  store i32 13, ptr %17, align 4
  %18 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 3
  store i32 %1, ptr %18, align 4
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef %1)
  %20 = call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @wpf_ops, i32 noundef 16386) #10
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = inttoptr i32 %20 to ptr
  br label %78

24:                                               ; preds = %7
  %25 = call ptr @vsp1_dlm_create(ptr noundef %0, i32 noundef %1, i32 noundef 64) #10
  %26 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 14
  store ptr %25, ptr %26, align 4
  %27 = icmp eq ptr %25, null
  br i1 %27, label %76, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 11
  store i32 0, ptr %30, align 4
  %31 = load i32, ptr %18, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %5, i32 noundef 0) #10
  br label %61

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.vsp1_device, ptr %29, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.vsp1_device_info, ptr %37, i32 0, i32 3
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 64
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %5, i32 noundef 3) #10
  %44 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 1
  %45 = call ptr @v4l2_ctrl_new_std(ptr noundef %44, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %46 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 11, i32 1
  store ptr %45, ptr %46, align 4
  %47 = call ptr @v4l2_ctrl_new_std(ptr noundef %44, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %48 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 11, i32 1, i32 1
  store ptr %47, ptr %48, align 4
  %49 = call ptr @v4l2_ctrl_new_std(ptr noundef %44, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963810, i64 noundef 0, i64 noundef 270, i64 noundef 90, i64 noundef 0) #10
  %50 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 11, i32 1, i32 2
  store ptr %49, ptr %50, align 4
  call void @v4l2_ctrl_cluster(i32 noundef 3, ptr noundef %46) #10
  br label %61

51:                                               ; preds = %35
  %52 = and i32 %39, 32
  %53 = icmp eq i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %5, i32 noundef %55) #10
  br i1 %53, label %61, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 1
  %59 = call ptr @v4l2_ctrl_new_std(ptr noundef %58, ptr noundef nonnull @vsp1_wpf_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #10
  %60 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 11, i32 1
  store ptr %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %57, %51, %42, %33
  %62 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 1, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %29, align 8
  %67 = load i32, ptr %18, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.1, i32 noundef %67) #11
  %68 = load i32, ptr %62, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.1, i32 noundef %1) #11
  %72 = inttoptr i32 %68 to ptr
  br label %76

73:                                               ; preds = %65, %61
  %74 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 1
  %75 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %74) #10
  br label %78

76:                                               ; preds = %70, %24
  %77 = phi ptr [ %72, %70 ], [ inttoptr (i32 -12 to ptr), %24 ]
  call void @vsp1_entity_destroy(ptr noundef nonnull %5) #10
  br label %78

78:                                               ; preds = %76, %73, %22, %2
  %79 = phi ptr [ %23, %22 ], [ %77, %76 ], [ %5, %73 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #10
  ret ptr %79
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dlm_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @vsp1_wpf_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  tail call void @vsp1_dlm_destroy(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wpf_configure_stream(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %9, i32 noundef 0) #10
  %11 = load ptr, ptr %8, align 4
  %12 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %11, i32 noundef 1) #10
  %13 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 16
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 13
  %18 = load i8, ptr %17, align 4, !range !9
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %77, label %20

20:                                               ; preds = %16, %4
  %21 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vsp1_format_info, ptr %22, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %26 = load i8, ptr %25, align 4, !range !9
  %27 = icmp eq i8 %26, 0
  %28 = or i32 %24, 262144
  %29 = select i1 %27, i32 %24, i32 %28
  %30 = getelementptr inbounds %struct.vsp1_format_info, ptr %22, i32 0, i32 10
  %31 = load i8, ptr %30, align 4, !range !9
  %32 = icmp eq i8 %31, 0
  %33 = or i32 %29, 8388608
  %34 = select i1 %32, i32 %29, i32 %33
  %35 = getelementptr inbounds %struct.vsp1_format_info, ptr %22, i32 0, i32 6
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  %38 = or i32 %34, 32768
  %39 = select i1 %37, i32 %34, i32 %38
  %40 = getelementptr inbounds %struct.vsp1_format_info, ptr %22, i32 0, i32 7
  %41 = load i8, ptr %40, align 1, !range !9
  %42 = icmp eq i8 %41, 0
  %43 = or i32 %39, 16384
  %44 = select i1 %42, i32 %39, i32 %43
  %45 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 0, i32 1
  %46 = load i32, ptr %45, align 1
  %47 = load i32, ptr %6, align 4
  %48 = shl i32 %47, 8
  %49 = add i32 %48, 4124
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %49, i32 noundef %46) #10
  %50 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = icmp ugt i8 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %20
  %54 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 1
  %55 = load i32, ptr %54, align 1
  %56 = load i32, ptr %6, align 4
  %57 = shl i32 %56, 8
  %58 = add i32 %57, 4128
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %58, i32 noundef %55) #10
  br label %59

59:                                               ; preds = %53, %20
  %60 = getelementptr inbounds %struct.vsp1_format_info, ptr %22, i32 0, i32 3
  %61 = load i32, ptr %60, align 4
  %62 = load i32, ptr %6, align 4
  %63 = shl i32 %62, 8
  %64 = add i32 %63, 4112
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %64, i32 noundef %61) #10
  %65 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.vsp1_device_info, ptr %66, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, 64
  %70 = icmp ne i32 %69, 0
  %71 = icmp eq i32 %7, 0
  %72 = select i1 %70, i1 %71, i1 false
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load i32, ptr %6, align 4
  %75 = shl i32 %74, 8
  %76 = add i32 %75, 4120
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %76, i32 noundef 131328) #10
  br label %77

77:                                               ; preds = %73, %59, %16
  %78 = phi i32 [ 0, %16 ], [ %44, %73 ], [ %44, %59 ]
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %10, i32 0, i32 2
  %80 = load i32, ptr %79, align 4
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %12, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp eq i32 %80, %82
  %84 = or i32 %78, 256
  %85 = select i1 %83, i32 %78, i32 %84
  %86 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 10
  store i32 %85, ptr %86, align 4
  %87 = shl i32 %7, 2
  %88 = add i32 %87, 8212
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %88, i32 noundef 1280) #10
  %89 = getelementptr inbounds %struct.vsp1_device, ptr %5, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.vsp1_device_info, ptr %90, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %121, label %94

94:                                               ; preds = %77
  %95 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %96 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 10
  br label %97

97:                                               ; preds = %117, %94
  %98 = phi i32 [ 0, %94 ], [ %118, %117 ]
  %99 = phi i32 [ 0, %94 ], [ %119, %117 ]
  %100 = getelementptr %struct.vsp1_pipeline, ptr %1, i32 0, i32 11, i32 %99
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %117, label %103

103:                                              ; preds = %97
  %104 = load ptr, ptr %95, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load i32, ptr %96, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %110, label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %106
  %111 = phi i32 [ 1, %109 ], [ 2, %106 ]
  %112 = getelementptr inbounds %struct.vsp1_entity, ptr %101, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = shl i32 %113, 1
  %115 = shl i32 %111, %114
  %116 = or i32 %115, %98
  br label %117

117:                                              ; preds = %110, %97
  %118 = phi i32 [ %116, %110 ], [ %98, %97 ]
  %119 = add nuw i32 %99, 1
  %120 = icmp eq i32 %119, %92
  br i1 %120, label %121, label %97

121:                                              ; preds = %117, %77
  %122 = phi i32 [ 0, %77 ], [ %118, %117 ]
  %123 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.vsp1_entity, ptr %124, i32 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = icmp eq i32 %128, 1
  %130 = select i1 %129, i32 536870912, i32 33554432
  %131 = or i32 %130, %122
  br label %132

132:                                              ; preds = %126, %121
  %133 = phi i32 [ %131, %126 ], [ %122, %121 ]
  %134 = load i32, ptr %6, align 4
  %135 = shl i32 %134, 8
  %136 = add i32 %135, 4096
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %136, i32 noundef %133) #10
  %137 = mul i32 %7, 12
  %138 = add i32 %137, 76
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %138, i32 noundef 0) #10
  %139 = add i32 %137, 72
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %139, i32 noundef 2) #10
  %140 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 13
  %141 = load i8, ptr %140, align 4, !range !9
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %159, label %143

143:                                              ; preds = %132
  %144 = load i32, ptr %6, align 4
  %145 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 14
  %146 = load ptr, ptr %145, align 4
  %147 = tail call ptr @vsp1_dl_list_get(ptr noundef %146) #10
  %148 = icmp eq ptr %147, null
  br i1 %148, label %156, label %149

149:                                              ; preds = %143
  %150 = tail call ptr @vsp1_dl_list_get_body0(ptr noundef nonnull %147) #10
  %151 = shl i32 %144, 8
  %152 = add i32 %151, 4148
  tail call void @vsp1_dl_body_write(ptr noundef %150, i32 noundef %152, i32 noundef 0) #10
  %153 = tail call i32 @vsp1_dl_list_add_chain(ptr noundef %2, ptr noundef nonnull %147) #10
  %154 = load i8, ptr %140, align 4, !range !9
  %155 = zext i8 %154 to i32
  br label %159

156:                                              ; preds = %143
  %157 = load ptr, ptr %0, align 4
  %158 = load ptr, ptr %157, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.2) #11
  store i8 0, ptr %140, align 4
  br label %159

159:                                              ; preds = %156, %149, %132
  %160 = phi i32 [ %155, %149 ], [ 0, %156 ], [ 0, %132 ]
  %161 = shl i32 %7, 8
  %162 = add i32 %161, 4148
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %162, i32 noundef %160) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wpf_configure_frame(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #10
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, -4
  %10 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 3
  %13 = or i32 %12, %9
  store i32 %13, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #10
  %14 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = shl i32 %15, 24
  %17 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 10
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %16, %18
  %20 = load i32, ptr %7, align 4
  %21 = shl i32 %20, 16
  %22 = and i32 %21, 65536
  %23 = or i32 %19, %22
  %24 = and i32 %21, 131072
  %25 = or i32 %23, %24
  %26 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = shl i32 %27, 8
  %29 = add i32 %28, 4108
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %29, i32 noundef %25) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wpf_configure_partition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = alloca %struct.vsp1_rwpf_memory, align 4
  %6 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef align 4 dereferenceable(12) %7, i32 12, i1 false)
  %8 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %12 = load ptr, ptr %11, align 4
  %13 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %12, i32 noundef 0) #10
  %14 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 23
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 24
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.vsp1_partition, ptr %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.vsp1_partition, ptr %21, i32 0, i32 4, i32 1
  %24 = load i32, ptr %22, align 4
  br label %25

25:                                               ; preds = %19, %4
  %26 = phi ptr [ %23, %19 ], [ %13, %4 ]
  %27 = phi i32 [ %24, %19 ], [ 0, %4 ]
  %28 = load i32, ptr %26, align 4
  %29 = or i32 %28, 268435456
  %30 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = shl i32 %31, 8
  %33 = add i32 %32, 4100
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %33, i32 noundef %29) #10
  %34 = or i32 %15, 268435456
  %35 = load i32, ptr %30, align 4
  %36 = shl i32 %35, 8
  %37 = add i32 %36, 4104
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %37, i32 noundef %34) #10
  %38 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 16
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %25
  %42 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 13
  %43 = load i8, ptr %42, align 4, !range !9
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %220, label %45

45:                                               ; preds = %41, %25
  %46 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %52 = load i8, ptr %51, align 4, !range !9
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %50, %45
  %55 = and i32 %47, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %59 = load i8, ptr %58, align 4, !range !9
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 1
  br label %63

63:                                               ; preds = %61, %50
  %64 = phi ptr [ %62, %61 ], [ %8, %50 ]
  %65 = load i32, ptr %64, align 1
  %66 = add i32 %28, %27
  %67 = sub i32 %65, %66
  br label %68

68:                                               ; preds = %63, %57, %54
  %69 = phi i32 [ %27, %57 ], [ %27, %54 ], [ %67, %63 ]
  %70 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i8 %71, 0
  br i1 %73, label %123, label %74

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.vsp1_format_info, ptr %10, i32 0, i32 8
  %76 = getelementptr inbounds %struct.vsp1_format_info, ptr %10, i32 0, i32 9
  %77 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %78 = load i8, ptr %77, align 4, !range !9
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 0, i32 1
  %82 = load i32, ptr %81, align 1
  %83 = mul i32 %82, %69
  %84 = load i32, ptr %5, align 4
  %85 = add i32 %84, %83
  br label %93

86:                                               ; preds = %74
  %87 = getelementptr %struct.vsp1_format_info, ptr %10, i32 0, i32 5, i32 0
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, %69
  %90 = lshr i32 %89, 3
  %91 = load i32, ptr %5, align 4
  %92 = add i32 %90, %91
  br label %93

93:                                               ; preds = %86, %80
  %94 = phi i32 [ %85, %80 ], [ %92, %86 ]
  store i32 %94, ptr %5, align 4
  %95 = icmp eq i8 %71, 1
  br i1 %95, label %123, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %75, align 4
  %98 = load i32, ptr %76, align 4
  br label %99

99:                                               ; preds = %116, %96
  %100 = phi i32 [ 1, %96 ], [ %121, %116 ]
  br i1 %79, label %108, label %101

101:                                              ; preds = %99
  %102 = udiv i32 %69, %98
  %103 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 %100, i32 1
  %104 = load i32, ptr %103, align 1
  %105 = mul i32 %104, %102
  %106 = getelementptr [3 x i32], ptr %5, i32 0, i32 %100
  %107 = load i32, ptr %106, align 4
  br label %116

108:                                              ; preds = %99
  %109 = udiv i32 %69, %97
  %110 = getelementptr %struct.vsp1_format_info, ptr %10, i32 0, i32 5, i32 %100
  %111 = load i32, ptr %110, align 4
  %112 = mul i32 %111, %109
  %113 = lshr i32 %112, 3
  %114 = getelementptr [3 x i32], ptr %5, i32 0, i32 %100
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %108, %101
  %117 = phi i32 [ %115, %108 ], [ %105, %101 ]
  %118 = phi i32 [ %113, %108 ], [ %107, %101 ]
  %119 = phi ptr [ %114, %108 ], [ %106, %101 ]
  %120 = add i32 %118, %117
  store i32 %120, ptr %119, align 4
  %121 = add nuw nsw i32 %100, 1
  %122 = icmp eq i32 %121, %72
  br i1 %122, label %123, label %99, !llvm.loop !10

123:                                              ; preds = %116, %93, %68
  %124 = and i32 %47, 1
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %127 = load i8, ptr %126, align 4, !range !9
  br i1 %125, label %156, label %128

128:                                              ; preds = %123
  %129 = icmp eq i8 %127, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 1
  %132 = load i32, ptr %131, align 1
  br label %133

133:                                              ; preds = %130, %128
  %134 = phi i32 [ %132, %130 ], [ %28, %128 ]
  %135 = add i32 %134, -1
  %136 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 0, i32 1
  %137 = load i32, ptr %136, align 1
  %138 = mul i32 %135, %137
  %139 = load i32, ptr %5, align 4
  %140 = add i32 %139, %138
  store i32 %140, ptr %5, align 4
  %141 = icmp ugt i8 %71, 1
  br i1 %141, label %142, label %156

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.vsp1_format_info, ptr %10, i32 0, i32 9
  %144 = load i32, ptr %143, align 4
  %145 = udiv i32 %134, %144
  %146 = add i32 %145, -1
  %147 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 1
  %148 = load i32, ptr %147, align 1
  %149 = mul i32 %146, %148
  %150 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = add i32 %151, %149
  store i32 %152, ptr %150, align 4
  %153 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  %154 = load i32, ptr %153, align 4
  %155 = add i32 %154, %149
  store i32 %155, ptr %153, align 4
  br label %156

156:                                              ; preds = %142, %133, %123
  %157 = icmp eq i8 %127, 0
  %158 = xor i1 %49, true
  %159 = select i1 %157, i1 true, i1 %158
  br i1 %159, label %187, label %160

160:                                              ; preds = %156
  %161 = load i32, ptr %8, align 1
  %162 = add i32 %161, -16
  %163 = tail call i32 @llvm.smax.i32(i32 %162, i32 0)
  br i1 %73, label %204, label %164

164:                                              ; preds = %160
  %165 = getelementptr %struct.vsp1_format_info, ptr %10, i32 0, i32 5, i32 0
  %166 = load i32, ptr %165, align 4
  %167 = mul i32 %166, %163
  %168 = lshr i32 %167, 3
  %169 = load i32, ptr %5, align 4
  %170 = add i32 %168, %169
  store i32 %170, ptr %5, align 4
  %171 = icmp eq i8 %71, 1
  br i1 %171, label %204, label %172

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.vsp1_format_info, ptr %10, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = udiv i32 %163, %174
  br label %176

176:                                              ; preds = %176, %172
  %177 = phi i32 [ 1, %172 ], [ %185, %176 ]
  %178 = getelementptr %struct.vsp1_format_info, ptr %10, i32 0, i32 5, i32 %177
  %179 = load i32, ptr %178, align 4
  %180 = mul i32 %179, %175
  %181 = lshr i32 %180, 3
  %182 = getelementptr [3 x i32], ptr %5, i32 0, i32 %177
  %183 = load i32, ptr %182, align 4
  %184 = add i32 %181, %183
  store i32 %184, ptr %182, align 4
  %185 = add nuw nsw i32 %177, 1
  %186 = icmp eq i32 %185, %72
  br i1 %186, label %187, label %176, !llvm.loop !12

187:                                              ; preds = %176, %156
  %188 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.vsp1_device_info, ptr %189, i32 0, i32 2
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 3
  %193 = icmp eq i8 %71, 3
  %194 = select i1 %192, i1 %193, i1 false
  br i1 %194, label %195, label %204

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.vsp1_format_info, ptr %10, i32 0, i32 7
  %197 = load i8, ptr %196, align 1, !range !9
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  store i32 %203, ptr %200, align 4
  store i32 %201, ptr %202, align 4
  br label %204

204:                                              ; preds = %199, %195, %187, %164, %160
  %205 = load i32, ptr %5, align 4
  %206 = load i32, ptr %30, align 4
  %207 = shl i32 %206, 8
  %208 = add i32 %207, 4132
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %208, i32 noundef %205) #10
  %209 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = load i32, ptr %30, align 4
  %212 = shl i32 %211, 8
  %213 = add i32 %212, 4136
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %213, i32 noundef %210) #10
  %214 = getelementptr inbounds [3 x i32], ptr %5, i32 0, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = load i32, ptr %30, align 4
  %217 = shl i32 %216, 8
  %218 = add i32 %217, 4140
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %218, i32 noundef %215) #10
  %219 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 13
  store i8 0, ptr %219, align 4
  br label %220

220:                                              ; preds = %204, %41
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @wpf_max_width(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #6 {
  %3 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 11, i32 4
  %4 = load i8, ptr %3, align 4, !range !9
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi i32 [ %8, %6 ], [ 256, %2 ]
  ret i32 %10
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @wpf_partition(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) #7 {
  %6 = getelementptr inbounds %struct.vsp1_partition, ptr %2, i32 0, i32 4
  %7 = load i64, ptr %4, align 4
  store i64 %7, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dlm_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_list_get_body0(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_chain(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wpf_s_stream(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %19

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 -60
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -48
  %8 = load i32, ptr %7, align 4
  %9 = mul i32 %8, 12
  %10 = add i32 %9, 72
  %11 = getelementptr inbounds %struct.vsp1_device, ptr %6, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 0) #10, !srcloc !14
  %14 = load i32, ptr %7, align 4
  %15 = shl i32 %14, 8
  %16 = add i32 %15, 4096
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #10, !srcloc !14
  br label %19

19:                                               ; preds = %4, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_cluster(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vsp1_wpf_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -280
  %5 = getelementptr i8, ptr %3, i32 336
  %6 = getelementptr i8, ptr %3, i32 340
  %7 = getelementptr i8, ptr %3, i32 348
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ]
  %15 = icmp eq i32 %14, 90
  %16 = icmp eq i32 %14, 270
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr i8, ptr %3, i32 360
  %20 = load i8, ptr %19, align 4, !range !9
  %21 = icmp eq i8 %20, %18
  br i1 %21, label %47, label %22

22:                                               ; preds = %13
  %23 = getelementptr i8, ptr %3, i32 112
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.vsp1_video, ptr %24, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.vsp1_video, ptr %24, i32 0, i32 8, i32 21
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @mutex_unlock(ptr noundef %25) #10
  br label %71

30:                                               ; preds = %22
  %31 = getelementptr i8, ptr %3, i32 -24
  %32 = load ptr, ptr %31, align 4
  %33 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef %32, i32 noundef 0) #10
  %34 = load ptr, ptr %31, align 4
  %35 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %4, ptr noundef %34, i32 noundef 1) #10
  %36 = getelementptr i8, ptr %3, i32 -20
  tail call void @mutex_lock(ptr noundef %36) #10
  switch i32 %14, label %40 [
    i32 270, label %37
    i32 90, label %37
  ]

37:                                               ; preds = %30, %30
  %38 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %33, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr %35, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, ptr %33, align 4
  store i32 %41, ptr %35, align 4
  %42 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %33, i32 0, i32 1
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi ptr [ %42, %40 ], [ %33, %37 ]
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %35, i32 0, i32 1
  store i32 %45, ptr %46, align 4
  store i8 %18, ptr %19, align 4
  tail call void @mutex_unlock(ptr noundef %36) #10
  tail call void @mutex_unlock(ptr noundef %25) #10
  br label %47

47:                                               ; preds = %43, %13
  %48 = load ptr, ptr %6, align 4
  %49 = getelementptr inbounds %struct.v4l2_ctrl, ptr %48, i32 0, i32 22
  %50 = load i32, ptr %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = getelementptr i8, ptr %3, i32 344
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.v4l2_ctrl, ptr %54, i32 0, i32 22
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = or i32 %52, 2
  %61 = select i1 %59, i32 %52, i32 %60
  br label %62

62:                                               ; preds = %56, %47
  %63 = phi i32 [ %52, %47 ], [ %61, %56 ]
  switch i32 %14, label %66 [
    i32 270, label %64
    i32 180, label %64
  ]

64:                                               ; preds = %62, %62
  %65 = xor i32 %63, 3
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %65, %64 ], [ %63, %62 ]
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #10
  %68 = getelementptr i8, ptr %3, i32 352
  store i32 %67, ptr %68, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  %69 = load i16, ptr %5, align 4
  %70 = add i16 %69, 1
  store i16 %70, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !16
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !17
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !19
  br label %71

71:                                               ; preds = %66, %29
  %72 = phi i32 [ 0, %66 ], [ -16, %29 ]
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = distinct !{!12, !11}
!13 = !{i64 2153290841}
!14 = !{i64 5757238}
!15 = !{i64 2149224043}
!16 = !{i64 2149219867}
!17 = !{i64 2149219942, i64 2149219969, i64 2149220016, i64 2149220038, i64 2149220066, i64 2149220086}
!18 = !{i64 616478}
!19 = !{i64 2149248187}
