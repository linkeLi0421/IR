; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_hgo.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_hgo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vsp1_hgo = type { %struct.vsp1_histogram, %struct.anon.81, i8, i32 }
%struct.vsp1_histogram = type { %struct.vsp1_entity, %struct.video_device, %struct.media_pad, ptr, i32, i32, i32, %struct.mutex, %struct.vb2_queue, %struct.spinlock, %struct.list_head, %struct.wait_queue_head, i8 }
%struct.vsp1_entity = type { ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, i32, ptr, ptr, i32, %struct.v4l2_subdev, ptr, %struct.mutex }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.68 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.65], %struct.media_entity_enum, i32 }
%struct.anon.65 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.81 = type { %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.vsp1_device = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, [5 x ptr], ptr, [3 x ptr], [2 x ptr], [4 x ptr], %struct.list_head, %struct.list_head, %struct.v4l2_device, %struct.media_device, %struct.media_entity_operations, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.vsp1_device_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }

@hgo_max_rgb_control = internal constant %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9967873, ptr @.str.1, i32 2, i64 0, i64 1, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 1024, i64 0, ptr null, ptr null, i8 0 }, align 8
@hgo_num_bins_control = internal constant %struct.v4l2_ctrl_config { ptr null, ptr null, i32 9967874, ptr @.str.2, i32 9, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 1024, i64 0, ptr null, ptr @hgo_num_bins, i8 0 }, align 8
@.str = private unnamed_addr constant [4 x i8] c"hgo\00", align 1
@hgo_entity_ops = internal constant %struct.vsp1_entity_operations { ptr @vsp1_histogram_destroy, ptr @hgo_configure_stream, ptr null, ptr null, ptr null, ptr null }, align 4
@hgo_mbus_formats = internal constant [3 x i32] [i32 8215, i32 4109, i32 24577], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Maximum RGB Mode\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Number of Bins\00", align 1
@hgo_num_bins = internal constant [2 x i64] [i64 64, i64 256], align 8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vsp1_hgo_frame_end(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @vsp1_histogram_buffer_get(ptr noundef %0) #2
  %3 = icmp eq ptr %2, null
  br i1 %3, label %132, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.vsp1_histogram_buffer, ptr %2, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 256
  br i1 %9, label %10, label %38

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8
  %12 = getelementptr inbounds %struct.vsp1_device, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 12864
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %16 = getelementptr i32, ptr %6, i32 1
  store i32 %15, ptr %6, align 4
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.vsp1_device, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 12868
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %22 = getelementptr i32, ptr %6, i32 2
  store i32 %21, ptr %16, align 4
  br label %23

23:                                               ; preds = %23, %10
  %24 = phi ptr [ %22, %10 ], [ %35, %23 ]
  %25 = phi i32 [ 0, %10 ], [ %36, %23 ]
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.vsp1_device, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 13148
  tail call void asm sideeffect "dsb st", "~{memory}"() #2, !srcloc !10
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #2, !srcloc !11
  %30 = load ptr, ptr %0, align 8
  %31 = getelementptr inbounds %struct.vsp1_device, ptr %30, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 13152
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %35 = getelementptr i32, ptr %24, i32 1
  store i32 %34, ptr %24, align 4
  %36 = add nuw nsw i32 %25, 1
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %130, label %23

38:                                               ; preds = %4
  %39 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 2
  %40 = load i8, ptr %39, align 8, !range !12
  %41 = icmp eq i8 %40, 0
  %42 = load ptr, ptr %0, align 8
  %43 = getelementptr inbounds %struct.vsp1_device, ptr %42, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  br i1 %41, label %68, label %45

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %44, i32 12864
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %48 = getelementptr i32, ptr %6, i32 1
  store i32 %47, ptr %6, align 4
  %49 = load ptr, ptr %0, align 8
  %50 = getelementptr inbounds %struct.vsp1_device, ptr %49, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr i8, ptr %51, i32 12868
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %54 = getelementptr i32, ptr %6, i32 2
  store i32 %53, ptr %48, align 4
  br label %55

55:                                               ; preds = %55, %45
  %56 = phi ptr [ %54, %45 ], [ %65, %55 ]
  %57 = phi i32 [ 0, %45 ], [ %66, %55 ]
  %58 = shl nuw nsw i32 %57, 2
  %59 = add nuw nsw i32 %58, 12608
  %60 = load ptr, ptr %0, align 8
  %61 = getelementptr inbounds %struct.vsp1_device, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr i8, ptr %62, i32 %59
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %65 = getelementptr i32, ptr %56, i32 1
  store i32 %64, ptr %56, align 4
  %66 = add nuw nsw i32 %57, 1
  %67 = icmp eq i32 %66, 64
  br i1 %67, label %130, label %55

68:                                               ; preds = %38
  %69 = getelementptr i8, ptr %44, i32 12592
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %71 = getelementptr i32, ptr %6, i32 1
  store i32 %70, ptr %6, align 4
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.vsp1_device, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 12864
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %77 = getelementptr i32, ptr %6, i32 2
  store i32 %76, ptr %71, align 4
  %78 = load ptr, ptr %0, align 8
  %79 = getelementptr inbounds %struct.vsp1_device, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr i8, ptr %80, i32 13136
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %83 = getelementptr i32, ptr %6, i32 3
  store i32 %82, ptr %77, align 4
  %84 = load ptr, ptr %0, align 8
  %85 = getelementptr inbounds %struct.vsp1_device, ptr %84, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr i8, ptr %86, i32 12596
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %89 = getelementptr i32, ptr %6, i32 4
  store i32 %88, ptr %83, align 4
  %90 = load ptr, ptr %0, align 8
  %91 = getelementptr inbounds %struct.vsp1_device, ptr %90, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 12868
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %93) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %95 = getelementptr i32, ptr %6, i32 5
  store i32 %94, ptr %89, align 4
  %96 = load ptr, ptr %0, align 8
  %97 = getelementptr inbounds %struct.vsp1_device, ptr %96, i32 0, i32 3
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr i8, ptr %98, i32 13140
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %101 = getelementptr i32, ptr %6, i32 6
  store i32 %100, ptr %95, align 4
  br label %102

102:                                              ; preds = %102, %68
  %103 = phi i32 [ 0, %68 ], [ %128, %102 ]
  %104 = shl nuw nsw i32 %103, 2
  %105 = add nuw nsw i32 %104, 12336
  %106 = load ptr, ptr %0, align 8
  %107 = getelementptr inbounds %struct.vsp1_device, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 4
  %109 = getelementptr i8, ptr %108, i32 %105
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %109) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %111 = getelementptr i32, ptr %101, i32 %103
  store i32 %110, ptr %111, align 4
  %112 = add nuw nsw i32 %104, 12608
  %113 = load ptr, ptr %0, align 8
  %114 = getelementptr inbounds %struct.vsp1_device, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr i8, ptr %115, i32 %112
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %116) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %118 = add nuw nsw i32 %103, 64
  %119 = getelementptr i32, ptr %101, i32 %118
  store i32 %117, ptr %119, align 4
  %120 = add nuw nsw i32 %104, 12880
  %121 = load ptr, ptr %0, align 8
  %122 = getelementptr inbounds %struct.vsp1_device, ptr %121, i32 0, i32 3
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %120
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %124) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %126 = add nuw nsw i32 %103, 128
  %127 = getelementptr i32, ptr %101, i32 %126
  store i32 %125, ptr %127, align 4
  %128 = add nuw nsw i32 %103, 1
  %129 = icmp eq i32 %128, 64
  br i1 %129, label %130, label %102

130:                                              ; preds = %102, %55, %23
  %131 = phi i32 [ 1032, %23 ], [ 792, %102 ], [ 264, %55 ]
  tail call void @vsp1_histogram_buffer_complete(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %131) #2
  br label %132

132:                                              ; preds = %130, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_histogram_buffer_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_buffer_complete(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_hgo_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 1704, i32 noundef 3520) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_hgo, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.vsp1_device, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.vsp1_device_info, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, i32 2, i32 1
  %13 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %6, i32 noundef %12, ptr noundef null, ptr noundef null) #2
  %14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %6, ptr noundef nonnull @hgo_max_rgb_control, ptr noundef null) #2
  %15 = getelementptr inbounds %struct.vsp1_hgo, ptr %3, i32 0, i32 1, i32 1
  store ptr %14, ptr %15, align 8
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.vsp1_device_info, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 3
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %6, ptr noundef nonnull @hgo_num_bins_control, ptr noundef null) #2
  %22 = getelementptr inbounds %struct.vsp1_hgo, ptr %3, i32 0, i32 1, i32 2
  store ptr %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %20, %5
  %24 = getelementptr inbounds %struct.vsp1_hgo, ptr %3, i32 0, i32 2
  store i8 0, ptr %24, align 8
  %25 = getelementptr inbounds %struct.vsp1_hgo, ptr %3, i32 0, i32 3
  store i32 64, ptr %25, align 4
  %26 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 13, i32 8
  store ptr %6, ptr %26, align 4
  %27 = tail call i32 @vsp1_histogram_init(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 3, ptr noundef nonnull @.str, ptr noundef nonnull @hgo_entity_ops, ptr noundef nonnull @hgo_mbus_formats, i32 noundef 3, i32 noundef 1032, i32 noundef 1213223766) #2
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %3) #2
  %30 = inttoptr i32 %27 to ptr
  br label %31

31:                                               ; preds = %29, %23, %1
  %32 = phi ptr [ %30, %29 ], [ %3, %23 ], [ inttoptr (i32 -12 to ptr), %1 ]
  ret ptr %32
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
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_histogram_destroy(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hgo_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %0, ptr noundef %6, i32 noundef 0, i32 noundef 0) #2
  %8 = load ptr, ptr %5, align 4
  %9 = tail call ptr @vsp1_entity_get_pad_selection(ptr noundef %0, ptr noundef %8, i32 noundef 0, i32 noundef 256) #2
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 13308, i32 noundef 1) #2
  %10 = load i32, ptr %7, align 4
  %11 = shl i32 %10, 16
  %12 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = or i32 %11, %13
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 12288, i32 noundef %14) #2
  %15 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = shl i32 %16, 16
  %18 = getelementptr inbounds %struct.v4l2_rect, ptr %7, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = or i32 %17, %19
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 12292, i32 noundef %20) #2
  %21 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void @mutex_lock(ptr noundef %22) #2
  %23 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 23
  %26 = load i32, ptr %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 2
  %29 = zext i1 %27 to i8
  store i8 %29, ptr %28, align 8
  %30 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 1, i32 2
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %31, i32 0, i32 23
  %35 = load i32, ptr %34, align 8
  %36 = getelementptr [2 x i64], ptr @hgo_num_bins, i32 0, i32 %35
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %33, %4
  %41 = load ptr, ptr %21, align 4
  tail call void @mutex_unlock(ptr noundef %41) #2
  %42 = load i32, ptr %15, align 4
  %43 = shl i32 %42, 1
  %44 = getelementptr inbounds %struct.v4l2_rect, ptr %9, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = udiv i32 %43, %45
  %47 = udiv i32 %46, 3
  %48 = load i32, ptr %18, align 4
  %49 = shl i32 %48, 1
  %50 = getelementptr inbounds %struct.v4l2_rect, ptr %9, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = udiv i32 %49, %51
  %53 = udiv i32 %52, 3
  %54 = getelementptr inbounds %struct.vsp1_hgo, ptr %0, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 256
  %57 = select i1 %56, i32 1024, i32 0
  %58 = load i8, ptr %28, align 8, !range !12
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i32 0, i32 128
  %61 = shl i32 %47, 2
  %62 = or i32 %53, %61
  %63 = or i32 %62, %57
  %64 = or i32 %63, %60
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 12296, i32 noundef %64) #2
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
attributes #2 = { nounwind }

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
!8 = !{i64 5747140}
!9 = !{i64 2153279103}
!10 = !{i64 2153280325}
!11 = !{i64 5746722}
!12 = !{i8 0, i8 2}
