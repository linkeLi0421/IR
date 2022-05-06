; ModuleID = '/llk/IR/drivers/media/platform/vsp1/vsp1_clu.c_pt.bc'
source_filename = "../drivers/media/platform/vsp1/vsp1_clu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vsp1_entity_operations = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vsp1_clu = type { %struct.vsp1_entity, %struct.v4l2_ctrl_handler, i8, %struct.spinlock, i32, ptr, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.74, i16, i16, i16, [10 x i16] }
%union.anon.74 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.70, %union.anon.71, i32, ptr, i32, %struct.anon.72, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.70 = type { i64 }
%union.anon.71 = type { ptr }
%struct.anon.72 = type { i32 }

@clu_entity_ops = internal constant %struct.vsp1_entity_operations { ptr @clu_destroy, ptr @clu_configure_stream, ptr @clu_configure_frame, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [4 x i8] c"clu\00", align 1
@clu_ops = internal constant %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clu_pad_ops }, align 4
@clu_table_control = internal constant %struct.v4l2_ctrl_config { ptr @clu_ctrl_ops, ptr null, i32 9967873, ptr @.str.2, i32 258, i64 0, i64 16777215, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] [i32 17, i32 17, i32 17, i32 0], i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, align 8
@clu_mode_control = internal constant %struct.v4l2_ctrl_config { ptr @clu_ctrl_ops, ptr null, i32 9967874, ptr @.str.3, i32 3, i64 0, i64 1, i64 0, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @clu_mode_menu, ptr null, i8 0 }, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"clu: failed to initialize controls\0A\00", align 1
@clu_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr @vsp1_entity_init_cfg, ptr @clu_enum_mbus_code, ptr @clu_enum_frame_size, ptr null, ptr @vsp1_subdev_get_pad_format, ptr @clu_set_format, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@clu_codes = internal constant [3 x i32] [i32 4109, i32 24577, i32 8215], align 4
@clu_ctrl_ops = internal constant %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @clu_s_ctrl }, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Look-Up Table\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Mode\00", align 1
@clu_mode_menu = internal constant [3 x ptr] [ptr @.str.4, ptr @.str.5, ptr null], align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"2D\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"3D\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vsp1_clu_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 412, i32 noundef 3520) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %33, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.vsp1_clu, ptr %3, i32 0, i32 3
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 1
  store ptr @clu_entity_ops, ptr %7, align 4
  %8 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 2
  store i32 2, ptr %8, align 4
  %9 = tail call i32 @vsp1_entity_init(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 2, ptr noundef nonnull @clu_ops, i32 noundef 16388) #3
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = inttoptr i32 %9 to ptr
  br label %33

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 4
  %15 = tail call ptr @vsp1_dl_body_pool_create(ptr noundef %14, i32 noundef 3, i32 noundef 4914, i32 noundef 0) #3
  %16 = getelementptr inbounds %struct.vsp1_clu, ptr %3, i32 0, i32 6
  store ptr %15, ptr %16, align 4
  %17 = icmp eq ptr %15, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.vsp1_clu, ptr %3, i32 0, i32 1
  %20 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %19, i32 noundef 2, ptr noundef null, ptr noundef null) #3
  %21 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %19, ptr noundef nonnull @clu_table_control, ptr noundef null) #3
  %22 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %19, ptr noundef nonnull @clu_mode_control, ptr noundef null) #3
  %23 = getelementptr inbounds %struct.vsp1_entity, ptr %3, i32 0, i32 13, i32 8
  store ptr %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.vsp1_clu, ptr %3, i32 0, i32 1, i32 9
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.1) #4
  %29 = load i32, ptr %24, align 4
  tail call void @vsp1_entity_destroy(ptr noundef nonnull %3) #3
  %30 = inttoptr i32 %29 to ptr
  br label %33

31:                                               ; preds = %18
  %32 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %19) #3
  br label %33

33:                                               ; preds = %31, %27, %13, %11, %1
  %34 = phi ptr [ %12, %11 ], [ %30, %27 ], [ %3, %31 ], [ inttoptr (i32 -12 to ptr), %1 ], [ inttoptr (i32 -12 to ptr), %13 ]
  ret ptr %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_body_pool_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clu_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  tail call void @vsp1_dl_body_pool_destroy(ptr noundef %3) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clu_configure_stream(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_entity, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr @vsp1_entity_get_pad_format(ptr noundef %0, ptr noundef %6, i32 noundef 0) #3
  %8 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 8215
  %11 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 2
  %12 = zext i1 %10 to i8
  store i8 %12, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clu_configure_frame(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, i32 285212673, i32 285266803
  br label %13

13:                                               ; preds = %8, %4
  %14 = phi i32 [ 285212673, %4 ], [ %12, %8 ]
  tail call void @vsp1_dl_body_write(ptr noundef %3, i32 noundef 10496, i32 noundef %14) #3
  %15 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 3
  %16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #3
  %17 = getelementptr inbounds %struct.vsp1_clu, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  store ptr null, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #3
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call i32 @vsp1_dl_list_add_body(ptr noundef %2, ptr noundef nonnull %18) #3
  tail call void @vsp1_dl_body_put(ptr noundef nonnull %18) #3
  br label %22

22:                                               ; preds = %20, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_entity_get_pad_format(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_dl_list_add_body(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vsp1_dl_body_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_entity_init_cfg(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clu_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_mbus_code(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @clu_codes, i32 noundef 3) #3
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clu_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_enum_frame_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_get_pad_format(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clu_set_format(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @vsp1_subdev_set_pad_format(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @clu_codes, i32 noundef 3, i32 noundef 4, i32 noundef 4, i32 noundef 8190, i32 noundef 8190) #3
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_mbus_code(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_enum_frame_size(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vsp1_subdev_set_pad_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clu_s_ctrl(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 8
  switch i32 %5, label %30 [
    i32 9967873, label %6
    i32 9967874, label %26
  ]

6:                                                ; preds = %1
  %7 = getelementptr i8, ptr %3, i32 128
  %8 = load ptr, ptr %7, align 4
  %9 = tail call ptr @vsp1_dl_body_get(ptr noundef %8) #3
  %10 = icmp eq ptr %9, null
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  tail call void @vsp1_dl_body_write(ptr noundef nonnull %9, i32 noundef 29696, i32 noundef 0) #3
  %12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 25
  br label %13

13:                                               ; preds = %13, %11
  %14 = phi i32 [ 0, %11 ], [ %18, %13 ]
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr i32, ptr %15, i32 %14
  %17 = load i32, ptr %16, align 4
  tail call void @vsp1_dl_body_write(ptr noundef nonnull %9, i32 noundef 29700, i32 noundef %17) #3
  %18 = add nuw nsw i32 %14, 1
  %19 = icmp eq i32 %18, 4913
  br i1 %19, label %20, label %13

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %3, i32 116
  tail call void @_raw_spin_lock_irq(ptr noundef %21) #3
  %22 = getelementptr i8, ptr %3, i32 124
  %23 = load ptr, ptr %22, align 4
  store ptr %9, ptr %22, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  %24 = load i16, ptr %21, align 4
  %25 = add i16 %24, 1
  store i16 %25, ptr %21, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #3, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !13
  tail call void @vsp1_dl_body_put(ptr noundef %23) #3
  br label %30

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.v4l2_ctrl, ptr %0, i32 0, i32 22
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %3, i32 120
  store i32 %28, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %20, %6, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vsp1_dl_body_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2149214644}
!10 = !{i64 2149210468}
!11 = !{i64 2149210543, i64 2149210570, i64 2149210617, i64 2149210639, i64 2149210667, i64 2149210687}
!12 = !{i64 607079}
!13 = !{i64 2149238788}
