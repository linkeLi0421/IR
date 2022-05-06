; ModuleID = '/llk/IR/mm/msync.c_pt.bc'
source_filename = "../mm/msync.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.51, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.18 }
%struct.llist_node = type { ptr }
%union.anon.18 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.19 }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.51 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.file = type { %union.anon.7, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon.7 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_msync = dso_local alias i32 (i32, i32, i32), ptr @__se_sys_msync

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_msync(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #4
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp ult i32 %2, 8
  %8 = and i32 %0, 4095
  %9 = icmp eq i32 %8, 0
  %10 = and i1 %9, %7
  br i1 %10, label %11, label %122

11:                                               ; preds = %3
  %12 = and i32 %2, 4
  %13 = and i32 %2, 5
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %122, label %15

15:                                               ; preds = %11
  %16 = add i32 %1, 4095
  %17 = and i32 %16, -4096
  %18 = add i32 %17, %0
  %19 = icmp ult i32 %18, %0
  br i1 %19, label %122, label %20

20:                                               ; preds = %15
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %20
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #4
  br label %26

26:                                               ; preds = %25, %22
  %27 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 15
  tail call void @down_read(ptr noundef %27) #4
  %28 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #4
  br label %31

31:                                               ; preds = %30, %26
  %32 = tail call ptr @find_vma(ptr noundef %6, i32 noundef %0) #4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %109, label %34

34:                                               ; preds = %31
  %35 = icmp ne i32 %2, 1
  %36 = and i32 %2, 2
  %37 = icmp eq i32 %36, 0
  %38 = icmp ne i32 %12, 0
  br label %39

39:                                               ; preds = %106, %34
  %40 = phi i32 [ %0, %34 ], [ %67, %106 ]
  %41 = phi i32 [ 0, %34 ], [ %49, %106 ]
  %42 = phi ptr [ %32, %34 ], [ %107, %106 ]
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = icmp ult i32 %43, %18
  %47 = select i1 %35, i1 %46, i1 false
  br i1 %47, label %48, label %109

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %41, %39 ], [ -12, %45 ]
  %50 = phi i32 [ %40, %39 ], [ %43, %45 ]
  br i1 %37, label %56, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 8
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, 8192
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %109

56:                                               ; preds = %51, %48
  %57 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 14
  %58 = load ptr, ptr %57, align 4
  %59 = sub i32 %50, %43
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 13
  %62 = load i32, ptr %61, align 4
  %63 = zext i32 %62 to i64
  %64 = shl nuw nsw i64 %63, 12
  %65 = add nuw nsw i64 %64, %60
  %66 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @llvm.umin.i32(i32 %18, i32 %67) #4
  %69 = sub i32 %68, %50
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %65, -1
  %72 = add nsw i64 %71, %70
  %73 = icmp ne ptr %58, null
  %74 = select i1 %38, i1 %73, i1 false
  br i1 %74, label %75, label %101

75:                                               ; preds = %56
  %76 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 8
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %101, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.file, ptr %58, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %81) #4, !srcloc !8
  %82 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %81, ptr %81, i32 1, ptr elementtype(i32) %81) #4, !srcloc !9
  %83 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #4
  br label %86

86:                                               ; preds = %85, %80
  tail call void @up_read(ptr noundef %27) #4
  %87 = tail call i32 @vfs_fsync_range(ptr noundef nonnull %58, i64 noundef %65, i64 noundef %72, i32 noundef 1) #4
  tail call void @fput(ptr noundef nonnull %58) #4
  %88 = icmp eq i32 %87, 0
  %89 = icmp ult i32 %67, %18
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %116

91:                                               ; preds = %86
  %92 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #4
  br label %95

95:                                               ; preds = %94, %91
  tail call void @down_read(ptr noundef %27) #4
  %96 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #4
  br label %99

99:                                               ; preds = %98, %95
  %100 = tail call ptr @find_vma(ptr noundef %6, i32 noundef %67) #4
  br label %106

101:                                              ; preds = %75, %56
  %102 = icmp ult i32 %67, %18
  br i1 %102, label %103, label %109

103:                                              ; preds = %101
  %104 = getelementptr inbounds %struct.vm_area_struct, ptr %42, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = phi ptr [ %100, %99 ], [ %105, %103 ]
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %39

109:                                              ; preds = %106, %101, %51, %45, %31
  %110 = phi i32 [ 0, %31 ], [ %49, %101 ], [ %49, %51 ], [ %41, %45 ], [ %49, %106 ]
  %111 = phi i32 [ -12, %31 ], [ 0, %101 ], [ -16, %51 ], [ -12, %45 ], [ -12, %106 ]
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  tail call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #4
  br label %115

115:                                              ; preds = %114, %109
  tail call void @up_read(ptr noundef %27) #4
  br label %116

116:                                              ; preds = %115, %86
  %117 = phi i32 [ %110, %115 ], [ %49, %86 ]
  %118 = phi i32 [ %111, %115 ], [ %87, %86 ]
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %116, %20
  %121 = phi i32 [ %117, %116 ], [ 0, %20 ]
  br label %122

122:                                              ; preds = %120, %116, %15, %11, %3
  %123 = phi i32 [ %121, %120 ], [ %118, %116 ], [ -22, %11 ], [ -12, %15 ], [ -22, %3 ]
  ret i32 %123
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfs_fsync_range(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 828365, i64 2148318336, i64 2148318362, i64 2148318409, i64 2148318431, i64 2148318459, i64 2148318479}
!9 = !{i64 2148329751, i64 2148329777, i64 2148329806, i64 2148329840, i64 2148329871, i64 2148329894}
