; ModuleID = '/llk/IR/drivers/mtd/ubi/wl.c_pt.bc'
source_filename = "../drivers/mtd/ubi/wl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.atomic_t = type { i32 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, [36 x i8], %struct.sched_statistics, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i8, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.48, ptr, %struct.page_frag, i32, i32, i32, i64, i64, i32, i32, ptr, %struct.kmap_ctrl, i32, ptr, %struct.refcount_struct, %struct.thread_struct, [16 x i8] }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.20 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_wl_entry = type { %union.anon.64, i32, i32 }
%union.anon.64 = type { %struct.rb_node }
%struct.ubi_work = type { %struct.list_head, ptr, ptr, i32, i32, i32 }
%struct.ubi_attach_info = type { %struct.rb_root, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, ptr, ptr, ptr }
%struct.ubi_fastmap_layout = type { [32 x ptr], [32 x i32], i32, i32, i32 }
%struct.ubi_ainf_peb = type { i32, i32, i32, i32, i8, i64, %union.anon.70 }
%union.anon.70 = type { %struct.rb_node }
%struct.ubi_ec_hdr = type { i32, i8, [3 x i8], i64, i32, i32, i32, [32 x i8], i32 }
%struct.ubi_vid_io_buf = type { ptr, ptr }
%struct.ubi_vid_hdr = type { i32, i8, i8, i8, i8, i32, i32, [4 x i8], i32, i32, i32, i32, [4 x i8], i64, [12 x i8], i32 }

@.str = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_wl_put_peb = private unnamed_addr constant [15 x i8] c"ubi_wl_put_peb\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PEB %d not found\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"schedule PEB %d for scrubbing\00", align 1
@__func__.ubi_wl_flush = private unnamed_addr constant [13 x i8] c"ubi_wl_flush\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"background thread \22%s\22 started, PID %d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: work failed with error code %d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%s: %d consecutive failures\00", align 1
@ubi_wl_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"&ubi->move_mutex\00", align 1
@ubi_wl_init.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"&ubi->work_sem\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"ubi_bgt%dd\00", align 1
@ubi_wl_entry_slab = external dso_local local_unnamed_addr global ptr, align 4
@__func__.ubi_wl_init = private unnamed_addr constant [12 x i8] c"ubi_wl_init\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"no enough physical eraseblocks (%d, need %d)\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"no free eraseblocks\00", align 1
@__func__.ubi_wl_get_peb = private unnamed_addr constant [15 x i8] c"ubi_wl_get_peb\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"new PEB %d does not contain all 0xFF bytes\00", align 1
@__func__.in_wl_tree = private unnamed_addr constant [11 x i8] c"in_wl_tree\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"self-check failed for PEB %d, EC %d, Protect queue\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"switch to read-only mode\00", align 1
@__func__.schedule_erase = private unnamed_addr constant [15 x i8] c"schedule_erase\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"failed to erase PEB %d, error %d\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"bad physical eraseblock %d detected\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"no reserved/available physical eraseblocks\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"mark PEB %d as bad\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"no PEBs in the reserved pool, used an available PEB\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"%d PEBs left in the reserve\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"last PEB from the reserve was used\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"erase counter overflow at PEB %d, EC %llu\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"read EC is %lld, should be %d\00", align 1
@__func__.serve_prot_queue = private unnamed_addr constant [17 x i8] c"serve_prot_queue\00", align 1
@__func__.__schedule_ubi_work = private unnamed_addr constant [20 x i8] c"__schedule_ubi_work\00", align 1
@__func__.wl_tree_add = private unnamed_addr constant [12 x i8] c"wl_tree_add\00", align 1
@__func__.wear_leveling_worker = private unnamed_addr constant [21 x i8] c"wear_leveling_worker\00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"error %d while reading VID header from PEB %d\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"too many erroneous eraseblocks (%d)\00", align 1
@.str.29 = private unnamed_addr constant [50 x i8] c"scrubbed PEB %d (LEB %d:%d), data moved to PEB %d\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"error %d while moving PEB %d to PEB %d\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"error %d while moving PEB %d (LEB %d:%d) to PEB %d\00", align 1
@__func__.get_peb_for_wl = private unnamed_addr constant [15 x i8] c"get_peb_for_wl\00", align 1
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@__func__.do_work = private unnamed_addr constant [8 x i8] c"do_work\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"work failed with error code %d\00", align 1
@__func__.shutdown_work = private unnamed_addr constant [14 x i8] c"shutdown_work\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"self-check failed for PEB %d, EC %d, RB-tree %p \00", align 1
@__func__.prot_queue_add = private unnamed_addr constant [15 x i8] c"prot_queue_add\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_put_peb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = icmp slt i32 %3, 0
  br i1 %6, label %7, label %12, !prof !8

7:                                                ; preds = %5
  %8 = tail call ptr @llvm.thread.pointer() #10
  %9 = getelementptr inbounds %struct.task_struct, ptr %8, i32 0, i32 52
  %10 = load i32, ptr %9, align 8
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_put_peb, i32 noundef 1237, i32 noundef %10) #11
  tail call void @dump_stack() #11
  br label %12

12:                                               ; preds = %7, %5
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %14 = load i32, ptr %13, align 8
  %15 = icmp sgt i32 %14, %3
  br i1 %15, label %21, label %16, !prof !9

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_put_peb, i32 noundef 1238, i32 noundef %19) #11
  tail call void @dump_stack() #11
  br label %21

21:                                               ; preds = %16, %12
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 30
  tail call void @down_read(ptr noundef %22) #10
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %23) #10
  %24 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr ptr, ptr %25, i32 %3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 51
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 47
  br label %33

33:                                               ; preds = %33, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %34 = load i16, ptr %23, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_lock(ptr noundef %32) #10
  tail call void @mutex_unlock(ptr noundef %32) #10
  tail call void @_raw_spin_lock(ptr noundef %23) #10
  %36 = load ptr, ptr %24, align 4
  %37 = getelementptr ptr, ptr %36, i32 %3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %28, align 8
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %33, label %41

41:                                               ; preds = %33, %21
  %42 = phi ptr [ %27, %21 ], [ %38, %33 ]
  %43 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 52
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %42, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 53
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %55, label %50, !prof !9

50:                                               ; preds = %46
  %51 = tail call ptr @llvm.thread.pointer() #10
  %52 = getelementptr inbounds %struct.task_struct, ptr %51, i32 0, i32 52
  %53 = load i32, ptr %52, align 8
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_put_peb, i32 noundef 1269, i32 noundef %53) #11
  tail call void @dump_stack() #11
  br label %55

55:                                               ; preds = %50, %46
  store i32 1, ptr %47, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %56 = load i16, ptr %23, align 4
  %57 = add i16 %56, 1
  store i16 %57, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %264

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %100, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 1
  br label %66

66:                                               ; preds = %95, %62
  %67 = phi ptr [ %60, %62 ], [ %97, %95 ]
  %68 = getelementptr inbounds %struct.ubi_wl_entry, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %64, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = icmp eq ptr %67, %42
  br i1 %72, label %99, label %73, !prof !9

73:                                               ; preds = %71
  %74 = tail call ptr @llvm.thread.pointer() #10
  %75 = getelementptr inbounds %struct.task_struct, ptr %74, i32 0, i32 52
  %76 = load i32, ptr %75, align 8
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %76) #11
  tail call void @dump_stack() #11
  br label %99

78:                                               ; preds = %66
  %79 = load i32, ptr %65, align 4
  %80 = getelementptr inbounds %struct.ubi_wl_entry, ptr %67, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %95

85:                                               ; preds = %78
  %86 = icmp sgt i32 %79, %81
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %95

89:                                               ; preds = %85
  %90 = icmp slt i32 %64, %69
  br i1 %90, label %91, label %93

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 2
  br label %95

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.rb_node, ptr %67, i32 0, i32 1
  br label %95

95:                                               ; preds = %93, %91, %87, %83
  %96 = phi ptr [ %84, %83 ], [ %88, %87 ], [ %92, %91 ], [ %94, %93 ]
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %100, label %66

99:                                               ; preds = %73, %71
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %42, ptr noundef %59)
  tail call void @rb_erase(ptr noundef %42, ptr noundef %59) #10
  br label %204

100:                                              ; preds = %95, %58
  %101 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %142, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 2
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 1
  br label %108

108:                                              ; preds = %137, %104
  %109 = phi ptr [ %102, %104 ], [ %139, %137 ]
  %110 = getelementptr inbounds %struct.ubi_wl_entry, ptr %109, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %106, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = icmp eq ptr %109, %42
  br i1 %114, label %141, label %115, !prof !9

115:                                              ; preds = %113
  %116 = tail call ptr @llvm.thread.pointer() #10
  %117 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 52
  %118 = load i32, ptr %117, align 8
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %118) #11
  tail call void @dump_stack() #11
  br label %141

120:                                              ; preds = %108
  %121 = load i32, ptr %107, align 4
  %122 = getelementptr inbounds %struct.ubi_wl_entry, ptr %109, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 2
  br label %137

127:                                              ; preds = %120
  %128 = icmp sgt i32 %121, %123
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  br label %137

131:                                              ; preds = %127
  %132 = icmp slt i32 %106, %111
  br i1 %132, label %133, label %135

133:                                              ; preds = %131
  %134 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 2
  br label %137

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.rb_node, ptr %109, i32 0, i32 1
  br label %137

137:                                              ; preds = %135, %133, %129, %125
  %138 = phi ptr [ %126, %125 ], [ %130, %129 ], [ %134, %133 ], [ %136, %135 ]
  %139 = load ptr, ptr %138, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %142, label %108

141:                                              ; preds = %115, %113
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %42, ptr noundef %101)
  tail call void @rb_erase(ptr noundef %42, ptr noundef %101) #10
  br label %204

142:                                              ; preds = %137, %100
  %143 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  %146 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  br i1 %145, label %193, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 1
  br label %150

150:                                              ; preds = %179, %148
  %151 = phi ptr [ %144, %148 ], [ %181, %179 ]
  %152 = getelementptr inbounds %struct.ubi_wl_entry, ptr %151, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %147, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = icmp eq ptr %151, %42
  br i1 %156, label %183, label %157, !prof !9

157:                                              ; preds = %155
  %158 = tail call ptr @llvm.thread.pointer() #10
  %159 = getelementptr inbounds %struct.task_struct, ptr %158, i32 0, i32 52
  %160 = load i32, ptr %159, align 8
  %161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %160) #11
  tail call void @dump_stack() #11
  br label %183

162:                                              ; preds = %150
  %163 = load i32, ptr %149, align 4
  %164 = getelementptr inbounds %struct.ubi_wl_entry, ptr %151, i32 0, i32 1
  %165 = load i32, ptr %164, align 4
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 2
  br label %179

169:                                              ; preds = %162
  %170 = icmp sgt i32 %163, %165
  br i1 %170, label %171, label %173

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 1
  br label %179

173:                                              ; preds = %169
  %174 = icmp slt i32 %147, %153
  br i1 %174, label %175, label %177

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 2
  br label %179

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.rb_node, ptr %151, i32 0, i32 1
  br label %179

179:                                              ; preds = %177, %175, %171, %167
  %180 = phi ptr [ %168, %167 ], [ %172, %171 ], [ %176, %175 ], [ %178, %177 ]
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %193, label %150

183:                                              ; preds = %157, %155
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %42, ptr noundef %143)
  tail call void @rb_erase(ptr noundef %42, ptr noundef %143) #10
  %184 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 65
  %185 = load i32, ptr %184, align 4
  %186 = add i32 %185, -1
  store i32 %186, ptr %184, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %204, !prof !8

188:                                              ; preds = %183
  %189 = tail call ptr @llvm.thread.pointer() #10
  %190 = getelementptr inbounds %struct.task_struct, ptr %189, i32 0, i32 52
  %191 = load i32, ptr %190, align 8
  %192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_put_peb, i32 noundef 1285, i32 noundef %191) #11
  tail call void @dump_stack() #11
  br label %204

193:                                              ; preds = %179, %142
  %194 = tail call fastcc i32 @prot_queue_del(ptr noundef %0, i32 noundef %147)
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %193
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %3) #10
  %197 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  store i32 1, ptr %197, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  tail call void @dump_stack() #11
  br label %201

201:                                              ; preds = %200, %196
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %202 = load i16, ptr %23, align 4
  %203 = add i16 %202, 1
  store i16 %203, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %264

204:                                              ; preds = %193, %188, %183, %141, %99
  %205 = phi i32 [ %4, %99 ], [ %4, %141 ], [ %4, %193 ], [ 1, %188 ], [ 1, %183 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %206 = load i16, ptr %23, align 4
  %207 = add i16 %206, 1
  store i16 %207, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %208 = tail call fastcc i32 @schedule_erase(ptr noundef %0, ptr noundef %42, i32 noundef %1, i32 noundef %2, i32 noundef %205, i1 noundef zeroext false)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %264, label %210

210:                                              ; preds = %204
  tail call void @_raw_spin_lock(ptr noundef %23) #10
  %211 = load ptr, ptr %59, align 4
  %212 = icmp eq ptr %211, null
  br i1 %212, label %257, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 1
  %215 = getelementptr inbounds %struct.ubi_wl_entry, ptr %42, i32 0, i32 2
  br label %216

216:                                              ; preds = %251, %213
  %217 = phi ptr [ %211, %213 ], [ %253, %251 ]
  %218 = phi ptr [ %59, %213 ], [ %252, %251 ]
  %219 = load i32, ptr %214, align 4
  %220 = getelementptr inbounds %struct.ubi_wl_entry, ptr %217, i32 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.rb_node, ptr %217, i32 0, i32 2
  br label %251

225:                                              ; preds = %216
  %226 = icmp sgt i32 %219, %221
  br i1 %226, label %227, label %229

227:                                              ; preds = %225
  %228 = getelementptr inbounds %struct.rb_node, ptr %217, i32 0, i32 1
  br label %251

229:                                              ; preds = %225
  %230 = load i32, ptr %215, align 4
  %231 = getelementptr inbounds %struct.ubi_wl_entry, ptr %217, i32 0, i32 2
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %234, label %242, !prof !8

234:                                              ; preds = %229
  %235 = tail call ptr @llvm.thread.pointer() #10
  %236 = getelementptr inbounds %struct.task_struct, ptr %235, i32 0, i32 52
  %237 = load i32, ptr %236, align 8
  %238 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %237) #11
  tail call void @dump_stack() #11
  %239 = load i32, ptr %215, align 4
  %240 = load i32, ptr %231, align 4
  %241 = load ptr, ptr %218, align 4
  br label %242

242:                                              ; preds = %234, %229
  %243 = phi ptr [ %241, %234 ], [ %217, %229 ]
  %244 = phi i32 [ %240, %234 ], [ %232, %229 ]
  %245 = phi i32 [ %239, %234 ], [ %230, %229 ]
  %246 = icmp slt i32 %245, %244
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.rb_node, ptr %243, i32 0, i32 2
  br label %251

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.rb_node, ptr %243, i32 0, i32 1
  br label %251

251:                                              ; preds = %249, %247, %227, %223
  %252 = phi ptr [ %224, %223 ], [ %228, %227 ], [ %248, %247 ], [ %250, %249 ]
  %253 = load ptr, ptr %252, align 4
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %216

255:                                              ; preds = %251
  %256 = ptrtoint ptr %217 to i32
  br label %257

257:                                              ; preds = %255, %210
  %258 = phi i32 [ %256, %255 ], [ 0, %210 ]
  %259 = phi ptr [ %252, %255 ], [ %59, %210 ]
  store i32 %258, ptr %42, align 4
  %260 = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 1
  store ptr null, ptr %260, align 4
  %261 = getelementptr inbounds %struct.rb_node, ptr %42, i32 0, i32 2
  store ptr null, ptr %261, align 4
  store ptr %42, ptr %259, align 4
  tail call void @rb_insert_color(ptr noundef %42, ptr noundef %59) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %262 = load i16, ptr %23, align 4
  %263 = add i16 %262, 1
  store i16 %263, ptr %23, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %264

264:                                              ; preds = %257, %204, %201, %55
  %265 = phi i32 [ 0, %55 ], [ %194, %201 ], [ %208, %257 ], [ %208, %204 ]
  tail call void @up_read(ptr noundef %22) #10
  ret i32 %265
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @in_wl_tree(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubi_wl_entry, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_wl_entry, ptr %0, i32 0, i32 1
  br label %9

9:                                                ; preds = %38, %5
  %10 = phi ptr [ %3, %5 ], [ %40, %38 ]
  %11 = getelementptr inbounds %struct.ubi_wl_entry, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %9
  %15 = icmp eq ptr %10, %0
  br i1 %15, label %42, label %16, !prof !9

16:                                               ; preds = %14
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %19) #11
  tail call void @dump_stack() #11
  br label %42

21:                                               ; preds = %9
  %22 = load i32, ptr %8, align 4
  %23 = getelementptr inbounds %struct.ubi_wl_entry, ptr %10, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %38

28:                                               ; preds = %21
  %29 = icmp sgt i32 %22, %24
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %38

32:                                               ; preds = %28
  %33 = icmp slt i32 %7, %12
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  br label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  br label %38

38:                                               ; preds = %36, %34, %30, %26
  %39 = phi ptr [ %27, %26 ], [ %31, %30 ], [ %35, %34 ], [ %37, %36 ]
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %9

42:                                               ; preds = %38, %16, %14, %2
  %43 = phi i32 [ 1, %14 ], [ 1, %16 ], [ 0, %2 ], [ 0, %38 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 4
  %10 = icmp eq ptr %9, null
  %11 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  br i1 %10, label %14, label %16

14:                                               ; preds = %8
  %15 = load i32, ptr %13, align 4
  br label %49

16:                                               ; preds = %45, %8
  %17 = phi ptr [ %47, %45 ], [ %9, %8 ]
  %18 = getelementptr inbounds %struct.ubi_wl_entry, ptr %17, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %12, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = icmp eq ptr %17, %1
  br i1 %22, label %52, label %23, !prof !9

23:                                               ; preds = %21
  %24 = tail call ptr @llvm.thread.pointer() #10
  %25 = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 52
  %26 = load i32, ptr %25, align 8
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %26) #11
  br label %51

28:                                               ; preds = %16
  %29 = load i32, ptr %13, align 4
  %30 = getelementptr inbounds %struct.ubi_wl_entry, ptr %17, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %45

35:                                               ; preds = %28
  %36 = icmp sgt i32 %29, %31
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %45

39:                                               ; preds = %35
  %40 = icmp slt i32 %12, %19
  br i1 %40, label %41, label %43

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 2
  br label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.rb_node, ptr %17, i32 0, i32 1
  br label %45

45:                                               ; preds = %43, %41, %37, %33
  %46 = phi ptr [ %34, %33 ], [ %38, %37 ], [ %42, %41 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %16

49:                                               ; preds = %45, %14
  %50 = phi i32 [ %15, %14 ], [ %29, %45 ]
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %12, i32 noundef %50, ptr noundef %2) #10
  br label %51

51:                                               ; preds = %49, %23
  tail call void @dump_stack() #11
  br label %52

52:                                               ; preds = %51, %21, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @prot_queue_del(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr ptr, ptr %4, i32 %1
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %103, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %98, label %13

13:                                               ; preds = %8
  %14 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 0
  br label %15

15:                                               ; preds = %19, %13
  %16 = phi ptr [ %14, %13 ], [ %17, %19 ]
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %14
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = icmp eq ptr %17, %6
  br i1 %20, label %98, label %15

21:                                               ; preds = %15
  %22 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 1
  br label %23

23:                                               ; preds = %27, %21
  %24 = phi ptr [ %22, %21 ], [ %25, %27 ]
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %22
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = icmp eq ptr %25, %6
  br i1 %28, label %98, label %23

29:                                               ; preds = %23
  %30 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 2
  br label %31

31:                                               ; preds = %35, %29
  %32 = phi ptr [ %30, %29 ], [ %33, %35 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %33, %6
  br i1 %36, label %98, label %31

37:                                               ; preds = %31
  %38 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 3
  br label %39

39:                                               ; preds = %43, %37
  %40 = phi ptr [ %38, %37 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %38
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = icmp eq ptr %41, %6
  br i1 %44, label %98, label %39

45:                                               ; preds = %39
  %46 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 4
  br label %47

47:                                               ; preds = %51, %45
  %48 = phi ptr [ %46, %45 ], [ %49, %51 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %46
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = icmp eq ptr %49, %6
  br i1 %52, label %98, label %47

53:                                               ; preds = %47
  %54 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 5
  br label %55

55:                                               ; preds = %59, %53
  %56 = phi ptr [ %54, %53 ], [ %57, %59 ]
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %54
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = icmp eq ptr %57, %6
  br i1 %60, label %98, label %55

61:                                               ; preds = %55
  %62 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 6
  br label %63

63:                                               ; preds = %67, %61
  %64 = phi ptr [ %62, %61 ], [ %65, %67 ]
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, %62
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = icmp eq ptr %65, %6
  br i1 %68, label %98, label %63

69:                                               ; preds = %63
  %70 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 7
  br label %71

71:                                               ; preds = %75, %69
  %72 = phi ptr [ %70, %69 ], [ %73, %75 ]
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, %70
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = icmp eq ptr %73, %6
  br i1 %76, label %98, label %71

77:                                               ; preds = %71
  %78 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 8
  br label %79

79:                                               ; preds = %83, %77
  %80 = phi ptr [ %78, %77 ], [ %81, %83 ]
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %78
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = icmp eq ptr %81, %6
  br i1 %84, label %98, label %79

85:                                               ; preds = %79
  %86 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 9
  br label %87

87:                                               ; preds = %91, %85
  %88 = phi ptr [ %86, %85 ], [ %89, %91 ]
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, %86
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = icmp eq ptr %89, %6
  br i1 %92, label %98, label %87

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 2
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.ubi_wl_entry, ptr %6, i32 0, i32 1
  %97 = load i32, ptr %96, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.15, i32 noundef %95, i32 noundef %97) #10
  tail call void @dump_stack() #11
  br label %103

98:                                               ; preds = %91, %83, %75, %67, %59, %51, %43, %35, %27, %19, %8
  %99 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %99, align 4
  br label %103

103:                                              ; preds = %98, %93, %2
  %104 = phi i32 [ 0, %98 ], [ -19, %2 ], [ -19, %93 ]
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @schedule_erase(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext %5) unnamed_addr #0 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %8, label %13, !prof !8

8:                                                ; preds = %6
  %9 = tail call ptr @llvm.thread.pointer() #10
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.schedule_erase, i32 noundef 588, i32 noundef %11) #11
  tail call void @dump_stack() #11
  br label %13

13:                                               ; preds = %8, %6
  %14 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %15 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3136, i32 noundef 28) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ubi_work, ptr %15, i32 0, i32 1
  store ptr @erase_worker, ptr %18, align 8
  %19 = getelementptr inbounds %struct.ubi_work, ptr %15, i32 0, i32 2
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.ubi_work, ptr %15, i32 0, i32 3
  store i32 %2, ptr %20, align 8
  %21 = getelementptr inbounds %struct.ubi_work, ptr %15, i32 0, i32 4
  store i32 %3, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ubi_work, ptr %15, i32 0, i32 5
  store i32 %4, ptr %22, align 8
  br i1 %5, label %23, label %24

23:                                               ; preds = %17
  tail call fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef nonnull %15)
  br label %26

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @down_read(ptr noundef %25) #10
  tail call fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef nonnull %15) #10
  tail call void @up_read(ptr noundef %25) #10
  br label %26

26:                                               ; preds = %24, %23, %13
  %27 = phi i32 [ -12, %13 ], [ 0, %24 ], [ 0, %23 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @wl_tree_add(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ubi_wl_entry, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ubi_wl_entry, ptr %0, i32 0, i32 2
  br label %8

8:                                                ; preds = %42, %5
  %9 = phi ptr [ %3, %5 ], [ %44, %42 ]
  %10 = phi ptr [ %1, %5 ], [ %43, %42 ]
  %11 = load i32, ptr %6, align 4
  %12 = getelementptr inbounds %struct.ubi_wl_entry, ptr %9, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  br label %42

17:                                               ; preds = %8
  %18 = icmp sgt i32 %11, %13
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  br label %42

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4
  %23 = getelementptr inbounds %struct.ubi_wl_entry, ptr %9, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %33, !prof !8

26:                                               ; preds = %21
  %27 = tail call ptr @llvm.thread.pointer() #10
  %28 = getelementptr inbounds %struct.task_struct, ptr %27, i32 0, i32 52
  %29 = load i32, ptr %28, align 8
  %30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %29) #11
  tail call void @dump_stack() #11
  %31 = load i32, ptr %7, align 4
  %32 = load i32, ptr %23, align 4
  br label %33

33:                                               ; preds = %26, %21
  %34 = phi i32 [ %32, %26 ], [ %24, %21 ]
  %35 = phi i32 [ %31, %26 ], [ %22, %21 ]
  %36 = icmp slt i32 %35, %34
  %37 = load ptr, ptr %10, align 4
  br i1 %36, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 2
  br label %42

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rb_node, ptr %37, i32 0, i32 1
  br label %42

42:                                               ; preds = %40, %38, %19, %15
  %43 = phi ptr [ %16, %15 ], [ %20, %19 ], [ %39, %38 ], [ %41, %40 ]
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %8

46:                                               ; preds = %42
  %47 = ptrtoint ptr %9 to i32
  br label %48

48:                                               ; preds = %46, %2
  %49 = phi i32 [ %47, %46 ], [ 0, %2 ]
  %50 = phi ptr [ %43, %46 ], [ %1, %2 ]
  store i32 %49, ptr %0, align 4
  %51 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 1
  store ptr null, ptr %51, align 4
  %52 = getelementptr inbounds %struct.rb_node, ptr %0, i32 0, i32 2
  store ptr null, ptr %52, align 4
  store ptr %0, ptr %50, align 4
  tail call void @rb_insert_color(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_scrub_peb(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %1) #10
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr ptr, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 51
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %91, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 52
  br label %15

15:                                               ; preds = %97, %11
  %16 = phi ptr [ %7, %11 ], [ %102, %97 ]
  %17 = load ptr, ptr %12, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %51, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 1
  br label %23

23:                                               ; preds = %47, %19
  %24 = phi ptr [ %17, %19 ], [ %49, %47 ]
  %25 = getelementptr inbounds %struct.ubi_wl_entry, ptr %24, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %21, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = icmp eq ptr %24, %16
  br i1 %29, label %91, label %86, !prof !9

30:                                               ; preds = %23
  %31 = load i32, ptr %22, align 4
  %32 = getelementptr inbounds %struct.ubi_wl_entry, ptr %24, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %47

37:                                               ; preds = %30
  %38 = icmp sgt i32 %31, %33
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %47

41:                                               ; preds = %37
  %42 = icmp slt i32 %21, %26
  br i1 %42, label %43, label %45

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %47

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %47

47:                                               ; preds = %45, %43, %39, %35
  %48 = phi ptr [ %36, %35 ], [ %40, %39 ], [ %44, %43 ], [ %46, %45 ]
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %23

51:                                               ; preds = %47, %15
  %52 = load ptr, ptr %13, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %94, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 1
  br label %58

58:                                               ; preds = %82, %54
  %59 = phi ptr [ %52, %54 ], [ %84, %82 ]
  %60 = getelementptr inbounds %struct.ubi_wl_entry, ptr %59, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = icmp eq ptr %59, %16
  br i1 %64, label %91, label %86, !prof !9

65:                                               ; preds = %58
  %66 = load i32, ptr %57, align 4
  %67 = getelementptr inbounds %struct.ubi_wl_entry, ptr %59, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 2
  br label %82

72:                                               ; preds = %65
  %73 = icmp sgt i32 %66, %68
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 1
  br label %82

76:                                               ; preds = %72
  %77 = icmp slt i32 %56, %61
  br i1 %77, label %78, label %80

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 2
  br label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.rb_node, ptr %59, i32 0, i32 1
  br label %82

82:                                               ; preds = %80, %78, %74, %70
  %83 = phi ptr [ %71, %70 ], [ %75, %74 ], [ %79, %78 ], [ %81, %80 ]
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %94, label %58

86:                                               ; preds = %63, %28
  %87 = tail call ptr @llvm.thread.pointer() #10
  %88 = getelementptr inbounds %struct.task_struct, ptr %87, i32 0, i32 52
  %89 = load i32, ptr %88, align 8
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %89) #11
  tail call void @dump_stack() #11
  br label %91

91:                                               ; preds = %97, %86, %63, %28, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %92 = load i16, ptr %3, align 4
  %93 = add i16 %92, 1
  store i16 %93, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %213

94:                                               ; preds = %82, %51
  %95 = load ptr, ptr %14, align 4
  %96 = icmp eq ptr %16, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %94
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %98 = load i16, ptr %3, align 4
  %99 = add i16 %98, 1
  store i16 %99, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @yield() #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %100 = load ptr, ptr %4, align 4
  %101 = getelementptr ptr, ptr %100, i32 %1
  %102 = load ptr, ptr %101, align 4
  %103 = load ptr, ptr %8, align 8
  %104 = icmp eq ptr %102, %103
  br i1 %104, label %91, label %15

105:                                              ; preds = %94
  %106 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, null
  %109 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 2
  %110 = load i32, ptr %109, align 4
  br i1 %108, label %147, label %111

111:                                              ; preds = %105
  %112 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 1
  br label %113

113:                                              ; preds = %142, %111
  %114 = phi ptr [ %107, %111 ], [ %144, %142 ]
  %115 = getelementptr inbounds %struct.ubi_wl_entry, ptr %114, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %110, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = icmp eq ptr %114, %16
  br i1 %119, label %146, label %120, !prof !9

120:                                              ; preds = %118
  %121 = tail call ptr @llvm.thread.pointer() #10
  %122 = getelementptr inbounds %struct.task_struct, ptr %121, i32 0, i32 52
  %123 = load i32, ptr %122, align 8
  %124 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %123) #11
  tail call void @dump_stack() #11
  br label %146

125:                                              ; preds = %113
  %126 = load i32, ptr %112, align 4
  %127 = getelementptr inbounds %struct.ubi_wl_entry, ptr %114, i32 0, i32 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 2
  br label %142

132:                                              ; preds = %125
  %133 = icmp sgt i32 %126, %128
  br i1 %133, label %134, label %136

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 1
  br label %142

136:                                              ; preds = %132
  %137 = icmp slt i32 %110, %116
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 2
  br label %142

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.rb_node, ptr %114, i32 0, i32 1
  br label %142

142:                                              ; preds = %140, %138, %134, %130
  %143 = phi ptr [ %131, %130 ], [ %135, %134 ], [ %139, %138 ], [ %141, %140 ]
  %144 = load ptr, ptr %143, align 4
  %145 = icmp eq ptr %144, null
  br i1 %145, label %147, label %113

146:                                              ; preds = %120, %118
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %16, ptr noundef %106)
  tail call void @rb_erase(ptr noundef %16, ptr noundef %106) #10
  br label %158

147:                                              ; preds = %142, %105
  %148 = tail call fastcc i32 @prot_queue_del(ptr noundef %0, i32 noundef %110)
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %1) #10
  %151 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  store i32 1, ptr %151, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  tail call void @dump_stack() #11
  br label %155

155:                                              ; preds = %154, %150
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %156 = load i16, ptr %3, align 4
  %157 = add i16 %156, 1
  store i16 %157, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %213

158:                                              ; preds = %147, %146
  %159 = load ptr, ptr %12, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %205, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 1
  %163 = getelementptr inbounds %struct.ubi_wl_entry, ptr %16, i32 0, i32 2
  br label %164

164:                                              ; preds = %199, %161
  %165 = phi ptr [ %159, %161 ], [ %201, %199 ]
  %166 = phi ptr [ %12, %161 ], [ %200, %199 ]
  %167 = load i32, ptr %162, align 4
  %168 = getelementptr inbounds %struct.ubi_wl_entry, ptr %165, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = getelementptr inbounds %struct.rb_node, ptr %165, i32 0, i32 2
  br label %199

173:                                              ; preds = %164
  %174 = icmp sgt i32 %167, %169
  br i1 %174, label %175, label %177

175:                                              ; preds = %173
  %176 = getelementptr inbounds %struct.rb_node, ptr %165, i32 0, i32 1
  br label %199

177:                                              ; preds = %173
  %178 = load i32, ptr %163, align 4
  %179 = getelementptr inbounds %struct.ubi_wl_entry, ptr %165, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %178, %180
  br i1 %181, label %182, label %190, !prof !8

182:                                              ; preds = %177
  %183 = tail call ptr @llvm.thread.pointer() #10
  %184 = getelementptr inbounds %struct.task_struct, ptr %183, i32 0, i32 52
  %185 = load i32, ptr %184, align 8
  %186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %185) #11
  tail call void @dump_stack() #11
  %187 = load i32, ptr %163, align 4
  %188 = load i32, ptr %179, align 4
  %189 = load ptr, ptr %166, align 4
  br label %190

190:                                              ; preds = %182, %177
  %191 = phi ptr [ %189, %182 ], [ %165, %177 ]
  %192 = phi i32 [ %188, %182 ], [ %180, %177 ]
  %193 = phi i32 [ %187, %182 ], [ %178, %177 ]
  %194 = icmp slt i32 %193, %192
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.rb_node, ptr %191, i32 0, i32 2
  br label %199

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.rb_node, ptr %191, i32 0, i32 1
  br label %199

199:                                              ; preds = %197, %195, %175, %171
  %200 = phi ptr [ %172, %171 ], [ %176, %175 ], [ %196, %195 ], [ %198, %197 ]
  %201 = load ptr, ptr %200, align 4
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %164

203:                                              ; preds = %199
  %204 = ptrtoint ptr %165 to i32
  br label %205

205:                                              ; preds = %203, %158
  %206 = phi i32 [ %204, %203 ], [ 0, %158 ]
  %207 = phi ptr [ %200, %203 ], [ %12, %158 ]
  store i32 %206, ptr %16, align 4
  %208 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  store ptr null, ptr %208, align 4
  %209 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  store ptr null, ptr %209, align 4
  store ptr %16, ptr %207, align 4
  tail call void @rb_insert_color(ptr noundef %16, ptr noundef %12) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %210 = load i16, ptr %3, align 4
  %211 = add i16 %210, 1
  store i16 %211, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %212 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 0)
  br label %213

213:                                              ; preds = %205, %155, %91
  %214 = phi i32 [ 0, %91 ], [ %212, %205 ], [ %148, %155 ]
  ret i32 %214
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_msg(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @yield() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 49
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %48

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %61, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %61, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @rb_first(ptr noundef %12) #10
  %21 = tail call ptr @rb_first(ptr noundef %16) #10
  %22 = getelementptr inbounds %struct.ubi_wl_entry, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 8192
  %25 = load ptr, ptr %16, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %27, %19
  %28 = phi ptr [ %37, %27 ], [ %25, %19 ]
  %29 = phi ptr [ %35, %27 ], [ %21, %19 ]
  %30 = getelementptr inbounds %struct.ubi_wl_entry, ptr %28, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp slt i32 %31, %24
  %33 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 2
  %34 = getelementptr inbounds %struct.rb_node, ptr %28, i32 0, i32 1
  %35 = select i1 %32, ptr %28, ptr %29
  %36 = select i1 %32, ptr %34, ptr %33
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %27

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.ubi_wl_entry, ptr %35, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %19
  %43 = phi i32 [ %23, %19 ], [ %41, %39 ]
  %44 = getelementptr inbounds %struct.ubi_wl_entry, ptr %20, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %43, %45
  %47 = icmp sgt i32 %46, 4095
  br i1 %47, label %48, label %61

48:                                               ; preds = %42, %7
  store i32 1, ptr %4, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %49 = load i16, ptr %3, align 4
  %50 = add i16 %49, 1
  store i16 %50, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3136, i32 noundef 28) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  store i32 0, ptr %4, align 8
  br label %61

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.ubi_work, ptr %52, i32 0, i32 1
  store ptr @wear_leveling_worker, ptr %56, align 8
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  tail call fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef nonnull %52)
  br label %65

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @down_read(ptr noundef %60) #10
  tail call fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef nonnull %52) #10
  tail call void @up_read(ptr noundef %60) #10
  br label %65

61:                                               ; preds = %54, %42, %15, %11, %2
  %62 = phi i32 [ 0, %2 ], [ -12, %54 ], [ 0, %42 ], [ 0, %15 ], [ 0, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %63 = load i16, ptr %3, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %65

65:                                               ; preds = %61, %59, %58
  %66 = phi i32 [ %62, %61 ], [ 0, %59 ], [ 0, %58 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_flush(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %7 = icmp eq i32 %1, -1
  %8 = icmp eq i32 %2, -1
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  tail call void @down_read(ptr noundef %4) #10
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %10 = load ptr, ptr %6, align 4
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %56, label %12

12:                                               ; preds = %51, %3
  %13 = phi ptr [ %52, %51 ], [ %10, %3 ]
  %14 = load ptr, ptr %13, align 4
  br i1 %7, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.ubi_work, ptr %13, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %49

19:                                               ; preds = %15, %12
  br i1 %8, label %24, label %20

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.ubi_work, ptr %13, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %49

24:                                               ; preds = %20, %19
  %25 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  store volatile ptr %14, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  %28 = load i32, ptr %9, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %9, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36, !prof !8

31:                                               ; preds = %24
  %32 = tail call ptr @llvm.thread.pointer() #10
  %33 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 52
  %34 = load i32, ptr %33, align 8
  %35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_flush, i32 noundef 1410, i32 noundef %34) #11
  tail call void @dump_stack() #11
  br label %36

36:                                               ; preds = %31, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %37 = load i16, ptr %5, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %39 = getelementptr inbounds %struct.ubi_work, ptr %13, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 %40(ptr noundef %0, ptr noundef %13, i32 noundef 0) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  tail call void @up_read(ptr noundef %4) #10
  br label %60

44:                                               ; preds = %36
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %45 = load i16, ptr %5, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @up_read(ptr noundef %4) #10
  tail call void @down_read(ptr noundef %4) #10
  tail call void @_raw_spin_lock(ptr noundef %5) #10
  %47 = load ptr, ptr %6, align 4
  %48 = icmp eq ptr %47, %6
  br i1 %48, label %56, label %51

49:                                               ; preds = %20, %15
  %50 = icmp eq ptr %14, %6
  br i1 %50, label %53, label %51

51:                                               ; preds = %49, %44
  %52 = phi ptr [ %14, %49 ], [ %47, %44 ]
  br label %12

53:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %54 = load i16, ptr %5, align 4
  %55 = add i16 %54, 1
  store i16 %55, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %59

56:                                               ; preds = %44, %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %57 = load i16, ptr %5, align 4
  %58 = add i16 %57, 1
  store i16 %58, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %59

59:                                               ; preds = %56, %53
  tail call void @up_read(ptr noundef %4) #10
  tail call void @down_write(ptr noundef %4) #10
  tail call void @up_write(ptr noundef %4) #10
  br label %60

60:                                               ; preds = %59, %43
  %61 = phi i32 [ 0, %59 ], [ %41, %43 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_bitflip_check(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %166, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, %1
  br i1 %8, label %9, label %166

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @down_write(ptr noundef %10) #10
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr ptr, ptr %13, i32 %1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %18 = load i16, ptr %11, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %164

20:                                               ; preds = %9
  %21 = tail call fastcc zeroext i1 @scrub_possible(ptr noundef %0, ptr noundef nonnull %15)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10
  %22 = load i16, ptr %11, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10
  tail call void asm sideeffect "", "~{memory}"() #10
  br i1 %21, label %24, label %164

24:                                               ; preds = %20
  %25 = icmp eq i32 %2, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 81
  tail call void @mutex_lock(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 80
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %31 = load i32, ptr %30, align 4
  %32 = tail call i32 @ubi_io_read(ptr noundef %0, ptr noundef %29, i32 noundef %1, i32 noundef 0, i32 noundef %31) #10
  tail call void @mutex_unlock(ptr noundef %27) #10
  %33 = icmp eq i32 %32, 5
  br i1 %33, label %34, label %164

34:                                               ; preds = %26, %24
  tail call void @_raw_spin_lock(ptr noundef %11) #10
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr ptr, ptr %35, i32 %1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %40 = load i16, ptr %11, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %164

42:                                               ; preds = %34
  %43 = tail call fastcc zeroext i1 @scrub_possible(ptr noundef %0, ptr noundef nonnull %37)
  br i1 %43, label %47, label %44

44:                                               ; preds = %42
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %45 = load i16, ptr %11, align 4
  %46 = add i16 %45, 1
  store i16 %46, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %164

47:                                               ; preds = %42
  %48 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 0
  br label %49

49:                                               ; preds = %53, %47
  %50 = phi ptr [ %48, %47 ], [ %51, %53 ]
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %48
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = icmp eq ptr %51, %37
  br i1 %54, label %127, label %49

55:                                               ; preds = %49
  %56 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 1
  br label %57

57:                                               ; preds = %61, %55
  %58 = phi ptr [ %56, %55 ], [ %59, %61 ]
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %56
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = icmp eq ptr %59, %37
  br i1 %62, label %127, label %57

63:                                               ; preds = %57
  %64 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 2
  br label %65

65:                                               ; preds = %69, %63
  %66 = phi ptr [ %64, %63 ], [ %67, %69 ]
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = icmp eq ptr %67, %37
  br i1 %70, label %127, label %65

71:                                               ; preds = %65
  %72 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 3
  br label %73

73:                                               ; preds = %77, %71
  %74 = phi ptr [ %72, %71 ], [ %75, %77 ]
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %72
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = icmp eq ptr %75, %37
  br i1 %78, label %127, label %73

79:                                               ; preds = %73
  %80 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 4
  br label %81

81:                                               ; preds = %85, %79
  %82 = phi ptr [ %80, %79 ], [ %83, %85 ]
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %80
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = icmp eq ptr %83, %37
  br i1 %86, label %127, label %81

87:                                               ; preds = %81
  %88 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 5
  br label %89

89:                                               ; preds = %93, %87
  %90 = phi ptr [ %88, %87 ], [ %91, %93 ]
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %88
  br i1 %92, label %95, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %91, %37
  br i1 %94, label %127, label %89

95:                                               ; preds = %89
  %96 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 6
  br label %97

97:                                               ; preds = %101, %95
  %98 = phi ptr [ %96, %95 ], [ %99, %101 ]
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %96
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = icmp eq ptr %99, %37
  br i1 %102, label %127, label %97

103:                                              ; preds = %97
  %104 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 7
  br label %105

105:                                              ; preds = %109, %103
  %106 = phi ptr [ %104, %103 ], [ %107, %109 ]
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %104
  br i1 %108, label %111, label %109

109:                                              ; preds = %105
  %110 = icmp eq ptr %107, %37
  br i1 %110, label %127, label %105

111:                                              ; preds = %105
  %112 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 8
  br label %113

113:                                              ; preds = %117, %111
  %114 = phi ptr [ %112, %111 ], [ %115, %117 ]
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, %112
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = icmp eq ptr %115, %37
  br i1 %118, label %127, label %113

119:                                              ; preds = %113
  %120 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 9
  br label %121

121:                                              ; preds = %125, %119
  %122 = phi ptr [ %120, %119 ], [ %123, %125 ]
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, %120
  br i1 %124, label %135, label %125

125:                                              ; preds = %121
  %126 = icmp eq ptr %123, %37
  br i1 %126, label %127, label %121

127:                                              ; preds = %125, %117, %109, %101, %93, %85, %77, %69, %61, %53
  %128 = getelementptr inbounds %struct.ubi_wl_entry, ptr %37, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = tail call fastcc i32 @prot_queue_del(ptr noundef %0, i32 noundef %129)
  %131 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %37, ptr noundef %131)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %132 = load i16, ptr %11, align 4
  %133 = add i16 %132, 1
  store i16 %133, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %134 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 1)
  br label %159

135:                                              ; preds = %121
  %136 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %137 = tail call fastcc i32 @in_wl_tree(ptr noundef nonnull %37, ptr noundef %136)
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  tail call void @rb_erase(ptr noundef nonnull %37, ptr noundef %136) #10
  %140 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %37, ptr noundef %140)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %141 = load i16, ptr %11, align 4
  %142 = add i16 %141, 1
  store i16 %142, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %143 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 1)
  br label %159

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %146 = tail call fastcc i32 @in_wl_tree(ptr noundef nonnull %37, ptr noundef %145)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %144
  tail call void @rb_erase(ptr noundef nonnull %37, ptr noundef %145) #10
  %149 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %150 = load i32, ptr %149, align 4
  %151 = add i32 %150, -1
  store i32 %151, ptr %149, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %152 = load i16, ptr %11, align 4
  %153 = add i16 %152, 1
  store i16 %153, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %154 = zext i1 %25 to i32
  %155 = tail call fastcc i32 @schedule_erase(ptr noundef %0, ptr noundef nonnull %37, i32 noundef -1, i32 noundef -1, i32 noundef %154, i1 noundef zeroext true)
  br label %159

156:                                              ; preds = %144
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %157 = load i16, ptr %11, align 4
  %158 = add i16 %157, 1
  store i16 %158, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %159

159:                                              ; preds = %156, %148, %139, %127
  %160 = phi i32 [ %134, %127 ], [ %143, %139 ], [ %155, %148 ], [ -11, %156 ]
  %161 = or i32 %160, %2
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i32 -117, i32 %160
  br label %164

164:                                              ; preds = %159, %44, %39, %26, %20, %17
  %165 = phi i32 [ %163, %159 ], [ -16, %44 ], [ -2, %39 ], [ -2, %17 ], [ 0, %26 ], [ -16, %20 ]
  tail call void @up_write(ptr noundef %10) #10
  br label %166

166:                                              ; preds = %164, %5, %3
  %167 = phi i32 [ %165, %164 ], [ -22, %5 ], [ -22, %3 ]
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @scrub_possible(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  br label %10

10:                                               ; preds = %39, %6
  %11 = phi ptr [ %4, %6 ], [ %41, %39 ]
  %12 = getelementptr inbounds %struct.ubi_wl_entry, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %8, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = icmp eq ptr %11, %1
  br i1 %16, label %92, label %17, !prof !9

17:                                               ; preds = %15
  %18 = tail call ptr @llvm.thread.pointer() #10
  %19 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 52
  %20 = load i32, ptr %19, align 8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %20) #11
  tail call void @dump_stack() #11
  br label %92

22:                                               ; preds = %10
  %23 = load i32, ptr %9, align 4
  %24 = getelementptr inbounds %struct.ubi_wl_entry, ptr %11, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %39

29:                                               ; preds = %22
  %30 = icmp sgt i32 %23, %25
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %39

33:                                               ; preds = %29
  %34 = icmp slt i32 %8, %13
  br i1 %34, label %35, label %37

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 2
  br label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rb_node, ptr %11, i32 0, i32 1
  br label %39

39:                                               ; preds = %37, %35, %31, %27
  %40 = phi ptr [ %28, %27 ], [ %32, %31 ], [ %36, %35 ], [ %38, %37 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %10

43:                                               ; preds = %39, %2
  %44 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %84, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  br label %51

51:                                               ; preds = %80, %47
  %52 = phi ptr [ %45, %47 ], [ %82, %80 ]
  %53 = getelementptr inbounds %struct.ubi_wl_entry, ptr %52, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = icmp eq ptr %52, %1
  br i1 %57, label %92, label %58, !prof !9

58:                                               ; preds = %56
  %59 = tail call ptr @llvm.thread.pointer() #10
  %60 = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 52
  %61 = load i32, ptr %60, align 8
  %62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.in_wl_tree, i32 noundef 247, i32 noundef %61) #11
  tail call void @dump_stack() #11
  br label %92

63:                                               ; preds = %51
  %64 = load i32, ptr %50, align 4
  %65 = getelementptr inbounds %struct.ubi_wl_entry, ptr %52, i32 0, i32 1
  %66 = load i32, ptr %65, align 4
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  br label %80

70:                                               ; preds = %63
  %71 = icmp sgt i32 %64, %66
  br i1 %71, label %72, label %74

72:                                               ; preds = %70
  %73 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br label %80

74:                                               ; preds = %70
  %75 = icmp slt i32 %49, %54
  br i1 %75, label %76, label %78

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 2
  br label %80

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.rb_node, ptr %52, i32 0, i32 1
  br label %80

80:                                               ; preds = %78, %76, %72, %68
  %81 = phi ptr [ %69, %68 ], [ %73, %72 ], [ %77, %76 ], [ %79, %78 ]
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %51

84:                                               ; preds = %80, %43
  %85 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 51
  %86 = load ptr, ptr %85, align 8
  %87 = icmp eq ptr %86, %1
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 52
  %90 = load ptr, ptr %89, align 4
  %91 = icmp ne ptr %90, %1
  br label %92

92:                                               ; preds = %88, %84, %58, %56, %17, %15
  %93 = phi i1 [ false, %84 ], [ %91, %88 ], [ false, %15 ], [ false, %17 ], [ false, %56 ], [ false, %58 ]
  ret i1 %93
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_thread(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 58
  %3 = tail call ptr @llvm.thread.pointer() #10
  %4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 52
  %5 = load i32, ptr %4, align 8
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %2, i32 noundef %5) #10
  %6 = tail call zeroext i1 @set_freezable() #10
  %7 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %7, label %61, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  %10 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %11 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 57
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %14 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 1
  br label %15

15:                                               ; preds = %58, %8
  %16 = phi i32 [ 0, %8 ], [ %59, %58 ]
  %17 = load volatile i32, ptr @system_freezing_cnt, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !9

19:                                               ; preds = %15
  %20 = tail call zeroext i1 @freezing_slow_path(ptr noundef %3) #10
  br i1 %20, label %21, label %23, !prof !8

21:                                               ; preds = %19
  %22 = tail call zeroext i1 @__refrigerator(i1 noundef zeroext false) #10
  br i1 %22, label %58, label %23

23:                                               ; preds = %21, %19, %15
  tail call void @_raw_spin_lock(ptr noundef %9) #10
  %24 = load volatile ptr, ptr %10, align 4
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, ptr %12, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr %13, align 4
  %34 = and i8 %33, 8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32, %29, %26, %23
  store volatile i32 1, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %37 = load i16, ptr %9, align 4
  %38 = add i16 %37, 1
  store i16 %38, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %39 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store volatile i32 0, ptr %14, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  br label %61

41:                                               ; preds = %36
  tail call void @schedule() #10
  br label %58

42:                                               ; preds = %32
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %43 = load i16, ptr %9, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %45 = tail call fastcc i32 @do_work(ptr noundef %0)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %2, i32 noundef %45) #10
  %48 = add i32 %16, 1
  %49 = icmp sgt i32 %16, 32
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %2, i32 noundef 32) #10
  %51 = load i32, ptr %11, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 1, ptr %11, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  tail call void @dump_stack() #11
  br label %54

54:                                               ; preds = %53, %50
  store i32 0, ptr %12, align 4
  br label %58

55:                                               ; preds = %47, %42
  %56 = phi i32 [ %48, %47 ], [ 0, %42 ]
  %57 = tail call i32 @__cond_resched() #10
  br label %58

58:                                               ; preds = %55, %54, %41, %21
  %59 = phi i32 [ %16, %41 ], [ %48, %54 ], [ %56, %55 ], [ %16, %21 ]
  %60 = tail call zeroext i1 @kthread_should_stop() #10
  br i1 %60, label %61, label %15

61:                                               ; preds = %58, %40, %1
  %62 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 57
  store i32 0, ptr %62, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_freezable() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @do_work(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @__cond_resched() #10
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @down_read(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %9 = load i16, ptr %4, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %33

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, -1
  store i32 %18, ptr %16, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25, !prof !8

20:                                               ; preds = %11
  %21 = tail call ptr @llvm.thread.pointer() #10
  %22 = getelementptr inbounds %struct.task_struct, ptr %21, i32 0, i32 52
  %23 = load i32, ptr %22, align 8
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.do_work, i32 noundef 212, i32 noundef %23) #11
  tail call void @dump_stack() #11
  br label %25

25:                                               ; preds = %20, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %26 = load i16, ptr %4, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %28 = getelementptr inbounds %struct.ubi_work, ptr %6, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %6, i32 noundef 0) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %30) #10
  br label %33

33:                                               ; preds = %32, %25, %8
  %34 = phi i32 [ 0, %8 ], [ %30, %32 ], [ %30, %25 ]
  tail call void @up_read(ptr noundef %3) #10
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  store ptr null, ptr %6, align 8
  store i32 0, ptr %5, align 8
  store i32 0, ptr %4, align 4
  store i32 0, ptr %3, align 8
  %7 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  store i32 0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 47
  tail call void @__mutex_init(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull @ubi_wl_init.__key) #10
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @__init_rwsem(ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @ubi_wl_init.__key.8) #10
  %10 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 19
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  store volatile ptr %13, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54, i32 1
  store ptr %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 58
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 8
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef nonnull @.str.10, i32 noundef %17)
  %19 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 60
  %20 = load i32, ptr %19, align 8
  %21 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %20, i32 4) #10
  %22 = extractvalue { i32, i1 } %21, 1
  br i1 %22, label %23, label %25, !prof !8

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  store ptr null, ptr %24, align 4
  br label %496

25:                                               ; preds = %2
  %26 = extractvalue { i32, i1 } %21, 0
  %27 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #13
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  store ptr %27, ptr %28, align 4
  %29 = icmp eq ptr %27, null
  br i1 %29, label %496, label %30

30:                                               ; preds = %25
  %31 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 0
  store volatile ptr %31, ptr %31, align 4
  %32 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  %33 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 1
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 1, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 2
  store volatile ptr %35, ptr %35, align 4
  %36 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 2, i32 1
  store ptr %35, ptr %36, align 4
  %37 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 3
  store volatile ptr %37, ptr %37, align 4
  %38 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 3, i32 1
  store ptr %37, ptr %38, align 4
  %39 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 4
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 4, i32 1
  store ptr %39, ptr %40, align 4
  %41 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 5
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 5, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 6
  store volatile ptr %43, ptr %43, align 4
  %44 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 6, i32 1
  store ptr %43, ptr %44, align 4
  %45 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 7
  store volatile ptr %45, ptr %45, align 4
  %46 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 7, i32 1
  store ptr %45, ptr %46, align 4
  %47 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 8
  store volatile ptr %47, ptr %47, align 4
  %48 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 8, i32 1
  store ptr %47, ptr %48, align 4
  %49 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 9
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 9, i32 1
  store ptr %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 45
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %67, label %56

56:                                               ; preds = %64, %30
  %57 = phi i32 [ %65, %64 ], [ 0, %30 ]
  %58 = phi ptr [ %59, %64 ], [ %54, %30 ]
  %59 = load ptr, ptr %58, align 8
  %60 = getelementptr i8, ptr %58, i32 -32
  %61 = tail call i32 @__cond_resched() #10
  %62 = tail call fastcc i32 @erase_aeb(ptr noundef %0, ptr noundef %60, i1 noundef zeroext false)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %372

64:                                               ; preds = %56
  %65 = add i32 %57, 1
  %66 = icmp eq ptr %59, %53
  br i1 %66, label %67, label %56

67:                                               ; preds = %64, %30
  %68 = phi i32 [ 0, %30 ], [ %65, %64 ]
  %69 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 2
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %149, label %72

72:                                               ; preds = %136, %67
  %73 = phi ptr [ %147, %136 ], [ %70, %67 ]
  %74 = phi i32 [ %146, %136 ], [ %68, %67 ]
  %75 = tail call i32 @__cond_resched() #10
  %76 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %77 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %76, i32 noundef 3264) #10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %372, label %79

79:                                               ; preds = %72
  %80 = getelementptr i8, ptr %73, i32 -32
  %81 = getelementptr i8, ptr %73, i32 -28
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.ubi_wl_entry, ptr %77, i32 0, i32 2
  store i32 %82, ptr %83, align 8
  %84 = load i32, ptr %80, align 8
  %85 = getelementptr inbounds %struct.ubi_wl_entry, ptr %77, i32 0, i32 1
  store i32 %84, ptr %85, align 4
  %86 = icmp slt i32 %84, 0
  br i1 %86, label %87, label %92, !prof !8

87:                                               ; preds = %79
  %88 = tail call ptr @llvm.thread.pointer() #10
  %89 = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 52
  %90 = load i32, ptr %89, align 8
  %91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_init, i32 noundef 1798, i32 noundef %90) #11
  tail call void @dump_stack() #11
  br label %92

92:                                               ; preds = %87, %79
  %93 = load ptr, ptr %5, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %136, label %95

95:                                               ; preds = %130, %92
  %96 = phi ptr [ %132, %130 ], [ %93, %92 ]
  %97 = phi ptr [ %131, %130 ], [ %5, %92 ]
  %98 = load i32, ptr %85, align 4
  %99 = getelementptr inbounds %struct.ubi_wl_entry, ptr %96, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 2
  br label %130

104:                                              ; preds = %95
  %105 = icmp sgt i32 %98, %100
  br i1 %105, label %106, label %108

106:                                              ; preds = %104
  %107 = getelementptr inbounds %struct.rb_node, ptr %96, i32 0, i32 1
  br label %130

108:                                              ; preds = %104
  %109 = load i32, ptr %83, align 8
  %110 = getelementptr inbounds %struct.ubi_wl_entry, ptr %96, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %121, !prof !8

113:                                              ; preds = %108
  %114 = tail call ptr @llvm.thread.pointer() #10
  %115 = getelementptr inbounds %struct.task_struct, ptr %114, i32 0, i32 52
  %116 = load i32, ptr %115, align 8
  %117 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %116) #11
  tail call void @dump_stack() #11
  %118 = load i32, ptr %83, align 8
  %119 = load i32, ptr %110, align 4
  %120 = load ptr, ptr %97, align 4
  br label %121

121:                                              ; preds = %113, %108
  %122 = phi ptr [ %120, %113 ], [ %96, %108 ]
  %123 = phi i32 [ %119, %113 ], [ %111, %108 ]
  %124 = phi i32 [ %118, %113 ], [ %109, %108 ]
  %125 = icmp slt i32 %124, %123
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.rb_node, ptr %122, i32 0, i32 2
  br label %130

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.rb_node, ptr %122, i32 0, i32 1
  br label %130

130:                                              ; preds = %128, %126, %106, %102
  %131 = phi ptr [ %103, %102 ], [ %107, %106 ], [ %127, %126 ], [ %129, %128 ]
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %95

134:                                              ; preds = %130
  %135 = ptrtoint ptr %96 to i32
  br label %136

136:                                              ; preds = %134, %92
  %137 = phi i32 [ %135, %134 ], [ 0, %92 ]
  %138 = phi ptr [ %131, %134 ], [ %5, %92 ]
  store i32 %137, ptr %77, align 8
  %139 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 1
  store ptr null, ptr %139, align 4
  %140 = getelementptr inbounds %struct.rb_node, ptr %77, i32 0, i32 2
  store ptr null, ptr %140, align 8
  store ptr %77, ptr %138, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %77, ptr noundef %5) #10
  %141 = load i32, ptr %52, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %52, align 4
  %143 = load ptr, ptr %28, align 4
  %144 = load i32, ptr %83, align 8
  %145 = getelementptr ptr, ptr %143, i32 %144
  store ptr %77, ptr %145, align 4
  %146 = add i32 %74, 1
  %147 = load ptr, ptr %73, align 4
  %148 = icmp eq ptr %147, %69
  br i1 %148, label %149, label %72

149:                                              ; preds = %136, %67
  %150 = phi i32 [ %68, %67 ], [ %146, %136 ]
  %151 = tail call ptr @rb_first(ptr noundef %1) #10
  %152 = icmp eq ptr %151, null
  br i1 %152, label %280, label %153

153:                                              ; preds = %276, %149
  %154 = phi i32 [ %277, %276 ], [ %150, %149 ]
  %155 = phi ptr [ %278, %276 ], [ %151, %149 ]
  %156 = getelementptr i8, ptr %155, i32 12
  %157 = tail call ptr @rb_first(ptr noundef %156) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %276, label %159

159:                                              ; preds = %267, %153
  %160 = phi i32 [ %273, %267 ], [ %154, %153 ]
  %161 = phi ptr [ %274, %267 ], [ %157, %153 ]
  %162 = tail call i32 @__cond_resched() #10
  %163 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %164 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %163, i32 noundef 3264) #10
  %165 = icmp eq ptr %164, null
  br i1 %165, label %372, label %166

166:                                              ; preds = %159
  %167 = getelementptr i8, ptr %161, i32 -32
  %168 = getelementptr i8, ptr %161, i32 -28
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr inbounds %struct.ubi_wl_entry, ptr %164, i32 0, i32 2
  store i32 %169, ptr %170, align 8
  %171 = load i32, ptr %167, align 8
  %172 = getelementptr inbounds %struct.ubi_wl_entry, ptr %164, i32 0, i32 1
  store i32 %171, ptr %172, align 4
  %173 = load ptr, ptr %28, align 4
  %174 = getelementptr ptr, ptr %173, i32 %169
  store ptr %164, ptr %174, align 4
  %175 = getelementptr i8, ptr %161, i32 -16
  %176 = load i8, ptr %175, align 8
  %177 = and i8 %176, 1
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %179, label %223

179:                                              ; preds = %166
  %180 = load ptr, ptr %3, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %267, label %182

182:                                              ; preds = %217, %179
  %183 = phi ptr [ %219, %217 ], [ %180, %179 ]
  %184 = phi ptr [ %218, %217 ], [ %3, %179 ]
  %185 = load i32, ptr %172, align 4
  %186 = getelementptr inbounds %struct.ubi_wl_entry, ptr %183, i32 0, i32 1
  %187 = load i32, ptr %186, align 4
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.rb_node, ptr %183, i32 0, i32 2
  br label %217

191:                                              ; preds = %182
  %192 = icmp sgt i32 %185, %187
  br i1 %192, label %193, label %195

193:                                              ; preds = %191
  %194 = getelementptr inbounds %struct.rb_node, ptr %183, i32 0, i32 1
  br label %217

195:                                              ; preds = %191
  %196 = load i32, ptr %170, align 8
  %197 = getelementptr inbounds %struct.ubi_wl_entry, ptr %183, i32 0, i32 2
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %208, !prof !8

200:                                              ; preds = %195
  %201 = tail call ptr @llvm.thread.pointer() #10
  %202 = getelementptr inbounds %struct.task_struct, ptr %201, i32 0, i32 52
  %203 = load i32, ptr %202, align 8
  %204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %203) #11
  tail call void @dump_stack() #11
  %205 = load i32, ptr %170, align 8
  %206 = load i32, ptr %197, align 4
  %207 = load ptr, ptr %184, align 4
  br label %208

208:                                              ; preds = %200, %195
  %209 = phi ptr [ %207, %200 ], [ %183, %195 ]
  %210 = phi i32 [ %206, %200 ], [ %198, %195 ]
  %211 = phi i32 [ %205, %200 ], [ %196, %195 ]
  %212 = icmp slt i32 %211, %210
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 2
  br label %217

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 1
  br label %217

217:                                              ; preds = %215, %213, %193, %189
  %218 = phi ptr [ %190, %189 ], [ %194, %193 ], [ %214, %213 ], [ %216, %215 ]
  %219 = load ptr, ptr %218, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %221, label %182

221:                                              ; preds = %217
  %222 = ptrtoint ptr %183 to i32
  br label %267

223:                                              ; preds = %166
  %224 = load ptr, ptr %6, align 4
  %225 = icmp eq ptr %224, null
  br i1 %225, label %267, label %226

226:                                              ; preds = %261, %223
  %227 = phi ptr [ %263, %261 ], [ %224, %223 ]
  %228 = phi ptr [ %262, %261 ], [ %6, %223 ]
  %229 = load i32, ptr %172, align 4
  %230 = getelementptr inbounds %struct.ubi_wl_entry, ptr %227, i32 0, i32 1
  %231 = load i32, ptr %230, align 4
  %232 = icmp slt i32 %229, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.rb_node, ptr %227, i32 0, i32 2
  br label %261

235:                                              ; preds = %226
  %236 = icmp sgt i32 %229, %231
  br i1 %236, label %237, label %239

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.rb_node, ptr %227, i32 0, i32 1
  br label %261

239:                                              ; preds = %235
  %240 = load i32, ptr %170, align 8
  %241 = getelementptr inbounds %struct.ubi_wl_entry, ptr %227, i32 0, i32 2
  %242 = load i32, ptr %241, align 4
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %252, !prof !8

244:                                              ; preds = %239
  %245 = tail call ptr @llvm.thread.pointer() #10
  %246 = getelementptr inbounds %struct.task_struct, ptr %245, i32 0, i32 52
  %247 = load i32, ptr %246, align 8
  %248 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %247) #11
  tail call void @dump_stack() #11
  %249 = load i32, ptr %170, align 8
  %250 = load i32, ptr %241, align 4
  %251 = load ptr, ptr %228, align 4
  br label %252

252:                                              ; preds = %244, %239
  %253 = phi ptr [ %251, %244 ], [ %227, %239 ]
  %254 = phi i32 [ %250, %244 ], [ %242, %239 ]
  %255 = phi i32 [ %249, %244 ], [ %240, %239 ]
  %256 = icmp slt i32 %255, %254
  br i1 %256, label %257, label %259

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.rb_node, ptr %253, i32 0, i32 2
  br label %261

259:                                              ; preds = %252
  %260 = getelementptr inbounds %struct.rb_node, ptr %253, i32 0, i32 1
  br label %261

261:                                              ; preds = %259, %257, %237, %233
  %262 = phi ptr [ %234, %233 ], [ %238, %237 ], [ %258, %257 ], [ %260, %259 ]
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %265, label %226

265:                                              ; preds = %261
  %266 = ptrtoint ptr %227 to i32
  br label %267

267:                                              ; preds = %265, %223, %221, %179
  %268 = phi i32 [ %222, %221 ], [ 0, %179 ], [ %266, %265 ], [ 0, %223 ]
  %269 = phi ptr [ %218, %221 ], [ %3, %179 ], [ %262, %265 ], [ %6, %223 ]
  %270 = phi ptr [ %3, %221 ], [ %3, %179 ], [ %6, %265 ], [ %6, %223 ]
  store i32 %268, ptr %164, align 8
  %271 = getelementptr inbounds %struct.rb_node, ptr %164, i32 0, i32 1
  store ptr null, ptr %271, align 4
  %272 = getelementptr inbounds %struct.rb_node, ptr %164, i32 0, i32 2
  store ptr null, ptr %272, align 8
  store ptr %164, ptr %269, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %164, ptr noundef %270) #10
  %273 = add i32 %160, 1
  %274 = tail call ptr @rb_next(ptr noundef nonnull %161) #10
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %159

276:                                              ; preds = %267, %153
  %277 = phi i32 [ %154, %153 ], [ %273, %267 ]
  %278 = tail call ptr @rb_next(ptr noundef nonnull %155) #10
  %279 = icmp eq ptr %278, null
  br i1 %279, label %280, label %153

280:                                              ; preds = %276, %149
  %281 = phi i32 [ %150, %149 ], [ %277, %276 ]
  %282 = getelementptr inbounds %struct.ubi_attach_info, ptr %1, i32 0, i32 5
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, %282
  br i1 %284, label %346, label %285

285:                                              ; preds = %280
  %286 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 26
  br label %287

287:                                              ; preds = %342, %285
  %288 = phi ptr [ %283, %285 ], [ %344, %342 ]
  %289 = phi i32 [ %281, %285 ], [ %343, %342 ]
  %290 = getelementptr i8, ptr %288, i32 -32
  %291 = tail call i32 @__cond_resched() #10
  %292 = getelementptr i8, ptr %288, i32 -28
  %293 = load i32, ptr %292, align 4
  %294 = load ptr, ptr %286, align 8
  %295 = icmp eq ptr %294, null
  br i1 %295, label %329, label %296

296:                                              ; preds = %287
  %297 = getelementptr inbounds %struct.ubi_fastmap_layout, ptr %294, i32 0, i32 2
  %298 = load i32, ptr %297, align 4
  %299 = icmp sgt i32 %298, 0
  br i1 %299, label %303, label %329

300:                                              ; preds = %303
  %301 = add nuw nsw i32 %304, 1
  %302 = icmp eq i32 %301, %298
  br i1 %302, label %329, label %303

303:                                              ; preds = %300, %296
  %304 = phi i32 [ %301, %300 ], [ 0, %296 ]
  %305 = getelementptr [32 x ptr], ptr %294, i32 0, i32 %304
  %306 = load ptr, ptr %305, align 4
  %307 = getelementptr inbounds %struct.ubi_wl_entry, ptr %306, i32 0, i32 2
  %308 = load i32, ptr %307, align 4
  %309 = icmp eq i32 %308, %293
  br i1 %309, label %310, label %300

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.ubi_wl_entry, ptr %306, i32 0, i32 2
  %312 = icmp eq ptr %306, null
  br i1 %312, label %329, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr %28, align 4
  %315 = getelementptr ptr, ptr %314, i32 %293
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %325, label %318, !prof !9

318:                                              ; preds = %313
  %319 = tail call ptr @llvm.thread.pointer() #10
  %320 = getelementptr inbounds %struct.task_struct, ptr %319, i32 0, i32 52
  %321 = load i32, ptr %320, align 8
  %322 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_init, i32 noundef 1842, i32 noundef %321) #11
  tail call void @dump_stack() #11
  %323 = load ptr, ptr %28, align 4
  %324 = load i32, ptr %311, align 4
  br label %325

325:                                              ; preds = %318, %313
  %326 = phi i32 [ %324, %318 ], [ %293, %313 ]
  %327 = phi ptr [ %323, %318 ], [ %314, %313 ]
  %328 = getelementptr ptr, ptr %327, i32 %326
  store ptr %306, ptr %328, align 4
  br label %340

329:                                              ; preds = %310, %300, %296, %287
  %330 = load ptr, ptr %28, align 4
  %331 = getelementptr ptr, ptr %330, i32 %293
  %332 = load ptr, ptr %331, align 4
  %333 = icmp eq ptr %332, null
  br i1 %333, label %334, label %342

334:                                              ; preds = %329
  %335 = getelementptr i8, ptr %288, i32 -24
  %336 = load i32, ptr %335, align 8
  %337 = icmp eq i32 %336, 2147479552
  %338 = tail call fastcc i32 @erase_aeb(ptr noundef %0, ptr noundef %290, i1 noundef zeroext %337)
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %372

340:                                              ; preds = %334, %325
  %341 = add i32 %289, 1
  br label %342

342:                                              ; preds = %340, %329
  %343 = phi i32 [ %341, %340 ], [ %289, %329 ]
  %344 = load ptr, ptr %288, align 4
  %345 = icmp eq ptr %344, %282
  br i1 %345, label %346, label %287

346:                                              ; preds = %342, %280
  %347 = phi i32 [ %281, %280 ], [ %343, %342 ]
  %348 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  %349 = load i32, ptr %348, align 4
  %350 = icmp eq i32 %349, %347
  br i1 %350, label %356, label %351, !prof !9

351:                                              ; preds = %346
  %352 = tail call ptr @llvm.thread.pointer() #10
  %353 = getelementptr inbounds %struct.task_struct, ptr %352, i32 0, i32 52
  %354 = load i32, ptr %353, align 8
  %355 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_init, i32 noundef 1878, i32 noundef %354) #11
  tail call void @dump_stack() #11
  br label %356

356:                                              ; preds = %351, %346
  %357 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %358 = load i32, ptr %357, align 8
  %359 = icmp slt i32 %358, 1
  br i1 %359, label %360, label %365

360:                                              ; preds = %356
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %358, i32 noundef 1) #10
  %361 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 64
  %362 = load i32, ptr %361, align 8
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %372, label %364

364:                                              ; preds = %360
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %362) #10
  br label %372

365:                                              ; preds = %356
  %366 = add nsw i32 %358, -1
  store i32 %366, ptr %357, align 8
  %367 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 9
  %368 = load i32, ptr %367, align 4
  %369 = add i32 %368, 1
  store i32 %369, ptr %367, align 4
  %370 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 0)
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %496, label %372

372:                                              ; preds = %365, %364, %360, %334, %159, %72, %56
  %373 = phi i32 [ %370, %365 ], [ -28, %364 ], [ -28, %360 ], [ %338, %334 ], [ -12, %159 ], [ -12, %72 ], [ %62, %56 ]
  %374 = load volatile ptr, ptr %13, align 4
  %375 = icmp eq ptr %374, %13
  br i1 %375, label %398, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  br label %378

378:                                              ; preds = %395, %376
  %379 = phi ptr [ %374, %376 ], [ %396, %395 ]
  %380 = getelementptr inbounds %struct.list_head, ptr %379, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  %382 = load ptr, ptr %379, align 4
  %383 = getelementptr inbounds %struct.list_head, ptr %382, i32 0, i32 1
  store ptr %381, ptr %383, align 4
  store volatile ptr %382, ptr %381, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %379, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %380, align 4
  %384 = getelementptr inbounds %struct.ubi_work, ptr %379, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = tail call i32 %385(ptr noundef %0, ptr noundef %379, i32 noundef 1) #10
  %387 = load i32, ptr %377, align 4
  %388 = add i32 %387, -1
  store i32 %388, ptr %377, align 4
  %389 = icmp slt i32 %388, 0
  br i1 %389, label %390, label %395, !prof !8

390:                                              ; preds = %378
  %391 = tail call ptr @llvm.thread.pointer() #10
  %392 = getelementptr inbounds %struct.task_struct, ptr %391, i32 0, i32 52
  %393 = load i32, ptr %392, align 8
  %394 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.shutdown_work, i32 noundef 1698, i32 noundef %393) #11
  tail call void @dump_stack() #11
  br label %395

395:                                              ; preds = %390, %378
  %396 = load volatile ptr, ptr %13, align 4
  %397 = icmp eq ptr %396, %13
  br i1 %397, label %398, label %378

398:                                              ; preds = %395, %372
  %399 = load ptr, ptr %3, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %430, label %401

401:                                              ; preds = %427, %398
  %402 = phi ptr [ %428, %427 ], [ %399, %398 ]
  %403 = getelementptr inbounds %struct.rb_node, ptr %402, i32 0, i32 2
  %404 = load ptr, ptr %403, align 4
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %427

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.rb_node, ptr %402, i32 0, i32 1
  %408 = load ptr, ptr %407, align 4
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %427

410:                                              ; preds = %406
  %411 = load i32, ptr %402, align 4
  %412 = and i32 %411, -4
  %413 = inttoptr i32 %412 to ptr
  %414 = icmp eq i32 %412, 0
  br i1 %414, label %421, label %415

415:                                              ; preds = %410
  %416 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 2
  %417 = load ptr, ptr %416, align 4
  %418 = icmp eq ptr %417, %402
  %419 = getelementptr inbounds %struct.rb_node, ptr %413, i32 0, i32 1
  %420 = select i1 %418, ptr %416, ptr %419
  store ptr null, ptr %420, align 4
  br label %421

421:                                              ; preds = %415, %410
  %422 = load ptr, ptr %28, align 4
  %423 = getelementptr inbounds %struct.ubi_wl_entry, ptr %402, i32 0, i32 2
  %424 = load i32, ptr %423, align 4
  %425 = getelementptr ptr, ptr %422, i32 %424
  store ptr null, ptr %425, align 4
  %426 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %426, ptr noundef nonnull %402) #10
  br label %427

427:                                              ; preds = %421, %406, %401
  %428 = phi ptr [ %413, %421 ], [ %404, %401 ], [ %408, %406 ]
  %429 = icmp eq ptr %428, null
  br i1 %429, label %430, label %401

430:                                              ; preds = %427, %398
  %431 = load ptr, ptr %5, align 4
  %432 = icmp eq ptr %431, null
  br i1 %432, label %462, label %433

433:                                              ; preds = %459, %430
  %434 = phi ptr [ %460, %459 ], [ %431, %430 ]
  %435 = getelementptr inbounds %struct.rb_node, ptr %434, i32 0, i32 2
  %436 = load ptr, ptr %435, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %459

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.rb_node, ptr %434, i32 0, i32 1
  %440 = load ptr, ptr %439, align 4
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %459

442:                                              ; preds = %438
  %443 = load i32, ptr %434, align 4
  %444 = and i32 %443, -4
  %445 = inttoptr i32 %444 to ptr
  %446 = icmp eq i32 %444, 0
  br i1 %446, label %453, label %447

447:                                              ; preds = %442
  %448 = getelementptr inbounds %struct.rb_node, ptr %445, i32 0, i32 2
  %449 = load ptr, ptr %448, align 4
  %450 = icmp eq ptr %449, %434
  %451 = getelementptr inbounds %struct.rb_node, ptr %445, i32 0, i32 1
  %452 = select i1 %450, ptr %448, ptr %451
  store ptr null, ptr %452, align 4
  br label %453

453:                                              ; preds = %447, %442
  %454 = load ptr, ptr %28, align 4
  %455 = getelementptr inbounds %struct.ubi_wl_entry, ptr %434, i32 0, i32 2
  %456 = load i32, ptr %455, align 4
  %457 = getelementptr ptr, ptr %454, i32 %456
  store ptr null, ptr %457, align 4
  %458 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %458, ptr noundef nonnull %434) #10
  br label %459

459:                                              ; preds = %453, %438, %433
  %460 = phi ptr [ %445, %453 ], [ %436, %433 ], [ %440, %438 ]
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %433

462:                                              ; preds = %459, %430
  %463 = load ptr, ptr %6, align 4
  %464 = icmp eq ptr %463, null
  br i1 %464, label %494, label %465

465:                                              ; preds = %491, %462
  %466 = phi ptr [ %492, %491 ], [ %463, %462 ]
  %467 = getelementptr inbounds %struct.rb_node, ptr %466, i32 0, i32 2
  %468 = load ptr, ptr %467, align 4
  %469 = icmp eq ptr %468, null
  br i1 %469, label %470, label %491

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.rb_node, ptr %466, i32 0, i32 1
  %472 = load ptr, ptr %471, align 4
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %491

474:                                              ; preds = %470
  %475 = load i32, ptr %466, align 4
  %476 = and i32 %475, -4
  %477 = inttoptr i32 %476 to ptr
  %478 = icmp eq i32 %476, 0
  br i1 %478, label %485, label %479

479:                                              ; preds = %474
  %480 = getelementptr inbounds %struct.rb_node, ptr %477, i32 0, i32 2
  %481 = load ptr, ptr %480, align 4
  %482 = icmp eq ptr %481, %466
  %483 = getelementptr inbounds %struct.rb_node, ptr %477, i32 0, i32 1
  %484 = select i1 %482, ptr %480, ptr %483
  store ptr null, ptr %484, align 4
  br label %485

485:                                              ; preds = %479, %474
  %486 = load ptr, ptr %28, align 4
  %487 = getelementptr inbounds %struct.ubi_wl_entry, ptr %466, i32 0, i32 2
  %488 = load i32, ptr %487, align 4
  %489 = getelementptr ptr, ptr %486, i32 %488
  store ptr null, ptr %489, align 4
  %490 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %490, ptr noundef nonnull %466) #10
  br label %491

491:                                              ; preds = %485, %470, %465
  %492 = phi ptr [ %477, %485 ], [ %468, %465 ], [ %472, %470 ]
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %465

494:                                              ; preds = %491, %462
  %495 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %495) #10
  br label %496

496:                                              ; preds = %494, %365, %25, %23
  %497 = phi i32 [ %373, %494 ], [ -12, %25 ], [ 0, %365 ], [ -12, %23 ]
  ret i32 %497
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @erase_aeb(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = load ptr, ptr @ubi_wl_entry_slab, align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 3264) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %93, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubi_wl_entry, ptr %5, i32 0, i32 2
  store i32 %9, ptr %10, align 8
  %11 = load i32, ptr %1, align 8
  %12 = getelementptr inbounds %struct.ubi_wl_entry, ptr %5, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 %9
  store ptr %5, ptr %15, align 4
  br i1 %2, label %16, label %72

16:                                               ; preds = %7
  %17 = tail call fastcc i32 @sync_erase(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %87

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %23

23:                                               ; preds = %58, %19
  %24 = phi ptr [ %60, %58 ], [ %21, %19 ]
  %25 = phi ptr [ %59, %58 ], [ %20, %19 ]
  %26 = load i32, ptr %12, align 4
  %27 = getelementptr inbounds %struct.ubi_wl_entry, ptr %24, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 2
  br label %58

32:                                               ; preds = %23
  %33 = icmp sgt i32 %26, %28
  br i1 %33, label %34, label %36

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.rb_node, ptr %24, i32 0, i32 1
  br label %58

36:                                               ; preds = %32
  %37 = load i32, ptr %10, align 8
  %38 = getelementptr inbounds %struct.ubi_wl_entry, ptr %24, i32 0, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %49, !prof !8

41:                                               ; preds = %36
  %42 = tail call ptr @llvm.thread.pointer() #10
  %43 = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 52
  %44 = load i32, ptr %43, align 8
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %44) #11
  tail call void @dump_stack() #11
  %46 = load i32, ptr %10, align 8
  %47 = load i32, ptr %38, align 4
  %48 = load ptr, ptr %25, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = phi ptr [ %48, %41 ], [ %24, %36 ]
  %51 = phi i32 [ %47, %41 ], [ %39, %36 ]
  %52 = phi i32 [ %46, %41 ], [ %37, %36 ]
  %53 = icmp slt i32 %52, %51
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 2
  br label %58

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.rb_node, ptr %50, i32 0, i32 1
  br label %58

58:                                               ; preds = %56, %54, %34, %30
  %59 = phi ptr [ %31, %30 ], [ %35, %34 ], [ %55, %54 ], [ %57, %56 ]
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %23

62:                                               ; preds = %58
  %63 = ptrtoint ptr %24 to i32
  br label %64

64:                                               ; preds = %62, %19
  %65 = phi i32 [ %63, %62 ], [ 0, %19 ]
  %66 = phi ptr [ %59, %62 ], [ %20, %19 ]
  store i32 %65, ptr %5, align 8
  %67 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 1
  store ptr null, ptr %67, align 4
  %68 = getelementptr inbounds %struct.rb_node, ptr %5, i32 0, i32 2
  store ptr null, ptr %68, align 8
  store ptr %5, ptr %66, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %5, ptr noundef %20) #10
  %69 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %69, align 4
  br label %93

72:                                               ; preds = %7
  %73 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 2
  %74 = load i32, ptr %73, align 8
  %75 = getelementptr inbounds %struct.ubi_ainf_peb, ptr %1, i32 0, i32 3
  %76 = load i32, ptr %75, align 4
  %77 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %78 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %77, i32 noundef 3136, i32 noundef 28) #12
  %79 = icmp eq ptr %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.ubi_work, ptr %78, i32 0, i32 1
  store ptr @erase_worker, ptr %81, align 8
  %82 = getelementptr inbounds %struct.ubi_work, ptr %78, i32 0, i32 2
  store ptr %5, ptr %82, align 4
  %83 = getelementptr inbounds %struct.ubi_work, ptr %78, i32 0, i32 3
  store i32 %74, ptr %83, align 8
  %84 = getelementptr inbounds %struct.ubi_work, ptr %78, i32 0, i32 4
  store i32 %76, ptr %84, align 4
  %85 = getelementptr inbounds %struct.ubi_work, ptr %78, i32 0, i32 5
  store i32 0, ptr %85, align 8
  %86 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 48
  tail call void @down_read(ptr noundef %86) #10
  tail call fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef nonnull %78) #10
  tail call void @up_read(ptr noundef %86) #10
  br label %93

87:                                               ; preds = %72, %16
  %88 = phi i32 [ %17, %16 ], [ -12, %72 ]
  %89 = load ptr, ptr %13, align 4
  %90 = load i32, ptr %10, align 8
  %91 = getelementptr ptr, ptr %89, i32 %90
  store ptr null, ptr %91, align 4
  %92 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %92, ptr noundef nonnull %5) #10
  br label %93

93:                                               ; preds = %87, %80, %64, %3
  %94 = phi i32 [ %88, %87 ], [ -12, %3 ], [ 0, %64 ], [ 0, %80 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ubi_wl_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  br label %7

7:                                                ; preds = %24, %5
  %8 = phi ptr [ %3, %5 ], [ %25, %24 ]
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %9, align 4
  %13 = getelementptr inbounds %struct.ubi_work, ptr %8, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %0, ptr noundef %8, i32 noundef 1) #10
  %16 = load i32, ptr %6, align 4
  %17 = add i32 %16, -1
  store i32 %17, ptr %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24, !prof !8

19:                                               ; preds = %7
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.task_struct, ptr %20, i32 0, i32 52
  %22 = load i32, ptr %21, align 8
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.shutdown_work, i32 noundef 1698, i32 noundef %22) #11
  tail call void @dump_stack() #11
  br label %24

24:                                               ; preds = %19, %7
  %25 = load volatile ptr, ptr %2, align 4
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %7

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  br label %29

29:                                               ; preds = %46, %27
  %30 = phi i32 [ 0, %27 ], [ %47, %46 ]
  %31 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %46, label %34

34:                                               ; preds = %34, %29
  %35 = phi ptr [ %36, %34 ], [ %32, %29 ]
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  store volatile ptr %36, ptr %38, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %35, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %37, align 4
  %40 = load ptr, ptr %28, align 4
  %41 = getelementptr inbounds %struct.ubi_wl_entry, ptr %35, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr ptr, ptr %40, i32 %42
  store ptr null, ptr %43, align 4
  %44 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %44, ptr noundef %35) #10
  %45 = icmp eq ptr %36, %31
  br i1 %45, label %46, label %34

46:                                               ; preds = %34, %29
  %47 = add nuw nsw i32 %30, 1
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %29

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %82, label %53

53:                                               ; preds = %79, %49
  %54 = phi ptr [ %80, %79 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.rb_node, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %79

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.rb_node, ptr %54, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %79

62:                                               ; preds = %58
  %63 = load i32, ptr %54, align 4
  %64 = and i32 %63, -4
  %65 = inttoptr i32 %64 to ptr
  %66 = icmp eq i32 %64, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %54
  %71 = getelementptr inbounds %struct.rb_node, ptr %65, i32 0, i32 1
  %72 = select i1 %70, ptr %68, ptr %71
  store ptr null, ptr %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load ptr, ptr %28, align 4
  %75 = getelementptr inbounds %struct.ubi_wl_entry, ptr %54, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr ptr, ptr %74, i32 %76
  store ptr null, ptr %77, align 4
  %78 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %78, ptr noundef nonnull %54) #10
  br label %79

79:                                               ; preds = %73, %58, %53
  %80 = phi ptr [ %65, %73 ], [ %56, %53 ], [ %60, %58 ]
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %53

82:                                               ; preds = %79, %49
  %83 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %115, label %86

86:                                               ; preds = %112, %82
  %87 = phi ptr [ %113, %112 ], [ %84, %82 ]
  %88 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.rb_node, ptr %87, i32 0, i32 1
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i32, ptr %87, align 4
  %97 = and i32 %96, -4
  %98 = inttoptr i32 %97 to ptr
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %87
  %104 = getelementptr inbounds %struct.rb_node, ptr %98, i32 0, i32 1
  %105 = select i1 %103, ptr %101, ptr %104
  store ptr null, ptr %105, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load ptr, ptr %28, align 4
  %108 = getelementptr inbounds %struct.ubi_wl_entry, ptr %87, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr ptr, ptr %107, i32 %109
  store ptr null, ptr %110, align 4
  %111 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %111, ptr noundef nonnull %87) #10
  br label %112

112:                                              ; preds = %106, %91, %86
  %113 = phi ptr [ %98, %106 ], [ %89, %86 ], [ %93, %91 ]
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %86

115:                                              ; preds = %112, %82
  %116 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %148, label %119

119:                                              ; preds = %145, %115
  %120 = phi ptr [ %146, %145 ], [ %117, %115 ]
  %121 = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 2
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %145

124:                                              ; preds = %119
  %125 = getelementptr inbounds %struct.rb_node, ptr %120, i32 0, i32 1
  %126 = load ptr, ptr %125, align 4
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %145

128:                                              ; preds = %124
  %129 = load i32, ptr %120, align 4
  %130 = and i32 %129, -4
  %131 = inttoptr i32 %130 to ptr
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %139, label %133

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.rb_node, ptr %131, i32 0, i32 2
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, %120
  %137 = getelementptr inbounds %struct.rb_node, ptr %131, i32 0, i32 1
  %138 = select i1 %136, ptr %134, ptr %137
  store ptr null, ptr %138, align 4
  br label %139

139:                                              ; preds = %133, %128
  %140 = load ptr, ptr %28, align 4
  %141 = getelementptr inbounds %struct.ubi_wl_entry, ptr %120, i32 0, i32 2
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr ptr, ptr %140, i32 %142
  store ptr null, ptr %143, align 4
  %144 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %144, ptr noundef nonnull %120) #10
  br label %145

145:                                              ; preds = %139, %124, %119
  %146 = phi ptr [ %131, %139 ], [ %122, %119 ], [ %126, %124 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %119

148:                                              ; preds = %145, %115
  %149 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %181, label %152

152:                                              ; preds = %178, %148
  %153 = phi ptr [ %179, %178 ], [ %150, %148 ]
  %154 = getelementptr inbounds %struct.rb_node, ptr %153, i32 0, i32 2
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %178

157:                                              ; preds = %152
  %158 = getelementptr inbounds %struct.rb_node, ptr %153, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %178

161:                                              ; preds = %157
  %162 = load i32, ptr %153, align 4
  %163 = and i32 %162, -4
  %164 = inttoptr i32 %163 to ptr
  %165 = icmp eq i32 %163, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.rb_node, ptr %164, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, %153
  %170 = getelementptr inbounds %struct.rb_node, ptr %164, i32 0, i32 1
  %171 = select i1 %169, ptr %167, ptr %170
  store ptr null, ptr %171, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load ptr, ptr %28, align 4
  %174 = getelementptr inbounds %struct.ubi_wl_entry, ptr %153, i32 0, i32 2
  %175 = load i32, ptr %174, align 4
  %176 = getelementptr ptr, ptr %173, i32 %175
  store ptr null, ptr %176, align 4
  %177 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %177, ptr noundef nonnull %153) #10
  br label %178

178:                                              ; preds = %172, %157, %152
  %179 = phi ptr [ %164, %172 ], [ %155, %152 ], [ %159, %157 ]
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %152

181:                                              ; preds = %178, %148
  %182 = load ptr, ptr %28, align 4
  tail call void @kfree(ptr noundef %182) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_wl_get_peb(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 29
  tail call void @down_read(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %45

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  br label %9

9:                                                ; preds = %40, %7
  %10 = load i32, ptr %8, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  %13 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %21, label %16, !prof !9

16:                                               ; preds = %12
  %17 = tail call ptr @llvm.thread.pointer() #10
  %18 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 52
  %19 = load i32, ptr %18, align 8
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_wl_get_peb, i32 noundef 2099, i32 noundef %19) #11
  tail call void @dump_stack() #11
  br label %21

21:                                               ; preds = %16, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %22 = load i16, ptr %3, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %113

24:                                               ; preds = %32, %9
  %25 = load i32, ptr %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %28 = load i16, ptr %3, align 4
  %29 = add i16 %28, 1
  store i16 %29, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %30 = tail call fastcc i32 @do_work(ptr noundef %0) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load ptr, ptr %4, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %24, label %40

35:                                               ; preds = %27
  %36 = icmp slt i32 %30, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %38 = load i16, ptr %3, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %113

40:                                               ; preds = %35, %32, %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %41 = load i16, ptr %3, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @up_read(ptr noundef %2) #10
  tail call void @down_read(ptr noundef %2) #10
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %43 = load ptr, ptr %4, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %9, label %45

45:                                               ; preds = %40, %1
  %46 = tail call ptr @rb_first(ptr noundef %4) #10
  %47 = tail call ptr @rb_last(ptr noundef %4) #10
  %48 = getelementptr inbounds %struct.ubi_wl_entry, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.ubi_wl_entry, ptr %46, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = sub i32 %49, %51
  %53 = icmp slt i32 %52, 8192
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load ptr, ptr %4, align 4
  br label %75

56:                                               ; preds = %45
  %57 = tail call ptr @rb_first(ptr noundef %4) #10
  %58 = getelementptr inbounds %struct.ubi_wl_entry, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, 4096
  %61 = load ptr, ptr %4, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %63, %56
  %64 = phi ptr [ %73, %63 ], [ %61, %56 ]
  %65 = phi ptr [ %71, %63 ], [ %57, %56 ]
  %66 = getelementptr inbounds %struct.ubi_wl_entry, ptr %64, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp slt i32 %67, %60
  %69 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 2
  %70 = getelementptr inbounds %struct.rb_node, ptr %64, i32 0, i32 1
  %71 = select i1 %68, ptr %64, ptr %65
  %72 = select i1 %68, ptr %70, ptr %69
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %63

75:                                               ; preds = %63, %56, %54
  %76 = phi ptr [ %55, %54 ], [ %57, %56 ], [ %71, %63 ]
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.13) #10
  br label %83

79:                                               ; preds = %75
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef nonnull %76, ptr noundef %4) #10
  tail call void @rb_erase(ptr noundef nonnull %76, ptr noundef %4) #10
  %80 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, -1
  store i32 %82, ptr %80, align 4
  br label %83

83:                                               ; preds = %79, %78
  %84 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 45
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, -1
  %87 = icmp slt i32 %86, 0
  %88 = select i1 %87, i32 9, i32 %86
  %89 = icmp ugt i32 %88, 9
  br i1 %89, label %90, label %95, !prof !8

90:                                               ; preds = %83
  %91 = tail call ptr @llvm.thread.pointer() #10
  %92 = getelementptr inbounds %struct.task_struct, ptr %91, i32 0, i32 52
  %93 = load i32, ptr %92, align 8
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prot_queue_add, i32 noundef 304, i32 noundef %93) #11
  tail call void @dump_stack() #11
  br label %95

95:                                               ; preds = %90, %83
  %96 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %88
  %97 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %88, i32 1
  %98 = load ptr, ptr %97, align 4
  store ptr %76, ptr %97, align 4
  store ptr %96, ptr %76, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  store ptr %98, ptr %99, align 4
  store volatile ptr %76, ptr %98, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %100 = load i16, ptr %3, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %102 = getelementptr inbounds %struct.ubi_wl_entry, ptr %76, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 75
  %105 = load i32, ptr %104, align 4
  %106 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 61
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 %107, %105
  %109 = tail call i32 @ubi_self_check_all_ff(ptr noundef %0, i32 noundef %103, i32 noundef %105, i32 noundef %108) #10
  %110 = icmp eq i32 %109, 0
  %111 = load i32, ptr %102, align 4
  br i1 %110, label %113, label %112

112:                                              ; preds = %95
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %111) #10
  br label %113

113:                                              ; preds = %112, %95, %37, %21
  %114 = phi i32 [ %109, %112 ], [ -28, %21 ], [ %30, %37 ], [ %111, %95 ]
  ret i32 %114
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_self_check_all_ff(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @erase_worker(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %1) #10
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ubi_wl_entry, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr ptr, ptr %9, i32 %11
  store ptr null, ptr %12, align 4
  %13 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %7) #10
  br label %16

14:                                               ; preds = %3
  %15 = tail call fastcc i32 @__erase_worker(ptr noundef %0, ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__schedule_ubi_work(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 54, i32 1
  %6 = load ptr, ptr %5, align 4
  store ptr %1, ptr %5, align 4
  store ptr %4, ptr %1, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  store ptr %6, ptr %7, align 4
  store volatile ptr %1, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 55
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17, !prof !8

11:                                               ; preds = %2
  %12 = tail call ptr @llvm.thread.pointer() #10
  %13 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 52
  %14 = load i32, ptr %13, align 8
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.__schedule_ubi_work, i32 noundef 546, i32 noundef %14) #11
  tail call void @dump_stack() #11
  %16 = load i32, ptr %8, align 4
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i32 [ %9, %2 ], [ %16, %11 ]
  %19 = add i32 %18, 1
  store i32 %19, ptr %8, align 4
  %20 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 57
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %25 = load i8, ptr %24, align 4
  %26 = and i8 %25, 8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 56
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @wake_up_process(ptr noundef %30) #10
  br label %32

32:                                               ; preds = %28, %23, %17
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %33 = load i16, ptr %3, align 4
  %34 = add i16 %33, 1
  store i16 %34, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__erase_worker(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ubi_wl_entry, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.ubi_work, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call fastcc i32 @sync_erase(ptr noundef %0, ptr noundef %4, i32 noundef %12)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %183

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 25
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 37
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, ptr %5, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  store ptr %4, ptr %21, align 8
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 38
  store i32 0, ptr %28, align 4
  br label %84

29:                                               ; preds = %24, %20, %15
  %30 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %76, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.ubi_wl_entry, ptr %4, i32 0, i32 1
  br label %35

35:                                               ; preds = %70, %33
  %36 = phi ptr [ %31, %33 ], [ %72, %70 ]
  %37 = phi ptr [ %30, %33 ], [ %71, %70 ]
  %38 = load i32, ptr %34, align 4
  %39 = getelementptr inbounds %struct.ubi_wl_entry, ptr %36, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 2
  br label %70

44:                                               ; preds = %35
  %45 = icmp sgt i32 %38, %40
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.rb_node, ptr %36, i32 0, i32 1
  br label %70

48:                                               ; preds = %44
  %49 = load i32, ptr %5, align 4
  %50 = getelementptr inbounds %struct.ubi_wl_entry, ptr %36, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %61, !prof !8

53:                                               ; preds = %48
  %54 = tail call ptr @llvm.thread.pointer() #10
  %55 = getelementptr inbounds %struct.task_struct, ptr %54, i32 0, i32 52
  %56 = load i32, ptr %55, align 8
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %56) #11
  tail call void @dump_stack() #11
  %58 = load i32, ptr %5, align 4
  %59 = load i32, ptr %50, align 4
  %60 = load ptr, ptr %37, align 4
  br label %61

61:                                               ; preds = %53, %48
  %62 = phi ptr [ %60, %53 ], [ %36, %48 ]
  %63 = phi i32 [ %59, %53 ], [ %51, %48 ]
  %64 = phi i32 [ %58, %53 ], [ %49, %48 ]
  %65 = icmp slt i32 %64, %63
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 2
  br label %70

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.rb_node, ptr %62, i32 0, i32 1
  br label %70

70:                                               ; preds = %68, %66, %46, %42
  %71 = phi ptr [ %43, %42 ], [ %47, %46 ], [ %67, %66 ], [ %69, %68 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %35

74:                                               ; preds = %70
  %75 = ptrtoint ptr %36 to i32
  br label %76

76:                                               ; preds = %74, %29
  %77 = phi i32 [ %75, %74 ], [ 0, %29 ]
  %78 = phi ptr [ %71, %74 ], [ %30, %29 ]
  store i32 %77, ptr %4, align 4
  %79 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  store ptr null, ptr %80, align 4
  store ptr %4, ptr %78, align 4
  tail call void @rb_insert_color(ptr noundef %4, ptr noundef %30) #10
  %81 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, 1
  store i32 %83, ptr %81, align 4
  br label %84

84:                                               ; preds = %76, %27
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %85 = load i16, ptr %16, align 4
  %86 = add i16 %85, 1
  store i16 %86, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @_raw_spin_lock(ptr noundef %16) #10
  %87 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 45
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %88
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %168, label %92

92:                                               ; preds = %84
  %93 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  br label %102

94:                                               ; preds = %155
  %95 = add nuw nsw i32 %104, 1
  %96 = load i32, ptr %87, align 4
  %97 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %96
  %98 = icmp eq ptr %105, %97
  br i1 %98, label %168, label %99

99:                                               ; preds = %160, %94
  %100 = phi ptr [ %105, %94 ], [ %166, %160 ]
  %101 = phi i32 [ %95, %94 ], [ 0, %160 ]
  br label %102

102:                                              ; preds = %99, %92
  %103 = phi ptr [ %90, %92 ], [ %100, %99 ]
  %104 = phi i32 [ 0, %92 ], [ %101, %99 ]
  %105 = load ptr, ptr %103, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %105, i32 0, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %105, ptr %107, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %103, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %106, align 4
  %109 = load ptr, ptr %93, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %155, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.ubi_wl_entry, ptr %103, i32 0, i32 1
  %113 = getelementptr inbounds %struct.ubi_wl_entry, ptr %103, i32 0, i32 2
  br label %114

114:                                              ; preds = %149, %111
  %115 = phi ptr [ %109, %111 ], [ %151, %149 ]
  %116 = phi ptr [ %93, %111 ], [ %150, %149 ]
  %117 = load i32, ptr %112, align 4
  %118 = getelementptr inbounds %struct.ubi_wl_entry, ptr %115, i32 0, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 2
  br label %149

123:                                              ; preds = %114
  %124 = icmp sgt i32 %117, %119
  br i1 %124, label %125, label %127

125:                                              ; preds = %123
  %126 = getelementptr inbounds %struct.rb_node, ptr %115, i32 0, i32 1
  br label %149

127:                                              ; preds = %123
  %128 = load i32, ptr %113, align 4
  %129 = getelementptr inbounds %struct.ubi_wl_entry, ptr %115, i32 0, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = icmp eq i32 %128, %130
  br i1 %131, label %132, label %140, !prof !8

132:                                              ; preds = %127
  %133 = tail call ptr @llvm.thread.pointer() #10
  %134 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 52
  %135 = load i32, ptr %134, align 8
  %136 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %135) #11
  tail call void @dump_stack() #11
  %137 = load i32, ptr %113, align 4
  %138 = load i32, ptr %129, align 4
  %139 = load ptr, ptr %116, align 4
  br label %140

140:                                              ; preds = %132, %127
  %141 = phi ptr [ %139, %132 ], [ %115, %127 ]
  %142 = phi i32 [ %138, %132 ], [ %130, %127 ]
  %143 = phi i32 [ %137, %132 ], [ %128, %127 ]
  %144 = icmp slt i32 %143, %142
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 2
  br label %149

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.rb_node, ptr %141, i32 0, i32 1
  br label %149

149:                                              ; preds = %147, %145, %125, %121
  %150 = phi ptr [ %122, %121 ], [ %126, %125 ], [ %146, %145 ], [ %148, %147 ]
  %151 = load ptr, ptr %150, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %114

153:                                              ; preds = %149
  %154 = ptrtoint ptr %115 to i32
  br label %155

155:                                              ; preds = %153, %102
  %156 = phi i32 [ %154, %153 ], [ 0, %102 ]
  %157 = phi ptr [ %150, %153 ], [ %93, %102 ]
  store i32 %156, ptr %103, align 4
  store ptr null, ptr %106, align 4
  %158 = getelementptr inbounds %struct.rb_node, ptr %103, i32 0, i32 2
  store ptr null, ptr %158, align 4
  store ptr %103, ptr %157, align 4
  tail call void @rb_insert_color(ptr noundef %103, ptr noundef %93) #10
  %159 = icmp eq i32 %104, 33
  br i1 %159, label %160, label %94

160:                                              ; preds = %155
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %161 = load i16, ptr %16, align 4
  %162 = add i16 %161, 1
  store i16 %162, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %163 = tail call i32 @__cond_resched() #10
  tail call void @_raw_spin_lock(ptr noundef %16) #10
  %164 = load i32, ptr %87, align 4
  %165 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %164
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, %165
  br i1 %167, label %168, label %99

168:                                              ; preds = %160, %94, %84
  %169 = phi i32 [ %88, %84 ], [ %164, %160 ], [ %96, %94 ]
  %170 = add i32 %169, 1
  %171 = icmp eq i32 %170, 10
  %172 = select i1 %171, i32 0, i32 %170
  store i32 %172, ptr %87, align 4
  %173 = icmp ugt i32 %172, 9
  br i1 %173, label %174, label %179, !prof !8

174:                                              ; preds = %168
  %175 = tail call ptr @llvm.thread.pointer() #10
  %176 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 52
  %177 = load i32, ptr %176, align 8
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.serve_prot_queue, i32 noundef 530, i32 noundef %177) #11
  tail call void @dump_stack() #11
  br label %179

179:                                              ; preds = %174, %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %180 = load i16, ptr %16, align 4
  %181 = add i16 %180, 1
  store i16 %181, ptr %16, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %182 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 1)
  br label %267

183:                                              ; preds = %2
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %6, i32 noundef %13) #10
  switch i32 %13, label %193 [
    i32 -4, label %184
    i32 -11, label %184
    i32 -12, label %184
    i32 -16, label %184
  ]

184:                                              ; preds = %183, %183, %183, %183
  %185 = tail call fastcc i32 @schedule_erase(ptr noundef %0, ptr noundef %4, i32 noundef %8, i32 noundef %10, i32 noundef 0, i1 noundef zeroext false)
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %267, label %187

187:                                              ; preds = %184
  %188 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %189 = load ptr, ptr %188, align 4
  %190 = load i32, ptr %5, align 4
  %191 = getelementptr ptr, ptr %189, i32 %190
  store ptr null, ptr %191, align 4
  %192 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %192, ptr noundef %4) #10
  br label %261

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %195 = load ptr, ptr %194, align 4
  %196 = load i32, ptr %5, align 4
  %197 = getelementptr ptr, ptr %195, i32 %196
  store ptr null, ptr %197, align 4
  %198 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %198, ptr noundef %4) #10
  %199 = icmp eq i32 %13, -5
  br i1 %199, label %200, label %261

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 77
  %202 = load i8, ptr %201, align 4
  %203 = and i8 %202, 1
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %200
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %6) #10
  br label %261

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %207) #10
  %208 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 11
  %209 = load i32, ptr %208, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %213 = load i32, ptr %212, align 8
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %211
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %216 = load i16, ptr %207, align 4
  %217 = add i16 %216, 1
  store i16 %217, ptr %207, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.19) #10
  br label %261

218:                                              ; preds = %211
  %219 = add i32 %213, -1
  store i32 %219, ptr %212, align 8
  br label %220

220:                                              ; preds = %218, %206
  %221 = phi i32 [ 1, %218 ], [ 0, %206 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %222 = load i16, ptr %207, align 4
  %223 = add i16 %222, 1
  store i16 %223, ptr %207, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %6) #10
  %224 = tail call i32 @ubi_io_mark_bad(ptr noundef %0, i32 noundef %6) #10
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %254

226:                                              ; preds = %220
  tail call void @_raw_spin_lock(ptr noundef %207) #10
  %227 = load i32, ptr %208, align 4
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %236

229:                                              ; preds = %226
  br i1 %210, label %230, label %234

230:                                              ; preds = %229
  %231 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %232 = load i32, ptr %231, align 8
  %233 = add i32 %232, 1
  store i32 %233, ptr %231, align 8
  br label %234

234:                                              ; preds = %230, %229
  %235 = add nsw i32 %227, -1
  store i32 %235, ptr %208, align 4
  br label %236

236:                                              ; preds = %234, %226
  %237 = phi i32 [ 0, %234 ], [ %221, %226 ]
  %238 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 62
  %239 = load i32, ptr %238, align 8
  %240 = add i32 %239, 1
  store i32 %240, ptr %238, align 8
  %241 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 63
  %242 = load i32, ptr %241, align 4
  %243 = add i32 %242, -1
  store i32 %243, ptr %241, align 4
  tail call void @ubi_calculate_reserved(ptr noundef %0) #10
  %244 = icmp eq i32 %237, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %236
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.21) #10
  br label %251

246:                                              ; preds = %236
  %247 = load i32, ptr %208, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %246
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.22, i32 noundef %247) #10
  br label %251

250:                                              ; preds = %246
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.23) #10
  br label %251

251:                                              ; preds = %250, %249, %245
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %252 = load i16, ptr %207, align 4
  %253 = add i16 %252, 1
  store i16 %253, ptr %207, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %267

254:                                              ; preds = %220
  br i1 %210, label %255, label %261

255:                                              ; preds = %254
  tail call void @_raw_spin_lock(ptr noundef %207) #10
  %256 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 10
  %257 = load i32, ptr %256, align 8
  %258 = add i32 %257, 1
  store i32 %258, ptr %256, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %259 = load i16, ptr %207, align 4
  %260 = add i16 %259, 1
  store i16 %260, ptr %207, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %261

261:                                              ; preds = %255, %254, %215, %205, %193, %187
  %262 = phi i32 [ %224, %255 ], [ %224, %254 ], [ -5, %205 ], [ -5, %215 ], [ %13, %193 ], [ %185, %187 ]
  %263 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %264 = load i32, ptr %263, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  store i32 1, ptr %263, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  tail call void @dump_stack() #11
  br label %267

267:                                              ; preds = %266, %261, %251, %184, %179
  %268 = phi i32 [ 0, %251 ], [ %182, %179 ], [ %262, %261 ], [ %262, %266 ], [ %13, %184 ]
  ret i32 %268
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sync_erase(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.ubi_wl_entry, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 83
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  %15 = load i32, ptr %14, align 8
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3392) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %65, label %18

18:                                               ; preds = %13
  %19 = tail call i32 @ubi_io_read_ec_hdr(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %16, i32 noundef 0) #10
  switch i32 %19, label %28 [
    i32 5, label %20
    i32 0, label %20
  ]

20:                                               ; preds = %18, %18
  %21 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %16, i32 0, i32 3
  %22 = load i64, ptr %21, align 8
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #10
  %24 = icmp ne i64 %23, %6
  %25 = sub i64 %23, %6
  %26 = icmp sgt i64 %25, 1
  %27 = and i1 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %20, %18
  tail call void @kfree(ptr noundef nonnull %16) #10
  br label %30

29:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %8) #10
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef %23, i32 noundef %5) #10
  tail call void @dump_stack() #11
  br label %62

30:                                               ; preds = %28, %3
  %31 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 72
  %32 = load i32, ptr %31, align 8
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 3392) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %65, label %35

35:                                               ; preds = %30
  %36 = load i32, ptr %7, align 4
  %37 = tail call i32 @ubi_io_sync_erase(ptr noundef %0, i32 noundef %36, i32 noundef %2) #10
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %35
  %40 = zext i32 %37 to i64
  %41 = add nsw i64 %40, %6
  %42 = icmp ugt i64 %41, 2147483647
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, ptr %7, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %44, i64 noundef %41) #10
  br label %62

45:                                               ; preds = %39
  %46 = tail call i64 @llvm.bswap.i64(i64 %41)
  %47 = getelementptr inbounds %struct.ubi_ec_hdr, ptr %33, i32 0, i32 3
  store i64 %46, ptr %47, align 8
  %48 = load i32, ptr %7, align 4
  %49 = tail call i32 @ubi_io_write_ec_hdr(ptr noundef %0, i32 noundef %48, ptr noundef nonnull %33) #10
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = trunc i64 %41 to i32
  store i32 %52, ptr %4, align 4
  %53 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %53) #10
  %54 = load i32, ptr %4, align 4
  %55 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 19
  %56 = load i32, ptr %55, align 4
  %57 = icmp sgt i32 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 %54, ptr %55, align 4
  br label %59

59:                                               ; preds = %58, %51
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %60 = load i16, ptr %53, align 4
  %61 = add i16 %60, 1
  store i16 %61, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  br label %62

62:                                               ; preds = %59, %45, %43, %35, %29
  %63 = phi ptr [ %16, %29 ], [ %33, %45 ], [ %33, %35 ], [ %33, %59 ], [ %33, %43 ]
  %64 = phi i32 [ -22, %29 ], [ %49, %45 ], [ %37, %35 ], [ 0, %59 ], [ -22, %43 ]
  tail call void @kfree(ptr noundef nonnull %63) #10
  br label %65

65:                                               ; preds = %62, %30, %13
  %66 = phi i32 [ -12, %30 ], [ -22, %13 ], [ %64, %62 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_mark_bad(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ubi_calculate_reserved(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_sync_erase(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_write_ec_hdr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_ec_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wear_leveling_worker(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.ubi_work, align 4
  %5 = alloca %struct.ubi_work, align 4
  %6 = alloca %struct.ubi_work, align 4
  %7 = alloca %struct.ubi_work, align 4
  tail call void @kfree(ptr noundef %1) #10
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %9, label %345

9:                                                ; preds = %3
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3392, i32 noundef 8) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %345, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 73
  %15 = load i32, ptr %14, align 4
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %15, i32 noundef 3136) #13
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %345

19:                                               ; preds = %13
  %20 = load i32, ptr %14, align 4
  tail call void @llvm.memset.p0.i32(ptr nonnull align 64 %16, i8 0, i32 %20, i1 false) #10
  %21 = getelementptr inbounds %struct.ubi_vid_io_buf, ptr %11, i32 0, i32 1
  store ptr %16, ptr %21, align 4
  %22 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 76
  %23 = load i32, ptr %22, align 8
  %24 = getelementptr i8, ptr %16, i32 %23
  store ptr %24, ptr %11, align 8
  %25 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 29
  tail call void @down_read(ptr noundef %25) #10
  %26 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 47
  tail call void @mutex_lock(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 46
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  %28 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 51
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %35, !prof !9

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 52
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35, !prof !9

35:                                               ; preds = %31, %19
  %36 = tail call ptr @llvm.thread.pointer() #10
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wear_leveling_worker, i32 noundef 670, i32 noundef %38) #11
  tail call void @dump_stack() #11
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 53
  %42 = load i32, ptr %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44, !prof !9

44:                                               ; preds = %40
  %45 = tail call ptr @llvm.thread.pointer() #10
  %46 = getelementptr inbounds %struct.task_struct, ptr %45, i32 0, i32 52
  %47 = load i32, ptr %46, align 8
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wear_leveling_worker, i32 noundef 671, i32 noundef %47) #11
  tail call void @dump_stack() #11
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %52, label %340, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 39
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  %57 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %58 = load ptr, ptr %57, align 8
  br i1 %56, label %59, label %63

59:                                               ; preds = %53
  %60 = icmp eq ptr %58, null
  br i1 %60, label %340, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  br label %82

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 43
  %65 = icmp eq ptr %58, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = tail call ptr @rb_first(ptr noundef %54) #10
  %68 = tail call fastcc ptr @get_peb_for_wl(ptr noundef %0)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %340, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.ubi_wl_entry, ptr %68, i32 0, i32 1
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr inbounds %struct.ubi_wl_entry, ptr %67, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = sub i32 %72, %74
  %76 = icmp sgt i32 %75, 4095
  br i1 %76, label %81, label %77

77:                                               ; preds = %70
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %68, ptr noundef %50)
  %78 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 4
  br label %340

81:                                               ; preds = %70
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %67, ptr noundef %54)
  tail call void @rb_erase(ptr noundef %67, ptr noundef %54) #10
  br label %88

82:                                               ; preds = %63, %61
  %83 = phi ptr [ %62, %61 ], [ %64, %63 ]
  %84 = tail call ptr @rb_first(ptr noundef %83) #10
  %85 = tail call fastcc ptr @get_peb_for_wl(ptr noundef %0)
  %86 = icmp eq ptr %85, null
  br i1 %86, label %340, label %87

87:                                               ; preds = %82
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %84, ptr noundef %83)
  tail call void @rb_erase(ptr noundef %84, ptr noundef %83) #10
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i1 [ false, %87 ], [ true, %81 ]
  %90 = phi ptr [ %83, %87 ], [ %64, %81 ]
  %91 = phi ptr [ %85, %87 ], [ %68, %81 ]
  %92 = phi ptr [ %84, %87 ], [ %67, %81 ]
  store ptr %92, ptr %28, align 8
  %93 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 52
  store ptr %91, ptr %93, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %94 = load i16, ptr %27, align 4
  %95 = add i16 %94, 1
  store i16 %95, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %96 = getelementptr inbounds %struct.ubi_wl_entry, ptr %92, i32 0, i32 2
  %97 = load i32, ptr %96, align 4
  %98 = tail call i32 @ubi_io_read_vid_hdr(ptr noundef %0, i32 noundef %97, ptr noundef nonnull %11, i32 noundef 0) #10
  switch i32 %98, label %99 [
    i32 5, label %107
    i32 0, label %107
    i32 1, label %165
    i32 2, label %188
  ]

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 35
  %101 = load i32, ptr %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = icmp eq i32 %98, 4
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %191, label %105

105:                                              ; preds = %99
  %106 = load i32, ptr %96, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %98, i32 noundef %106) #10
  br label %298

107:                                              ; preds = %88, %88
  %108 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %24, i32 0, i32 5
  %109 = load i32, ptr %108, align 1
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %111 = getelementptr inbounds %struct.ubi_vid_hdr, ptr %24, i32 0, i32 6
  %112 = load i32, ptr %111, align 1
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  %114 = load i32, ptr %96, align 4
  %115 = getelementptr inbounds %struct.ubi_wl_entry, ptr %91, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = tail call i32 @ubi_eba_copy_leb(ptr noundef %0, i32 noundef %114, i32 noundef %116, ptr noundef nonnull %11) #10
  switch i32 %117, label %125 [
    i32 0, label %132
    i32 1, label %165
    i32 6, label %188
    i32 5, label %192
    i32 4, label %192
    i32 3, label %192
    i32 2, label %118
  ]

118:                                              ; preds = %107
  %119 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 65
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 66
  %122 = load i32, ptr %121, align 8
  %123 = icmp sgt i32 %120, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %118
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %120) #10
  br label %293

125:                                              ; preds = %107
  %126 = icmp slt i32 %117, 0
  br i1 %126, label %293, label %127

127:                                              ; preds = %125
  %128 = tail call ptr @llvm.thread.pointer() #10
  %129 = getelementptr inbounds %struct.task_struct, ptr %128, i32 0, i32 52
  %130 = load i32, ptr %129, align 8
  %131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wear_leveling_worker, i32 noundef 869, i32 noundef %130) #11
  tail call void @dump_stack() #11
  br label %132

132:                                              ; preds = %127, %107
  br i1 %89, label %136, label %133

133:                                              ; preds = %132
  %134 = load i32, ptr %96, align 4
  %135 = load i32, ptr %115, align 4
  tail call void (ptr, ptr, ...) @ubi_msg(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %134, i32 noundef %110, i32 noundef %113, i32 noundef %135) #10
  br label %136

136:                                              ; preds = %133, %132
  %137 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %137) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  %138 = load i32, ptr %41, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  tail call fastcc void @wl_tree_add(ptr noundef nonnull %91, ptr noundef %54)
  br label %141

141:                                              ; preds = %140, %136
  %142 = phi ptr [ %91, %136 ], [ null, %140 ]
  store ptr null, ptr %93, align 4
  store ptr null, ptr %28, align 8
  %143 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 49
  store i32 0, ptr %143, align 8
  store i32 0, ptr %41, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %144 = load i16, ptr %27, align 4
  %145 = add i16 %144, 1
  store i16 %145, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false) #10, !annotation !16
  %146 = getelementptr inbounds %struct.ubi_work, ptr %7, i32 0, i32 2
  store ptr %92, ptr %146, align 4
  %147 = getelementptr inbounds %struct.ubi_work, ptr %7, i32 0, i32 3
  store i32 %110, ptr %147, align 4
  %148 = getelementptr inbounds %struct.ubi_work, ptr %7, i32 0, i32 4
  store i32 %113, ptr %148, align 4
  %149 = getelementptr inbounds %struct.ubi_work, ptr %7, i32 0, i32 5
  store i32 0, ptr %149, align 4
  %150 = call fastcc i32 @__erase_worker(ptr noundef %0, ptr noundef nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #10
  %151 = icmp eq i32 %150, 0
  %152 = icmp eq ptr %142, null
  br i1 %151, label %156, label %153

153:                                              ; preds = %141
  br i1 %152, label %324, label %154

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  br label %315

156:                                              ; preds = %141
  br i1 %152, label %164, label %157

157:                                              ; preds = %156
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false) #10, !annotation !16
  %158 = getelementptr inbounds %struct.ubi_work, ptr %6, i32 0, i32 2
  store ptr %142, ptr %158, align 4
  %159 = getelementptr inbounds %struct.ubi_work, ptr %6, i32 0, i32 3
  store i32 %110, ptr %159, align 4
  %160 = getelementptr inbounds %struct.ubi_work, ptr %6, i32 0, i32 4
  store i32 %113, ptr %160, align 4
  %161 = getelementptr inbounds %struct.ubi_work, ptr %6, i32 0, i32 5
  store i32 0, ptr %161, align 4
  %162 = call fastcc i32 @__erase_worker(ptr noundef %0, ptr noundef nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %324

164:                                              ; preds = %157, %156
  tail call void @mutex_unlock(ptr noundef %26) #10
  tail call void @up_read(ptr noundef %25) #10
  br label %345

165:                                              ; preds = %107, %88
  %166 = phi i32 [ -1, %88 ], [ %113, %107 ]
  %167 = phi i32 [ -1, %88 ], [ %110, %107 ]
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  %168 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 45
  %169 = load i32, ptr %168, align 4
  %170 = add i32 %169, -1
  %171 = icmp slt i32 %170, 0
  %172 = select i1 %171, i32 9, i32 %170
  %173 = icmp ugt i32 %172, 9
  br i1 %173, label %174, label %179, !prof !8

174:                                              ; preds = %165
  %175 = tail call ptr @llvm.thread.pointer() #10
  %176 = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 52
  %177 = load i32, ptr %176, align 8
  %178 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prot_queue_add, i32 noundef 304, i32 noundef %177) #11
  tail call void @dump_stack() #11
  br label %179

179:                                              ; preds = %174, %165
  %180 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %172
  %181 = getelementptr %struct.ubi_device, ptr %0, i32 0, i32 44, i32 %172, i32 1
  %182 = load ptr, ptr %181, align 4
  store ptr %92, ptr %181, align 4
  store ptr %180, ptr %92, align 4
  %183 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  store ptr %182, ptr %183, align 4
  store volatile ptr %92, ptr %182, align 4
  br label %199

184:                                              ; preds = %118
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  %185 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 40
  tail call fastcc void @wl_tree_add(ptr noundef %92, ptr noundef %185)
  %186 = load i32, ptr %119, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %119, align 4
  br label %199

188:                                              ; preds = %107, %88
  %189 = phi i32 [ -1, %88 ], [ %113, %107 ]
  %190 = phi i32 [ -1, %88 ], [ %110, %107 ]
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  br label %194

191:                                              ; preds = %99
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  br i1 %89, label %199, label %194

192:                                              ; preds = %107, %107, %107
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  br i1 %89, label %193, label %198

193:                                              ; preds = %192
  tail call fastcc void @wl_tree_add(ptr noundef %92, ptr noundef %54)
  br label %257

194:                                              ; preds = %191, %188
  %195 = phi i1 [ false, %191 ], [ true, %188 ]
  %196 = phi i32 [ -1, %191 ], [ %190, %188 ]
  %197 = phi i32 [ -1, %191 ], [ %189, %188 ]
  tail call fastcc void @wl_tree_add(ptr noundef %92, ptr noundef %90)
  br label %199

198:                                              ; preds = %192
  tail call fastcc void @wl_tree_add(ptr noundef %92, ptr noundef %90)
  br label %257

199:                                              ; preds = %194, %191, %184, %179
  %200 = phi i32 [ %197, %194 ], [ -1, %191 ], [ %166, %179 ], [ %113, %184 ]
  %201 = phi i32 [ %196, %194 ], [ -1, %191 ], [ %167, %179 ], [ %110, %184 ]
  %202 = phi i1 [ %195, %194 ], [ false, %191 ], [ true, %179 ], [ true, %184 ]
  %203 = load ptr, ptr %50, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %249, label %205

205:                                              ; preds = %199
  %206 = getelementptr inbounds %struct.ubi_wl_entry, ptr %91, i32 0, i32 1
  %207 = getelementptr inbounds %struct.ubi_wl_entry, ptr %91, i32 0, i32 2
  br label %208

208:                                              ; preds = %243, %205
  %209 = phi ptr [ %203, %205 ], [ %245, %243 ]
  %210 = phi ptr [ %50, %205 ], [ %244, %243 ]
  %211 = load i32, ptr %206, align 4
  %212 = getelementptr inbounds %struct.ubi_wl_entry, ptr %209, i32 0, i32 1
  %213 = load i32, ptr %212, align 4
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 2
  br label %243

217:                                              ; preds = %208
  %218 = icmp sgt i32 %211, %213
  br i1 %218, label %219, label %221

219:                                              ; preds = %217
  %220 = getelementptr inbounds %struct.rb_node, ptr %209, i32 0, i32 1
  br label %243

221:                                              ; preds = %217
  %222 = load i32, ptr %207, align 4
  %223 = getelementptr inbounds %struct.ubi_wl_entry, ptr %209, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %222, %224
  br i1 %225, label %226, label %234, !prof !8

226:                                              ; preds = %221
  %227 = tail call ptr @llvm.thread.pointer() #10
  %228 = getelementptr inbounds %struct.task_struct, ptr %227, i32 0, i32 52
  %229 = load i32, ptr %228, align 8
  %230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wl_tree_add, i32 noundef 155, i32 noundef %229) #11
  tail call void @dump_stack() #11
  %231 = load i32, ptr %207, align 4
  %232 = load i32, ptr %223, align 4
  %233 = load ptr, ptr %210, align 4
  br label %234

234:                                              ; preds = %226, %221
  %235 = phi ptr [ %233, %226 ], [ %209, %221 ]
  %236 = phi i32 [ %232, %226 ], [ %224, %221 ]
  %237 = phi i32 [ %231, %226 ], [ %222, %221 ]
  %238 = icmp slt i32 %237, %236
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.rb_node, ptr %235, i32 0, i32 2
  br label %243

241:                                              ; preds = %234
  %242 = getelementptr inbounds %struct.rb_node, ptr %235, i32 0, i32 1
  br label %243

243:                                              ; preds = %241, %239, %219, %215
  %244 = phi ptr [ %216, %215 ], [ %220, %219 ], [ %240, %239 ], [ %242, %241 ]
  %245 = load ptr, ptr %244, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %208

247:                                              ; preds = %243
  %248 = ptrtoint ptr %209 to i32
  br label %249

249:                                              ; preds = %247, %199
  %250 = phi i32 [ %248, %247 ], [ 0, %199 ]
  %251 = phi ptr [ %244, %247 ], [ %50, %199 ]
  store i32 %250, ptr %91, align 4
  %252 = getelementptr inbounds %struct.rb_node, ptr %91, i32 0, i32 1
  store ptr null, ptr %252, align 4
  %253 = getelementptr inbounds %struct.rb_node, ptr %91, i32 0, i32 2
  store ptr null, ptr %253, align 4
  store ptr %91, ptr %251, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %91, ptr noundef %50) #10
  %254 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %255 = load i32, ptr %254, align 4
  %256 = add i32 %255, 1
  store i32 %256, ptr %254, align 4
  br label %257

257:                                              ; preds = %249, %198, %193
  %258 = phi i1 [ true, %198 ], [ false, %249 ], [ true, %193 ]
  %259 = phi i32 [ %113, %198 ], [ %200, %249 ], [ %113, %193 ]
  %260 = phi i32 [ %110, %198 ], [ %201, %249 ], [ %110, %193 ]
  %261 = phi i1 [ true, %198 ], [ %202, %249 ], [ true, %193 ]
  %262 = phi i32 [ 1, %198 ], [ 0, %249 ], [ 1, %193 ]
  %263 = load i32, ptr %41, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %270, label %265, !prof !9

265:                                              ; preds = %257
  %266 = tail call ptr @llvm.thread.pointer() #10
  %267 = getelementptr inbounds %struct.task_struct, ptr %266, i32 0, i32 52
  %268 = load i32, ptr %267, align 8
  %269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wear_leveling_worker, i32 noundef 938, i32 noundef %268) #11
  tail call void @dump_stack() #11
  br label %270

270:                                              ; preds = %265, %257
  store ptr null, ptr %93, align 4
  store ptr null, ptr %28, align 8
  %271 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 49
  store i32 0, ptr %271, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %272 = load i16, ptr %27, align 4
  %273 = add i16 %272, 1
  store i16 %273, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %274 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %274) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  br i1 %258, label %277, label %275

275:                                              ; preds = %270
  %276 = tail call fastcc i32 @ensure_wear_leveling(ptr noundef %0, i32 noundef 1)
  br label %284

277:                                              ; preds = %270
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 12, i1 false) #10, !annotation !16
  %278 = getelementptr inbounds %struct.ubi_work, ptr %5, i32 0, i32 2
  store ptr %91, ptr %278, align 4
  %279 = getelementptr inbounds %struct.ubi_work, ptr %5, i32 0, i32 3
  store i32 %260, ptr %279, align 4
  %280 = getelementptr inbounds %struct.ubi_work, ptr %5, i32 0, i32 4
  store i32 %259, ptr %280, align 4
  %281 = getelementptr inbounds %struct.ubi_work, ptr %5, i32 0, i32 5
  store i32 %262, ptr %281, align 4
  %282 = call fastcc i32 @__erase_worker(ptr noundef %0, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #10
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %324

284:                                              ; preds = %277, %275
  br i1 %261, label %292, label %285

285:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i32 12, i1 false) #10, !annotation !16
  %286 = getelementptr inbounds %struct.ubi_work, ptr %4, i32 0, i32 2
  store ptr %92, ptr %286, align 4
  %287 = getelementptr inbounds %struct.ubi_work, ptr %4, i32 0, i32 3
  store i32 %260, ptr %287, align 4
  %288 = getelementptr inbounds %struct.ubi_work, ptr %4, i32 0, i32 4
  store i32 %259, ptr %288, align 4
  %289 = getelementptr inbounds %struct.ubi_work, ptr %4, i32 0, i32 5
  store i32 1, ptr %289, align 4
  %290 = call fastcc i32 @__erase_worker(ptr noundef %0, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #10
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %324

292:                                              ; preds = %285, %284
  tail call void @mutex_unlock(ptr noundef %26) #10
  tail call void @up_read(ptr noundef %25) #10
  br label %345

293:                                              ; preds = %125, %124
  %294 = icmp eq i32 %109, -1
  br i1 %294, label %298, label %295

295:                                              ; preds = %293
  %296 = load i32, ptr %96, align 4
  %297 = load i32, ptr %115, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %117, i32 noundef %296, i32 noundef %297) #10
  br label %304

298:                                              ; preds = %293, %105
  %299 = phi i32 [ %98, %105 ], [ %117, %293 ]
  %300 = phi i32 [ -1, %105 ], [ %113, %293 ]
  %301 = load i32, ptr %96, align 4
  %302 = getelementptr inbounds %struct.ubi_wl_entry, ptr %91, i32 0, i32 2
  %303 = load i32, ptr %302, align 4
  tail call void (ptr, ptr, ...) @ubi_err(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %299, i32 noundef %301, i32 noundef -1, i32 noundef %300, i32 noundef %303) #10
  br label %304

304:                                              ; preds = %298, %295
  %305 = phi i32 [ %299, %298 ], [ %117, %295 ]
  tail call void @_raw_spin_lock(ptr noundef %27) #10
  store ptr null, ptr %93, align 4
  store ptr null, ptr %28, align 8
  %306 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 49
  store i32 0, ptr %306, align 8
  store i32 0, ptr %41, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %307 = load i16, ptr %27, align 4
  %308 = add i16 %307, 1
  store i16 %308, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  %309 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %309) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  %310 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 50
  %311 = load ptr, ptr %310, align 4
  %312 = load i32, ptr %96, align 4
  %313 = getelementptr ptr, ptr %311, i32 %312
  store ptr null, ptr %313, align 4
  %314 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %314, ptr noundef %92) #10
  br label %315

315:                                              ; preds = %304, %154
  %316 = phi ptr [ %155, %154 ], [ %310, %304 ]
  %317 = phi ptr [ %142, %154 ], [ %91, %304 ]
  %318 = phi i32 [ %150, %154 ], [ %305, %304 ]
  %319 = load ptr, ptr %316, align 4
  %320 = getelementptr inbounds %struct.ubi_wl_entry, ptr %317, i32 0, i32 2
  %321 = load i32, ptr %320, align 4
  %322 = getelementptr ptr, ptr %319, i32 %321
  store ptr null, ptr %322, align 4
  %323 = load ptr, ptr @ubi_wl_entry_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %323, ptr noundef nonnull %317) #10
  br label %324

324:                                              ; preds = %315, %285, %277, %157, %153
  %325 = phi i32 [ %290, %285 ], [ %282, %277 ], [ %150, %153 ], [ %162, %157 ], [ %318, %315 ]
  %326 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %327 = load i32, ptr %326, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  store i32 1, ptr %326, align 4
  tail call void (ptr, ptr, ...) @ubi_warn(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  tail call void @dump_stack() #11
  br label %330

330:                                              ; preds = %329, %324
  tail call void @mutex_unlock(ptr noundef %26) #10
  tail call void @up_read(ptr noundef %25) #10
  %331 = icmp eq i32 %325, 0
  br i1 %331, label %332, label %337, !prof !8

332:                                              ; preds = %330
  %333 = tail call ptr @llvm.thread.pointer() #10
  %334 = getelementptr inbounds %struct.task_struct, ptr %333, i32 0, i32 52
  %335 = load i32, ptr %334, align 8
  %336 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.wear_leveling_worker, i32 noundef 982, i32 noundef %335) #11
  tail call void @dump_stack() #11
  br label %337

337:                                              ; preds = %332, %330
  %338 = icmp slt i32 %325, 0
  %339 = select i1 %338, i32 %325, i32 -5
  br label %345

340:                                              ; preds = %82, %77, %66, %59, %49
  %341 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 49
  store i32 0, ptr %341, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  %342 = load i16, ptr %27, align 4
  %343 = add i16 %342, 1
  store i16 %343, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #10, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !13
  tail call void @mutex_unlock(ptr noundef %26) #10
  tail call void @up_read(ptr noundef %25) #10
  %344 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %344) #10
  tail call void @kfree(ptr noundef nonnull %11) #10
  br label %345

345:                                              ; preds = %340, %337, %292, %164, %18, %9, %3
  %346 = phi i32 [ %339, %337 ], [ 0, %292 ], [ 0, %164 ], [ 0, %340 ], [ 0, %3 ], [ -12, %18 ], [ -12, %9 ]
  ret i32 %346
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @get_peb_for_wl(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 41
  %3 = tail call ptr @rb_first(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.ubi_wl_entry, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 8192
  %7 = load ptr, ptr %2, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %9, %1
  %10 = phi ptr [ %19, %9 ], [ %7, %1 ]
  %11 = phi ptr [ %17, %9 ], [ %3, %1 ]
  %12 = getelementptr inbounds %struct.ubi_wl_entry, ptr %10, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %6
  %15 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 2
  %16 = getelementptr inbounds %struct.rb_node, ptr %10, i32 0, i32 1
  %17 = select i1 %14, ptr %10, ptr %11
  %18 = select i1 %14, ptr %16, ptr %15
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %9

21:                                               ; preds = %9, %1
  %22 = phi ptr [ %3, %1 ], [ %17, %9 ]
  tail call fastcc void @self_check_in_wl_tree(ptr noundef %0, ptr noundef %22, ptr noundef %2)
  %23 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 42
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32, !prof !8

27:                                               ; preds = %21
  %28 = tail call ptr @llvm.thread.pointer() #10
  %29 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 52
  %30 = load i32, ptr %29, align 8
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_peb_for_wl, i32 noundef 2047, i32 noundef %30) #11
  tail call void @dump_stack() #11
  br label %32

32:                                               ; preds = %27, %21
  tail call void @rb_erase(ptr noundef %22, ptr noundef %2) #10
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_io_read_vid_hdr(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_copy_leb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_last(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

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
!10 = !{i64 2148979074}
!11 = !{i64 2148974898}
!12 = !{i64 2148974973, i64 2148975000, i64 2148975047, i64 2148975069, i64 2148975097, i64 2148975117}
!13 = !{i64 2149002077}
!14 = !{i64 2153048439}
!15 = !{i64 2153051263}
!16 = !{!"auto-init"}
