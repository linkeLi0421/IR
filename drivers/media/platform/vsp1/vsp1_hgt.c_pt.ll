; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_hgt.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_hgt.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_histogram_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.75, i32 }
%union.anon.75 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_hgt = type { %struct.vsp1_histogram, %struct.v4l2_ctrl_handler, [12 x i8] }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@hgt_hue_areas = internal constant %struct.v4l2_ctrl_config { ptr @hgt_hue_areas_ctrl_ops, ptr null, i32 9967873, ptr @.str.1, i32 256, i64 0, i64 255, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 12, i32 0, i32 0, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@.str = private unnamed_addr constant [4 x i8] c"hgt\00", align 1
@hgt_entity_ops = internal constant %struct.vsp1_entity_operations { ptr @vsp1_histogram_destroy, ptr @hgt_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@hgt_mbus_formats = internal constant [1 x i32] [i32 24577], align 4
@hgt_hue_areas_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr @hgt_hue_areas_try_ctrl, ptr @hgt_hue_areas_s_ctrl }, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Boundary Values for Hue Area\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_hgt_frame_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @vsp1_histogram_buffer_get(ptr noundef %0) #5
  %3 = icmp eq ptr %2, null
  br i1 %3, label %98, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.vsp1_device, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 14160
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %12 = getelementptr i32, ptr %6, i32 1
  store i32 %11, ptr %6, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.vsp1_device, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 14164
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %18 = getelementptr i32, ptr %6, i32 2
  store i32 %17, ptr %12, align 4
  br label %19

19:                                               ; preds = %19, %4
  %20 = phi ptr [ %18, %4 ], [ %29, %19 ]
  %21 = phi i32 [ 0, %4 ], [ %30, %19 ]
  %22 = shl nuw nsw i32 %21, 2
  %23 = add nuw nsw i32 %22, 13392
  %24 = load ptr, ptr %0, align 8
  %25 = getelementptr inbounds %struct.vsp1_device, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %23
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %29 = getelementptr i32, ptr %20, i32 1
  store i32 %28, ptr %20, align 4
  %30 = add nuw nsw i32 %21, 1
  %31 = icmp eq i32 %30, 32
  br i1 %31, label %32, label %19

32:                                               ; preds = %32, %19
  %33 = phi ptr [ %42, %32 ], [ %29, %19 ]
  %34 = phi i32 [ %43, %32 ], [ 0, %19 ]
  %35 = shl nuw nsw i32 %34, 2
  %36 = add nuw nsw i32 %35, 13520
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.vsp1_device, ptr %37, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %42 = getelementptr i32, ptr %33, i32 1
  store i32 %41, ptr %33, align 4
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %45, label %32

45:                                               ; preds = %45, %32
  %46 = phi ptr [ %55, %45 ], [ %42, %32 ]
  %47 = phi i32 [ %56, %45 ], [ 0, %32 ]
  %48 = shl nuw nsw i32 %47, 2
  %49 = add nuw nsw i32 %48, 13648
  %50 = load ptr, ptr %0, align 8
  %51 = getelementptr inbounds %struct.vsp1_device, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %49
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %55 = getelementptr i32, ptr %46, i32 1
  store i32 %54, ptr %46, align 4
  %56 = add nuw nsw i32 %47, 1
  %57 = icmp eq i32 %56, 32
  br i1 %57, label %58, label %45

58:                                               ; preds = %58, %45
  %59 = phi ptr [ %68, %58 ], [ %55, %45 ]
  %60 = phi i32 [ %69, %58 ], [ 0, %45 ]
  %61 = shl nuw nsw i32 %60, 2
  %62 = add nuw nsw i32 %61, 13776
  %63 = load ptr, ptr %0, align 8
  %64 = getelementptr inbounds %struct.vsp1_device, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %62
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %68 = getelementptr i32, ptr %59, i32 1
  store i32 %67, ptr %59, align 4
  %69 = add nuw nsw i32 %60, 1
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %58

71:                                               ; preds = %71, %58
  %72 = phi ptr [ %81, %71 ], [ %68, %58 ]
  %73 = phi i32 [ %82, %71 ], [ 0, %58 ]
  %74 = shl nuw nsw i32 %73, 2
  %75 = add nuw nsw i32 %74, 13904
  %76 = load ptr, ptr %0, align 8
  %77 = getelementptr inbounds %struct.vsp1_device, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 %75
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %81 = getelementptr i32, ptr %72, i32 1
  store i32 %80, ptr %72, align 4
  %82 = add nuw nsw i32 %73, 1
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %84, label %71

84:                                               ; preds = %84, %71
  %85 = phi ptr [ %94, %84 ], [ %81, %71 ]
  %86 = phi i32 [ %95, %84 ], [ 0, %71 ]
  %87 = shl nuw nsw i32 %86, 2
  %88 = add nuw nsw i32 %87, 14032
  %89 = load ptr, ptr %0, align 8
  %90 = getelementptr inbounds %struct.vsp1_device, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr i8, ptr %91, i32 %88
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %94 = getelementptr i32, ptr %85, i32 1
  store i32 %93, ptr %85, align 4
  %95 = add nuw nsw i32 %86, 1
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %97, label %84

97:                                               ; preds = %84
  tail call void @vsp1_histogram_buffer_complete(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 776) #5
  br label %98

98:                                               ; preds = %97, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_histogram_buffer_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_buffer_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_hgt_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1704, i32 noundef 3520) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_hgt, ptr %3, i32 0, i32 1
  %7 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %6, i32 noundef 1, ptr noundef null, ptr noundef null) #5
  %8 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %6, ptr noundef nonnull @hgt_hue_areas, ptr noundef null) #5
  %9 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 13, i32 8
  store ptr %6, ptr %9, align 4
  %10 = tail call i32 @vsp1_histogram_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 4, ptr noundef nonnull @.str, ptr noundef nonnull @hgt_entity_ops, ptr noundef nonnull @hgt_mbus_formats, i32 noundef 1, i32 noundef 776, i32 noundef 1414550358) #5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %3) #5
  %13 = inttoptr i32 %10 to ptr
  br label %16

14:                                               ; preds = %5
  %15 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %6) #5
  br label %16

16:                                               ; preds = %14, %12, %1
  %17 = phi ptr [ %13, %12 ], [ %3, %14 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_histogram_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @hgt_hue_areas_try_ctrl(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %3, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %5, %7
  br i1 %8, label %51, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %3, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %7, %11
  br i1 %12, label %51, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %3, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp ugt i8 %11, %15
  br i1 %16, label %51, label %17

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %3, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = icmp ugt i8 %15, %19
  br i1 %20, label %51, label %21

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %3, i32 6
  %23 = load i8, ptr %22, align 1
  %24 = icmp ugt i8 %19, %23
  br i1 %24, label %51, label %25

25:                                               ; preds = %21
  %26 = getelementptr i8, ptr %3, i32 7
  %27 = load i8, ptr %26, align 1
  %28 = icmp ugt i8 %23, %27
  br i1 %28, label %51, label %29

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %3, i32 8
  %31 = load i8, ptr %30, align 1
  %32 = icmp ugt i8 %27, %31
  br i1 %32, label %51, label %33

33:                                               ; preds = %29
  %34 = getelementptr i8, ptr %3, i32 9
  %35 = load i8, ptr %34, align 1
  %36 = icmp ugt i8 %31, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %3, i32 10
  %39 = load i8, ptr %38, align 1
  %40 = icmp ugt i8 %35, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %3, i32 11
  %43 = load i8, ptr %42, align 1
  %44 = icmp ugt i8 %39, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load i8, ptr %3, align 1
  %47 = icmp ugt i8 %46, %5
  %48 = icmp ugt i8 %43, %46
  %49 = select i1 %47, i1 %48, i1 false
  %50 = select i1 %49, i32 -22, i32 0
  br label %51

51:                                               ; preds = %45, %41, %37, %33, %29, %25, %21, %17, %13, %9, %1
  %52 = phi i32 [ -22, %41 ], [ -22, %37 ], [ -22, %33 ], [ -22, %29 ], [ -22, %25 ], [ -22, %21 ], [ -22, %17 ], [ -22, %13 ], [ -22, %9 ], [ -22, %1 ], [ %50, %45 ]
  ret i32 %52
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hgt_hue_areas_s_ctrl(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 112
  %5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(12) %4, ptr noundef align 1 dereferenceable(12) %6, i32 12, i1 false)
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hgt_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %0, ptr noundef %6, i32 noundef 0, i32 noundef 0) #5
  %8 = load ptr, ptr %5, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %0, ptr noundef %8, i32 noundef 0, i32 noundef 256) #5
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 14332, i32 noundef 1) #5
  %10 = load i32, ptr %7, align 4
  %11 = shl i32 %10, 16
  %12 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, %13
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13312, i32 noundef %14) #5
  %15 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 16
  %18 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13316, i32 noundef %20) #5
  %21 = getelementptr inbounds %struct.vsp1_hgt, ptr %0, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_lock(ptr noundef %22) #5
  %23 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 0
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 1
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %24 to i32
  %28 = shl nuw nsw i32 %27, 16
  %29 = zext i8 %26 to i32
  %30 = or i32 %28, %29
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13324, i32 noundef %30) #5
  %31 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %32 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = zext i8 %34 to i32
  %38 = or i32 %36, %37
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13328, i32 noundef %38) #5
  %39 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 4
  %40 = load i8, ptr %39, align 1
  %41 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 5
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %40 to i32
  %44 = shl nuw nsw i32 %43, 16
  %45 = zext i8 %42 to i32
  %46 = or i32 %44, %45
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13332, i32 noundef %46) #5
  %47 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 7
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %48 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = zext i8 %50 to i32
  %54 = or i32 %52, %53
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13336, i32 noundef %54) #5
  %55 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 8
  %56 = load i8, ptr %55, align 1
  %57 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 9
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %56 to i32
  %60 = shl nuw nsw i32 %59, 16
  %61 = zext i8 %58 to i32
  %62 = or i32 %60, %61
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13340, i32 noundef %62) #5
  %63 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 10
  %64 = load i8, ptr %63, align 1
  %65 = getelementptr %struct.vsp1_hgt, ptr %0, i32 0, i32 2, i32 11
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %64 to i32
  %68 = shl nuw nsw i32 %67, 16
  %69 = zext i8 %66 to i32
  %70 = or i32 %68, %69
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13344, i32 noundef %70) #5
  %71 = load ptr, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %71) #5
  %72 = load i32, ptr %15, align 4
  %73 = shl i32 %72, 1
  %74 = getelementptr inbounds %struct.v4l2_rect, ptr %9, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = udiv i32 %73, %75
  %77 = udiv i32 %76, 3
  %78 = load i32, ptr %18, align 4
  %79 = shl i32 %78, 1
  %80 = getelementptr inbounds %struct.v4l2_rect, ptr %9, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  %82 = udiv i32 %79, %81
  %83 = udiv i32 %82, 3
  %84 = shl i32 %77, 2
  %85 = or i32 %83, %84
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13320, i32 noundef %85) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_selection(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }

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
!8 = !{i64 5746706}
!9 = !{i64 2153278669}
