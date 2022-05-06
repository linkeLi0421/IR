; ModuleID = '/llk/IR/kernel/irq/cpuhotplug.c_pt.bc'
source_filename = "../kernel/irq/cpuhotplug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@migrate_one_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.migrate_one_irq = private unnamed_addr constant [16 x i8] c"migrate_one_irq\00", align 1
@.str = private unnamed_addr constant [35 x i8] c"\014IRQ%u: set affinity failed(%d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [83 x i8] c"\014Eff. affinity %*pbl of IRQ %u contains only offline CPUs after offlining CPU %u\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_migrate_all_off_this_cpu() local_unnamed_addr #0 {
  %1 = tail call i32 @irq_get_next_irq(i32 noundef 0) #6
  %2 = load i32, ptr @nr_irqs, align 4
  %3 = icmp ult i32 %1, %2
  br i1 %3, label %4, label %94

4:                                                ; preds = %87, %0
  %5 = phi i32 [ %91, %87 ], [ %1, %0 ]
  %6 = tail call ptr @irq_to_desc(i32 noundef %5) #6
  %7 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1
  %9 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.irq_chip, ptr %10, i32 0, i32 11
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %87, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 4196352
  %21 = icmp eq i32 %20, 4194304
  br i1 %21, label %22, label %87

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.irq_common_data, ptr %18, i32 0, i32 4
  %24 = tail call ptr @llvm.thread.pointer() #6
  %25 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 8
  %27 = load i32, ptr %23, align 4
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 0
  %30 = getelementptr inbounds %struct.irq_common_data, ptr %18, i32 0, i32 3
  %31 = select i1 %29, ptr %30, ptr %23
  %32 = tail call i32 @cpumask_any_but(ptr noundef %31, i32 noundef %26) #7
  %33 = load i32, ptr @nr_cpu_ids, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load i32, ptr %31, align 4
  %37 = load i32, ptr @__cpu_online_mask, align 4
  %38 = and i32 %36, 65535
  %39 = and i32 %38, %37
  %40 = icmp eq i32 %39, 0
  %41 = tail call i32 @llvm.cttz.i32(i32 %39, i1 true) #6, !range !8
  %42 = select i1 %40, i32 16, i32 %41
  %43 = icmp ult i32 %42, %33
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %33, ptr noundef %31, i32 noundef %46, i32 noundef %26) #8
  %48 = load ptr, ptr %17, align 4
  %49 = load i32, ptr @nr_cpu_ids, align 4
  br label %58

50:                                               ; preds = %35, %22
  %51 = lshr i32 %26, 5
  %52 = getelementptr i32, ptr %31, i32 %51
  %53 = load volatile i32, ptr %52, align 4
  %54 = and i32 %26, 31
  %55 = shl nuw i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %87, label %58

58:                                               ; preds = %50, %44
  %59 = phi i32 [ %49, %44 ], [ %33, %50 ]
  %60 = phi ptr [ %48, %44 ], [ %18, %50 ]
  %61 = getelementptr inbounds %struct.irq_common_data, ptr %60, i32 0, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = load i32, ptr @__cpu_online_mask, align 4
  %64 = and i32 %62, 65535
  %65 = and i32 %64, %63
  %66 = icmp eq i32 %65, 0
  %67 = tail call i32 @llvm.cttz.i32(i32 %65, i1 true) #6, !range !8
  %68 = select i1 %66, i32 16, i32 %67
  %69 = icmp ult i32 %68, %59
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = load i32, ptr %60, align 4
  %72 = and i32 %71, 2097152
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %70
  %75 = or i32 %71, 8388608
  store i32 %75, ptr %60, align 4
  tail call void @irq_shutdown_and_deactivate(ptr noundef %6) #6
  br label %87

76:                                               ; preds = %70, %58
  %77 = phi ptr [ %61, %58 ], [ @__cpu_online_mask, %70 ]
  %78 = tail call i32 @irq_do_set_affinity(ptr noundef %8, ptr noundef %77, i1 noundef zeroext false) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = tail call i32 @___ratelimit(ptr noundef nonnull @migrate_one_irq._rs, ptr noundef nonnull @__func__.migrate_one_irq) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %85, i32 noundef %78) #8
  br label %87

87:                                               ; preds = %83, %80, %76, %74, %50, %16, %12, %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %88 = load i16, ptr %7, align 4
  %89 = add i16 %88, 1
  store i16 %89, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !12
  %90 = add nuw i32 %5, 1
  %91 = tail call i32 @irq_get_next_irq(i32 noundef %90) #6
  %92 = load i32, ptr @nr_irqs, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %4, label %94

94:                                               ; preds = %87, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_next_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @irq_affinity_online_cpu(i32 noundef %0) local_unnamed_addr #0 {
  tail call void @irq_lock_sparse() #6
  %2 = tail call i32 @irq_get_next_irq(i32 noundef 0) #6
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %67

5:                                                ; preds = %1
  %6 = lshr i32 %0, 5
  %7 = and i32 %0, 31
  %8 = shl nuw i32 1, %7
  br label %9

9:                                                ; preds = %60, %5
  %10 = phi i32 [ %2, %5 ], [ %64, %60 ]
  %11 = tail call ptr @irq_to_desc(i32 noundef %10) #6
  %12 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %12) #6
  %13 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 1
  %14 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 1, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.irq_common_data, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %15, align 4
  %18 = and i32 %17, 2097152
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %60, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 4
  %22 = load ptr, ptr %21, align 64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %60, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.irq_desc, ptr %11, i32 0, i32 1, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %60, label %28

28:                                               ; preds = %24
  %29 = getelementptr i32, ptr %16, i32 %6
  %30 = load volatile i32, ptr %29, align 4
  %31 = and i32 %30, %8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %60, label %33

33:                                               ; preds = %28
  %34 = and i32 %17, 8388608
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @irq_startup(ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext false) #6
  br label %60

38:                                               ; preds = %33
  %39 = and i32 %17, 16777216
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %58, label %41

41:                                               ; preds = %38
  %42 = tail call zeroext i1 @housekeeping_enabled(i32 noundef 128) #6
  br i1 %42, label %43, label %60

43:                                               ; preds = %41
  %44 = tail call ptr @housekeeping_cpumask(i32 noundef 128) #6
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr inbounds %struct.irq_common_data, ptr %45, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %44, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, 65535
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %43
  %54 = getelementptr i32, ptr %44, i32 %6
  %55 = load volatile i32, ptr %54, align 4
  %56 = and i32 %55, %8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %38
  %59 = tail call i32 @irq_set_affinity_locked(ptr noundef %13, ptr noundef %16, i1 noundef zeroext false) #6
  br label %60

60:                                               ; preds = %58, %53, %43, %41, %36, %28, %24, %20, %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  %61 = load i16, ptr %12, align 4
  %62 = add i16 %61, 1
  store i16 %62, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !11
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !14
  %63 = add nuw i32 %10, 1
  %64 = tail call i32 @irq_get_next_irq(i32 noundef %63) #6
  %65 = load i32, ptr @nr_irqs, align 4
  %66 = icmp ult i32 %64, %65
  br i1 %66, label %9, label %67

67:                                               ; preds = %60, %1
  tail call void @irq_unlock_sparse() #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_lock_sparse() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_unlock_sparse() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_shutdown_and_deactivate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_do_set_affinity(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_any_but(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_startup(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity_locked(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @housekeeping_enabled(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @housekeeping_cpumask(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
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
!8 = !{i32 0, i32 33}
!9 = !{i64 2149236799}
!10 = !{i64 2149232623}
!11 = !{i64 2149232698, i64 2149232725, i64 2149232772, i64 2149232794, i64 2149232822, i64 2149232842}
!12 = !{i64 2149259802}
!13 = !{i64 336342}
!14 = !{i64 2149260943}
