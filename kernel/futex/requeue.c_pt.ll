; ModuleID = '/llk/IR/kernel/futex/requeue.c_pt.bc'
source_filename = "../kernel/futex/requeue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.anon.33 = type { i64, i32, i32 }
%struct.atomic_t = type { i32 }
%union.futex_key = type { %struct.anon.30 }
%struct.anon.30 = type { i64, i32, i32 }
%struct.wake_q_head = type { ptr, ptr }
%struct.futex_hash_bucket = type { %struct.atomic_t, %struct.spinlock, %struct.plist_head, [48 x i8] }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.plist_head = type { %struct.list_head }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.futex_q = type { %struct.plist_node, ptr, ptr, %union.futex_key, ptr, ptr, ptr, i32, %struct.atomic_t }
%struct.futex_pi_state = type { %struct.list_head, %struct.rt_mutex_base, ptr, %struct.refcount_struct, %union.futex_key }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.hrtimer_sleeper = type { %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rt_mutex_waiter = type { %struct.rb_node, %struct.rb_node, ptr, ptr, i32, i32, i64, ptr }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.36, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon }
%struct.llist_node = type { ptr }
%union.anon = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.4 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.36 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@futex_q_init = dso_local local_unnamed_addr constant { %struct.plist_node, ptr, ptr, { %struct.anon.33 }, ptr, ptr, ptr, i32, %struct.atomic_t } { %struct.plist_node zeroinitializer, ptr null, ptr null, { %struct.anon.33 } zeroinitializer, ptr null, ptr null, ptr null, i32 -1, %struct.atomic_t zeroinitializer }, align 8
@.str = private unnamed_addr constant [23 x i8] c"kernel/futex/requeue.c\00", align 1
@futex_requeue_pi_complete.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@futex_requeue_pi_complete.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@handle_early_requeue_pi_wakeup.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_requeue(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca %union.futex_key, align 8
  %10 = alloca %union.futex_key, align 8
  %11 = alloca ptr, align 4
  %12 = alloca %struct.wake_q_head, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #8
  store ptr null, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #8
  store ptr inttoptr (i32 1 to ptr), ptr %12, align 8
  %15 = getelementptr inbounds %struct.wake_q_head, ptr %12, i32 0, i32 1
  store ptr %12, ptr %15, align 4
  %16 = or i32 %4, %3
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %308

18:                                               ; preds = %7
  %19 = icmp eq i32 %6, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %18
  %21 = icmp ne ptr %0, %2
  %22 = icmp eq i32 %3, 1
  %23 = and i1 %21, %22
  br i1 %23, label %24, label %308

24:                                               ; preds = %20
  %25 = call i32 @refill_pi_state_cache() #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %308

27:                                               ; preds = %24, %18
  %28 = and i32 %1, 1
  %29 = icmp ne i32 %28, 0
  %30 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %29, ptr noundef nonnull %9, i32 noundef 0) #8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %308, !prof !8

32:                                               ; preds = %27
  %33 = xor i1 %19, true
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 1
  %36 = getelementptr inbounds %struct.anon.33, ptr %10, i32 0, i32 1
  %37 = getelementptr inbounds %struct.anon.33, ptr %9, i32 0, i32 2
  %38 = getelementptr inbounds %struct.anon.33, ptr %10, i32 0, i32 2
  %39 = icmp eq ptr %5, null
  br label %40

40:                                               ; preds = %185, %32
  %41 = call i32 @get_futex_key(ptr noundef %2, i1 noundef zeroext %29, ptr noundef nonnull %10, i32 noundef %34) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %308, !prof !8

43:                                               ; preds = %40
  br i1 %19, label %56, label %44

44:                                               ; preds = %43
  %45 = load i32, ptr %35, align 8
  %46 = load i32, ptr %36, align 8
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64, ptr %9, align 8
  %50 = load i64, ptr %10, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, ptr %37, align 4
  %54 = load i32, ptr %38, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %308, label %56

56:                                               ; preds = %52, %48, %44, %43
  %57 = call ptr @futex_hash(ptr noundef nonnull %9) #8
  %58 = call ptr @futex_hash(ptr noundef nonnull %10) #8
  %59 = icmp ugt ptr %57, %58
  %60 = select i1 %59, ptr %57, ptr %58
  %61 = select i1 %59, ptr %58, ptr %57
  %62 = getelementptr inbounds %struct.futex_hash_bucket, ptr %61, i32 0, i32 1
  %63 = icmp eq ptr %61, %60
  %64 = getelementptr inbounds %struct.futex_hash_bucket, ptr %60, i32 0, i32 1
  %65 = getelementptr inbounds %struct.futex_hash_bucket, ptr %57, i32 0, i32 1
  %66 = icmp eq ptr %57, %58
  %67 = getelementptr inbounds %struct.futex_hash_bucket, ptr %58, i32 0, i32 1
  br label %68

68:                                               ; preds = %93, %56
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %69 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !10
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  call void @_raw_spin_lock(ptr noundef %62) #8
  br i1 %63, label %71, label %70

70:                                               ; preds = %68
  call void @_raw_spin_lock(ptr noundef %64) #8
  br label %71

71:                                               ; preds = %70, %68
  br i1 %39, label %98, label %72, !prof !12

72:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #8
  store i32 0, ptr %13, align 4, !annotation !13
  %73 = call i32 @futex_get_value_locked(ptr noundef nonnull %13, ptr noundef %0) #8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %94, label %75, !prof !8

75:                                               ; preds = %72
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %76 = load i16, ptr %65, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br i1 %66, label %81, label %78

78:                                               ; preds = %75
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %79 = load i16, ptr %67, align 4
  %80 = add i16 %79, 1
  store i16 %80, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %81

81:                                               ; preds = %78, %75
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %82 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !18
  %83 = tail call ptr @llvm.thread.pointer() #8
  %84 = getelementptr inbounds %struct.thread_info, ptr %83, i32 0, i32 3
  %85 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %84) #9, !srcloc !19
  %86 = and i32 %85, -13
  %87 = or i32 %86, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %87) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %88 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1090519041) #8, !srcloc !22
  %89 = extractvalue { i32, i32 } %88, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #8, !srcloc !20
  call void asm sideeffect "isb ", "~{memory}"() #8, !srcloc !21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %81
  %92 = extractvalue { i32, i32 } %88, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  br label %308

93:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  br i1 %29, label %185, label %68

94:                                               ; preds = %72
  %95 = load i32, ptr %13, align 4
  %96 = load i32, ptr %5, align 4
  %97 = icmp eq i32 %95, %96
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #8
  br i1 %97, label %98, label %296

98:                                               ; preds = %94, %71
  br i1 %19, label %188, label %99

99:                                               ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #8
  store ptr null, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !13
  %100 = call i32 @futex_get_value_locked(ptr noundef nonnull %8, ptr noundef %2) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %158

103:                                              ; preds = %99
  %104 = call ptr @futex_top_waiter(ptr noundef %57, ptr noundef nonnull %9) #8
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %180

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.futex_q, ptr %104, i32 0, i32 5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %156, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.futex_q, ptr %104, i32 0, i32 4
  %113 = load ptr, ptr %112, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %156

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.futex_q, ptr %104, i32 0, i32 6
  %117 = load ptr, ptr %116, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %156, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.anon.33, ptr %117, i32 0, i32 1
  %121 = load i32, ptr %120, align 8
  %122 = load i32, ptr %36, align 8
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %119
  %125 = load i64, ptr %117, align 8
  %126 = load i64, ptr %10, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.anon.33, ptr %117, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = load i32, ptr %38, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.futex_q, ptr %104, i32 0, i32 8
  %135 = load volatile i32, ptr %134, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  br label %136

136:                                              ; preds = %144, %133
  %137 = phi i32 [ %135, %133 ], [ %145, %144 ]
  switch i32 %137, label %147 [
    i32 1, label %138
    i32 0, label %139
  ]

138:                                              ; preds = %136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %169

139:                                              ; preds = %136
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %134) #8, !srcloc !9
  br label %140

140:                                              ; preds = %140, %139
  %141 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %134, ptr %134, i32 0, i32 2, ptr elementtype(i32) %134) #8, !srcloc !25
  %142 = extractvalue { i32, i32 } %141, 0
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %140

144:                                              ; preds = %140
  %145 = extractvalue { i32, i32 } %141, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %136, !prof !8

147:                                              ; preds = %144, %136
  store ptr null, ptr %112, align 8
  %148 = getelementptr inbounds %struct.futex_q, ptr %104, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 @futex_lock_pi_atomic(ptr noundef %2, ptr noundef %58, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef %149, ptr noundef nonnull %14, i32 noundef %4) #8
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %153

152:                                              ; preds = %147
  call fastcc void @requeue_pi_wake_futex(ptr noundef nonnull %104, ptr noundef nonnull %10, ptr noundef %58) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %180

153:                                              ; preds = %147
  %154 = icmp slt i32 %150, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  call fastcc void @futex_requeue_pi_complete(ptr noundef nonnull %104, i32 noundef %150) #8
  br label %157

156:                                              ; preds = %128, %124, %119, %115, %111, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %182

157:                                              ; preds = %155, %153
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  switch i32 %150, label %182 [
    i32 0, label %180
    i32 1, label %180
    i32 -14, label %158
    i32 -16, label %169
    i32 -11, label %169
  ]

158:                                              ; preds = %157, %102
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %159 = load i16, ptr %65, align 4
  %160 = add i16 %159, 1
  store i16 %160, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br i1 %66, label %164, label %161

161:                                              ; preds = %158
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %162 = load i16, ptr %67, align 4
  %163 = add i16 %162, 1
  store i16 %163, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %164

164:                                              ; preds = %161, %158
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %165 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !18
  %166 = call i32 @fault_in_user_writeable(ptr noundef %2) #8
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %184, label %168

168:                                              ; preds = %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %308

169:                                              ; preds = %157, %157, %138
  %170 = phi i32 [ -11, %138 ], [ %150, %157 ], [ %150, %157 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %171 = load i16, ptr %65, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br i1 %66, label %176, label %173

173:                                              ; preds = %169
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %174 = load i16, ptr %67, align 4
  %175 = add i16 %174, 1
  store i16 %175, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %176

176:                                              ; preds = %173, %169
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %177 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !18
  %178 = load ptr, ptr %14, align 4
  call void @wait_for_owner_exiting(i32 noundef %170, ptr noundef %178) #8
  %179 = call i32 @__cond_resched() #8
  br label %184

180:                                              ; preds = %157, %157, %152, %106
  %181 = phi i32 [ 0, %106 ], [ 1, %152 ], [ %150, %157 ], [ %150, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %188

182:                                              ; preds = %157, %156
  %183 = phi i32 [ -22, %156 ], [ %150, %157 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %296

184:                                              ; preds = %176, %164
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #8
  br label %185

185:                                              ; preds = %184, %93
  %186 = call i32 @get_futex_key(ptr noundef %0, i1 noundef zeroext %29, ptr noundef nonnull %9, i32 noundef 0) #8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %40, label %308, !prof !8

188:                                              ; preds = %180, %98
  %189 = phi i32 [ %181, %180 ], [ 0, %98 ]
  %190 = getelementptr inbounds %struct.futex_hash_bucket, ptr %57, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8
  %192 = icmp ne ptr %191, %190
  %193 = sub i32 %189, %3
  %194 = icmp slt i32 %193, %4
  %195 = and i1 %192, %194
  br i1 %195, label %196, label %292

196:                                              ; preds = %285, %188
  %197 = phi i32 [ %287, %285 ], [ %189, %188 ]
  %198 = phi i32 [ %286, %285 ], [ 0, %188 ]
  %199 = phi ptr [ %201, %285 ], [ %191, %188 ]
  %200 = getelementptr i8, ptr %199, i32 -12
  %201 = load ptr, ptr %199, align 4
  %202 = getelementptr i8, ptr %199, i32 20
  %203 = icmp eq ptr %202, null
  br i1 %203, label %285, label %204

204:                                              ; preds = %196
  %205 = getelementptr i8, ptr %199, i32 28
  %206 = load i32, ptr %205, align 8
  %207 = load i32, ptr %35, align 8
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %285

209:                                              ; preds = %204
  %210 = load i64, ptr %202, align 8
  %211 = load i64, ptr %9, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %285

213:                                              ; preds = %209
  %214 = getelementptr i8, ptr %199, i32 32
  %215 = load i32, ptr %214, align 4
  %216 = load i32, ptr %37, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %285

218:                                              ; preds = %213
  %219 = getelementptr i8, ptr %199, i32 40
  %220 = load ptr, ptr %219, align 4
  %221 = icmp eq ptr %220, null
  br i1 %19, label %223, label %222

222:                                              ; preds = %218
  br i1 %221, label %292, label %228

223:                                              ; preds = %218
  br i1 %221, label %224, label %292

224:                                              ; preds = %223
  %225 = getelementptr i8, ptr %199, i32 36
  %226 = load ptr, ptr %225, align 8
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %292

228:                                              ; preds = %222
  %229 = getelementptr i8, ptr %199, i32 36
  %230 = load ptr, ptr %229, align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %237, label %292

232:                                              ; preds = %224
  %233 = add i32 %197, 1
  %234 = icmp sgt i32 %233, %3
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  call void @futex_wake_mark(ptr noundef nonnull %12, ptr noundef %200) #8
  br label %285

236:                                              ; preds = %232
  call fastcc void @requeue_futex(ptr noundef %200, ptr noundef %57, ptr noundef %58, ptr noundef nonnull %10)
  br label %285

237:                                              ; preds = %228
  %238 = getelementptr i8, ptr %199, i32 44
  %239 = load ptr, ptr %238, align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %292, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.anon.33, ptr %239, i32 0, i32 1
  %243 = load i32, ptr %242, align 8
  %244 = load i32, ptr %36, align 8
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %292

246:                                              ; preds = %241
  %247 = load i64, ptr %239, align 8
  %248 = load i64, ptr %10, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %292

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.anon.33, ptr %239, i32 0, i32 2
  %252 = load i32, ptr %251, align 4
  %253 = load i32, ptr %38, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %292

255:                                              ; preds = %250
  %256 = load ptr, ptr %11, align 4
  call void @get_pi_state(ptr noundef %256) #8
  %257 = load ptr, ptr %11, align 4
  %258 = getelementptr i8, ptr %199, i32 52
  %259 = load volatile i32, ptr %258, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  br label %260

260:                                              ; preds = %267, %255
  %261 = phi i32 [ %259, %255 ], [ %268, %267 ]
  switch i32 %261, label %272 [
    i32 1, label %270
    i32 0, label %262
  ]

262:                                              ; preds = %260
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %258) #8, !srcloc !9
  br label %263

263:                                              ; preds = %263, %262
  %264 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %258, ptr %258, i32 0, i32 2, ptr elementtype(i32) %258) #8, !srcloc !25
  %265 = extractvalue { i32, i32 } %264, 0
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %263

267:                                              ; preds = %263
  %268 = extractvalue { i32, i32 } %264, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %272, label %260, !prof !8

270:                                              ; preds = %260
  %271 = load ptr, ptr %11, align 4
  call void @put_pi_state(ptr noundef %271) #8
  br label %285

272:                                              ; preds = %267, %260
  store ptr %257, ptr %229, align 8
  %273 = load ptr, ptr %11, align 4
  %274 = getelementptr inbounds %struct.futex_pi_state, ptr %273, i32 0, i32 1
  %275 = load ptr, ptr %219, align 4
  %276 = getelementptr i8, ptr %199, i32 8
  %277 = load ptr, ptr %276, align 4
  %278 = call i32 @rt_mutex_start_proxy_lock(ptr noundef %274, ptr noundef %275, ptr noundef %277) #8
  switch i32 %278, label %283 [
    i32 1, label %279
    i32 0, label %281
  ]

279:                                              ; preds = %272
  call fastcc void @requeue_pi_wake_futex(ptr noundef %200, ptr noundef nonnull %10, ptr noundef %58)
  %280 = add i32 %197, 1
  br label %285

281:                                              ; preds = %272
  call fastcc void @requeue_futex(ptr noundef %200, ptr noundef %57, ptr noundef %58, ptr noundef nonnull %10)
  call fastcc void @futex_requeue_pi_complete(ptr noundef %200, i32 noundef 0)
  %282 = add i32 %197, 1
  br label %285

283:                                              ; preds = %272
  store ptr null, ptr %229, align 8
  %284 = load ptr, ptr %11, align 4
  call void @put_pi_state(ptr noundef %284) #8
  call fastcc void @futex_requeue_pi_complete(ptr noundef %200, i32 noundef %278)
  br label %292

285:                                              ; preds = %281, %279, %270, %236, %235, %213, %209, %204, %196
  %286 = phi i32 [ 1, %279 ], [ 0, %281 ], [ %198, %270 ], [ %198, %235 ], [ %198, %236 ], [ %198, %213 ], [ %198, %209 ], [ %198, %204 ], [ %198, %196 ]
  %287 = phi i32 [ %280, %279 ], [ %282, %281 ], [ %197, %270 ], [ %233, %235 ], [ %233, %236 ], [ %197, %213 ], [ %197, %209 ], [ %197, %204 ], [ %197, %196 ]
  %288 = icmp ne ptr %201, %190
  %289 = sub i32 %287, %3
  %290 = icmp slt i32 %289, %4
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %196, label %292

292:                                              ; preds = %285, %283, %250, %246, %241, %237, %228, %224, %223, %222, %188
  %293 = phi i32 [ %197, %283 ], [ %189, %188 ], [ %287, %285 ], [ %197, %224 ], [ %197, %223 ], [ %197, %222 ], [ %197, %250 ], [ %197, %228 ], [ %197, %246 ], [ %197, %241 ], [ %197, %237 ]
  %294 = phi i32 [ %278, %283 ], [ 0, %188 ], [ %286, %285 ], [ -22, %224 ], [ -22, %223 ], [ -22, %222 ], [ -22, %250 ], [ -22, %228 ], [ -22, %246 ], [ -22, %241 ], [ -22, %237 ]
  %295 = load ptr, ptr %11, align 4
  call void @put_pi_state(ptr noundef %295) #8
  br label %296

296:                                              ; preds = %292, %182, %94
  %297 = phi i32 [ %294, %292 ], [ %183, %182 ], [ -11, %94 ]
  %298 = phi i32 [ %293, %292 ], [ 0, %182 ], [ 0, %94 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %299 = load i16, ptr %65, align 4
  %300 = add i16 %299, 1
  store i16 %300, ptr %65, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br i1 %66, label %304, label %301

301:                                              ; preds = %296
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %302 = load i16, ptr %67, align 4
  %303 = add i16 %302, 1
  store i16 %303, ptr %67, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %304

304:                                              ; preds = %301, %296
  call void @wake_up_q(ptr noundef nonnull %12) #8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  %305 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #8, !srcloc !18
  %306 = icmp eq i32 %297, 0
  %307 = select i1 %306, i32 %298, i32 %297
  br label %308

308:                                              ; preds = %304, %185, %168, %91, %52, %40, %27, %24, %20, %7
  %309 = phi i32 [ %307, %304 ], [ -22, %7 ], [ -22, %20 ], [ -12, %24 ], [ %92, %91 ], [ %166, %168 ], [ %30, %27 ], [ %186, %185 ], [ %41, %40 ], [ -22, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret i32 %309
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @refill_pi_state_cache() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_futex_key(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_get_value_locked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fault_in_user_writeable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_owner_exiting(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_wake_mark(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @requeue_futex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #4 {
  %5 = icmp eq ptr %1, %2
  br i1 %5, label %13, label %6, !prof !12

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.futex_hash_bucket, ptr %2, i32 0, i32 2
  %8 = getelementptr inbounds %struct.futex_hash_bucket, ptr %1, i32 0, i32 2
  tail call void @plist_del(ptr noundef %0, ptr noundef %8) #8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %1) #8, !srcloc !9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %1, ptr %1, i32 1, ptr elementtype(i32) %1) #8, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #8, !srcloc !9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #8, !srcloc !10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !11
  tail call void @plist_add(ptr noundef %0, ptr noundef %7) #8
  %11 = getelementptr inbounds %struct.futex_hash_bucket, ptr %2, i32 0, i32 1
  %12 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  store ptr %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %6, %4
  %14 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %14, ptr noundef align 8 dereferenceable(16) %3, i32 16, i1 false)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_pi_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pi_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_start_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @requeue_pi_wake_futex(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %1, i32 16, i1 false)
  tail call void @__futex_unqueue(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !12

8:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #8
  br label %9

9:                                                ; preds = %8, %3
  store ptr null, ptr %5, align 4
  %10 = getelementptr inbounds %struct.futex_hash_bucket, ptr %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 2
  store ptr %10, ptr %11, align 8
  %12 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 8
  %13 = load volatile i32, ptr %12, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  br label %14

14:                                               ; preds = %29, %9
  %15 = phi i32 [ %13, %9 ], [ %30, %29 ]
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = add i32 %15, -4
  %19 = icmp ult i32 %18, -2
  %20 = load i1, ptr @futex_requeue_pi_complete.__already_done, align 1
  %21 = xor i1 %20, true
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %24, !prof !12

23:                                               ; preds = %17
  store i1 true, ptr @futex_requeue_pi_complete.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 137, i32 noundef 9, ptr noundef null) #8
  br label %24

24:                                               ; preds = %23, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #8, !srcloc !9
  br label %25

25:                                               ; preds = %25, %24
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 %15, i32 5, ptr elementtype(i32) %12) #8, !srcloc !25
  %27 = extractvalue { i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %25

29:                                               ; preds = %25
  %30 = extractvalue { i32, i32 } %26, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %31 = icmp eq i32 %30, %15
  br i1 %31, label %32, label %14, !prof !8

32:                                               ; preds = %29, %14
  %33 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 @wake_up_state(ptr noundef %34, i32 noundef 3) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @futex_requeue_pi_complete(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.futex_q, ptr %0, i32 0, i32 8
  %4 = load volatile i32, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  %5 = icmp sgt i32 %1, -1
  %6 = add nuw i32 %1, 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = phi i32 [ %4, %2 ], [ %35, %34 ]
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %37, label %10

10:                                               ; preds = %7
  br i1 %5, label %11, label %17

11:                                               ; preds = %10
  %12 = add i32 %8, -4
  %13 = icmp ult i32 %12, -2
  %14 = load i1, ptr @futex_requeue_pi_complete.__already_done, align 1
  %15 = xor i1 %14, true
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %24, label %28, !prof !12

17:                                               ; preds = %10
  %18 = icmp eq i32 %8, 2
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = icmp ne i32 %8, 3
  %21 = load i1, ptr @futex_requeue_pi_complete.__already_done.1, align 1
  %22 = xor i1 %21, true
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %28, !prof !12

24:                                               ; preds = %19, %11
  %25 = phi ptr [ @futex_requeue_pi_complete.__already_done, %11 ], [ @futex_requeue_pi_complete.__already_done.1, %19 ]
  %26 = phi i32 [ 137, %11 ], [ 144, %19 ]
  %27 = phi i32 [ %6, %11 ], [ 1, %19 ]
  store i1 true, ptr %25, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %26, i32 noundef 9, ptr noundef null) #8
  br label %28

28:                                               ; preds = %24, %19, %17, %11
  %29 = phi i32 [ 0, %17 ], [ 1, %19 ], [ %6, %11 ], [ %27, %24 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #8, !srcloc !9
  br label %30

30:                                               ; preds = %30, %28
  %31 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 %8, i32 %29, ptr elementtype(i32) %3) #8, !srcloc !25
  %32 = extractvalue { i32, i32 } %31, 0
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %30

34:                                               ; preds = %30
  %35 = extractvalue { i32, i32 } %31, 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %36 = icmp eq i32 %35, %8
  br i1 %36, label %37, label %7, !prof !8

37:                                               ; preds = %34, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_q(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @futex_wait_requeue_pi(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.hrtimer_sleeper, align 8
  %8 = alloca %struct.rt_mutex_waiter, align 8
  %9 = alloca ptr, align 4
  %10 = alloca %union.futex_key, align 8
  %11 = alloca %struct.futex_q, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %7) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %7, i8 0, i32 56, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(56) %8, i8 0, i32 56, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #8
  store ptr null, ptr %9, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i32 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr noundef nonnull align 8 dereferenceable(72) @futex_q_init, i32 72, i1 false)
  %12 = icmp eq ptr %0, %5
  %13 = icmp eq i32 %4, 0
  %14 = or i1 %13, %12
  br i1 %14, label %167, label %15

15:                                               ; preds = %6
  %16 = tail call ptr @llvm.thread.pointer() #8
  %17 = getelementptr inbounds %struct.task_struct, ptr %16, i32 0, i32 143
  %18 = load i64, ptr %17, align 8
  %19 = call ptr @futex_setup_timer(ptr noundef %3, ptr noundef nonnull %7, i32 noundef %1, i64 noundef %18) #8
  %20 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 1
  %21 = ptrtoint ptr %20 to i32
  store i32 %21, ptr %20, align 4
  %22 = ptrtoint ptr %8 to i32
  store i32 %22, ptr %8, align 8
  %23 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 4
  store i32 3, ptr %23, align 8
  %24 = getelementptr inbounds %struct.rt_mutex_waiter, ptr %8, i32 0, i32 2
  store ptr null, ptr %24, align 8
  %25 = and i32 %1, 1
  %26 = icmp ne i32 %25, 0
  %27 = call i32 @get_futex_key(ptr noundef %5, i1 noundef zeroext %26, ptr noundef nonnull %10, i32 noundef 1) #8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %162, !prof !8

29:                                               ; preds = %15
  %30 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 7
  store i32 %4, ptr %30, align 4
  %31 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 5
  store ptr %8, ptr %31, align 4
  %32 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 6
  store ptr %10, ptr %32, align 8
  %33 = call i32 @futex_wait_setup(ptr noundef %0, i32 noundef %2, i32 noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %9) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %162

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 3
  %37 = icmp eq ptr %36, null
  br i1 %37, label %56, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 3, i32 0, i32 1
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.anon.33, ptr %10, i32 0, i32 1
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i64, ptr %36, align 8
  %46 = load i64, ptr %10, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 3, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.anon.33, ptr %10, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load ptr, ptr %9, align 4
  call void @futex_q_unlock(ptr noundef %55) #8
  br label %162

56:                                               ; preds = %48, %44, %38, %35
  %57 = load ptr, ptr %9, align 4
  call void @futex_wait_queue(ptr noundef %57, ptr noundef nonnull %11, ptr noundef %19) #8
  %58 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 8
  %59 = load volatile i32, ptr %58, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !23
  br label %60

60:                                               ; preds = %70, %56
  %61 = phi i32 [ %59, %56 ], [ %71, %70 ]
  %62 = icmp sgt i32 %61, 3
  br i1 %62, label %83, label %63

63:                                               ; preds = %60
  %64 = icmp eq i32 %61, 0
  %65 = select i1 %64, i32 1, i32 3
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #8, !srcloc !9
  br label %66

66:                                               ; preds = %66, %63
  %67 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 %61, i32 %65, ptr elementtype(i32) %58) #8, !srcloc !25
  %68 = extractvalue { i32, i32 } %67, 0
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %66

70:                                               ; preds = %66
  %71 = extractvalue { i32, i32 } %67, 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !26
  %72 = icmp eq i32 %71, %61
  br i1 %72, label %73, label %60, !prof !8

73:                                               ; preds = %70
  %74 = icmp eq i32 %61, 2
  br i1 %74, label %75, label %81

75:                                               ; preds = %73
  %76 = load volatile i32, ptr %58, align 8
  %77 = icmp eq i32 %76, 3
  br i1 %77, label %78, label %81

78:                                               ; preds = %78, %75
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !27
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !28
  %79 = load volatile i32, ptr %58, align 8
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %78, label %81

81:                                               ; preds = %78, %75, %73
  %82 = load volatile i32, ptr %58, align 8
  br label %83

83:                                               ; preds = %81, %60
  %84 = phi i32 [ %82, %81 ], [ %61, %60 ]
  switch i32 %84, label %161 [
    i32 1, label %85
    i32 5, label %120
    i32 4, label %137
  ]

85:                                               ; preds = %83
  %86 = load ptr, ptr %9, align 4
  %87 = getelementptr inbounds %struct.futex_hash_bucket, ptr %86, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %87) #8
  %88 = load ptr, ptr %9, align 4
  %89 = getelementptr inbounds %struct.futex_hash_bucket, ptr %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = icmp ne ptr %89, %91
  %93 = load i1, ptr @handle_early_requeue_pi_wakeup.__already_done, align 1
  %94 = xor i1 %93, true
  %95 = select i1 %92, i1 %94, i1 false
  br i1 %95, label %96, label %97, !prof !12

96:                                               ; preds = %85
  store i1 true, ptr @handle_early_requeue_pi_wakeup.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 704, i32 noundef 9, ptr noundef null) #8
  br label %97

97:                                               ; preds = %96, %85
  %98 = getelementptr inbounds %struct.futex_hash_bucket, ptr %88, i32 0, i32 2
  call void @plist_del(ptr noundef nonnull %11, ptr noundef %98) #8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %88) #8, !srcloc !9
  %99 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %88, ptr %88, i32 1, ptr elementtype(i32) %88) #8, !srcloc !18
  %100 = icmp eq ptr %19, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.hrtimer_sleeper, ptr %19, i32 0, i32 1
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %114, label %105

105:                                              ; preds = %101, %97
  %106 = load volatile i32, ptr %16, align 4
  %107 = and i32 %106, 256
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %114, !prof !8

109:                                              ; preds = %105
  %110 = load volatile i32, ptr %16, align 4
  %111 = and i32 %110, 1
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %112, i32 -11, i32 -513
  br label %114

114:                                              ; preds = %109, %105, %101
  %115 = phi i32 [ -110, %101 ], [ -513, %105 ], [ %113, %109 ]
  %116 = load ptr, ptr %9, align 4
  %117 = getelementptr inbounds %struct.futex_hash_bucket, ptr %116, i32 0, i32 1
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %118 = load i16, ptr %117, align 4
  %119 = add i16 %118, 1
  store i16 %119, ptr %117, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  br label %162

120:                                              ; preds = %83
  %121 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 4
  %122 = load ptr, ptr %121, align 8
  %123 = icmp eq ptr %122, null
  br i1 %123, label %162, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.futex_pi_state, ptr %122, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = icmp eq ptr %126, %16
  br i1 %127, label %162, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 2
  %130 = load ptr, ptr %129, align 8
  call void @_raw_spin_lock(ptr noundef %130) #8
  %131 = call i32 @fixup_pi_owner(ptr noundef %5, ptr noundef nonnull %11, i32 noundef 1) #8
  %132 = load ptr, ptr %121, align 8
  call void @put_pi_state(ptr noundef %132) #8
  %133 = load ptr, ptr %129, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %134 = load i16, ptr %133, align 4
  %135 = add i16 %134, 1
  store i16 %135, ptr %133, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %136 = call i32 @llvm.smin.i32(i32 %131, i32 0)
  br label %162

137:                                              ; preds = %83
  %138 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 4
  %139 = load ptr, ptr %138, align 8
  %140 = getelementptr inbounds %struct.futex_pi_state, ptr %139, i32 0, i32 1
  %141 = call i32 @rt_mutex_wait_proxy_lock(ptr noundef %140, ptr noundef %19, ptr noundef nonnull %8) #8
  %142 = getelementptr inbounds %struct.futex_q, ptr %11, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  call void @_raw_spin_lock(ptr noundef %143) #8
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %137
  %146 = call zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef %140, ptr noundef nonnull %8) #8
  %147 = select i1 %146, i32 %141, i32 0
  br label %148

148:                                              ; preds = %145, %137
  %149 = phi i32 [ 0, %137 ], [ %147, %145 ]
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i32
  %152 = call i32 @fixup_pi_owner(ptr noundef %5, ptr noundef nonnull %11, i32 noundef %151) #8
  %153 = icmp eq i32 %152, 0
  %154 = call i32 @llvm.smin.i32(i32 %152, i32 0)
  %155 = select i1 %153, i32 %149, i32 %154
  call void @futex_unqueue_pi(ptr noundef nonnull %11) #8
  %156 = load ptr, ptr %142, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !14
  %157 = load i16, ptr %156, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %156, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !17
  %159 = icmp eq i32 %155, -4
  %160 = select i1 %159, i32 -11, i32 %155
  br label %162

161:                                              ; preds = %83
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/futex/requeue.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 887, 0\0A.popsection", ""() #8, !srcloc !29
  unreachable

162:                                              ; preds = %148, %128, %124, %120, %114, %54, %29, %15
  %163 = phi i32 [ %27, %15 ], [ %33, %29 ], [ -22, %54 ], [ %136, %128 ], [ 0, %124 ], [ 0, %120 ], [ %115, %114 ], [ %160, %148 ]
  %164 = icmp eq ptr %19, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = call i32 @hrtimer_cancel(ptr noundef nonnull %19) #8
  br label %167

167:                                              ; preds = %165, %162, %6
  %168 = phi i32 [ -22, %6 ], [ %163, %165 ], [ %163, %162 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %7) #8
  ret i32 %168
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_setup_timer(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_wait_setup(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_q_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_wait_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fixup_pi_owner(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rt_mutex_wait_proxy_lock(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rt_mutex_cleanup_proxy_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_unqueue_pi(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @futex_top_waiter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @futex_lock_pi_atomic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @plist_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__futex_unqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_state(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }

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
!9 = !{i64 481002, i64 2147982568, i64 2147982594, i64 2147982641, i64 2147982663, i64 2147982691, i64 2147982711}
!10 = !{i64 2148045830, i64 2148045856, i64 2148045885, i64 2148045919, i64 2148045950, i64 2148045973}
!11 = !{i64 2150783662}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{!"auto-init"}
!14 = !{i64 2149257934}
!15 = !{i64 2149253758}
!16 = !{i64 2149253833, i64 2149253860, i64 2149253907, i64 2149253929, i64 2149253957, i64 2149253977}
!17 = !{i64 2149280937}
!18 = !{i64 2148048187, i64 2148048213, i64 2148048242, i64 2148048276, i64 2148048307, i64 2148048330}
!19 = !{i64 2480663}
!20 = !{i64 2480860}
!21 = !{i64 2149966139}
!22 = !{i64 2150832092, i64 2150832372, i64 2150832706, i64 2150833040}
!23 = !{i64 2148138052}
!24 = !{i64 2148159256}
!25 = !{i64 467065, i64 467089, i64 467110, i64 467127, i64 467144}
!26 = !{i64 2148159456}
!27 = !{i64 2150821897}
!28 = !{i64 2150821739}
!29 = !{i64 2150847750, i64 2150848237, i64 2150847787, i64 2150847843, i64 2150847877, i64 2150847901, i64 2150847942, i64 2150847963, i64 2150847991, i64 2150848025}
