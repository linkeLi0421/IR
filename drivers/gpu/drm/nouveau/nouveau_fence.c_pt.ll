; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_fence.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_fence.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.nouveau_fence_chan = type { %struct.spinlock, %struct.kref, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, [32 x i8], %struct.nvif_notify, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nouveau_fence = type { %struct.dma_fence, %struct.list_head, ptr, i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.1, i64, i64, i32, %struct.kref, i32 }
%union.anon.1 = type { i64 }
%struct.nvif_notify_uevent_req = type {}
%struct.nouveau_channel = type { %struct.anon, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.99, i8, ptr, %struct.anon.100, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.99 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.100 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.2 }
%struct.anon.2 = type { ptr, i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.81, %struct.anon.82, %struct.anon.84, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.86, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.98 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i8 }
%struct.anon.82 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.83] }
%struct.anon.83 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.84 = type { i64, i64 }
%struct.anon.85 = type { i32, i64 }
%struct.anon.86 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.93, %struct.anon.94, %struct.anon.95, %struct.anon.96 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.87, i8 }
%union.anon.87 = type { %struct.anon.91 }
%struct.anon.91 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.93 = type { i32 }
%struct.anon.94 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.95 = type { i16, i16 }
%struct.anon.96 = type { i16, i16, i16, %struct.anon.97, i16 }
%struct.anon.97 = type { i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.98 = type { ptr, %struct.mutex, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.59, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.26 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.59 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.dma_resv_iter = type { ptr, i8, ptr, i32, i32, ptr, i32, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"copy engine channel\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"generic kernel channel\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"fenceNonStallIntr\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_fence.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@nouveau_fence_ops_uevent = internal constant %struct.dma_fence_ops { i8 0, ptr @nouveau_fence_get_get_driver_name, ptr @nouveau_fence_get_timeline_name, ptr @nouveau_fence_enable_signaling, ptr @nouveau_fence_is_signaled, ptr null, ptr @nouveau_fence_release, ptr null, ptr null }, align 4
@nouveau_fence_ops_legacy = internal constant %struct.dma_fence_ops { i8 0, ptr @nouveau_fence_get_get_driver_name, ptr @nouveau_fence_get_timeline_name, ptr @nouveau_fence_no_signaling, ptr @nouveau_fence_is_signaled, ptr @nouveau_fence_wait_legacy, ptr @nouveau_fence_release, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"include/linux/dma-fence.h\00", align 1
@__tracepoint_dma_fence_emit = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"nouveau\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"dead channel\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_kill(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %31, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  %8 = icmp ult i32 %1, -4095
  %9 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 12
  br label %10

10:                                               ; preds = %28, %6
  %11 = phi ptr [ %4, %6 ], [ %29, %28 ]
  %12 = getelementptr i8, ptr %11, i32 -48
  br i1 %7, label %23, label %13

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %11, i32 -16
  %15 = load volatile i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18, !prof !8

18:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 545, i32 noundef 9, ptr noundef null) #11
  br label %19

19:                                               ; preds = %18, %13
  br i1 %8, label %20, label %21, !prof !9

20:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 546, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %19
  %22 = getelementptr i8, ptr %11, i32 -8
  store i32 %1, ptr %22, align 8
  br label %23

23:                                               ; preds = %21, %10
  %24 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %12)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @nvif_notify_put(ptr noundef %9) #11
  br label %28

28:                                               ; preds = %26, %23
  %29 = load volatile ptr, ptr %3, align 4
  %30 = icmp eq ptr %29, %3
  br i1 %30, label %31, label %10

31:                                               ; preds = %28, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %32 = load i16, ptr %0, align 4
  %33 = add i16 %32, 1
  store i16 %33, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_fence_signal(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @dma_fence_signal_locked(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  store volatile ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load ptr, ptr %0, align 8
  %15 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %14, i32 0, i32 13
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %15, align 4
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %13, %1
  %21 = phi i32 [ %19, %13 ], [ 0, %1 ]
  %22 = icmp eq ptr %0, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #11, !srcloc !16
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #11, !srcloc !17
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = icmp sgt i32 %26, 0
  br i1 %29, label %32, label %30, !prof !8

30:                                               ; preds = %28
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef 3) #11
  br label %32

31:                                               ; preds = %23
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %24) #11, !callees !19
  br label %32

32:                                               ; preds = %31, %30, %28, %20
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_del(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @_raw_spin_lock_irq(ptr noundef %0) #11
  %2 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 2
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 12
  br label %7

7:                                                ; preds = %14, %5
  %8 = phi ptr [ %3, %5 ], [ %15, %14 ]
  %9 = getelementptr i8, ptr %8, i32 -48
  %10 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %9) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @nvif_notify_put(ptr noundef %6) #11
  br label %14

14:                                               ; preds = %12, %7
  %15 = load volatile ptr, ptr %2, align 4
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %17, label %7

17:                                               ; preds = %14, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %18 = load i16, ptr %0, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %0, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  %20 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 12
  %21 = tail call i32 @nvif_notify_dtor(ptr noundef %20) #11
  %22 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 14
  store i32 1, ptr %22, align 4
  tail call void @synchronize_rcu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %0, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !16
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !17
  %4 = extractvalue { i32, i32, i32 } %3, 0
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = icmp sgt i32 %4, 0
  br i1 %7, label %10, label %8, !prof !8

8:                                                ; preds = %6
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #11
  br label %10

9:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @kfree(ptr noundef %0) #11
  br label %10

10:                                               ; preds = %9, %8, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fence_context_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvif_notify_uevent_req, align 1
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17
  %9 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 17, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 3
  store volatile ptr %11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 3, i32 1
  store ptr %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 2
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 2, i32 1
  store ptr %13, ptr %14, align 4
  store i32 0, ptr %1, align 4
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 11, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = trunc i64 %17 to i32
  %21 = add i32 %19, %20
  %22 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 10
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 11
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(20) %28, ptr noundef nonnull align 1 dereferenceable(20) @.str, i32 20, i1 false)
  br label %40

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 13
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  %33 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 11
  br i1 %32, label %34, label %35

34:                                               ; preds = %29
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(23) %33, ptr noundef nonnull align 1 dereferenceable(23) @.str.1, i32 23, i1 false)
  br label %40

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nvif_object, ptr %10, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_client, ptr %37, i32 0, i32 1
  %39 = tail call ptr @strcpy(ptr noundef %33, ptr noundef %38)
  br label %40

40:                                               ; preds = %35, %34, %27
  %41 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 1
  store volatile i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %7, i32 0, i32 5
  %43 = load i8, ptr %42, align 4, !range !20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %1, i32 0, i32 12
  %47 = call i32 @nvif_notify_ctor(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @nouveau_fence_wait_uevent_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 0, ptr noundef %46) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !8

49:                                               ; preds = %45
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 206, i32 noundef 9, ptr noundef null) #11
  br label %50

50:                                               ; preds = %49, %45, %40
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fence_wait_uevent_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -84
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr i8, ptr %0, i32 -76
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %33, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %5, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr i8, ptr %0, i32 -52
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %9) #11
  %13 = load volatile ptr, ptr %4, align 4
  %14 = icmp eq ptr %13, %4
  br i1 %14, label %32, label %15

15:                                               ; preds = %23, %7
  %16 = phi ptr [ %27, %23 ], [ %13, %7 ]
  %17 = phi i32 [ %26, %23 ], [ 0, %7 ]
  %18 = getelementptr i8, ptr %16, i32 -24
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = sub i32 %12, %20
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = getelementptr i8, ptr %16, i32 -48
  %25 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %24) #11
  %26 = or i32 %25, %17
  %27 = load volatile ptr, ptr %4, align 4
  %28 = icmp eq ptr %27, %4
  br i1 %28, label %29, label %15

29:                                               ; preds = %23, %15
  %30 = phi i32 [ %17, %15 ], [ %26, %23 ]
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %7
  br label %33

33:                                               ; preds = %32, %29, %1
  %34 = phi i32 [ 1, %1 ], [ 1, %32 ], [ 0, %29 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_emit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 12
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  store ptr %1, ptr %9, align 8
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = add i32 %10, 1500
  %12 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 3
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nouveau_fence_priv, ptr %8, i32 0, i32 5
  %14 = load i8, ptr %13, align 4, !range !20
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 10
  %17 = load i32, ptr %16, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 4
  %22 = zext i32 %21 to i64
  %23 = select i1 %15, ptr @nouveau_fence_ops_legacy, ptr @nouveau_fence_ops_uevent
  tail call void @dma_fence_init(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %4, i64 noundef %18, i64 noundef %22) #11
  %24 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #11, !srcloc !16
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #11, !srcloc !21
  %26 = extractvalue { i32, i32, i32 } %25, 0
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28, !prof !9

28:                                               ; preds = %2
  %29 = add i32 %26, 1
  %30 = or i32 %29, %26
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %34, label %32, !prof !8

32:                                               ; preds = %28, %2
  %33 = phi i32 [ 2, %2 ], [ 1, %28 ]
  tail call void @refcount_warn_saturate(ptr noundef %24, i32 noundef %33) #11
  br label %34

34:                                               ; preds = %32, %28
  %35 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dma_fence_emit, i32 0, i32 1), align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = tail call ptr @llvm.thread.pointer() #11
  %39 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = lshr i32 %40, 5
  %42 = getelementptr i32, ptr @__cpu_online_mask, i32 %41
  %43 = load volatile i32, ptr %42, align 4
  %44 = and i32 %40, 31
  %45 = shl nuw i32 1, %44
  %46 = and i32 %45, %43
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %37
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %49 = tail call i32 @__traceiter_dma_fence_emit(ptr noundef null, ptr noundef %0) #11
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !23
  br label %50

50:                                               ; preds = %48, %37, %34
  %51 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = tail call i32 %52(ptr noundef %0) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %50
  %56 = icmp eq ptr %0, null
  br i1 %56, label %68, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %58) #11, !srcloc !16
  %59 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %58, ptr %58, i32 1, ptr elementtype(i32) %58) #11, !srcloc !21
  %60 = extractvalue { i32, i32, i32 } %59, 0
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62, !prof !9

62:                                               ; preds = %57
  %63 = add i32 %60, 1
  %64 = or i32 %63, %60
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %68, label %66, !prof !8

66:                                               ; preds = %62, %57
  %67 = phi i32 [ 2, %57 ], [ 1, %62 ]
  tail call void @refcount_warn_saturate(ptr noundef %58, i32 noundef %67) #11
  br label %68

68:                                               ; preds = %66, %62, %55
  tail call void @_raw_spin_lock_irq(ptr noundef %4) #11
  %69 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = tail call i32 %70(ptr noundef %1) #11
  %72 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 2
  %73 = load volatile ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %72
  br i1 %74, label %95, label %75

75:                                               ; preds = %83, %68
  %76 = phi ptr [ %87, %83 ], [ %73, %68 ]
  %77 = phi i32 [ %86, %83 ], [ 0, %68 ]
  %78 = getelementptr i8, ptr %76, i32 -24
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = sub i32 %71, %80
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %75
  %84 = getelementptr i8, ptr %76, i32 -48
  %85 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %84) #11
  %86 = or i32 %85, %77
  %87 = load volatile ptr, ptr %72, align 4
  %88 = icmp eq ptr %87, %72
  br i1 %88, label %89, label %75

89:                                               ; preds = %83, %75
  %90 = phi i32 [ %77, %75 ], [ %86, %83 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 12
  %94 = tail call i32 @nvif_notify_put(ptr noundef %93) #11
  br label %95

95:                                               ; preds = %92, %89, %68
  %96 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1
  %97 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %4, i32 0, i32 2, i32 1
  %98 = load ptr, ptr %97, align 4
  store ptr %96, ptr %97, align 4
  store ptr %72, ptr %96, align 4
  %99 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %96, ptr %98, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !10
  %100 = load i16, ptr %4, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !12
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !13
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !14
  br label %102

102:                                              ; preds = %95, %50
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_fence_done(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, @nouveau_fence_ops_legacy
  %5 = icmp eq ptr %3, @nouveau_fence_ops_uevent
  %6 = or i1 %4, %5
  br i1 %6, label %7, label %46

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %10 = load volatile i32, ptr %9, align 4
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %7
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #11
  %15 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %45, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %8, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef nonnull %16) #11
  %22 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %8, i32 0, i32 2
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %45, label %25

25:                                               ; preds = %33, %18
  %26 = phi ptr [ %37, %33 ], [ %23, %18 ]
  %27 = phi i32 [ %36, %33 ], [ 0, %18 ]
  %28 = getelementptr i8, ptr %26, i32 -24
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = sub i32 %21, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %25
  %34 = getelementptr i8, ptr %26, i32 -48
  %35 = tail call fastcc i32 @nouveau_fence_signal(ptr noundef %34) #11
  %36 = or i32 %35, %27
  %37 = load volatile ptr, ptr %22, align 4
  %38 = icmp eq ptr %37, %22
  br i1 %38, label %39, label %25

39:                                               ; preds = %33, %25
  %40 = phi i32 [ %27, %25 ], [ %36, %33 ]
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %8, i32 0, i32 12
  %44 = tail call i32 @nvif_notify_put(ptr noundef %43) #11
  br label %45

45:                                               ; preds = %42, %39, %18, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %14) #11
  br label %46

46:                                               ; preds = %45, %1
  %47 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  %48 = load volatile i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr inbounds %struct.dma_fence_ops, ptr %52, i32 0, i32 4
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = tail call zeroext i1 %54(ptr noundef %0) #11
  br i1 %57, label %58, label %60

58:                                               ; preds = %56
  %59 = tail call i32 @dma_fence_signal(ptr noundef %0) #11
  br label %60

60:                                               ; preds = %58, %56, %51, %46, %7
  %61 = phi i1 [ true, %58 ], [ true, %46 ], [ false, %56 ], [ false, %51 ], [ true, %7 ]
  ret i1 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_wait(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  br i1 %1, label %31, label %4

4:                                                ; preds = %3
  %5 = tail call zeroext i1 @nouveau_fence_done(ptr noundef %0) #11
  br i1 %5, label %27, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 3
  %8 = select i1 %2, i32 1, i32 2
  br label %9

9:                                                ; preds = %25, %6
  %10 = load volatile i32, ptr @jiffies, align 64
  %11 = load i32, ptr %7, align 4
  %12 = sub i32 %10, %11
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %27, label %14

14:                                               ; preds = %9
  %15 = tail call ptr @llvm.thread.pointer() #11
  %16 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 1
  store volatile i32 %8, ptr %16, align 8
  br i1 %2, label %17, label %25

17:                                               ; preds = %14
  %18 = load volatile i32, ptr %15, align 4
  %19 = and i32 %18, 256
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27, !prof !8

21:                                               ; preds = %17
  %22 = load volatile i32, ptr %15, align 4
  %23 = and i32 %22, 1
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %14
  %26 = tail call zeroext i1 @nouveau_fence_done(ptr noundef %0) #11
  br i1 %26, label %27, label %9

27:                                               ; preds = %25, %21, %17, %9, %4
  %28 = phi i32 [ 0, %4 ], [ 0, %25 ], [ -16, %9 ], [ -512, %21 ], [ -512, %17 ]
  %29 = tail call ptr @llvm.thread.pointer() #11
  %30 = getelementptr inbounds %struct.task_struct, ptr %29, i32 0, i32 1
  store volatile i32 0, ptr %30, align 8
  br label %37

31:                                               ; preds = %3
  %32 = tail call i32 @dma_fence_wait_timeout(ptr noundef %0, i1 noundef zeroext %2, i32 noundef 1500) #11
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = icmp eq i32 %32, 0
  %36 = select i1 %35, i32 -16, i32 0
  br label %37

37:                                               ; preds = %34, %31, %27
  %38 = phi i32 [ %28, %27 ], [ %32, %31 ], [ %36, %34 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_sync(ptr nocapture noundef readonly %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.dma_resv_iter, align 4
  %6 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_gem_object, ptr %0, i32 0, i32 9
  %9 = load ptr, ptr %8, align 8
  br i1 %2, label %13, label %10

10:                                               ; preds = %4
  %11 = tail call i32 @dma_resv_reserve_shared(ptr noundef %9, i32 noundef 1) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %108

13:                                               ; preds = %10, %4
  %14 = zext i1 %2 to i8
  %15 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 1
  %16 = getelementptr inbounds %struct.dma_resv_iter, ptr %5, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nouveau_channel, ptr %1, i32 0, i32 2
  %18 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %19 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %19, i8 0, i32 28, i1 false), !annotation !24
  store ptr %9, ptr %5, align 4
  store i8 %14, ptr %15, align 4
  %20 = call ptr @dma_resv_iter_first(ptr noundef nonnull %5) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %65, label %22

22:                                               ; preds = %60, %13
  %23 = phi ptr [ %61, %60 ], [ %20, %13 ]
  %24 = load i32, ptr %16, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %17, align 4
  %28 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @nouveau_fence_ops_legacy
  %31 = icmp eq ptr %29, @nouveau_fence_ops_uevent
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.dma_fence, ptr %23, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 11, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 11
  %41 = load i32, ptr %40, align 8
  %42 = sext i32 %41 to i64
  %43 = add i64 %37, %42
  %44 = icmp ult i64 %35, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %46 = getelementptr inbounds %struct.nouveau_fence, ptr %23, i32 0, i32 2
  %47 = load volatile ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = icmp eq ptr %47, %1
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = load ptr, ptr %18, align 4
  %53 = call i32 %52(ptr noundef nonnull %23, ptr noundef nonnull %47, ptr noundef %1) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %45
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %57

56:                                               ; preds = %51, %49
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %60

57:                                               ; preds = %55, %39, %33, %26
  %58 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %23, i1 noundef zeroext %3, i32 noundef 2147483647) #11
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %63

60:                                               ; preds = %57, %56, %22
  %61 = call ptr @dma_resv_iter_next(ptr noundef nonnull %5) #11
  %62 = icmp eq ptr %61, null
  br i1 %62, label %65, label %22

63:                                               ; preds = %101, %57
  %64 = phi i32 [ %102, %101 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %108

65:                                               ; preds = %60, %13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  %66 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %66, i8 0, i32 28, i1 false), !annotation !24
  store ptr %9, ptr %5, align 4
  store i8 %14, ptr %15, align 4
  %67 = call ptr @dma_resv_iter_first(ptr noundef nonnull %5) #11
  %68 = icmp eq ptr %67, null
  br i1 %68, label %107, label %69

69:                                               ; preds = %104, %65
  %70 = phi ptr [ %105, %104 ], [ %67, %65 ]
  %71 = load ptr, ptr %17, align 4
  %72 = getelementptr inbounds %struct.dma_fence, ptr %70, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, @nouveau_fence_ops_legacy
  %75 = icmp eq ptr %73, @nouveau_fence_ops_uevent
  %76 = or i1 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.dma_fence, ptr %70, i32 0, i32 3
  %79 = load i64, ptr %78, align 8
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 11, i32 1
  %81 = load i64, ptr %80, align 8
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %101, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 11
  %85 = load i32, ptr %84, align 8
  %86 = sext i32 %85 to i64
  %87 = add i64 %81, %86
  %88 = icmp ult i64 %79, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %83
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %90 = getelementptr inbounds %struct.nouveau_fence, ptr %70, i32 0, i32 2
  %91 = load volatile ptr, ptr %90, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %100, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %91, %1
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %18, align 4
  %97 = call i32 %96(ptr noundef nonnull %70, ptr noundef nonnull %91, ptr noundef %1) #11
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95, %93
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %104

100:                                              ; preds = %95, %89
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %101

101:                                              ; preds = %100, %83, %77, %69
  %102 = call i32 @dma_fence_wait_timeout(ptr noundef nonnull %70, i1 noundef zeroext %3, i32 noundef 2147483647) #11
  %103 = icmp sgt i32 %102, -1
  br i1 %103, label %104, label %63

104:                                              ; preds = %101, %99
  %105 = call ptr @dma_resv_iter_next(ptr noundef nonnull %5) #11
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %69

107:                                              ; preds = %104, %65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  br label %108

108:                                              ; preds = %107, %63, %10
  %109 = phi i32 [ %64, %63 ], [ %11, %10 ], [ 0, %107 ]
  ret i32 %109
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_first(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_resv_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_fence_unref(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dma_fence, ptr %2, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #11, !srcloc !16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 1, ptr elementtype(i32) %5) #11, !srcloc !17
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !8

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef %5, i32 noundef 3) #11
  br label %13

12:                                               ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %5) #11, !callees !19
  br label %13

13:                                               ; preds = %12, %11, %9, %1
  store ptr null, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_fence_new(ptr noundef %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nouveau_channel, ptr %0, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7, !prof !9

7:                                                ; preds = %3
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 64) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %25, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @nouveau_fence_emit(ptr noundef nonnull %9, ptr noundef %0)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.dma_fence, ptr %9, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %15) #11, !srcloc !16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #11, !srcloc !17
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !8

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #11
  br label %23

22:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %15) #11, !callees !19
  br label %23

23:                                               ; preds = %22, %21, %19, %11
  %24 = phi ptr [ %9, %11 ], [ null, %19 ], [ null, %21 ], [ null, %22 ]
  store ptr %24, ptr %2, align 4
  br label %25

25:                                               ; preds = %23, %7, %3
  %26 = phi i32 [ %12, %23 ], [ -19, %3 ], [ -12, %7 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dma_fence_emit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nouveau_fence_get_get_driver_name(ptr nocapture noundef readnone %0) #7 {
  ret ptr @.str.6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nouveau_fence_get_timeline_name(ptr nocapture noundef readonly %0) #8 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  %6 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 11
  %7 = select i1 %5, ptr %6, ptr @.str.7
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_no_signaling(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 465, i32 noundef 9, ptr noundef null) #11
  br label %6

6:                                                ; preds = %5, %1
  %7 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %8 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  %9 = load volatile ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br label %36

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %7, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef nonnull %9) #11
  %16 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sub i32 %15, %18
  %20 = icmp sgt i32 %19, -1
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 1, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %22, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = icmp eq ptr %0, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #11, !srcloc !16
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %2, ptr %2, i32 1, ptr elementtype(i32) %2) #11, !srcloc !17
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = icmp sgt i32 %30, 0
  br i1 %33, label %36, label %34, !prof !8

34:                                               ; preds = %32
  tail call void @refcount_warn_saturate(ptr noundef %2, i32 noundef 3) #11
  br label %36

35:                                               ; preds = %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @dma_fence_release(ptr noundef %2) #11, !callees !19
  br label %36

36:                                               ; preds = %35, %34, %32, %21, %12, %11
  %37 = phi i1 [ true, %11 ], [ true, %12 ], [ false, %21 ], [ false, %32 ], [ false, %34 ], [ false, %35 ]
  ret i1 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_is_signaled(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  %3 = getelementptr inbounds %struct.nouveau_fence, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef nonnull %4) #11
  %10 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 4
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = sub i32 %9, %12
  %14 = icmp sgt i32 %13, -1
  br label %15

15:                                               ; preds = %6, %1
  %16 = phi i1 [ %14, %6 ], [ false, %1 ]
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !26
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_fence_wait_legacy(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = load volatile i32, ptr @jiffies, align 64
  %6 = add i32 %5, %2
  %7 = call zeroext i1 @nouveau_fence_done(ptr noundef %0)
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #11
  br label %39

10:                                               ; preds = %3
  %11 = icmp ne i32 %2, 2147483647
  %12 = select i1 %1, i32 1, i32 2
  %13 = tail call ptr @llvm.thread.pointer() #11
  %14 = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 1
  br label %15

15:                                               ; preds = %37, %10
  %16 = phi i32 [ 1000, %10 ], [ %26, %37 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = sub i32 %17, %6
  %19 = icmp sgt i32 %18, -1
  %20 = select i1 %11, i1 %19, i1 false
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store volatile i32 0, ptr %14, align 8
  br label %35

22:                                               ; preds = %15
  store volatile i32 %12, ptr %14, align 8
  %23 = zext i32 %16 to i64
  store i64 %23, ptr %4, align 8
  %24 = call i32 @schedule_hrtimeout(ptr noundef nonnull %4, i32 noundef 1) #11
  %25 = shl nuw nsw i32 %16, 1
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 1000000)
  br i1 %1, label %27, label %37

27:                                               ; preds = %22
  %28 = load volatile i32, ptr %13, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35, !prof !8

31:                                               ; preds = %27
  %32 = load volatile i32, ptr %13, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31, %27, %21
  %36 = phi i32 [ 0, %21 ], [ -512, %27 ], [ -512, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  br label %44

37:                                               ; preds = %31, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  %38 = call zeroext i1 @nouveau_fence_done(ptr noundef %0)
  br i1 %38, label %39, label %15

39:                                               ; preds = %37, %8
  %40 = phi ptr [ %9, %8 ], [ %13, %37 ]
  %41 = phi i32 [ %5, %8 ], [ %17, %37 ]
  %42 = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 1
  store volatile i32 0, ptr %42, align 8
  %43 = sub i32 %6, %41
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i32 [ %43, %39 ], [ %36, %35 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_fence_release(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #11, !srcloc !16
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %3, ptr %3, i32 1, ptr elementtype(i32) %3) #11, !srcloc !17
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !8

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef %3, i32 noundef 3) #11
  br label %11

10:                                               ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !18
  tail call void @kfree(ptr noundef %2) #11
  br label %11

11:                                               ; preds = %10, %9, %7
  tail call void @dma_fence_free(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_hrtimeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nouveau_fence_enable_signaling(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 12
  %9 = tail call i32 @nvif_notify_get(ptr noundef %8) #11
  br label %10

10:                                               ; preds = %7, %1
  %11 = tail call zeroext i1 @nouveau_fence_no_signaling(ptr noundef %0)
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.dma_fence, ptr %0, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 3, ptr noundef %13) #11
  br label %21

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 4
  %16 = add i32 %15, -1
  store i32 %16, ptr %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nouveau_fence_chan, ptr %2, i32 0, i32 12
  %20 = tail call i32 @nvif_notify_put(ptr noundef %19) #11
  br label %21

21:                                               ; preds = %18, %14, %12
  ret i1 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2149074006}
!11 = !{i64 2149069830}
!12 = !{i64 2149069905, i64 2149069932, i64 2149069979, i64 2149070001, i64 2149070029, i64 2149070049}
!13 = !{i64 313617}
!14 = !{i64 2149098150}
!15 = !{i64 2148021175}
!16 = !{i64 418133, i64 2147908104, i64 2147908130, i64 2147908177, i64 2147908199, i64 2147908227, i64 2147908247}
!17 = !{i64 2147923334, i64 2147923366, i64 2147923395, i64 2147923429, i64 2147923460, i64 2147923483}
!18 = !{i64 2149619982}
!19 = distinct !{ptr @dma_fence_release, null}
!20 = !{i8 0, i8 2}
!21 = !{i64 2147920977, i64 2147921009, i64 2147921038, i64 2147921072, i64 2147921103, i64 2147921126}
!22 = !{i64 2151404024}
!23 = !{i64 2151404174}
!24 = !{!"auto-init"}
!25 = !{i64 2148940252}
!26 = !{i64 2148940469}
