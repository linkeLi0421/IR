; ModuleID = '/llk/IR/mm/process_vm_access.c_pt.bc'
source_filename = "../mm/process_vm_access.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iovec = type { ptr, i32 }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon, %union.anon.2 }
%union.anon = type { ptr }
%union.anon.2 = type { i64 }
%struct.anon.4 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.88, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.anon.70 }
%struct.anon.70 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tlbflush_unmap_batch = type {}
%union.anon.88 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4

@sys_process_vm_readv = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_process_vm_readv
@sys_process_vm_writev = dso_local alias i32 (i32, ptr, i32, ptr, i32, i32), ptr @__se_sys_process_vm_writev

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_vm_readv(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %3 to ptr
  %9 = tail call fastcc i32 @process_vm_rw(i32 noundef %0, ptr noundef %7, i32 noundef %2, ptr noundef %8, i32 noundef %4, i32 noundef %5, i32 noundef 0) #6
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_process_vm_writev(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = inttoptr i32 %1 to ptr
  %8 = inttoptr i32 %3 to ptr
  %9 = tail call fastcc i32 @process_vm_rw(i32 noundef %0, ptr noundef %7, i32 noundef %2, ptr noundef %8, i32 noundef %4, i32 noundef %5, i32 noundef 1) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @process_vm_rw(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca [16 x ptr], align 4
  %10 = alloca [8 x %struct.iovec], align 4
  %11 = alloca [8 x %struct.iovec], align 4
  %12 = alloca ptr, align 4
  %13 = alloca %struct.iov_iter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %10, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %11, i8 0, i32 64, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #6
  store ptr %10, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i32 24, i1 false), !annotation !8
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %15, label %200

15:                                               ; preds = %7
  %16 = icmp ne i32 %6, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @import_iovec(i32 noundef %17, ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef nonnull %12, ptr noundef nonnull %13) #6
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %200, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.iov_iter, ptr %13, i32 0, i32 4
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %197, label %24

24:                                               ; preds = %20
  %25 = call ptr @iovec_from_user(ptr noundef %3, i32 noundef %4, i32 noundef 8, ptr noundef nonnull %11, i1 noundef zeroext false) #6
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i32
  br label %197

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %9, i8 0, i32 64, i1 false) #6, !annotation !8
  %30 = load i32, ptr %21, align 8
  %31 = icmp eq i32 %4, 0
  br i1 %31, label %193, label %32

32:                                               ; preds = %48, %29
  %33 = phi i32 [ %50, %48 ], [ 0, %29 ]
  %34 = phi i32 [ %49, %48 ], [ 0, %29 ]
  %35 = getelementptr %struct.iovec, ptr %25, i32 %33, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = getelementptr %struct.iovec, ptr %25, i32 %33
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = add i32 %36, %41
  %43 = lshr i32 %42, 12
  %44 = lshr i32 %41, 12
  %45 = sub nsw i32 1, %44
  %46 = add nsw i32 %45, %43
  %47 = call i32 @llvm.umax.i32(i32 %34, i32 %46) #6
  br label %48

48:                                               ; preds = %38, %32
  %49 = phi i32 [ %47, %38 ], [ %34, %32 ]
  %50 = add nuw i32 %33, 1
  %51 = icmp eq i32 %50, %4
  br i1 %51, label %52, label %32

52:                                               ; preds = %48
  %53 = icmp eq i32 %49, 0
  br i1 %53, label %193, label %54

54:                                               ; preds = %52
  %55 = icmp ugt i32 %49, 16
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = shl i32 %49, 2
  %58 = call i32 @llvm.umin.i32(i32 %57, i32 8192) #6
  %59 = call noalias align 64 ptr @__kmalloc(i32 noundef %58, i32 noundef 3264) #7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %193, label %61

61:                                               ; preds = %56, %54
  %62 = phi ptr [ %59, %56 ], [ %9, %54 ]
  %63 = call ptr @find_get_task_by_vpid(i32 noundef %0) #6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %189, label %65

65:                                               ; preds = %61
  %66 = call ptr @mm_access(ptr noundef nonnull %63, i32 noundef 18) #6
  %67 = icmp eq ptr %66, null
  br i1 %67, label %179, label %68

68:                                               ; preds = %65
  %69 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.anon.4, ptr %66, i32 0, i32 15
  %72 = icmp eq i32 %6, 0
  br label %77

73:                                               ; preds = %68
  %74 = ptrtoint ptr %66 to i32
  %75 = icmp eq ptr %66, inttoptr (i32 -13 to ptr)
  %76 = select i1 %75, i32 -1, i32 %74
  br label %179

77:                                               ; preds = %169, %70
  %78 = phi i32 [ 0, %70 ], [ %171, %169 ]
  %79 = phi i32 [ 0, %70 ], [ %170, %169 ]
  %80 = load i32, ptr %21, align 8
  %81 = icmp ne i32 %80, 0
  %82 = icmp eq i32 %79, 0
  %83 = and i1 %82, %81
  br i1 %83, label %84, label %173

84:                                               ; preds = %77
  %85 = getelementptr %struct.iovec, ptr %25, i32 %78, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %169, label %88

88:                                               ; preds = %84
  %89 = getelementptr %struct.iovec, ptr %25, i32 %78
  %90 = load ptr, ptr %89, align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = add i32 %86, -1
  %93 = add i32 %92, %91
  %94 = lshr i32 %93, 12
  %95 = lshr i32 %91, 12
  %96 = sub nsw i32 1, %95
  %97 = add nsw i32 %96, %94
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %169, label %99

99:                                               ; preds = %88
  %100 = and i32 %91, -4096
  %101 = and i32 %91, 4095
  br label %102

102:                                              ; preds = %164, %99
  %103 = phi i32 [ %101, %99 ], [ 0, %164 ]
  %104 = phi i32 [ %97, %99 ], [ %161, %164 ]
  %105 = phi i32 [ %100, %99 ], [ %165, %164 ]
  %106 = phi i32 [ %86, %99 ], [ %166, %164 ]
  %107 = call i32 @llvm.umin.i32(i32 %104, i32 2048) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store i32 1, ptr %8, align 4
  %108 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), align 4
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  call void @__mmap_lock_do_trace_start_locking(ptr noundef nonnull %66, i1 noundef zeroext false) #6
  br label %111

111:                                              ; preds = %110, %102
  call void @down_read(ptr noundef %71) #6
  %112 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef nonnull %66, i1 noundef zeroext false, i1 noundef zeroext true) #6
  br label %115

115:                                              ; preds = %114, %111
  %116 = call i32 @pin_user_pages_remote(ptr noundef nonnull %66, i32 noundef %105, i32 noundef %107, i32 noundef %17, ptr noundef %62, ptr noundef null, ptr noundef nonnull %8) #6
  %117 = load i32, ptr %8, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  %120 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  call void @__mmap_lock_do_trace_released(ptr noundef nonnull %66, i1 noundef zeroext false) #6
  br label %123

123:                                              ; preds = %122, %119
  call void @up_read(ptr noundef %71) #6
  br label %124

124:                                              ; preds = %123, %115
  %125 = icmp slt i32 %116, 1
  br i1 %125, label %126, label %127

126:                                              ; preds = %124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  br label %169

127:                                              ; preds = %124
  %128 = shl i32 %116, 12
  %129 = sub i32 %128, %103
  %130 = call i32 @llvm.umin.i32(i32 %129, i32 %106) #6
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %158, label %132

132:                                              ; preds = %127
  %133 = load i32, ptr %21, align 8
  br label %134

134:                                              ; preds = %155, %132
  %135 = phi i32 [ %152, %155 ], [ %133, %132 ]
  %136 = phi ptr [ %141, %155 ], [ %62, %132 ]
  %137 = phi i32 [ %156, %155 ], [ %130, %132 ]
  %138 = phi i32 [ 0, %155 ], [ %103, %132 ]
  %139 = icmp eq i32 %135, 0
  br i1 %139, label %158, label %140

140:                                              ; preds = %134
  %141 = getelementptr ptr, ptr %136, i32 1
  %142 = load ptr, ptr %136, align 4
  %143 = sub nuw nsw i32 4096, %138
  %144 = call i32 @llvm.umin.i32(i32 %143, i32 %137) #6
  br i1 %72, label %147, label %145

145:                                              ; preds = %140
  %146 = call i32 @copy_page_from_iter(ptr noundef %142, i32 noundef %138, i32 noundef %144, ptr noundef nonnull %13) #6
  br label %149

147:                                              ; preds = %140
  %148 = call i32 @copy_page_to_iter(ptr noundef %142, i32 noundef %138, i32 noundef %144, ptr noundef nonnull %13) #6
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = icmp uge i32 %150, %144
  %152 = load i32, ptr %21, align 8
  %153 = icmp eq i32 %152, 0
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = sub i32 %137, %150
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %134

158:                                              ; preds = %155, %149, %134, %127
  %159 = phi i1 [ true, %127 ], [ false, %149 ], [ true, %134 ], [ true, %155 ]
  %160 = phi i32 [ 0, %127 ], [ -14, %149 ], [ 0, %134 ], [ 0, %155 ]
  %161 = sub i32 %104, %116
  call void @unpin_user_pages_dirty_lock(ptr noundef %62, i32 noundef %116, i1 noundef zeroext %16) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %162 = icmp ne i32 %161, 0
  %163 = select i1 %159, i1 %162, i1 false
  br i1 %163, label %164, label %169

164:                                              ; preds = %158
  %165 = add i32 %128, %105
  %166 = sub i32 %106, %130
  %167 = load i32, ptr %21, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %102

169:                                              ; preds = %164, %158, %126, %88, %84
  %170 = phi i32 [ 0, %84 ], [ -14, %126 ], [ 0, %88 ], [ %160, %158 ], [ 0, %164 ]
  %171 = add nuw i32 %78, 1
  %172 = icmp eq i32 %171, %4
  br i1 %172, label %173, label %77

173:                                              ; preds = %169, %77
  %174 = phi i32 [ %170, %169 ], [ %79, %77 ]
  %175 = load i32, ptr %21, align 8
  %176 = sub i32 %30, %175
  %177 = icmp eq i32 %30, %175
  %178 = select i1 %177, i32 %174, i32 %176
  call void @mmput(ptr noundef nonnull %66) #6
  br label %179

179:                                              ; preds = %173, %73, %65
  %180 = phi i32 [ %178, %173 ], [ -3, %65 ], [ %76, %73 ]
  %181 = getelementptr inbounds %struct.task_struct, ptr %63, i32 0, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !9
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %181) #6, !srcloc !10
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %181, ptr %181, i32 1, ptr elementtype(i32) %181) #6, !srcloc !11
  %183 = extractvalue { i32, i32, i32 } %182, 0
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %188, label %185

185:                                              ; preds = %179
  %186 = icmp sgt i32 %183, 0
  br i1 %186, label %189, label %187, !prof !12

187:                                              ; preds = %185
  call void @refcount_warn_saturate(ptr noundef %181, i32 noundef 3) #6
  br label %189

188:                                              ; preds = %179
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !13
  call void @__put_task_struct(ptr noundef nonnull %63) #6
  br label %189

189:                                              ; preds = %188, %187, %185, %61
  %190 = phi i32 [ -3, %61 ], [ %180, %185 ], [ %180, %187 ], [ %180, %188 ]
  %191 = icmp eq ptr %62, %9
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  call void @kfree(ptr noundef %62) #6
  br label %193

193:                                              ; preds = %192, %189, %56, %52, %29
  %194 = phi i32 [ 0, %52 ], [ -12, %56 ], [ %190, %192 ], [ %190, %189 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  %195 = icmp eq ptr %25, %11
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  call void @kfree(ptr noundef %25) #6
  br label %197

197:                                              ; preds = %196, %193, %27, %20
  %198 = phi i32 [ %28, %27 ], [ %194, %196 ], [ %194, %193 ], [ %18, %20 ]
  %199 = load ptr, ptr %12, align 4
  call void @kfree(ptr noundef %199) #6
  br label %200

200:                                              ; preds = %197, %15, %7
  %201 = phi i32 [ %198, %197 ], [ -22, %7 ], [ %18, %15 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #6
  ret i32 %201
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @import_iovec(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iovec_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_get_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mm_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_user_pages_remote(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unpin_user_pages_dirty_lock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_from_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_to_iter(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{i64 2148043047}
!10 = !{i64 440005, i64 2147929976, i64 2147930002, i64 2147930049, i64 2147930071, i64 2147930099, i64 2147930119}
!11 = !{i64 2147945206, i64 2147945238, i64 2147945267, i64 2147945301, i64 2147945332, i64 2147945355}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149137683}
