; ModuleID = '/llk/IR/drivers/devfreq/governor_simpleondemand.c_pt.bc'
source_filename = "../drivers/devfreq/governor_simpleondemand.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devfreq_governor = type { %struct.list_head, [16 x i8], i64, i64, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.5, ptr }
%union.anon.5 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_dev_profile = type { i32, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }

@__initcall__kmod_governor_simpleondemand__162_130_devfreq_simple_ondemand_init4 = internal global ptr @devfreq_simple_ondemand_init, section ".initcall4.init", align 4
@devfreq_simple_ondemand = internal global %struct.devfreq_governor { %struct.list_head zeroinitializer, [16 x i8] c"simple_ondemand\00", i64 3, i64 0, ptr @devfreq_simple_ondemand_func, ptr @devfreq_simple_ondemand_handler }, align 8
@.str = private unnamed_addr constant [33 x i8] c"\013%s: failed remove governor %d\0A\00", align 1
@__func__.devfreq_simple_ondemand_exit = private unnamed_addr constant [29 x i8] c"devfreq_simple_ondemand_exit\00", align 1
@__exitcall_devfreq_simple_ondemand_exit = internal global ptr @devfreq_simple_ondemand_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file163 = internal constant [69 x i8] c"governor_simpleondemand.file=drivers/devfreq/governor_simpleondemand\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [36 x i8] c"governor_simpleondemand.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_devfreq_simple_ondemand_exit, ptr @__initcall__kmod_governor_simpleondemand__162_130_devfreq_simple_ondemand_init4, ptr @devfreq_simple_ondemand_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @devfreq_simple_ondemand_init() #0 section ".init.text" {
  %1 = tail call i32 @devfreq_add_governor(ptr noundef nonnull @devfreq_simple_ondemand) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @devfreq_simple_ondemand_exit() #0 section ".exit.text" {
  %1 = tail call i32 @devfreq_remove_governor(ptr noundef nonnull @devfreq_simple_ondemand) #4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.devfreq_simple_ondemand_exit, i32 noundef %1) #5
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_remove_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devfreq_add_governor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_simple_ondemand_func(ptr noundef %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.devfreq_dev_profile, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %85, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 9
  %14 = tail call i32 %8(ptr noundef %12, ptr noundef %13) #4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %85

16:                                               ; preds = %10
  %17 = icmp eq ptr %4, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %16
  %19 = load i32, ptr %4, align 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 90, i32 %19
  %22 = getelementptr inbounds %struct.devfreq_simple_ondemand_data, ptr %4, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 5, i32 %23
  br label %26

26:                                               ; preds = %18, %16
  %27 = phi i32 [ 90, %16 ], [ %21, %18 ]
  %28 = phi i32 [ 5, %16 ], [ %25, %18 ]
  %29 = icmp ugt i32 %27, 100
  %30 = icmp ult i32 %27, %28
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %85, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %83, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 9, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ugt i32 %37, 16777215
  %39 = icmp ugt i32 %33, 16777215
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = lshr i32 %37, 7
  store i32 %42, ptr %36, align 4
  %43 = lshr i32 %33, 7
  store i32 %43, ptr %13, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = phi i32 [ %33, %35 ], [ %43, %41 ]
  %46 = phi i32 [ %37, %35 ], [ %42, %41 ]
  %47 = mul nuw i32 %46, 100
  %48 = mul nuw i32 %45, %27
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %83, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 9, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %50
  %55 = sub i32 %27, %28
  %56 = mul i32 %45, %55
  %57 = icmp ugt i32 %47, %56
  br i1 %57, label %83, label %58

58:                                               ; preds = %54
  %59 = zext i32 %46 to i64
  %60 = zext i32 %52 to i64
  %61 = mul nuw nsw i64 %60, %59
  %62 = icmp ult i64 %61, 4294967296
  br i1 %62, label %63, label %67, !prof !8

63:                                               ; preds = %58
  %64 = trunc i64 %61 to i32
  %65 = udiv i32 %64, %45
  %66 = zext i32 %65 to i64
  br label %70

67:                                               ; preds = %58
  %68 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %45, i64 %61) #6, !srcloc !9
  %69 = extractvalue { i64, i64 } %68, 1
  br label %70

70:                                               ; preds = %67, %63
  %71 = phi i64 [ %66, %63 ], [ %69, %67 ]
  %72 = mul i64 %71, 100
  %73 = lshr i32 %28, 1
  %74 = sub nsw i32 %27, %73
  %75 = icmp ult i64 %72, 4294967296
  br i1 %75, label %76, label %79, !prof !8

76:                                               ; preds = %70
  %77 = trunc i64 %72 to i32
  %78 = udiv i32 %77, %74
  br label %83

79:                                               ; preds = %70
  %80 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %74, i64 %72) #6, !srcloc !9
  %81 = extractvalue { i64, i64 } %80, 1
  %82 = trunc i64 %81 to i32
  br label %83

83:                                               ; preds = %79, %76, %54, %50, %44, %32
  %84 = phi i32 [ -1, %32 ], [ -1, %44 ], [ -1, %50 ], [ %52, %54 ], [ %78, %76 ], [ %82, %79 ]
  store i32 %84, ptr %1, align 4
  br label %85

85:                                               ; preds = %83, %26, %10, %2
  %86 = phi i32 [ %14, %10 ], [ -22, %26 ], [ -22, %2 ], [ 0, %83 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_simple_ondemand_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2) #3 {
  switch i32 %1, label %9 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
  ]

4:                                                ; preds = %3
  tail call void @devfreq_monitor_start(ptr noundef %0) #4
  br label %9

5:                                                ; preds = %3
  tail call void @devfreq_monitor_stop(ptr noundef %0) #4
  br label %9

6:                                                ; preds = %3
  tail call void @devfreq_update_interval(ptr noundef %0, ptr noundef %2) #4
  br label %9

7:                                                ; preds = %3
  tail call void @devfreq_monitor_suspend(ptr noundef %0) #4
  br label %9

8:                                                ; preds = %3
  tail call void @devfreq_monitor_resume(ptr noundef %0) #4
  br label %9

9:                                                ; preds = %8, %7, %6, %5, %4, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_update_interval(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devfreq_monitor_resume(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2147893155, i64 2147893435, i64 2147893769, i64 2147894103}
