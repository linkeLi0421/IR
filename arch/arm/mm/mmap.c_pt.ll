; ModuleID = '/llk/IR/arch/arm/mm/mmap.c_pt.bc'
source_filename = "../arch/arm/mm/mmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_unmapped_area_info = type { i32, i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.49, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.4 }
%struct.llist_node = type { ptr }
%union.anon.4 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.49 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.6, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon.5 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@stack_guard_gap = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_get_unmapped_area(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.vm_unmapped_area_info, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %10 = and i32 %4, 16
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %45

12:                                               ; preds = %5
  %13 = icmp ugt i32 %2, -1090519040
  br i1 %13, label %45, label %14

14:                                               ; preds = %12
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %14
  %17 = add i32 %1, 4095
  %18 = and i32 %17, -4096
  %19 = tail call ptr @find_vma(ptr noundef %9, i32 noundef %18) #7
  %20 = sub nuw i32 -1090519040, %2
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %19, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %22
  %25 = add i32 %18, %2
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr @stack_guard_gap, align 4
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 %31) #7
  %33 = select i1 %30, i32 %26, i32 %32
  %34 = icmp ugt i32 %25, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %24, %16, %14
  store i32 0, ptr %6, align 4
  %36 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 1
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.anon.5, ptr %9, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 3
  store i32 -1090519040, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = shl i32 %3, 12
  %43 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = call i32 @vm_unmapped_area(ptr noundef nonnull %6) #7
  br label %45

45:                                               ; preds = %35, %24, %22, %12, %5
  %46 = phi i32 [ %44, %35 ], [ %1, %5 ], [ -12, %12 ], [ %18, %24 ], [ %18, %22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %46
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_unmapped_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @arch_get_unmapped_area_topdown(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.vm_unmapped_area_info, align 4
  %7 = tail call ptr @llvm.thread.pointer() #7
  %8 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #7
  %10 = icmp ugt i32 %2, -1090519040
  br i1 %10, label %50, label %11

11:                                               ; preds = %5
  %12 = and i32 %4, 16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %11
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %14
  %17 = add i32 %1, 4095
  %18 = and i32 %17, -4096
  %19 = tail call ptr @find_vma(ptr noundef %9, i32 noundef %18) #7
  %20 = sub nuw i32 -1090519040, %2
  %21 = icmp ult i32 %20, %18
  br i1 %21, label %35, label %22

22:                                               ; preds = %16
  %23 = icmp eq ptr %19, null
  br i1 %23, label %50, label %24

24:                                               ; preds = %22
  %25 = add i32 %18, %2
  %26 = load i32, ptr %19, align 4
  %27 = getelementptr inbounds %struct.vm_area_struct, ptr %19, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  %31 = load i32, ptr @stack_guard_gap, align 4
  %32 = tail call i32 @llvm.usub.sat.i32(i32 %26, i32 %31) #7
  %33 = select i1 %30, i32 %26, i32 %32
  %34 = icmp ugt i32 %25, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %24, %16, %14
  store i32 1, ptr %6, align 4
  %36 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 1
  store i32 %2, ptr %36, align 4
  %37 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 2
  store i32 8192, ptr %37, align 4
  %38 = getelementptr inbounds %struct.anon.5, ptr %9, i32 0, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 4
  store i32 0, ptr %41, align 4
  %42 = shl i32 %3, 12
  %43 = getelementptr inbounds %struct.vm_unmapped_area_info, ptr %6, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = call i32 @vm_unmapped_area(ptr noundef nonnull %6) #7
  %45 = and i32 %44, 4095
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %35
  store i32 0, ptr %6, align 4
  %48 = load i32, ptr %38, align 4
  store i32 %48, ptr %37, align 4
  store i32 -1090519040, ptr %40, align 4
  %49 = call i32 @vm_unmapped_area(ptr noundef nonnull %6) #7
  br label %50

50:                                               ; preds = %47, %35, %24, %22, %11, %5
  %51 = phi i32 [ -12, %5 ], [ %1, %11 ], [ %18, %24 ], [ %18, %22 ], [ %49, %47 ], [ %44, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #7
  ret i32 %51
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @valid_phys_addr_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %4 = shl i32 %3, 12
  %5 = icmp ugt i32 %4, %0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = add i32 %1, %0
  %8 = load ptr, ptr @high_memory, align 4
  %9 = getelementptr i8, ptr %8, i32 -1
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %10, i32 -2130706432, i32 8454144) #8, !srcloc !8
  %12 = add i32 %11, 1
  %13 = icmp ule i32 %7, %12
  %14 = zext i1 %13 to i32
  br label %15

15:                                               ; preds = %6, %2
  %16 = phi i32 [ 0, %2 ], [ %14, %6 ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @valid_mmap_phys_addr_range(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = lshr i32 %1, 12
  %4 = add i32 %3, %0
  %5 = icmp ult i32 %4, 1048577
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 2148767726, i64 2148767749, i64 2148767781, i64 2148767813, i64 2148767851, i64 2148767881}
