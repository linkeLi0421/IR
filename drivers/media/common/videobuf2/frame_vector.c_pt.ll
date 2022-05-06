; ModuleID = '/llk/IR/drivers/media/common/videobuf2/frame_vector.c_pt.bc'
source_filename = "../drivers/media/common/videobuf2/frame_vector.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22get_vaddr_frames\22\09\09\09\09\09"
module asm "__kstrtabns_get_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22put_vaddr_frames\22\09\09\09\09\09"
module asm "__kstrtabns_put_vaddr_frames:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_to_pages\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_to_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_to_pfns:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_to_pfns\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_to_pfns:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_create:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_create\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_frame_vector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22frame_vector_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_frame_vector_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.42, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.13 }
%struct.llist_node = type { ptr }
%union.anon.13 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.14 }
%union.anon.14 = type { %struct.anon.15 }
%struct.anon.15 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.42 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.frame_vector = type { i32, i32, i8, i8, [0 x ptr] }
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
%struct.page = type { i32, %union.anon.3, %union.anon.58, %struct.atomic_t }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.58 = type { %struct.atomic_t }

@get_vaddr_frames.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [46 x i8] c"drivers/media/common/videobuf2/frame_vector.c\00", align 1
@__kstrtab_get_vaddr_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_vaddr_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_get_vaddr_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_vaddr_frames to i32), ptr @__kstrtab_get_vaddr_frames, ptr @__kstrtabns_get_vaddr_frames }, section "___ksymtab+get_vaddr_frames", align 4
@__kstrtab_put_vaddr_frames = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_vaddr_frames = external dso_local constant [0 x i8], align 1
@__ksymtab_put_vaddr_frames = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_vaddr_frames to i32), ptr @__kstrtab_put_vaddr_frames, ptr @__kstrtabns_put_vaddr_frames }, section "___ksymtab+put_vaddr_frames", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_frame_vector_to_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_to_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_to_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_to_pages to i32), ptr @__kstrtab_frame_vector_to_pages, ptr @__kstrtabns_frame_vector_to_pages }, section "___ksymtab+frame_vector_to_pages", align 4
@__kstrtab_frame_vector_to_pfns = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_to_pfns = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_to_pfns = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_to_pfns to i32), ptr @__kstrtab_frame_vector_to_pfns, ptr @__kstrtabns_frame_vector_to_pfns }, section "___ksymtab+frame_vector_to_pfns", align 4
@frame_vector_create.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@frame_vector_create.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_frame_vector_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_create = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_create to i32), ptr @__kstrtab_frame_vector_create, ptr @__kstrtabns_frame_vector_create }, section "___ksymtab+frame_vector_create", align 4
@__kstrtab_frame_vector_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_frame_vector_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_frame_vector_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @frame_vector_destroy to i32), ptr @__kstrtab_frame_vector_destroy, ptr @__kstrtabns_frame_vector_destroy }, section "___ksymtab+frame_vector_destroy", align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_frame_vector_create, ptr @__ksymtab_frame_vector_destroy, ptr @__ksymtab_frame_vector_to_pages, ptr @__ksymtab_frame_vector_to_pfns, ptr @__ksymtab_get_vaddr_frames, ptr @__ksymtab_put_vaddr_frames], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_vaddr_frames(i32 noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @llvm.thread.pointer() #5
  %5 = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 37
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %115, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 4
  %10 = icmp ult i32 %9, %1
  %11 = load i1, ptr @get_vaddr_frames.__already_done, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !8

14:                                               ; preds = %8
  store i1 true, ptr @get_vaddr_frames.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #5
  br label %15

15:                                               ; preds = %14, %8
  br i1 %10, label %16, label %18

16:                                               ; preds = %15
  %17 = load i32, ptr %2, align 4
  br label %18

18:                                               ; preds = %16, %15
  %19 = phi i32 [ %17, %16 ], [ %1, %15 ]
  %20 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 4
  %21 = tail call i32 @pin_user_pages_fast(i32 noundef %0, i32 noundef %19, i32 noundef 65553, ptr noundef %20) #5
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 2
  store i8 1, ptr %24, align 4
  %25 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 3
  store i8 0, ptr %25, align 1
  br label %108

26:                                               ; preds = %18
  %27 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %6, i1 noundef zeroext false) #5
  br label %30

30:                                               ; preds = %29, %26
  %31 = getelementptr inbounds %struct.anon, ptr %6, i32 0, i32 15
  tail call void @down_read(ptr noundef %31) #5
  %32 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext true) #5
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 2
  store i8 0, ptr %36, align 4
  %37 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 3
  store i8 1, ptr %37, align 1
  %38 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 1
  br label %41

39:                                               ; preds = %94
  %40 = load i8, ptr %37, align 1
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i8 [ %40, %39 ], [ 1, %35 ]
  %43 = phi i32 [ %95, %39 ], [ 0, %35 ]
  %44 = phi i32 [ %96, %39 ], [ %0, %35 ]
  %45 = icmp eq i8 %42, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %41
  %47 = load i32, ptr %38, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %49, %46
  %50 = phi i32 [ %60, %49 ], [ 0, %46 ]
  %51 = getelementptr ptr, ptr %20, i32 %50
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr @mem_map, align 4
  %54 = ptrtoint ptr %52 to i32
  %55 = ptrtoint ptr %53 to i32
  %56 = sub i32 %54, %55
  %57 = ashr exact i32 %56, 5
  %58 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %59 = add i32 %57, %58
  store i32 %59, ptr %51, align 4
  %60 = add nuw i32 %50, 1
  %61 = load i32, ptr %38, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %49, label %63

63:                                               ; preds = %49, %46
  store i8 1, ptr %37, align 1
  br label %64

64:                                               ; preds = %63, %41
  %65 = tail call ptr @find_vma(ptr noundef %6, i32 noundef %44) #5
  %66 = icmp eq ptr %65, null
  br i1 %66, label %102, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %65, align 4
  %69 = icmp ugt i32 %68, %44
  br i1 %69, label %102, label %70

70:                                               ; preds = %67
  %71 = icmp ult i32 %43, %19
  br i1 %71, label %72, label %94

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.vm_area_struct, ptr %65, i32 0, i32 1
  br label %74

74:                                               ; preds = %91, %72
  %75 = phi i32 [ %44, %72 ], [ %77, %91 ]
  %76 = phi i32 [ %43, %72 ], [ %92, %91 ]
  %77 = add i32 %75, 4096
  %78 = load i32, ptr %73, align 4
  %79 = icmp ugt i32 %77, %78
  br i1 %79, label %94, label %80

80:                                               ; preds = %74
  %81 = getelementptr i32, ptr %20, i32 %76
  %82 = tail call i32 @follow_pfn(ptr noundef nonnull %65, i32 noundef %75, ptr noundef %81) #5
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %80
  %85 = icmp eq i32 %76, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = icmp eq i32 %82, -22
  %88 = icmp ne i32 %21, 0
  %89 = select i1 %87, i1 %88, i1 false
  %90 = select i1 %89, i32 %21, i32 %82
  br label %102

91:                                               ; preds = %80
  %92 = add i32 %76, 1
  %93 = icmp eq i32 %92, %19
  br i1 %93, label %102, label %74

94:                                               ; preds = %74, %70
  %95 = phi i32 [ %43, %70 ], [ %76, %74 ]
  %96 = phi i32 [ %44, %70 ], [ %75, %74 ]
  %97 = getelementptr inbounds %struct.vm_area_struct, ptr %65, i32 0, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = icmp uge i32 %96, %98
  %100 = icmp ult i32 %95, %19
  %101 = select i1 %99, i1 %100, i1 false
  br i1 %101, label %39, label %102

102:                                              ; preds = %94, %91, %86, %84, %67, %64
  %103 = phi i32 [ %76, %84 ], [ %90, %86 ], [ %19, %91 ], [ %95, %94 ], [ %43, %67 ], [ %43, %64 ]
  %104 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  tail call void @__mmap_lock_do_trace_released(ptr noundef %6, i1 noundef zeroext false) #5
  br label %107

107:                                              ; preds = %106, %102
  tail call void @up_read(ptr noundef %31) #5
  br label %108

108:                                              ; preds = %107, %23
  %109 = phi i32 [ %21, %23 ], [ %103, %107 ]
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %110, i32 -14, i32 %109
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.frame_vector, ptr %2, i32 0, i32 1
  store i32 %111, ptr %114, align 4
  br label %115

115:                                              ; preds = %113, %108, %3
  %116 = phi i32 [ 0, %3 ], [ %109, %113 ], [ %111, %108 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_fast(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @follow_pfn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_vaddr_frames(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 3
  %7 = load i8, ptr %6, align 1, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %38, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %20

14:                                               ; preds = %20
  %15 = add nuw i32 %21, 1
  %16 = load i32, ptr %11, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %37, label %26

20:                                               ; preds = %14, %9
  %21 = phi i32 [ %15, %14 ], [ 0, %9 ]
  %22 = getelementptr i32, ptr %10, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @pfn_valid(i32 noundef %23) #5
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %41, label %14

26:                                               ; preds = %26, %18
  %27 = phi i32 [ %34, %26 ], [ 0, %18 ]
  %28 = load ptr, ptr @mem_map, align 4
  %29 = getelementptr i32, ptr %10, i32 %27
  %30 = load i32, ptr %29, align 4
  %31 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %32 = sub i32 %30, %31
  %33 = getelementptr %struct.page, ptr %28, i32 %32
  store ptr %33, ptr %29, align 4
  %34 = add nuw i32 %27, 1
  %35 = load i32, ptr %11, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %26, label %37

37:                                               ; preds = %26, %18, %9
  store i8 0, ptr %6, align 1
  br label %38

38:                                               ; preds = %37, %5
  %39 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 4
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %38, %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 130, i32 noundef 9, ptr noundef null) #5
  br label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  tail call void @unpin_user_pages(ptr noundef %39, i32 noundef %44) #5
  store i8 0, ptr %2, align 4
  br label %45

45:                                               ; preds = %42, %41, %1
  %46 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 1
  store i32 0, ptr %46, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @frame_vector_to_pages(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %34, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %16

10:                                               ; preds = %16
  %11 = add nuw i32 %17, 1
  %12 = load i32, ptr %7, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = icmp eq i32 %12, 0
  br i1 %15, label %33, label %22

16:                                               ; preds = %10, %5
  %17 = phi i32 [ %11, %10 ], [ 0, %5 ]
  %18 = getelementptr i32, ptr %6, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @pfn_valid(i32 noundef %19) #5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %34, label %10

22:                                               ; preds = %22, %14
  %23 = phi i32 [ %30, %22 ], [ 0, %14 ]
  %24 = load ptr, ptr @mem_map, align 4
  %25 = getelementptr i32, ptr %6, i32 %23
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %28 = sub i32 %26, %27
  %29 = getelementptr %struct.page, ptr %24, i32 %28
  store ptr %29, ptr %25, align 4
  %30 = add nuw i32 %23, 1
  %31 = load i32, ptr %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %22, label %33

33:                                               ; preds = %22, %14, %5
  store i8 0, ptr %2, align 1
  br label %34

34:                                               ; preds = %33, %16, %1
  %35 = phi i32 [ 0, %33 ], [ 0, %1 ], [ -22, %16 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @frame_vector_to_pfns(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 3
  %3 = load i8, ptr %2, align 1, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.frame_vector, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %21, %10 ], [ 0, %5 ]
  %12 = getelementptr ptr, ptr %6, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %13 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = ashr exact i32 %17, 5
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %20 = add i32 %18, %19
  store i32 %20, ptr %12, align 4
  %21 = add nuw i32 %11, 1
  %22 = load i32, ptr %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %10, label %24

24:                                               ; preds = %10, %5
  store i8 1, ptr %2, align 1
  br label %25

25:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @frame_vector_create(i32 noundef %0) #0 {
  %2 = shl i32 %0, 2
  %3 = add i32 %2, 12
  %4 = icmp eq i32 %0, 0
  %5 = load i1, ptr @frame_vector_create.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !8

8:                                                ; preds = %1
  store i1 true, ptr @frame_vector_create.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 202, i32 noundef 9, ptr noundef null) #5
  br label %9

9:                                                ; preds = %8, %1
  br i1 %4, label %22, label %10

10:                                               ; preds = %9
  %11 = icmp ugt i32 %0, 268435455
  %12 = load i1, ptr @frame_vector_create.__already_done.1, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %10
  store i1 true, ptr @frame_vector_create.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 208, i32 noundef 9, ptr noundef null) #5
  br label %16

16:                                               ; preds = %15, %10
  br i1 %11, label %22, label %17

17:                                               ; preds = %16
  %18 = tail call noalias ptr @kvmalloc_node(i32 noundef %3, i32 noundef 3264, i32 noundef -1) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  store i32 %0, ptr %18, align 4
  %21 = getelementptr inbounds %struct.frame_vector, ptr %18, i32 0, i32 1
  store i32 0, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %17, %16, %9
  %23 = phi ptr [ %18, %20 ], [ null, %9 ], [ null, %16 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @frame_vector_destroy(ptr noundef %0) #0 {
  tail call void @kvfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_vma(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i8 0, i8 2}
