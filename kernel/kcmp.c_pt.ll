; ModuleID = '/llk/IR/kernel/kcmp.c_pt.bc'
source_filename = "../kernel/kcmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kcmp_epoll_slot = type { i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.85, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.restart_block = type { i32, ptr, %union.anon.66 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, i32, i32, i32, i64, ptr }
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
%union.anon.85 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.rlimit = type { i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }

@__initcall__kmod_kcmp__245_239_kcmp_cookies_init3 = internal global ptr @kcmp_cookies_init, section ".initcall3.init", align 4
@cookies = internal global [8 x [2 x i32]] zeroinitializer, section ".data..read_mostly", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_kcmp__245_239_kcmp_cookies_init3], section "llvm.metadata"

@sys_kcmp = dso_local alias i32 (i32, i32, i32, i32, i32), ptr @__se_sys_kcmp

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @__se_sys_kcmp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = alloca %struct.kcmp_epoll_slot, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %7 = tail call ptr @find_task_by_vpid(i32 noundef %0) #6
  %8 = tail call ptr @find_task_by_vpid(i32 noundef %1) #6
  %9 = icmp ne ptr %7, null
  %10 = icmp ne ptr %8, null
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %12, label %261

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #6, !srcloc !9
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #6, !srcloc !10
  %15 = extractvalue { i32, i32, i32 } %14, 0
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17, !prof !11

17:                                               ; preds = %12
  %18 = add i32 %15, 1
  %19 = or i32 %18, %15
  %20 = icmp sgt i32 %19, -1
  br i1 %20, label %23, label %21, !prof !12

21:                                               ; preds = %17, %12
  %22 = phi i32 [ 2, %12 ], [ 1, %17 ]
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef %22) #6
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 3
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !10
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !11

28:                                               ; preds = %23
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !12

32:                                               ; preds = %28, %23
  %33 = phi i32 [ 2, %23 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %33) #6
  br label %34

34:                                               ; preds = %32, %28
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %35 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 93
  %36 = load ptr, ptr %35, align 16
  %37 = getelementptr inbounds %struct.signal_struct, ptr %36, i32 0, i32 56
  %38 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 93
  %39 = load ptr, ptr %38, align 16
  %40 = getelementptr inbounds %struct.signal_struct, ptr %39, i32 0, i32 56
  %41 = icmp ugt ptr %39, %36
  %42 = select i1 %41, ptr %37, ptr %40
  %43 = select i1 %41, ptr %40, ptr %37
  %44 = tail call i32 @down_read_killable(ptr noundef %43) #6
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %244

46:                                               ; preds = %34
  %47 = icmp eq ptr %43, %42
  br i1 %47, label %51, label %48, !prof !11

48:                                               ; preds = %46
  %49 = tail call i32 @down_read_killable(ptr noundef %42) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %241

51:                                               ; preds = %48, %46
  %52 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %7, i32 noundef 17) #6
  br i1 %52, label %53, label %233

53:                                               ; preds = %51
  %54 = tail call zeroext i1 @ptrace_may_access(ptr noundef nonnull %8, i32 noundef 17) #6
  br i1 %54, label %55, label %233

55:                                               ; preds = %53
  switch i32 %2, label %233 [
    i32 0, label %56
    i32 1, label %76
    i32 2, label %94
    i32 3, label %112
    i32 4, label %130
    i32 5, label %148
    i32 6, label %166
    i32 7, label %184
  ]

56:                                               ; preds = %55
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %57 = tail call ptr @task_lookup_fd_rcu(ptr noundef nonnull %7, i32 noundef %3) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %58 = tail call ptr @task_lookup_fd_rcu(ptr noundef nonnull %8, i32 noundef %4) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %59 = icmp ne ptr %57, null
  %60 = icmp ne ptr %58, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %233

62:                                               ; preds = %56
  %63 = ptrtoint ptr %57 to i32
  %64 = load i32, ptr @cookies, align 4
  %65 = xor i32 %64, %63
  %66 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 0, i32 1), align 4
  %67 = mul i32 %65, %66
  %68 = ptrtoint ptr %58 to i32
  %69 = xor i32 %64, %68
  %70 = mul i32 %69, %66
  %71 = icmp slt i32 %67, %70
  %72 = zext i1 %71 to i32
  %73 = icmp sgt i32 %67, %70
  %74 = select i1 %73, i32 2, i32 0
  %75 = or i32 %74, %72
  br label %233

76:                                               ; preds = %55
  %77 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 37
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 37
  %80 = load ptr, ptr %79, align 4
  %81 = ptrtoint ptr %78 to i32
  %82 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 1), align 4
  %83 = xor i32 %82, %81
  %84 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 1, i32 1), align 4
  %85 = mul i32 %83, %84
  %86 = ptrtoint ptr %80 to i32
  %87 = xor i32 %82, %86
  %88 = mul i32 %87, %84
  %89 = icmp slt i32 %85, %88
  %90 = zext i1 %89 to i32
  %91 = icmp sgt i32 %85, %88
  %92 = select i1 %91, i32 2, i32 0
  %93 = or i32 %92, %90
  br label %233

94:                                               ; preds = %55
  %95 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 90
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 90
  %98 = load ptr, ptr %97, align 4
  %99 = ptrtoint ptr %96 to i32
  %100 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 2), align 4
  %101 = xor i32 %100, %99
  %102 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 2, i32 1), align 4
  %103 = mul i32 %101, %102
  %104 = ptrtoint ptr %98 to i32
  %105 = xor i32 %100, %104
  %106 = mul i32 %105, %102
  %107 = icmp slt i32 %103, %106
  %108 = zext i1 %107 to i32
  %109 = icmp sgt i32 %103, %106
  %110 = select i1 %109, i32 2, i32 0
  %111 = or i32 %110, %108
  br label %233

112:                                              ; preds = %55
  %113 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 89
  %114 = load ptr, ptr %113, align 64
  %115 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 89
  %116 = load ptr, ptr %115, align 64
  %117 = ptrtoint ptr %114 to i32
  %118 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 3), align 4
  %119 = xor i32 %118, %117
  %120 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 3, i32 1), align 4
  %121 = mul i32 %119, %120
  %122 = ptrtoint ptr %116 to i32
  %123 = xor i32 %118, %122
  %124 = mul i32 %123, %120
  %125 = icmp slt i32 %121, %124
  %126 = zext i1 %125 to i32
  %127 = icmp sgt i32 %121, %124
  %128 = select i1 %127, i32 2, i32 0
  %129 = or i32 %128, %126
  br label %233

130:                                              ; preds = %55
  %131 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 94
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 94
  %134 = load ptr, ptr %133, align 4
  %135 = ptrtoint ptr %132 to i32
  %136 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 4), align 4
  %137 = xor i32 %136, %135
  %138 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 4, i32 1), align 4
  %139 = mul i32 %137, %138
  %140 = ptrtoint ptr %134 to i32
  %141 = xor i32 %136, %140
  %142 = mul i32 %141, %138
  %143 = icmp slt i32 %139, %142
  %144 = zext i1 %143 to i32
  %145 = icmp sgt i32 %139, %142
  %146 = select i1 %145, i32 2, i32 0
  %147 = or i32 %146, %144
  br label %233

148:                                              ; preds = %55
  %149 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 118
  %150 = load ptr, ptr %149, align 32
  %151 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 118
  %152 = load ptr, ptr %151, align 32
  %153 = ptrtoint ptr %150 to i32
  %154 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 5), align 4
  %155 = xor i32 %154, %153
  %156 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 5, i32 1), align 4
  %157 = mul i32 %155, %156
  %158 = ptrtoint ptr %152 to i32
  %159 = xor i32 %154, %158
  %160 = mul i32 %159, %156
  %161 = icmp slt i32 %157, %160
  %162 = zext i1 %161 to i32
  %163 = icmp sgt i32 %157, %160
  %164 = select i1 %163, i32 2, i32 0
  %165 = or i32 %164, %162
  br label %233

166:                                              ; preds = %55
  %167 = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 87
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 87
  %170 = load ptr, ptr %169, align 4
  %171 = ptrtoint ptr %168 to i32
  %172 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 6), align 4
  %173 = xor i32 %172, %171
  %174 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 6, i32 1), align 4
  %175 = mul i32 %173, %174
  %176 = ptrtoint ptr %170 to i32
  %177 = xor i32 %172, %176
  %178 = mul i32 %177, %174
  %179 = icmp slt i32 %175, %178
  %180 = zext i1 %179 to i32
  %181 = icmp sgt i32 %175, %178
  %182 = select i1 %181, i32 2, i32 0
  %183 = or i32 %182, %180
  br label %233

184:                                              ; preds = %55
  %185 = inttoptr i32 %4 to ptr
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false) #6, !annotation !14
  %186 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %185, i32 12, i32 -1090519040) #7, !srcloc !15
  %187 = extractvalue { i32, i32 } %186, 0
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %197, !prof !12

189:                                              ; preds = %184
  %190 = tail call ptr @llvm.thread.pointer() #6
  %191 = getelementptr inbounds %struct.thread_info, ptr %190, i32 0, i32 3
  %192 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %191) #8, !srcloc !16
  %193 = and i32 %192, -13
  %194 = or i32 %193, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %194) #6, !srcloc !17
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !18
  %195 = call i32 @arm_copy_from_user(ptr noundef nonnull %6, ptr noundef %185, i32 noundef 12) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %192) #6, !srcloc !17
  call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !18
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %201, label %197, !prof !12

197:                                              ; preds = %189, %184
  %198 = phi i32 [ %195, %189 ], [ 12, %184 ]
  %199 = sub i32 12, %198
  %200 = getelementptr i8, ptr %6, i32 %199
  call void @llvm.memset.p0.i32(ptr align 1 %200, i8 0, i32 %198, i1 false) #6
  br label %231

201:                                              ; preds = %189
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !8
  %202 = call ptr @task_lookup_fd_rcu(ptr noundef nonnull %7, i32 noundef %3) #6
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  %203 = icmp eq ptr %202, null
  br i1 %203, label %231, label %204

204:                                              ; preds = %201
  %205 = load i32, ptr %6, align 4
  %206 = call ptr @fget_task(ptr noundef nonnull %8, i32 noundef %205) #6
  %207 = icmp eq ptr %206, null
  br i1 %207, label %231, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %6, i32 0, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = getelementptr inbounds %struct.kcmp_epoll_slot, ptr %6, i32 0, i32 2
  %212 = load i32, ptr %211, align 4
  %213 = call ptr @get_epoll_tfile_raw_ptr(ptr noundef nonnull %206, i32 noundef %210, i32 noundef %212) #6
  call void @fput(ptr noundef nonnull %206) #6
  %214 = icmp ugt ptr %213, inttoptr (i32 -4096 to ptr)
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = ptrtoint ptr %213 to i32
  br label %231

217:                                              ; preds = %208
  %218 = ptrtoint ptr %202 to i32
  %219 = load i32, ptr @cookies, align 4
  %220 = xor i32 %219, %218
  %221 = load i32, ptr getelementptr inbounds ([8 x [2 x i32]], ptr @cookies, i32 0, i32 0, i32 1), align 4
  %222 = mul i32 %220, %221
  %223 = ptrtoint ptr %213 to i32
  %224 = xor i32 %219, %223
  %225 = mul i32 %224, %221
  %226 = icmp slt i32 %222, %225
  %227 = zext i1 %226 to i32
  %228 = icmp sgt i32 %222, %225
  %229 = select i1 %228, i32 2, i32 0
  %230 = or i32 %229, %227
  br label %231

231:                                              ; preds = %217, %215, %204, %201, %197
  %232 = phi i32 [ %216, %215 ], [ %230, %217 ], [ -9, %201 ], [ -9, %204 ], [ -14, %197 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  br label %233

233:                                              ; preds = %231, %166, %148, %130, %112, %94, %76, %62, %56, %55, %53, %51
  %234 = phi i32 [ %232, %231 ], [ %183, %166 ], [ %165, %148 ], [ %147, %130 ], [ %129, %112 ], [ %111, %94 ], [ %93, %76 ], [ -1, %53 ], [ -1, %51 ], [ %75, %62 ], [ -9, %56 ], [ -22, %55 ]
  %235 = load ptr, ptr %35, align 16
  %236 = getelementptr inbounds %struct.signal_struct, ptr %235, i32 0, i32 56
  %237 = load ptr, ptr %38, align 16
  %238 = icmp eq ptr %237, %235
  br i1 %238, label %241, label %239, !prof !11

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.signal_struct, ptr %237, i32 0, i32 56
  call void @up_read(ptr noundef %240) #6
  br label %241

241:                                              ; preds = %239, %233, %48
  %242 = phi ptr [ %43, %48 ], [ %236, %233 ], [ %236, %239 ]
  %243 = phi i32 [ %49, %48 ], [ %234, %233 ], [ %234, %239 ]
  call void @up_read(ptr noundef %242) #6
  br label %244

244:                                              ; preds = %241, %34
  %245 = phi i32 [ %44, %34 ], [ %243, %241 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #6, !srcloc !9
  %246 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #6, !srcloc !20
  %247 = extractvalue { i32, i32, i32 } %246, 0
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %252, label %249

249:                                              ; preds = %244
  %250 = icmp sgt i32 %247, 0
  br i1 %250, label %253, label %251, !prof !12

251:                                              ; preds = %249
  call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #6
  br label %253

252:                                              ; preds = %244
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  call void @__put_task_struct(ptr noundef nonnull %7) #6
  br label %253

253:                                              ; preds = %252, %251, %249
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !19
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #6, !srcloc !9
  %254 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #6, !srcloc !20
  %255 = extractvalue { i32, i32, i32 } %254, 0
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %260, label %257

257:                                              ; preds = %253
  %258 = icmp sgt i32 %255, 0
  br i1 %258, label %262, label %259, !prof !12

259:                                              ; preds = %257
  call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #6
  br label %262

260:                                              ; preds = %253
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !21
  call void @__put_task_struct(ptr noundef nonnull %8) #6
  br label %262

261:                                              ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !13
  br label %262

262:                                              ; preds = %261, %260, %259, %257
  %263 = phi i32 [ -3, %261 ], [ %245, %257 ], [ %245, %259 ], [ %245, %260 ]
  ret i32 %263
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @kcmp_cookies_init() #2 section ".init.text" {
  tail call void @get_random_bytes(ptr noundef nonnull @cookies, i32 noundef 64) #6
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %6, %1 ]
  %3 = getelementptr [8 x [2 x i32]], ptr @cookies, i32 0, i32 %2, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = or i32 %4, -2147483647
  store i32 %5, ptr %3, align 4
  %6 = add nuw nsw i32 %2, 1
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %8, label %1

8:                                                ; preds = %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_task_by_vpid(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_lookup_fd_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fget_task(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_epoll_tfile_raw_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_task_struct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2149212671}
!9 = !{i64 413883, i64 2147903854, i64 2147903880, i64 2147903927, i64 2147903949, i64 2147903977, i64 2147903997}
!10 = !{i64 2147917524, i64 2147917556, i64 2147917585, i64 2147917619, i64 2147917650, i64 2147917673}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 2149212888}
!14 = !{!"auto-init"}
!15 = !{i64 2151025022, i64 2151025047}
!16 = !{i64 3521134}
!17 = !{i64 3521331}
!18 = !{i64 2151006610}
!19 = !{i64 2148017722}
!20 = !{i64 2147919881, i64 2147919913, i64 2147919942, i64 2147919976, i64 2147920007, i64 2147920030}
!21 = !{i64 2149819943}
