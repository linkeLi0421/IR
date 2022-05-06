; ModuleID = '/llk/IR/fs/kernel_read_file.c_pt.bc'
source_filename = "../fs/kernel_read_file.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_path\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_path:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_path_initns:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_path_initns\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_path_initns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kernel_read_file_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22kernel_read_file_from_fd\22\09\09\09\09\09"
module asm "__kstrtabns_kernel_read_file_from_fd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.file = type { %union.anon, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, i32, i32 }
%union.anon = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.53, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.54, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.55, ptr, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.53 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%union.anon.54 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.55 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.58 = type { ptr }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.seqcount_spinlock = type { %struct.seqcount }

@__kstrtab_kernel_read_file = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file to i32), ptr @__kstrtab_kernel_read_file, ptr @__kstrtabns_kernel_read_file }, section "___ksymtab_gpl+kernel_read_file", align 4
@__kstrtab_kernel_read_file_from_path = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_path = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_path = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_path to i32), ptr @__kstrtab_kernel_read_file_from_path, ptr @__kstrtabns_kernel_read_file_from_path }, section "___ksymtab_gpl+kernel_read_file_from_path", align 4
@init_task = external dso_local global %struct.task_struct, align 64
@__kstrtab_kernel_read_file_from_path_initns = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_path_initns = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_path_initns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_path_initns to i32), ptr @__kstrtab_kernel_read_file_from_path_initns, ptr @__kstrtabns_kernel_read_file_from_path_initns }, section "___ksymtab_gpl+kernel_read_file_from_path_initns", align 4
@__kstrtab_kernel_read_file_from_fd = external dso_local constant [0 x i8], align 1
@__kstrtabns_kernel_read_file_from_fd = external dso_local constant [0 x i8], align 1
@__ksymtab_kernel_read_file_from_fd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kernel_read_file_from_fd to i32), ptr @__kstrtab_kernel_read_file_from_fd, ptr @__kstrtabns_kernel_read_file_from_fd }, section "___ksymtab_gpl+kernel_read_file_from_fd", align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_kernel_read_file, ptr @__ksymtab_kernel_read_file_from_fd, ptr @__ksymtab_kernel_read_file_from_path, ptr @__ksymtab_kernel_read_file_from_path_initns], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef writeonly %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  store i64 0, ptr %7, align 8, !annotation !8
  %8 = icmp eq i64 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %2, align 4
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %4, null
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %121

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, -4096
  %19 = icmp eq i16 %18, -32768
  br i1 %19, label %20, label %121

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.inode, ptr %16, i32 0, i32 37
  %22 = load volatile i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %32, %20
  %24 = phi i32 [ %22, %20 ], [ %33, %32 ]
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %121, label %26, !prof !9

26:                                               ; preds = %23
  %27 = add i32 %24, -1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #5, !srcloc !11
  br label %28

28:                                               ; preds = %28, %26
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 %24, i32 %27, ptr elementtype(i32) %21) #5, !srcloc !12
  %30 = extractvalue { i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %28

32:                                               ; preds = %28
  %33 = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %34 = icmp eq i32 %33, %24
  br i1 %34, label %35, label %23, !prof !14

35:                                               ; preds = %32
  %36 = load ptr, ptr %15, align 8
  %37 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 22
  %38 = getelementptr inbounds %struct.inode, ptr %36, i32 0, i32 13
  br label %39

39:                                               ; preds = %47, %35
  %40 = load volatile i32, ptr %37, align 4
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %43, %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !16
  %44 = load volatile i32, ptr %37, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %43

47:                                               ; preds = %43, %39
  %48 = phi i32 [ %40, %39 ], [ %44, %43 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  %49 = load i64, ptr %38, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !18
  %50 = load volatile i32, ptr %37, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %39

52:                                               ; preds = %47
  %53 = icmp slt i64 %49, 1
  br i1 %53, label %110, label %54

54:                                               ; preds = %52
  %55 = icmp ugt i64 %49, 2147483647
  br i1 %55, label %110, label %56

56:                                               ; preds = %54
  %57 = icmp eq ptr %4, null
  %58 = and i1 %8, %57
  %59 = zext i32 %3 to i64
  %60 = icmp ugt i64 %49, %59
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %110, label %62

62:                                               ; preds = %56
  %63 = icmp ule i64 %49, %59
  %64 = select i1 %8, i1 %63, i1 false
  br i1 %57, label %67, label %65

65:                                               ; preds = %62
  %66 = trunc i64 %49 to i32
  store i32 %66, ptr %4, align 4
  br label %67

67:                                               ; preds = %65, %62
  %68 = load ptr, ptr %2, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = trunc i64 %49 to i32
  %72 = tail call noalias ptr @vmalloc(i32 noundef %71) #6
  store ptr %72, ptr %2, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %110, label %74

74:                                               ; preds = %70, %67
  %75 = phi ptr [ %72, %70 ], [ null, %67 ]
  store i64 %1, ptr %7, align 8
  br label %76

76:                                               ; preds = %80, %74
  %77 = phi i32 [ 0, %74 ], [ %92, %80 ]
  %78 = phi i32 [ 0, %74 ], [ %95, %80 ]
  %79 = icmp ult i32 %78, %3
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = sub i32 %3, %78
  %82 = load i64, ptr %7, align 8
  %83 = sub i64 %49, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @llvm.umin.i32(i32 %81, i32 %84)
  %86 = load ptr, ptr %2, align 4
  %87 = getelementptr i8, ptr %86, i32 %78
  %88 = call i32 @kernel_read(ptr noundef %0, ptr noundef %87, i32 noundef %85, ptr noundef nonnull %7) #5
  %89 = icmp slt i32 %88, 0
  %90 = icmp eq i32 %88, 0
  %91 = select i1 %90, i32 4, i32 0
  %92 = select i1 %89, i32 %88, i32 %77
  %93 = select i1 %89, i32 5, i32 %91
  %94 = call i32 @llvm.smax.i32(i32 %88, i32 0)
  %95 = add i32 %94, %78
  switch i32 %93, label %121 [
    i32 0, label %76
    i32 4, label %96
    i32 5, label %102
  ]

96:                                               ; preds = %80, %76
  %97 = phi i32 [ %92, %80 ], [ %77, %76 ]
  %98 = phi i32 [ %95, %80 ], [ %78, %76 ]
  br i1 %64, label %99, label %102

99:                                               ; preds = %96
  %100 = load i64, ptr %7, align 8
  %101 = icmp eq i64 %100, %49
  br i1 %101, label %110, label %102

102:                                              ; preds = %99, %96, %80
  %103 = phi i32 [ %97, %96 ], [ -5, %99 ], [ %92, %80 ]
  %104 = phi i32 [ %98, %96 ], [ %98, %99 ], [ %95, %80 ]
  %105 = icmp slt i32 %103, 0
  %106 = icmp ne ptr %75, null
  %107 = select i1 %105, i1 %106, i1 false
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load ptr, ptr %2, align 4
  call void @vfree(ptr noundef %109) #5
  store ptr null, ptr %2, align 4
  br label %110

110:                                              ; preds = %108, %102, %99, %70, %56, %54, %52
  %111 = phi i32 [ %103, %108 ], [ %103, %102 ], [ -22, %52 ], [ -27, %54 ], [ -27, %56 ], [ -12, %70 ], [ 0, %99 ]
  %112 = phi i32 [ %104, %108 ], [ %104, %102 ], [ 0, %52 ], [ 0, %54 ], [ 0, %56 ], [ 0, %70 ], [ %98, %99 ]
  %113 = icmp eq ptr %0, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = load ptr, ptr %15, align 8
  %116 = getelementptr inbounds %struct.inode, ptr %115, i32 0, i32 37
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %116) #5, !srcloc !11
  %117 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %116, ptr %116, i32 1, ptr elementtype(i32) %116) #5, !srcloc !19
  br label %118

118:                                              ; preds = %114, %110
  %119 = icmp eq i32 %111, 0
  %120 = select i1 %119, i32 %112, i32 %111
  br label %121

121:                                              ; preds = %118, %80, %23, %14, %9
  %122 = phi i32 [ %120, %118 ], [ -22, %9 ], [ -22, %14 ], [ undef, %80 ], [ -26, %23 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret i32 %122
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_path(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 %5) #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %6
  %9 = load i8, ptr %0, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @filp_open(ptr noundef nonnull %0, i32 noundef 0, i16 noundef zeroext 0) #5
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = ptrtoint ptr %12 to i32
  br label %18

16:                                               ; preds = %11
  %17 = tail call i32 @kernel_read_file(ptr noundef %12, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 undef)
  tail call void @fput(ptr noundef %12) #5
  br label %18

18:                                               ; preds = %16, %14, %8, %6
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ -22, %8 ], [ -22, %6 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @filp_open(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_path_initns(ptr noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 %5) #0 {
  %7 = alloca %struct.path, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #5
  %8 = icmp eq ptr %0, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %6
  %10 = load i8, ptr %0, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %9
  tail call void @_raw_spin_lock(ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107)) #5
  %13 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 89), align 64
  %14 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %14) #5
  %15 = getelementptr inbounds %struct.fs_struct, ptr %13, i32 0, i32 5
  %16 = load i64, ptr %15, align 4
  store i64 %16, ptr %7, align 8
  call void @path_get(ptr noundef nonnull %7) #5
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %17 = load i16, ptr %14, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %14, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !20
  %19 = load i16, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 16
  %20 = add i16 %19, 1
  store i16 %20, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 107), align 16
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !21
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !22
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !23
  %21 = call ptr @file_open_root(ptr noundef nonnull %7, ptr noundef nonnull %0, i32 noundef 0, i16 noundef zeroext 0) #5
  call void @path_put(ptr noundef nonnull %7) #5
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %23, label %25

23:                                               ; preds = %12
  %24 = ptrtoint ptr %21 to i32
  br label %27

25:                                               ; preds = %12
  %26 = call i32 @kernel_read_file(ptr noundef %21, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 undef)
  call void @fput(ptr noundef %21) #5
  br label %27

27:                                               ; preds = %25, %23, %9, %6
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ], [ -22, %9 ], [ -22, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #5
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @file_open_root(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @kernel_read_file_from_fd(i32 noundef %0, i64 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, i32 %5) #0 {
  %7 = tail call i32 @__fdget(i32 noundef %0) #5, !noalias !24
  %8 = and i32 %7, -4
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.file, ptr %9, i32 0, i32 8
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @kernel_read_file(ptr noundef nonnull %9, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 undef)
  br label %18

18:                                               ; preds = %16, %11, %6
  %19 = phi i32 [ %17, %16 ], [ -9, %11 ], [ -9, %6 ]
  %20 = and i32 %7, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fput(ptr noundef %9) #5
  br label %23

23:                                               ; preds = %22, %18
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @path_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148444796}
!11 = !{i64 829984, i64 2148319955, i64 2148319981, i64 2148320028, i64 2148320050, i64 2148320078, i64 2148320098}
!12 = !{i64 816047, i64 816071, i64 816092, i64 816109, i64 816126}
!13 = !{i64 2148444996}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2151282625}
!16 = !{i64 2151282467}
!17 = !{i64 2151282769}
!18 = !{i64 2149477012}
!19 = !{i64 2148331370, i64 2148331396, i64 2148331425, i64 2148331459, i64 2148331490, i64 2148331513}
!20 = !{i64 2148998588}
!21 = !{i64 2148994412}
!22 = !{i64 2148994487, i64 2148994514, i64 2148994561, i64 2148994583, i64 2148994611, i64 2148994631}
!23 = !{i64 2149021591}
!24 = !{!25}
!25 = distinct !{!25, !26, !"fdget: argument 0"}
!26 = distinct !{!26, !"fdget"}
