; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_rpf.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_rpf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vsp1_rwpf = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, ptr, i32, i32, %struct.v4l2_pix_format_mplane, ptr, i32, i32, i32, i32, %struct.anon.82, %struct.vsp1_rwpf_memory, i8, ptr }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.81, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.81 = type { i8 }
%struct.anon.82 = type { %struct.spinlock, %struct.anon.83, i32, i32, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.83 = type { ptr, ptr, ptr }
%struct.vsp1_rwpf_memory = type { [3 x i32] }
%struct.vsp1_pipeline = type { %struct.media_pipeline, %struct.spinlock, i32, %struct.wait_queue_head, ptr, %struct.mutex, %struct.kref, i32, i32, i32, i32, [5 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i8, i8, i32, ptr, ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.vsp1_format_info = type { i32, i32, i32, i32, i32, [3 x i32], i8, i8, i32, i32, i8 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vsp1_partition_window = type { i32, i32 }
%struct.vsp1_dl_ext_cmd = type { ptr, %struct.list_head, i8, i32, ptr, i32, i32, ptr, i32 }
%struct.vsp1_extcmd_auto_fld_body = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@rpf_entity_ops = internal constant %struct.vsp1_entity_operations { ptr null, ptr @rpf_configure_stream, ptr @rpf_configure_frame, ptr @rpf_configure_partition, ptr null, ptr @rpf_partition }, align 4
@.str = private unnamed_addr constant [7 x i8] c"rpf.%u\00", align 1
@rpf_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsp1_rwpf_pad_ops }, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"rpf%u: failed to initialize controls\0A\00", align 1
@vsp1_rpf_configure_autofld.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"drivers/media/platform/vsp1/vsp1_rpf.c\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to obtain an autofld cmd\00", align 1
@vsp1_rwpf_pad_ops = external dso_local constant %struct.v4l2_subdev_pad_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_rpf_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %3, i8 0, i32 6, i1 false), !annotation !8
  %4 = load ptr, ptr %0, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 664, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 3
  store i32 8190, ptr %8, align 4
  %9 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 4
  store i32 8190, ptr %9, align 4
  %10 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 1
  store ptr @rpf_entity_ops, ptr %10, align 4
  %11 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 2
  store i32 9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.vsp1_entity, ptr %5, i32 0, i32 3
  store i32 %1, ptr %12, align 4
  %13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef %1)
  %14 = call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 2, ptr noundef nonnull @rpf_ops, i32 noundef 16386) #7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %7
  %17 = inttoptr i32 %14 to ptr
  br label %27

18:                                               ; preds = %7
  %19 = call i32 @vsp1_rwpf_init_ctrls(ptr noundef nonnull %5, i32 noundef 0) #7
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.1, i32 noundef %1) #8
  call void @vsp1_entity_destroy(ptr noundef nonnull %5) #7
  %23 = inttoptr i32 %19 to ptr
  br label %27

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.vsp1_rwpf, ptr %5, i32 0, i32 1
  %26 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %25) #7
  br label %27

27:                                               ; preds = %24, %21, %16, %2
  %28 = phi ptr [ %17, %16 ], [ %23, %21 ], [ %5, %24 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %3) #7
  ret ptr %28
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
declare dso_local i32 @vsp1_rwpf_init_ctrls(ptr noundef, i32 noundef) local_unnamed_addr #4

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
define internal void @rpf_configure_stream(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 0, i32 1
  %8 = load i32, ptr %7, align 1
  %9 = shl i32 %8, 16
  %10 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = or i32 %15, %9
  br label %17

17:                                               ; preds = %13, %4
  %18 = phi i32 [ %16, %13 ], [ %9, %4 ]
  %19 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 22
  %20 = load i8, ptr %19, align 1, !range !9
  %21 = zext i8 %20 to i32
  %22 = shl i32 %18, %21
  %23 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 8
  %26 = add i32 %25, 820
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %26, i32 noundef %22) #7
  %27 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %28 = load ptr, ptr %27, align 4
  %29 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %28, i32 noundef 0) #7
  %30 = load ptr, ptr %27, align 4
  %31 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %30, i32 noundef 1) #7
  %32 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 6
  %35 = load i8, ptr %34, align 4, !range !9
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, i32 65536, i32 98304
  %38 = or i32 %37, %33
  %39 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 7
  %40 = load i8, ptr %39, align 1, !range !9
  %41 = icmp eq i8 %40, 0
  %42 = or i32 %38, 16384
  %43 = select i1 %41, i32 %38, i32 %42
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %29, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %31, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %45, %47
  %49 = or i32 %43, 256
  %50 = select i1 %48, i32 %43, i32 %49
  %51 = load i32, ptr %23, align 4
  %52 = shl i32 %51, 8
  %53 = add i32 %52, 776
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %53, i32 noundef %50) #7
  %54 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %23, align 4
  %57 = shl i32 %56, 8
  %58 = add i32 %57, 780
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %58, i32 noundef %55) #7
  %59 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 13
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %17
  %63 = getelementptr inbounds %struct.vsp1_entity, ptr %60, i32 0, i32 14
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 7
  %66 = load i32, ptr %65, align 4
  %67 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef nonnull %60, ptr noundef %64, i32 noundef %66, i32 noundef 256) #7
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.v4l2_rect, ptr %67, i32 0, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = shl i32 %68, 16
  br label %72

72:                                               ; preds = %62, %17
  %73 = phi i32 [ %71, %62 ], [ 0, %17 ]
  %74 = phi i32 [ %70, %62 ], [ 0, %17 ]
  %75 = load i8, ptr %19, align 1, !range !9
  %76 = zext i8 %75 to i32
  %77 = lshr i32 %74, %76
  %78 = or i32 %77, %73
  %79 = load i32, ptr %23, align 4
  %80 = shl i32 %79, 8
  %81 = add i32 %80, 784
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %81, i32 noundef %78) #7
  %82 = getelementptr inbounds %struct.vsp1_format_info, ptr %6, i32 0, i32 10
  %83 = load i8, ptr %82, align 4, !range !9
  %84 = icmp eq i8 %83, 0
  %85 = select i1 %84, i32 1074003968, i32 262144
  %86 = load i32, ptr %23, align 4
  %87 = shl i32 %86, 8
  %88 = add i32 %87, 788
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %88, i32 noundef %85) #7
  %89 = load ptr, ptr %0, align 4
  %90 = getelementptr inbounds %struct.vsp1_device, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.vsp1_device_info, ptr %91, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %108

95:                                               ; preds = %72
  %96 = load i8, ptr %82, align 4, !range !9
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 7
  %100 = load i8, ptr %99, align 1
  %101 = and i8 %100, 1
  %102 = zext i8 %101 to i32
  %103 = shl nuw nsw i32 %102, 8
  %104 = or i32 %103, 4096
  br label %105

105:                                              ; preds = %98, %95
  %106 = phi i32 [ %104, %98 ], [ 0, %95 ]
  %107 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 9
  store i32 %106, ptr %107, align 4
  br label %108

108:                                              ; preds = %105, %72
  %109 = load i32, ptr %23, align 4
  %110 = shl i32 %109, 8
  %111 = add i32 %110, 796
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %111, i32 noundef 0) #7
  %112 = load i32, ptr %23, align 4
  %113 = shl i32 %112, 8
  %114 = add i32 %113, 808
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %114, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpf_configure_frame(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = shl i32 %6, 24
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = shl i32 %9, 8
  %11 = add i32 %10, 792
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %11, i32 noundef %7) #7
  %12 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 9
  %13 = load i32, ptr %12, align 4
  %14 = load i32, ptr %5, align 4
  %15 = or i32 %14, %13
  %16 = load i32, ptr %8, align 4
  %17 = shl i32 %16, 8
  %18 = add i32 %17, 876
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %18, i32 noundef %15) #7
  %19 = load i32, ptr %5, align 4
  tail call void @vsp1_pipeline_propagate_alpha(ptr noundef %1, ptr noundef %3, i32 noundef %19) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rpf_configure_partition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 12, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 12, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr @vsp1_rwpf_get_crop(ptr noundef %0, ptr noundef %15) #7
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %16, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %16, i32 8
  %21 = getelementptr inbounds i8, ptr %16, i32 12
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 23
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 24
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.vsp1_partition_window, ptr %28, i32 0, i32 1
  %30 = load i32, ptr %28, align 4
  %31 = add i32 %30, %17
  br label %32

32:                                               ; preds = %26, %4
  %33 = phi i32 [ %31, %26 ], [ %17, %4 ]
  %34 = phi ptr [ %29, %26 ], [ %20, %4 ]
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.vsp1_pipeline, ptr %1, i32 0, i32 22
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %32
  %40 = lshr i32 %22, 1
  %41 = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 9
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 0, %42
  %44 = and i32 %40, %43
  %45 = sdiv i32 %19, 2
  %46 = and i32 %45, %43
  br label %47

47:                                               ; preds = %39, %32
  %48 = phi i32 [ %46, %39 ], [ %19, %32 ]
  %49 = phi i32 [ %44, %39 ], [ %22, %32 ]
  %50 = shl i32 %35, 16
  %51 = or i32 %49, %50
  %52 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 8
  %55 = add i32 %54, 768
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %55, i32 noundef %51) #7
  %56 = load i32, ptr %52, align 4
  %57 = shl i32 %56, 8
  %58 = add i32 %57, 772
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %58, i32 noundef %51) #7
  %59 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 0, i32 1
  %60 = load i32, ptr %59, align 1
  %61 = mul i32 %60, %48
  %62 = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 5
  %63 = load i32, ptr %62, align 4
  %64 = mul i32 %63, %33
  %65 = lshr i32 %64, 3
  %66 = add i32 %61, %6
  %67 = add i32 %66, %65
  %68 = getelementptr inbounds %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 6
  %69 = load i8, ptr %68, align 1
  %70 = icmp ugt i8 %69, 1
  br i1 %70, label %71, label %98

71:                                               ; preds = %47
  %72 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 1
  %73 = load i32, ptr %72, align 1
  %74 = mul i32 %73, %48
  %75 = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 8
  %76 = load i32, ptr %75, align 4
  %77 = udiv i32 %33, %76
  %78 = getelementptr %struct.vsp1_format_info, ptr %13, i32 0, i32 5, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = mul i32 %79, %77
  %81 = lshr i32 %80, 3
  %82 = add i32 %81, %74
  %83 = add i32 %82, %8
  %84 = add i32 %82, %10
  %85 = getelementptr inbounds %struct.vsp1_device, ptr %11, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.vsp1_device_info, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 3
  %90 = icmp eq i8 %69, 3
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %98

92:                                               ; preds = %71
  %93 = getelementptr inbounds %struct.vsp1_format_info, ptr %13, i32 0, i32 7
  %94 = load i8, ptr %93, align 1, !range !9
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i32 %83, i32 %84
  %97 = select i1 %95, i32 %84, i32 %83
  br label %98

98:                                               ; preds = %92, %71, %47
  %99 = phi i32 [ %83, %71 ], [ %96, %92 ], [ %8, %47 ]
  %100 = phi i32 [ %84, %71 ], [ %97, %92 ], [ %10, %47 ]
  %101 = load i8, ptr %36, align 1, !range !9
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %140, label %103

103:                                              ; preds = %98
  %104 = tail call ptr @vsp1_dl_get_pre_cmd(ptr noundef %2) #7
  %105 = icmp eq ptr %104, null
  %106 = load i1, ptr @vsp1_rpf_configure_autofld.__already_done, align 1
  %107 = xor i1 %106, true
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %109, label %110, !prof !10

109:                                              ; preds = %103
  store i1 true, ptr @vsp1_rpf_configure_autofld.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef nonnull @.str.3) #7
  br label %110

110:                                              ; preds = %109, %103
  br i1 %105, label %150, label %111

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %104, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = load i32, ptr %52, align 4
  %115 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114
  %116 = load i32, ptr %5, align 4
  store i32 %116, ptr %115, align 1
  %117 = load i32, ptr %7, align 4
  %118 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114, i32 2
  store i32 %117, ptr %118, align 1
  %119 = load i32, ptr %9, align 4
  %120 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114, i32 4
  store i32 %119, ptr %120, align 1
  %121 = load i32, ptr %59, align 1
  %122 = getelementptr %struct.vsp1_rwpf, ptr %0, i32 0, i32 5, i32 5, i32 1, i32 1
  %123 = load i32, ptr %122, align 1
  %124 = load i32, ptr %5, align 4
  %125 = add i32 %124, %121
  %126 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114, i32 1
  store i32 %125, ptr %126, align 1
  %127 = load i32, ptr %7, align 4
  %128 = add i32 %127, %123
  %129 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114, i32 3
  store i32 %128, ptr %129, align 1
  %130 = load i32, ptr %9, align 4
  %131 = add i32 %130, %123
  %132 = getelementptr %struct.vsp1_extcmd_auto_fld_body, ptr %113, i32 %114, i32 5
  store i32 %131, ptr %132, align 1
  %133 = load i32, ptr %52, align 4
  %134 = add i32 %133, 16
  %135 = shl nuw i32 1, %134
  %136 = getelementptr inbounds %struct.vsp1_dl_ext_cmd, ptr %104, i32 0, i32 3
  %137 = load i32, ptr %136, align 4
  %138 = or i32 %137, %135
  %139 = or i32 %138, 1
  store i32 %139, ptr %136, align 4
  br label %150

140:                                              ; preds = %98
  %141 = load i32, ptr %52, align 4
  %142 = shl i32 %141, 8
  %143 = add i32 %142, 828
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %143, i32 noundef %67) #7
  %144 = load i32, ptr %52, align 4
  %145 = shl i32 %144, 8
  %146 = add i32 %145, 832
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %146, i32 noundef %99) #7
  %147 = load i32, ptr %52, align 4
  %148 = shl i32 %147, 8
  %149 = add i32 %148, 836
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef %149, i32 noundef %100) #7
  br label %150

150:                                              ; preds = %140, %111, %110
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @rpf_partition(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr nocapture noundef readonly %4) #6 {
  %6 = load i64, ptr %4, align 4
  store i64 %6, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_pipeline_propagate_alpha(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_rwpf_get_crop(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_get_pre_cmd(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!10 = !{!"branch_weights", i32 1, i32 2000}
