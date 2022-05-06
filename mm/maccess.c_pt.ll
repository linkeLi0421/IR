; ModuleID = '/llk/IR/mm/maccess.c_pt.bc'
source_filename = "../mm/maccess.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_kernel_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_kernel_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_kernel_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_from_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_from_user_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_from_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_copy_to_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22copy_to_user_nofault\22\09\09\09\09\09"
module asm "__kstrtabns_copy_to_user_nofault:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.64, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.45 }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.64 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__kstrtab_copy_from_kernel_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_kernel_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_kernel_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_kernel_nofault to i32), ptr @__kstrtab_copy_from_kernel_nofault, ptr @__kstrtabns_copy_from_kernel_nofault }, section "___ksymtab_gpl+copy_from_kernel_nofault", align 4
@__kstrtab_copy_from_user_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_from_user_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_from_user_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_from_user_nofault to i32), ptr @__kstrtab_copy_from_user_nofault, ptr @__kstrtabns_copy_from_user_nofault }, section "___ksymtab_gpl+copy_from_user_nofault", align 4
@__kstrtab_copy_to_user_nofault = external dso_local constant [0 x i8], align 1
@__kstrtabns_copy_to_user_nofault = external dso_local constant [0 x i8], align 1
@__ksymtab_copy_to_user_nofault = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @copy_to_user_nofault to i32), ptr @__kstrtab_copy_to_user_nofault, ptr @__kstrtabns_copy_to_user_nofault }, section "___ksymtab_gpl+copy_to_user_nofault", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_copy_from_kernel_nofault, ptr @__ksymtab_copy_from_user_nofault, ptr @__ksymtab_copy_to_user_nofault], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_from_kernel_nofault(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %1, i32 noundef %2)
  br i1 %4, label %5, label %85

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #3
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %10 = icmp ugt i32 %2, 7
  br i1 %10, label %11, label %38

11:                                               ; preds = %33, %5
  %12 = phi i32 [ %36, %33 ], [ %2, %5 ]
  %13 = phi ptr [ %35, %33 ], [ %1, %5 ]
  %14 = phi ptr [ %34, %33 ], [ %0, %5 ]
  %15 = ptrtoint ptr %13 to i32
  %16 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %15, i32 -14, i32 0) #3, !srcloc !9
  %17 = extractvalue { i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  %19 = extractvalue { i32, i32 } %16, 1
  br i1 %18, label %23, label %20

20:                                               ; preds = %11
  %21 = extractvalue { i32, i32 } %16, 1
  %22 = zext i32 %21 to i64
  store i64 %22, ptr %14, align 1
  br label %80

23:                                               ; preds = %11
  %24 = add i32 %15, 4
  %25 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %24, i32 -14, i32 0) #3, !srcloc !10
  %26 = extractvalue { i32, i32 } %25, 0
  %27 = extractvalue { i32, i32 } %25, 1
  %28 = zext i32 %27 to i64
  %29 = shl nuw i64 %28, 32
  %30 = zext i32 %19 to i64
  %31 = or i64 %29, %30
  store i64 %31, ptr %14, align 1
  %32 = icmp eq i32 %26, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %23
  %34 = getelementptr i8, ptr %14, i32 8
  %35 = getelementptr i8, ptr %13, i32 8
  %36 = add i32 %12, -8
  %37 = icmp ugt i32 %36, 7
  br i1 %37, label %11, label %38

38:                                               ; preds = %33, %5
  %39 = phi i32 [ %2, %5 ], [ %36, %33 ]
  %40 = phi ptr [ %1, %5 ], [ %35, %33 ]
  %41 = phi ptr [ %0, %5 ], [ %34, %33 ]
  %42 = icmp ugt i32 %39, 3
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i32
  %45 = tail call { i32, i32 } asm sideeffect "1:\09ldr $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %44, i32 -14, i32 0) #3, !srcloc !11
  %46 = extractvalue { i32, i32 } %45, 0
  %47 = extractvalue { i32, i32 } %45, 1
  store i32 %47, ptr %41, align 1
  %48 = icmp eq i32 %46, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %43
  %50 = getelementptr i8, ptr %41, i32 4
  %51 = getelementptr i8, ptr %40, i32 4
  %52 = add nsw i32 %39, -4
  br label %53

53:                                               ; preds = %49, %38
  %54 = phi i32 [ %52, %49 ], [ %39, %38 ]
  %55 = phi ptr [ %51, %49 ], [ %40, %38 ]
  %56 = phi ptr [ %50, %49 ], [ %41, %38 ]
  %57 = icmp ugt i32 %54, 1
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = ptrtoint ptr %55 to i32
  %60 = tail call { i32, i16 } asm sideeffect "1:\09ldrh $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %59, i32 -14, i32 0) #3, !srcloc !12
  %61 = extractvalue { i32, i16 } %60, 0
  %62 = extractvalue { i32, i16 } %60, 1
  store i16 %62, ptr %56, align 1
  %63 = icmp eq i32 %61, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %56, i32 2
  %66 = getelementptr i8, ptr %55, i32 2
  %67 = add nsw i32 %54, -2
  br label %68

68:                                               ; preds = %64, %53
  %69 = phi i32 [ %67, %64 ], [ %54, %53 ]
  %70 = phi ptr [ %66, %64 ], [ %55, %53 ]
  %71 = phi ptr [ %65, %64 ], [ %56, %53 ]
  %72 = icmp eq i32 %69, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = ptrtoint ptr %70 to i32
  %75 = tail call { i32, i8 } asm sideeffect "1:\09ldrb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %74, i32 -14, i32 0) #3, !srcloc !13
  %76 = extractvalue { i32, i8 } %75, 0
  %77 = extractvalue { i32, i8 } %75, 1
  store i8 %77, ptr %71, align 1
  %78 = icmp eq i32 %76, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73, %68
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %81

80:                                               ; preds = %73, %58, %43, %23, %20
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %81

81:                                               ; preds = %80, %79
  %82 = phi i32 [ 0, %79 ], [ -14, %80 ]
  %83 = load i32, ptr %7, align 8
  %84 = add i32 %83, -1
  store i32 %84, ptr %7, align 8
  br label %85

85:                                               ; preds = %81, %3
  %86 = phi i32 [ -34, %3 ], [ %82, %81 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_to_kernel_nofault(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @llvm.thread.pointer() #3
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 149
  %6 = load i32, ptr %5, align 8
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %8 = icmp ugt i32 %2, 7
  br i1 %8, label %9, label %23

9:                                                ; preds = %18, %3
  %10 = phi i32 [ %21, %18 ], [ %2, %3 ]
  %11 = phi ptr [ %20, %18 ], [ %1, %3 ]
  %12 = phi ptr [ %19, %18 ], [ %0, %3 ]
  %13 = ptrtoint ptr %12 to i32
  %14 = load i64, ptr %11, align 1
  %15 = tail call { i32, i32 } asm sideeffect "1:\09str\09${2:Q}, [$1], #4\0A2:\09str\09${2:R}, [$1]\0A3:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A4:\09mov\09$0, $3\0A\09b\093b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 4b\0A\09.long\092b, 4b\0A\09.popsection", "=r,=r,r,i,0,1,~{cc}"(i64 %14, i32 -14, i32 0, i32 %13) #3, !srcloc !15
  %16 = extractvalue { i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %9
  %19 = getelementptr i8, ptr %12, i32 8
  %20 = getelementptr i8, ptr %11, i32 8
  %21 = add i32 %10, -8
  %22 = icmp ugt i32 %21, 7
  br i1 %22, label %9, label %23

23:                                               ; preds = %18, %3
  %24 = phi i32 [ %2, %3 ], [ %21, %18 ]
  %25 = phi ptr [ %1, %3 ], [ %20, %18 ]
  %26 = phi ptr [ %0, %3 ], [ %19, %18 ]
  %27 = icmp ugt i32 %24, 3
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = ptrtoint ptr %26 to i32
  %30 = load i32, ptr %25, align 1
  %31 = tail call i32 asm sideeffect "1:\09str $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i32 %30, i32 %29, i32 -14, i32 0) #3, !srcloc !16
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = getelementptr i8, ptr %26, i32 4
  %35 = getelementptr i8, ptr %25, i32 4
  %36 = add nsw i32 %24, -4
  br label %37

37:                                               ; preds = %33, %23
  %38 = phi i32 [ %36, %33 ], [ %24, %23 ]
  %39 = phi ptr [ %35, %33 ], [ %25, %23 ]
  %40 = phi ptr [ %34, %33 ], [ %26, %23 ]
  %41 = icmp ugt i32 %38, 1
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = ptrtoint ptr %40 to i32
  %44 = load i16, ptr %39, align 1
  %45 = tail call i32 asm sideeffect "1:\09strh $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i16 %44, i32 %43, i32 -14, i32 0) #3, !srcloc !17
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %40, i32 2
  %49 = getelementptr i8, ptr %39, i32 2
  %50 = add nsw i32 %38, -2
  br label %51

51:                                               ; preds = %47, %37
  %52 = phi i32 [ %50, %47 ], [ %38, %37 ]
  %53 = phi ptr [ %49, %47 ], [ %39, %37 ]
  %54 = phi ptr [ %48, %47 ], [ %40, %37 ]
  %55 = icmp eq i32 %52, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = ptrtoint ptr %54 to i32
  %58 = load i8, ptr %53, align 1
  %59 = tail call i32 asm sideeffect "1:\09strb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,r,r,i,0,~{cc}"(i8 %58, i32 %57, i32 -14, i32 0) #3, !srcloc !18
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %51
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %63

62:                                               ; preds = %56, %42, %28, %9
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32 [ -14, %62 ], [ 0, %61 ]
  %65 = load i32, ptr %5, align 8
  %66 = add i32 %65, -1
  store i32 %66, ptr %5, align 8
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_kernel_nofault(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %39, label %5, !prof !19

5:                                                ; preds = %3
  %6 = tail call zeroext i1 @copy_from_kernel_nofault_allowed(ptr noundef %1, i32 noundef %2)
  br i1 %6, label %7, label %39

7:                                                ; preds = %5
  %8 = tail call ptr @llvm.thread.pointer() #3
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 149
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %12 = ptrtoint ptr %1 to i32
  br label %13

13:                                               ; preds = %21, %7
  %14 = phi ptr [ %1, %7 ], [ %22, %21 ]
  %15 = phi ptr [ %0, %7 ], [ %24, %21 ]
  %16 = ptrtoint ptr %14 to i32
  %17 = tail call { i32, i8 } asm sideeffect "1:\09ldrb $1, [$2], #0\0A2:\0A\09.pushsection .text.fixup,\22ax\22\0A\09.align\092\0A3:\09mov\09$0, $3\0A\09mov\09$1, #0\0A\09b\092b\0A\09.popsection\0A\09.pushsection __ex_table,\22a\22\0A\09.align\093\0A\09.long\091b, 3b\0A\09.popsection", "=r,=&r,r,i,0,~{cc}"(i32 %16, i32 -14, i32 0) #3, !srcloc !20
  %18 = extractvalue { i32, i8 } %17, 0
  %19 = extractvalue { i32, i8 } %17, 1
  store i8 %19, ptr %15, align 1
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = getelementptr i8, ptr %14, i32 1
  %23 = icmp ne i8 %19, 0
  %24 = getelementptr i8, ptr %15, i32 1
  %25 = ptrtoint ptr %22 to i32
  %26 = sub i32 %25, %12
  %27 = icmp slt i32 %26, %2
  %28 = select i1 %23, i1 %27, i1 false
  br i1 %28, label %13, label %29

29:                                               ; preds = %21
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %30 = load i32, ptr %9, align 8
  %31 = add i32 %30, -1
  store i32 %31, ptr %9, align 8
  br label %36

32:                                               ; preds = %13
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %33 = load i32, ptr %9, align 8
  %34 = add i32 %33, -1
  store i32 %34, ptr %9, align 8
  %35 = getelementptr i8, ptr %15, i32 -1
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi ptr [ %35, %32 ], [ %15, %29 ]
  %38 = phi i32 [ -14, %32 ], [ %26, %29 ]
  store i8 0, ptr %37, align 1
  br label %39

39:                                               ; preds = %36, %5, %3
  %40 = phi i32 [ 0, %3 ], [ -34, %5 ], [ %38, %36 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_from_user_nofault(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %1, i32 %2, i32 -1090519040) #4, !srcloc !21
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #3
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 149
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %12 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #5, !srcloc !22
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #3, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !24
  %16 = tail call i32 @arm_copy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #3, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %17 = load i32, ptr %9, align 8
  %18 = add i32 %17, -1
  store i32 %18, ptr %9, align 8
  %19 = icmp eq i32 %16, 0
  %20 = select i1 %19, i32 0, i32 -14
  br label %21

21:                                               ; preds = %7, %3
  %22 = phi i32 [ -14, %3 ], [ %20, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_to_user_nofault(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %2, i32 -1090519040) #4, !srcloc !25
  %5 = extractvalue { i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %3
  %8 = tail call ptr @llvm.thread.pointer() #3
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 149
  %10 = load i32, ptr %9, align 8
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %12 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %12) #5, !srcloc !22
  %14 = and i32 %13, -13
  %15 = or i32 %14, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #3, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !24
  %16 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #3, !srcloc !23
  tail call void asm sideeffect "isb ", "~{memory}"() #3, !srcloc !24
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %17 = load i32, ptr %9, align 8
  %18 = add i32 %17, -1
  store i32 %18, ptr %9, align 8
  %19 = icmp eq i32 %16, 0
  %20 = select i1 %19, i32 0, i32 -14
  br label %21

21:                                               ; preds = %7, %3
  %22 = phi i32 [ -14, %3 ], [ %20, %7 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strncpy_from_user_nofault(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %2, 1
  br i1 %4, label %21, label %5, !prof !19

5:                                                ; preds = %3
  %6 = tail call ptr @llvm.thread.pointer() #3
  %7 = getelementptr inbounds %struct.task_struct, ptr %6, i32 0, i32 149
  %8 = load i32, ptr %7, align 8
  %9 = add i32 %8, 1
  store i32 %9, ptr %7, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %10 = tail call i32 @strncpy_from_user(ptr noundef %0, ptr noundef %1, i32 noundef %2) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %11 = load i32, ptr %7, align 8
  %12 = add i32 %11, -1
  store i32 %12, ptr %7, align 8
  %13 = icmp slt i32 %10, %2
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = add nsw i32 %2, -1
  %16 = getelementptr i8, ptr %0, i32 %15
  store i8 0, ptr %16, align 1
  br label %21

17:                                               ; preds = %5
  %18 = icmp sgt i32 %10, 0
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %10, %19
  br label %21

21:                                               ; preds = %17, %14, %3
  %22 = phi i32 [ 0, %3 ], [ %2, %14 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strncpy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @strnlen_user_nofault(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @llvm.thread.pointer() #3
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 149
  %5 = load i32, ptr %4, align 8
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 8
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !8
  %7 = tail call i32 @strnlen_user(ptr noundef %0, i32 noundef %1) #3
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !14
  %8 = load i32, ptr %4, align 8
  %9 = add i32 %8, -1
  store i32 %9, ptr %4, align 8
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strnlen_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

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
!8 = !{i64 2151511448}
!9 = !{i64 2151998870, i64 2151998906, i64 2151998922, i64 2151998963, i64 2151998984, i64 2151999008, i64 2151999030, i64 2151999047, i64 2151999071, i64 2151999110, i64 2151999131, i64 2151999155}
!10 = !{i64 2151999377, i64 2151999413, i64 2151999429, i64 2151999470, i64 2151999491, i64 2151999515, i64 2151999537, i64 2151999554, i64 2151999578, i64 2151999617, i64 2151999638, i64 2151999662}
!11 = !{i64 2152002874, i64 2152002910, i64 2152002926, i64 2152002967, i64 2152002988, i64 2152003012, i64 2152003034, i64 2152003051, i64 2152003075, i64 2152003114, i64 2152003135, i64 2152003159}
!12 = !{i64 2152006880, i64 2152006916, i64 2152006932, i64 2152006973, i64 2152006994, i64 2152007018, i64 2152007040, i64 2152007057, i64 2152007081, i64 2152007120, i64 2152007141, i64 2152007165}
!13 = !{i64 2152010875, i64 2152010911, i64 2152010927, i64 2152010968, i64 2152010989, i64 2152011013, i64 2152011035, i64 2152011052, i64 2152011076, i64 2152011115, i64 2152011136, i64 2152011160}
!14 = !{i64 2151511655}
!15 = !{i64 2152019945, i64 2152019991, i64 2152019559, i64 2152019575, i64 2152019616, i64 2152019637, i64 2152019661, i64 2152019678, i64 2152019702, i64 2152019741, i64 2152019762, i64 2152019786, i64 2152019810}
!16 = !{i64 2152022853, i64 2152022888, i64 2152022904, i64 2152022945, i64 2152022966, i64 2152022990, i64 2152023007, i64 2152023031, i64 2152023070, i64 2152023091, i64 2152023115}
!17 = !{i64 2152026305, i64 2152026340, i64 2152026356, i64 2152026397, i64 2152026418, i64 2152026442, i64 2152026459, i64 2152026483, i64 2152026522, i64 2152026543, i64 2152026567}
!18 = !{i64 2152029742, i64 2152029777, i64 2152029793, i64 2152029834, i64 2152029855, i64 2152029879, i64 2152029896, i64 2152029920, i64 2152029959, i64 2152029980, i64 2152030004}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2152032879, i64 2152032915, i64 2152032931, i64 2152032972, i64 2152032993, i64 2152033017, i64 2152033039, i64 2152033056, i64 2152033080, i64 2152033119, i64 2152033140, i64 2152033164}
!21 = !{i64 2152036243, i64 2152036268}
!22 = !{i64 4005054}
!23 = !{i64 4005251}
!24 = !{i64 2151490530}
!25 = !{i64 2152038204, i64 2152038229}
