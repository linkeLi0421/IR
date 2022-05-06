; ModuleID = '/llk/IR/lib/syscall.c_pt.bc'
source_filename = "../lib/syscall.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.55, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.36 }
%union.anon.36 = type { %struct.anon.37 }
%struct.anon.37 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.55 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.syscall_info = type { i64, %struct.seccomp_data }
%struct.seccomp_data = type { i32, i32, i64, [6 x i64] }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @task_current_syscall(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #4
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @collect_syscall(ptr noundef %0, ptr noundef %1)
  br label %21

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 1
  %9 = load volatile i32, ptr %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11, !prof !8

11:                                               ; preds = %7
  %12 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef %9) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %21, label %14, !prof !8

14:                                               ; preds = %11
  %15 = tail call fastcc i32 @collect_syscall(ptr noundef %0, ptr noundef %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21, !prof !9

17:                                               ; preds = %14
  %18 = tail call i32 @wait_task_inactive(ptr noundef %0, i32 noundef %9) #4
  %19 = icmp eq i32 %18, %12
  %20 = select i1 %19, i32 0, i32 -11, !prof !9
  br label %21

21:                                               ; preds = %17, %14, %11, %7, %5
  %22 = phi i32 [ %6, %5 ], [ -11, %7 ], [ -11, %14 ], [ -11, %11 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @collect_syscall(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 151
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %18, label %6

6:                                                ; preds = %16, %2
  %7 = phi i32 [ %14, %16 ], [ %4, %2 ]
  %8 = add i32 %7, 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #4, !srcloc !10
  br label %9

9:                                                ; preds = %9, %6
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %7, i32 %8, ptr elementtype(i32) %3) #4, !srcloc !11
  %11 = extractvalue { i32, i32 } %10, 0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %9

13:                                               ; preds = %9
  %14 = extractvalue { i32, i32 } %10, 1
  %15 = icmp eq i32 %14, %7
  br i1 %15, label %18, label %16, !prof !9

16:                                               ; preds = %13
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %6

18:                                               ; preds = %16, %13, %2
  %19 = phi i32 [ 0, %2 ], [ %7, %13 ], [ 0, %16 ]
  %20 = add i32 %19, 1
  %21 = or i32 %20, %19
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %24, label %23, !prof !9

23:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 0) #4
  br label %24

24:                                               ; preds = %23, %18
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %24
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(72) %1, i8 0, i32 72, i1 false)
  %31 = getelementptr inbounds %struct.syscall_info, ptr %1, i32 0, i32 1
  store i32 -1, ptr %31, align 8
  br label %80

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %28, i32 8112
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !8

35:                                               ; preds = %32
  tail call void @put_task_stack(ptr noundef %0) #4
  br label %80

36:                                               ; preds = %32
  %37 = getelementptr i8, ptr %28, i32 8164
  %38 = load i32, ptr %37, align 4
  %39 = zext i32 %38 to i64
  store i64 %39, ptr %1, align 8
  %40 = getelementptr i8, ptr %28, i32 8172
  %41 = load i32, ptr %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.syscall_info, ptr %1, i32 0, i32 1
  %44 = getelementptr inbounds %struct.syscall_info, ptr %1, i32 0, i32 1, i32 2
  store i64 %42, ptr %44, align 8
  %45 = getelementptr inbounds %struct.thread_info, ptr %0, i32 0, i32 5
  %46 = load i32, ptr %45, align 64
  store i32 %46, ptr %43, align 8
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %61, label %48

48:                                               ; preds = %36
  %49 = getelementptr i8, ptr %28, i32 8180
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %28, i32 8116
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %28, i32 8120
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr i8, ptr %28, i32 8124
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %28, i32 8128
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr i8, ptr %28, i32 8132
  %60 = load i32, ptr %59, align 4
  br label %61

61:                                               ; preds = %48, %36
  %62 = phi i32 [ 0, %36 ], [ %50, %48 ]
  %63 = phi i32 [ 0, %36 ], [ %52, %48 ]
  %64 = phi i32 [ 0, %36 ], [ %54, %48 ]
  %65 = phi i32 [ 0, %36 ], [ %56, %48 ]
  %66 = phi i32 [ 0, %36 ], [ %58, %48 ]
  %67 = phi i32 [ 0, %36 ], [ %60, %48 ]
  %68 = zext i32 %62 to i64
  %69 = getelementptr inbounds %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3
  store i64 %68, ptr %69, align 8
  %70 = zext i32 %63 to i64
  %71 = getelementptr %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3, i32 1
  store i64 %70, ptr %71, align 8
  %72 = zext i32 %64 to i64
  %73 = getelementptr %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3, i32 2
  store i64 %72, ptr %73, align 8
  %74 = zext i32 %65 to i64
  %75 = getelementptr %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3, i32 3
  store i64 %74, ptr %75, align 8
  %76 = zext i32 %66 to i64
  %77 = getelementptr %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3, i32 4
  store i64 %76, ptr %77, align 8
  %78 = zext i32 %67 to i64
  %79 = getelementptr %struct.syscall_info, ptr %1, i32 0, i32 1, i32 3, i32 5
  store i64 %78, ptr %79, align 8
  tail call void @put_task_stack(ptr noundef %0) #4
  br label %80

80:                                               ; preds = %61, %35, %30
  %81 = phi i32 [ -11, %35 ], [ 0, %61 ], [ 0, %30 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_task_stack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 532485, i64 2148034051, i64 2148034077, i64 2148034124, i64 2148034146, i64 2148034174, i64 2148034194}
!11 = !{i64 518548, i64 518572, i64 518593, i64 518610, i64 518627}
