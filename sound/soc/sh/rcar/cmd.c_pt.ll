; ModuleID = '/llk/IR/sound/soc/sh/rcar/cmd.c_pt.bc'
source_filename = "../sound/soc/sh/rcar/cmd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rsnd_mod_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rsnd_dai_stream = type { [16 x i8], ptr, [13 x ptr], ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.rsnd_dai = type { [16 x i8], %struct.rsnd_dai_stream, %struct.rsnd_dai_stream, ptr, %struct.snd_pcm_hw_constraint_list, i32, i32, i32, i8 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.rsnd_priv = type { ptr, %struct.spinlock, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rsnd_cmd = type { %struct.rsnd_mod }
%struct.rsnd_mod = type { i32, i32, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@rsnd_cmd_ops = internal global %struct.rsnd_mod_ops { ptr @.str.1, ptr null, ptr null, ptr null, ptr @rsnd_cmd_init, ptr null, ptr @rsnd_cmd_start, ptr @rsnd_cmd_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rsnd_mod_get_status, ptr null, ptr null, ptr null, ptr @rsnd_cmd_debug_info }, align 4
@.str = private unnamed_addr constant [24 x i8] c"sound/soc/sh/rcar/cmd.c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@rsnd_cmd_init.path = internal unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 0, i32 0, i32 0, i32 256, i32 4096, i32 0, i32 0, i32 32768], align 4
@rsnd_cmd_init.cmd_case = internal unnamed_addr constant [10 x i8] c"\03\03\04\01\02\04\01\00\00\02", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_cmd_attach(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rsnd_dai_stream, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rsnd_dai, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %1, 0
  br i1 %7, label %12, label %8, !prof !8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %13, label %12, !prof !9

12:                                               ; preds = %8, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 141, i32 noundef 9, ptr noundef null) #3
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi i32 [ 0, %12 ], [ %1, %8 ]
  %15 = getelementptr inbounds %struct.rsnd_priv, ptr %6, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.rsnd_cmd, ptr %16, i32 %14
  %18 = getelementptr inbounds %struct.rsnd_mod, ptr %17, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @rsnd_dai_connect(ptr noundef %17, ptr noundef %0, i32 noundef %19) #3
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_dai_connect(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rsnd_cmd_probe(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %4 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 15
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %35, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 17
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %8
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 24) #3
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %35, label %15, !prof !10

15:                                               ; preds = %12
  %16 = extractvalue { i32, i1 } %13, 0
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %16, i32 noundef 3520) #3
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 19
  store i32 %10, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 18
  store ptr %17, ptr %21, align 4
  br label %30

22:                                               ; preds = %30
  %23 = add nuw nsw i32 %32, 1
  %24 = load i32, ptr %20, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr %struct.rsnd_cmd, ptr %27, i32 %23
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26, %19
  %31 = phi ptr [ %17, %19 ], [ %28, %26 ]
  %32 = phi i32 [ 0, %19 ], [ %23, %26 ]
  %33 = tail call i32 @rsnd_mod_init(ptr noundef %0, ptr noundef nonnull %31, ptr noundef nonnull @rsnd_cmd_ops, ptr noundef null, i32 noundef 5, i32 noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %22, label %35

35:                                               ; preds = %30, %26, %22, %15, %12, %8, %1
  %36 = phi i32 [ 0, %1 ], [ 0, %8 ], [ -12, %15 ], [ -12, %12 ], [ %33, %30 ], [ 0, %22 ], [ 0, %26 ]
  ret i32 %36
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rsnd_cmd_remove(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 18
  %3 = getelementptr inbounds %struct.rsnd_priv, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %11, %1
  %7 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr %struct.rsnd_cmd, ptr %8, i32 %7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  tail call void @rsnd_mod_quit(ptr noundef nonnull %9) #3
  %12 = add nuw nsw i32 %7, 1
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %6, label %15

15:                                               ; preds = %11, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_quit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %5, null
  %10 = select i1 %8, i1 true, i1 %9
  br i1 %10, label %11, label %73

11:                                               ; preds = %3
  %12 = tail call i32 @rsnd_mod_id(ptr noundef %0) #3
  %13 = add i32 %12, -10
  %14 = icmp ult i32 %13, -11
  br i1 %14, label %73, label %15

15:                                               ; preds = %11
  br i1 %8, label %16, label %53

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.rsnd_priv, ptr %2, i32 0, i32 22
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %67

20:                                               ; preds = %48, %16
  %21 = phi i32 [ %50, %48 ], [ 0, %16 ]
  %22 = phi i32 [ %49, %48 ], [ 0, %16 ]
  %23 = tail call ptr @rsnd_rdai_get(ptr noundef %2, i32 noundef %21) #3
  %24 = icmp eq ptr %23, null
  br i1 %24, label %67, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %7, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 1, i32 2, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 @rsnd_mod_id(ptr noundef %31) #3
  %33 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %32
  %34 = load i32, ptr %33, align 4
  %35 = or i32 %34, %22
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi i32 [ %35, %29 ], [ %22, %25 ]
  %38 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %7, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = getelementptr %struct.rsnd_dai, ptr %23, i32 0, i32 2, i32 2, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 @rsnd_mod_id(ptr noundef %43) #3
  %45 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %37
  br label %48

48:                                               ; preds = %41, %36
  %49 = phi i32 [ %47, %41 ], [ %37, %36 ]
  %50 = add nuw nsw i32 %21, 1
  %51 = load i32, ptr %17, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %20, label %67

53:                                               ; preds = %15
  %54 = getelementptr %struct.rsnd_dai_stream, ptr %1, i32 0, i32 2, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %73, label %57, !prof !10

57:                                               ; preds = %53
  %58 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %55) #3
  %59 = getelementptr [10 x i32], ptr @rsnd_cmd_init.path, i32 0, i32 %58
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @rsnd_mod_id(ptr noundef nonnull %55) #3
  %62 = getelementptr [10 x i8], ptr @rsnd_cmd_init.cmd_case, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl nuw nsw i32 %64, 16
  %66 = or i32 %65, %60
  br label %67

67:                                               ; preds = %57, %48, %20, %16
  %68 = phi i32 [ %66, %57 ], [ 0, %16 ], [ %49, %48 ], [ %22, %20 ]
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 31, i32 noundef %68) #3
  %69 = tail call i32 @rsnd_get_busif_shift(ptr noundef %1, ptr noundef %0) #3
  %70 = or i32 %69, 1
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 29, i32 noundef %70) #3
  %71 = tail call i32 @rsnd_get_dalign(ptr noundef %0, ptr noundef %1) #3
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 30, i32 noundef %71) #3
  %72 = tail call i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef %0, ptr noundef %1) #3
  br label %73

73:                                               ; preds = %67, %53, %11, %3
  %74 = phi i32 [ 0, %67 ], [ 0, %3 ], [ -6, %11 ], [ -5, %53 ]
  ret i32 %74
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_start(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 28, i32 noundef 16) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsnd_cmd_stop(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  tail call void @rsnd_mod_write(ptr noundef %0, i32 noundef 28, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_mod_get_status(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rsnd_cmd_debug_info(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call i32 @rsnd_mod_id_raw(ptr noundef %2) #3
  %5 = shl i32 %4, 5
  %6 = add i32 %5, 384
  tail call void @rsnd_debugfs_mod_reg_show(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef %6, i32 noundef 48) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rsnd_rdai_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_mod_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_busif_shift(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_get_dalign(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_adg_set_cmd_timsel_gen2(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rsnd_debugfs_mod_reg_show(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rsnd_mod_id_raw(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{!"branch_weights", i32 1073205, i32 2146410443}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{!"branch_weights", i32 1, i32 2000}
