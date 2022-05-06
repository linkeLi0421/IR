; ModuleID = '/llk/IR/drivers/gpu/drm/tegra/uapi.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/uapi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tegra_drm_mapping = type { %struct.kref, ptr, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.host1x_bo_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_drm_file = type { %struct.idr, %struct.mutex, %struct.xarray, %struct.xarray }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.tegra_drm_context = type { ptr, ptr, i32, %struct.xarray }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.80, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.80 = type { i32, ptr }
%struct.drm_tegra_channel_open = type { i32, i32, i32, i32, i32, i32 }
%struct.tegra_drm = type { ptr, ptr, i8, %struct.mutex, %struct.drm_mm, %struct.anon.81, %struct.mutex, %struct.list_head, ptr, i32, i32, i32, i32, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.anon.81 = type { %struct.iova_domain, i32, i32 }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.drm_tegra_channel_map = type { i32, i32, i32, i32 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.host1x_bo_mapping = type { %struct.kref, ptr, i32, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head }
%struct.drm_tegra_channel_unmap = type { i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.19 }
%struct.llist_node = type { ptr }
%union.anon.19 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, [56 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [8 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.drm_tegra_syncpoint_wait = type { i64, i32, i32, i32, i32 }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@switch.table.tegra_drm_ioctl_channel_map = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_drm_mapping_put(ptr noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #5, !srcloc !10
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %16, label %7, !prof !11

7:                                                ; preds = %5
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #5
  br label %16

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %9 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  tail call void @host1x_bo_unpin(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.host1x_bo_ops, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void %15(ptr noundef %12) #5
  tail call void @kfree(ptr noundef %0) #5
  br label %16

16:                                               ; preds = %8, %7, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tegra_drm_uapi_close_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tegra_drm_file, ptr %0, i32 0, i32 2
  %4 = call ptr @xa_find(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %8, %6 ], [ %4, %1 ]
  call fastcc void @tegra_drm_channel_context_close(ptr noundef nonnull %7)
  %8 = call ptr @xa_find_after(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6

10:                                               ; preds = %6, %1
  store i32 0, ptr %2, align 4
  %11 = getelementptr inbounds %struct.tegra_drm_file, ptr %0, i32 0, i32 3
  %12 = call ptr @xa_find(ptr noundef %11, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %14, %10
  %15 = phi ptr [ %16, %14 ], [ %12, %10 ]
  call void @host1x_syncpt_put(ptr noundef nonnull %15) #5
  %16 = call ptr @xa_find_after(ptr noundef %11, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %14

18:                                               ; preds = %14, %10
  call void @xa_destroy(ptr noundef %3) #5
  call void @xa_destroy(ptr noundef %11) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tegra_drm_channel_context_close(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 3
  %4 = call ptr @xa_find(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %25, label %6

6:                                                ; preds = %22, %1
  %7 = phi ptr [ %23, %22 ], [ %4, %1 ]
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #5, !srcloc !9
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #5, !srcloc !10
  %9 = extractvalue { i32, i32, i32 } %8, 0
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %22, label %13, !prof !11

13:                                               ; preds = %11
  call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #5
  br label %22

14:                                               ; preds = %6
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %15 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %7, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  call void @host1x_bo_unpin(ptr noundef %16) #5
  %17 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %7, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.host1x_bo_ops, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  call void %21(ptr noundef %18) #5
  call void @kfree(ptr noundef nonnull %7) #5
  br label %22

22:                                               ; preds = %14, %13, %11
  %23 = call ptr @xa_find_after(ptr noundef %3, ptr noundef nonnull %2, i32 noundef -1, i32 noundef 8) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6

25:                                               ; preds = %22, %1
  call void @xa_destroy(ptr noundef %3) #5
  %26 = getelementptr inbounds %struct.tegra_drm_context, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  call void @host1x_channel_put(ptr noundef %27) #5
  call void @kfree(ptr noundef %0) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_find_after(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_syncpt_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xa_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_open(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %67

11:                                               ; preds = %3
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.tegra_drm, ptr %7, i32 0, i32 7
  br label %18

18:                                               ; preds = %22, %15
  %19 = phi ptr [ %17, %15 ], [ %20, %22 ]
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %65, label %22

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %20, i32 -72
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %16
  br i1 %25, label %26, label %18

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %20, i32 -96
  %28 = icmp eq ptr %27, null
  br i1 %28, label %65, label %29

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %20, i32 12
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = tail call ptr @host1x_channel_get(ptr noundef nonnull %31) #5
  %35 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  br label %40

36:                                               ; preds = %29
  %37 = tail call ptr @host1x_channel_request(ptr noundef nonnull %27) #5
  %38 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  %39 = icmp eq ptr %37, null
  br i1 %39, label %65, label %40

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 2
  %42 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %41) #5
  %43 = tail call i32 @__xa_alloc(ptr noundef %41, ptr noundef %42, ptr noundef nonnull %13, [2 x i32] [i32 -1, i32 1], i32 noundef 3264) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %44 = load i16, ptr %41, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %41, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %46 = icmp slt i32 %43, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %40
  store ptr %27, ptr %13, align 8
  %48 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 3
  store i32 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 3, i32 1
  store i32 12, ptr %49, align 8
  %50 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 3, i32 2
  store ptr null, ptr %50, align 4
  %51 = getelementptr i8, ptr %20, i32 16
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %1, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.drm_tegra_channel_open, ptr %1, i32 0, i32 4
  store i32 0, ptr %54, align 4
  %55 = getelementptr i8, ptr %20, i32 -84
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 @device_get_dma_attr(ptr noundef %56) #5
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %67

59:                                               ; preds = %47
  %60 = load i32, ptr %54, align 4
  %61 = or i32 %60, 1
  store i32 %61, ptr %54, align 4
  br label %67

62:                                               ; preds = %40
  %63 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  tail call void @host1x_channel_put(ptr noundef %64) #5
  br label %65

65:                                               ; preds = %62, %36, %26, %18
  %66 = phi i32 [ %43, %62 ], [ -19, %26 ], [ -16, %36 ], [ -19, %18 ]
  tail call void @kfree(ptr noundef nonnull %13) #5
  br label %67

67:                                               ; preds = %65, %59, %47, %11, %3
  %68 = phi i32 [ %66, %65 ], [ -22, %3 ], [ -12, %11 ], [ 0, %59 ], [ 0, %47 ]
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_channel_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_channel_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_close(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @xa_load(ptr noundef %7, i32 noundef %8) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef %6) #5
  br label %15

12:                                               ; preds = %3
  %13 = load i32, ptr %1, align 4
  %14 = tail call ptr @xa_erase(ptr noundef %7, i32 noundef %13) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  tail call fastcc void @tegra_drm_channel_context_close(ptr noundef nonnull %9)
  br label %15

15:                                               ; preds = %12, %11
  %16 = phi i32 [ 0, %12 ], [ -22, %11 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_erase(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_map(ptr nocapture noundef readnone %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %68

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tegra_drm_file, ptr %9, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %10) #5
  %11 = getelementptr inbounds %struct.tegra_drm_file, ptr %9, i32 0, i32 2
  %12 = load i32, ptr %1, align 4
  %13 = tail call ptr @xa_load(ptr noundef %11, i32 noundef %12) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %66, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 20) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %66, label %19

19:                                               ; preds = %15
  store volatile i32 1, ptr %17, align 8
  %20 = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %1, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = tail call ptr @tegra_gem_lookup(ptr noundef %2, i32 noundef %21) #5
  %23 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %17, i32 0, i32 2
  store ptr %22, ptr %23, align 8
  %24 = icmp eq ptr %22, null
  br i1 %24, label %64, label %25

25:                                               ; preds = %19
  %26 = load i32, ptr %4, align 4
  %27 = and i32 %26, 3
  %28 = add nsw i32 %27, -1
  %29 = icmp ult i32 %28, 3
  br i1 %29, label %30, label %58

30:                                               ; preds = %25
  %31 = getelementptr inbounds [3 x i32], ptr @switch.table.tegra_drm_ioctl_channel_map, i32 0, i32 %28
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %13, align 4
  %34 = getelementptr inbounds %struct.host1x_client, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call ptr @host1x_bo_pin(ptr noundef %35, ptr noundef nonnull %22, i32 noundef %32, ptr noundef null) #5
  %37 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %17, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = ptrtoint ptr %36 to i32
  br label %58

41:                                               ; preds = %30
  %42 = getelementptr inbounds %struct.host1x_bo_mapping, ptr %36, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %17, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = load ptr, ptr %23, align 8
  %46 = getelementptr i8, ptr %45, i32 -64
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, %43
  %49 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %17, i32 0, i32 4
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.tegra_drm_context, ptr %13, i32 0, i32 3
  %51 = getelementptr inbounds %struct.drm_tegra_channel_map, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %50) #5
  %52 = tail call i32 @__xa_alloc(ptr noundef %50, ptr noundef %51, ptr noundef nonnull %17, [2 x i32] [i32 -1, i32 1], i32 noundef 3264) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %53 = load i16, ptr %50, align 4
  %54 = add i16 %53, 1
  store i16 %54, ptr %50, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %55 = icmp slt i32 %52, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %41
  %57 = load ptr, ptr %37, align 4
  tail call void @host1x_bo_unpin(ptr noundef %57) #5
  br label %58

58:                                               ; preds = %56, %39, %25
  %59 = phi i32 [ %40, %39 ], [ %52, %56 ], [ -22, %25 ]
  %60 = load ptr, ptr %23, align 8
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.host1x_bo_ops, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  tail call void %63(ptr noundef %60) #5
  br label %64

64:                                               ; preds = %58, %19
  %65 = phi i32 [ %59, %58 ], [ -22, %19 ]
  tail call void @kfree(ptr noundef nonnull %17) #5
  br label %66

66:                                               ; preds = %64, %41, %15, %7
  %67 = phi i32 [ -22, %7 ], [ 0, %41 ], [ %65, %64 ], [ -12, %15 ]
  tail call void @mutex_unlock(ptr noundef %10) #5
  br label %68

68:                                               ; preds = %66, %3
  %69 = phi i32 [ -22, %3 ], [ %67, %66 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_gem_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_bo_pin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @host1x_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_channel_unmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @xa_load(ptr noundef %7, i32 noundef %8) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @mutex_unlock(ptr noundef %6) #5
  br label %33

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tegra_drm_context, ptr %9, i32 0, i32 3
  %14 = getelementptr inbounds %struct.drm_tegra_channel_unmap, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = tail call ptr @xa_erase(ptr noundef %13, i32 noundef %15) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %16) #5, !srcloc !9
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %16, ptr nonnull %16, i32 1, ptr nonnull elementtype(i32) %16) #5, !srcloc !10
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %33, label %24, !prof !11

24:                                               ; preds = %22
  tail call void @refcount_warn_saturate(ptr noundef nonnull %16, i32 noundef 3) #5
  br label %33

25:                                               ; preds = %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !12
  %26 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %16, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void @host1x_bo_unpin(ptr noundef %27) #5
  %28 = getelementptr inbounds %struct.tegra_drm_mapping, ptr %16, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.host1x_bo_ops, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void %32(ptr noundef %29) #5
  tail call void @kfree(ptr noundef nonnull %16) #5
  br label %33

33:                                               ; preds = %25, %24, %22, %12, %11
  %34 = phi i32 [ -22, %11 ], [ -22, %12 ], [ 0, %22 ], [ 0, %24 ], [ 0, %25 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_allocate(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load i32, ptr %1, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call ptr @llvm.thread.pointer() #5
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 85
  %20 = tail call ptr @host1x_syncpt_alloc(ptr noundef %17, i32 noundef 1, ptr noundef %19) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %8
  %23 = tail call i32 @host1x_syncpt_id(ptr noundef nonnull %20) #5
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %24) #5
  %25 = tail call i32 @__xa_insert(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %20, i32 noundef 3264) #5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  %26 = load i16, ptr %24, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !16
  %28 = icmp eq i32 %25, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @host1x_syncpt_put(ptr noundef nonnull %20) #5
  br label %30

30:                                               ; preds = %29, %22, %8, %3
  %31 = phi i32 [ %25, %29 ], [ -22, %3 ], [ -16, %8 ], [ 0, %22 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_free(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %6) #5
  %7 = getelementptr inbounds %struct.tegra_drm_file, ptr %5, i32 0, i32 3
  %8 = load i32, ptr %1, align 4
  %9 = tail call ptr @xa_erase(ptr noundef %7, i32 noundef %8) #5
  tail call void @mutex_unlock(ptr noundef %6) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @host1x_syncpt_put(ptr noundef nonnull %9) #5
  br label %12

12:                                               ; preds = %11, %3
  %13 = phi i32 [ 0, %11 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tegra_drm_ioctl_syncpoint_wait(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %1, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %1, i32 0, i32 1
  %18 = load i32, ptr %17, align 8
  %19 = tail call ptr @host1x_syncpt_get_by_id_noref(ptr noundef %16, i32 noundef %18) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %7
  %22 = load i64, ptr %1, align 8
  %23 = tail call i32 @drm_timeout_abs_to_jiffies(i64 noundef %22) #5
  %24 = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_tegra_syncpoint_wait, ptr %1, i32 0, i32 3
  %27 = tail call i32 @host1x_syncpt_wait(ptr noundef nonnull %19, i32 noundef %25, i32 noundef %23, ptr noundef %26) #5
  br label %28

28:                                               ; preds = %21, %7, %3
  %29 = phi i32 [ %27, %21 ], [ -22, %3 ], [ -22, %7 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @host1x_syncpt_get_by_id_noref(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_timeout_abs_to_jiffies(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @host1x_syncpt_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_alloc(ptr noundef, ptr noundef, ptr noundef, [2 x i32], i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xa_insert(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 2148256783}
!9 = !{i64 590275, i64 2148091841, i64 2148091867, i64 2148091914, i64 2148091936, i64 2148091964, i64 2148091984}
!10 = !{i64 2148158918, i64 2148158950, i64 2148158979, i64 2148159013, i64 2148159044, i64 2148159067}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149301131}
!13 = !{i64 2149227216}
!14 = !{i64 2149223040}
!15 = !{i64 2149223115, i64 2149223142, i64 2149223189, i64 2149223211, i64 2149223239, i64 2149223259}
!16 = !{i64 2149250219}
