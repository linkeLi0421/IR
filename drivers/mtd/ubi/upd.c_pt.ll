; ModuleID = '/llk/IR/drivers/mtd/ubi/upd.c_pt.bc'
source_filename = "../drivers/mtd/ubi/upd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ubi_vtbl_record = type { i32, i32, i32, i8, i8, i16, [128 x i8], i8, [23 x i8], i32 }
%struct.ubi_volume = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, [128 x i8], i32, i32, i64, i64, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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
%struct.sched_statistics = type {}
%struct.cpumask = type { [1 x i32] }
%struct.sched_info = type {}
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type {}
%struct.tlbflush_unmap_batch = type {}
%union.anon.48 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kmap_ctrl = type { i32, [16 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ubi_device = type { %struct.cdev, %struct.device, i32, [9 x i8], i32, [129 x ptr], %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.mutex, i32, i32, i64, %struct.spinlock, %struct.rb_root, %struct.mutex, i32, ptr, %struct.ubi_fm_pool, %struct.ubi_fm_pool, %struct.rw_semaphore, %struct.rw_semaphore, ptr, i32, %struct.work_struct, i32, i32, ptr, ptr, i32, %struct.rb_root, %struct.rb_root, %struct.rb_root, i32, %struct.rb_root, [10 x %struct.list_head], i32, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, i32, ptr, ptr, ptr, i32, %struct.list_head, i32, ptr, i32, [13 x i8], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, %struct.mutex, %struct.mutex, %struct.ubi_debug_info }
%struct.ubi_fm_pool = type { [256 x i32], i32, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.ubi_debug_info = type { i8, i32, i32, i32, [7 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ubi_leb_change_req = type { i32, i32, i8, [7 x i8] }

@.str = private unnamed_addr constant [42 x i8] c"\012UBI assert failed in %s at %u (pid %d)\0A\00", align 1
@__func__.ubi_start_update = private unnamed_addr constant [17 x i8] c"ubi_start_update\00", align 1
@__func__.ubi_start_leb_change = private unnamed_addr constant [21 x i8] c"ubi_start_leb_change\00", align 1
@__func__.ubi_more_update_data = private unnamed_addr constant [21 x i8] c"ubi_more_update_data\00", align 1
@__func__.ubi_more_leb_change_data = private unnamed_addr constant [25 x i8] c"ubi_more_leb_change_data\00", align 1
@__func__.set_update_marker = private unnamed_addr constant [18 x i8] c"set_update_marker\00", align 1
@__func__.clear_update_marker = private unnamed_addr constant [20 x i8] c"clear_update_marker\00", align 1
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_start_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ubi_vtbl_record, align 1
  %5 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 25
  %6 = load i8, ptr %5, align 8
  %7 = and i8 %6, 48
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9, !prof !8

9:                                                ; preds = %3
  %10 = tail call ptr @llvm.thread.pointer() #9
  %11 = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 52
  %12 = load i32, ptr %11, align 8
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_start_update, i32 noundef 120, i32 noundef %12) #10
  tail call void @dump_stack() #10
  %14 = load i8, ptr %5, align 8
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi i8 [ %14, %9 ], [ %6, %3 ]
  %17 = or i8 %16, 16
  store i8 %17, ptr %5, align 8
  %18 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 70
  %19 = load i32, ptr %18, align 8
  %20 = tail call noalias ptr @vmalloc(i32 noundef %19) #11
  %21 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %93, label %23

23:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %4) #9
  %24 = load i8, ptr %5, align 8
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  %27 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %30 = load i32, ptr %29, align 8
  br i1 %26, label %41, label %31

31:                                               ; preds = %23
  %32 = getelementptr %struct.ubi_vtbl_record, ptr %28, i32 %30, i32 4
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %40, !prof !9

35:                                               ; preds = %31
  %36 = tail call ptr @llvm.thread.pointer() #9
  %37 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 52
  %38 = load i32, ptr %37, align 8
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.set_update_marker, i32 noundef 49, i32 noundef %38) #10
  tail call void @dump_stack() #10
  br label %40

40:                                               ; preds = %35, %31
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #9
  br label %50

41:                                               ; preds = %23
  %42 = getelementptr %struct.ubi_vtbl_record, ptr %28, i32 %30
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(172) %4, ptr noundef align 1 dereferenceable(172) %42, i32 172, i1 false) #9
  %43 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %4, i32 0, i32 4
  store i8 1, ptr %43, align 1
  %44 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %44) #9
  %45 = load i32, ptr %29, align 8
  %46 = call i32 @ubi_change_vtbl_record(ptr noundef %0, i32 noundef %45, ptr noundef nonnull %4) #9
  %47 = load i8, ptr %5, align 8
  %48 = or i8 %47, 8
  store i8 %48, ptr %5, align 8
  call void @mutex_unlock(ptr noundef %44) #9
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #9
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %50, label %93

50:                                               ; preds = %41, %40
  %51 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 9
  %52 = load i32, ptr %51, align 8
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %58, label %62

54:                                               ; preds = %58
  %55 = add nuw nsw i32 %59, 1
  %56 = load i32, ptr %51, align 8
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54, %50
  %59 = phi i32 [ %55, %54 ], [ 0, %50 ]
  %60 = call i32 @ubi_eba_unmap_leb(ptr noundef %0, ptr noundef %1, i32 noundef %59) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %54, label %93

62:                                               ; preds = %54, %50
  %63 = call i32 @ubi_wl_flush(ptr noundef %0, i32 noundef -1, i32 noundef -1) #9
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %62
  %66 = icmp eq i64 %2, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %65
  %68 = call fastcc i32 @clear_update_marker(ptr noundef %0, ptr noundef %1, i64 noundef 0)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load ptr, ptr %21, align 8
  call void @vfree(ptr noundef %71) #9
  %72 = load i8, ptr %5, align 8
  %73 = and i8 %72, -17
  store i8 %73, ptr %5, align 8
  br label %93

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 11
  %76 = load i32, ptr %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add i64 %2, -1
  %79 = add i64 %78, %77
  %80 = icmp ult i64 %79, 4294967296
  br i1 %80, label %81, label %84, !prof !8

81:                                               ; preds = %74
  %82 = trunc i64 %79 to i32
  %83 = udiv i32 %82, %76
  br label %88

84:                                               ; preds = %74
  %85 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %76, i64 %79) #12, !srcloc !10
  %86 = extractvalue { i64, i64 } %85, 1
  %87 = trunc i64 %86 to i32
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi i32 [ %83, %81 ], [ %87, %84 ]
  %90 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 19
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 21
  store i64 %2, ptr %91, align 8
  %92 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 22
  store i64 0, ptr %92, align 8
  br label %93

93:                                               ; preds = %88, %70, %67, %62, %58, %41, %15
  %94 = phi i32 [ 0, %70 ], [ 0, %88 ], [ -12, %15 ], [ %46, %41 ], [ %63, %62 ], [ %68, %67 ], [ %60, %58 ]
  ret i32 %94
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_unmap_leb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_wl_flush(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clear_update_marker(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ubi_vtbl_record, align 1
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %4) #9
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.ubi_vtbl_record, ptr %6, i32 %8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(172) %4, ptr noundef align 1 dereferenceable(172) %9, i32 172, i1 false)
  %10 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 25
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, 8
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.ubi_vtbl_record, ptr %4, i32 0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %13, i1 true, i1 %16
  br i1 %17, label %18, label %23, !prof !9

18:                                               ; preds = %3
  %19 = tail call ptr @llvm.thread.pointer() #9
  %20 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 52
  %21 = load i32, ptr %20, align 8
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.clear_update_marker, i32 noundef 83, i32 noundef %21) #10
  tail call void @dump_stack() #10
  br label %23

23:                                               ; preds = %18, %3
  store i8 0, ptr %14, align 1
  %24 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 4
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load i8, ptr %10, align 8
  %29 = and i8 %28, -5
  store i8 %29, ptr %10, align 8
  %30 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 14
  store i64 %2, ptr %30, align 8
  %31 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 11
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 13
  %34 = icmp ult i64 %2, 4294967296
  br i1 %34, label %35, label %41, !prof !8

35:                                               ; preds = %27
  %36 = trunc i64 %2 to i32
  %37 = freeze i32 %32
  %38 = udiv i32 %36, %37
  %39 = mul i32 %38, %37
  %40 = sub i32 %36, %39
  br label %48

41:                                               ; preds = %27
  %42 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %32, i64 %2) #12, !srcloc !10
  %43 = extractvalue { i64, i64 } %42, 0
  %44 = extractvalue { i64, i64 } %42, 1
  %45 = lshr i64 %43, 32
  %46 = trunc i64 %45 to i32
  %47 = trunc i64 %44 to i32
  br label %48

48:                                               ; preds = %41, %35
  %49 = phi i32 [ %38, %35 ], [ %47, %41 ]
  %50 = phi i32 [ %40, %35 ], [ %46, %41 ]
  store i32 %50, ptr %33, align 4
  %51 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 12
  store i32 %49, ptr %51, align 4
  %52 = icmp eq i32 %50, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = add i32 %49, 1
  store i32 %54, ptr %51, align 4
  br label %56

55:                                               ; preds = %48
  store i32 %32, ptr %33, align 8
  br label %56

56:                                               ; preds = %55, %53, %23
  %57 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 18
  tail call void @mutex_lock(ptr noundef %57) #9
  %58 = load i32, ptr %7, align 8
  %59 = call i32 @ubi_change_vtbl_record(ptr noundef %0, i32 noundef %58, ptr noundef nonnull %4) #9
  %60 = load i8, ptr %10, align 8
  %61 = and i8 %60, -9
  store i8 %61, ptr %10, align 8
  call void @mutex_unlock(ptr noundef %57) #9
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %4) #9
  ret i32 %59
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_start_leb_change(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 25
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 48
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !8

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.thread.pointer() #9
  %10 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 52
  %11 = load i32, ptr %10, align 8
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_start_leb_change, i32 noundef 171, i32 noundef %11) #10
  tail call void @dump_stack() #10
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.ubi_leb_change_req, ptr %2, i32 0, i32 1
  %15 = load i32, ptr %14, align 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, ptr %2, align 1
  %19 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %1, i32 noundef %18, ptr noundef null, i32 noundef 0) #9
  br label %39

20:                                               ; preds = %13
  %21 = sext i32 %15 to i64
  %22 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 21
  store i64 %21, ptr %22, align 8
  %23 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 22
  store i64 0, ptr %23, align 8
  %24 = load i8, ptr %4, align 8
  %25 = or i8 %24, 32
  store i8 %25, ptr %4, align 8
  %26 = load i32, ptr %2, align 1
  %27 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 20
  store i32 %26, ptr %27, align 8
  %28 = load i32, ptr %14, align 1
  %29 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %28, -1
  %32 = add i32 %31, %30
  %33 = sub i32 0, %30
  %34 = and i32 %32, %33
  %35 = tail call noalias ptr @vmalloc(i32 noundef %34) #11
  %36 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  store ptr %35, ptr %36, align 8
  %37 = icmp eq ptr %35, null
  %38 = select i1 %37, i32 -12, i32 0
  br label %39

39:                                               ; preds = %20, %17
  %40 = phi i32 [ %19, %17 ], [ %38, %20 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_atomic_leb_change(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_more_update_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %234

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 22
  %10 = load i64, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 11
  %12 = load i32, ptr %11, align 8
  %13 = icmp ult i64 %10, 4294967296
  br i1 %13, label %14, label %21, !prof !8

14:                                               ; preds = %8
  %15 = trunc i64 %10 to i32
  %16 = freeze i32 %15
  %17 = freeze i32 %12
  %18 = udiv i32 %16, %17
  %19 = mul i32 %18, %17
  %20 = sub i32 %16, %19
  br label %28

21:                                               ; preds = %8
  %22 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %10) #12, !srcloc !10
  %23 = extractvalue { i64, i64 } %22, 0
  %24 = extractvalue { i64, i64 } %22, 1
  %25 = lshr i64 %23, 32
  %26 = trunc i64 %25 to i32
  %27 = trunc i64 %24 to i32
  br label %28

28:                                               ; preds = %21, %14
  %29 = phi i32 [ %18, %14 ], [ %27, %21 ]
  %30 = phi i32 [ %20, %14 ], [ %26, %21 ]
  %31 = sext i32 %3 to i64
  %32 = add i64 %10, %31
  %33 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 21
  %34 = load i64, ptr %33, align 8
  %35 = icmp sgt i64 %32, %34
  %36 = sub i64 %34, %10
  %37 = trunc i64 %36 to i32
  %38 = select i1 %35, i32 %37, i32 %3
  %39 = icmp eq i32 %30, 0
  br i1 %39, label %121, label %40

40:                                               ; preds = %28
  %41 = sub i32 %12, %30
  %42 = tail call i32 @llvm.smin.i32(i32 %41, i32 %38)
  %43 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr i8, ptr %44, i32 %30
  %46 = icmp slt i32 %42, 0
  %47 = load i1, ptr @check_copy_size.__already_done, align 1
  %48 = xor i1 %47, true
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %40
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %51

51:                                               ; preds = %50, %40
  br i1 %46, label %234, label %52, !prof !9

52:                                               ; preds = %51
  %53 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %42, i32 -1090519040) #12, !srcloc !11
  %54 = extractvalue { i32, i32 } %53, 0
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63, !prof !8

56:                                               ; preds = %52
  %57 = tail call ptr @llvm.thread.pointer() #9
  %58 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 3
  %59 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %58) #13, !srcloc !12
  %60 = and i32 %59, -13
  %61 = or i32 %60, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %62 = tail call i32 @arm_copy_from_user(ptr noundef %45, ptr noundef %2, i32 noundef %42) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %59) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %63

63:                                               ; preds = %56, %52
  %64 = phi i32 [ %62, %56 ], [ %42, %52 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %69, label %66, !prof !8

66:                                               ; preds = %63
  %67 = sub i32 %42, %64
  %68 = getelementptr i8, ptr %45, i32 %67
  tail call void @llvm.memset.p0.i32(ptr align 1 %68, i8 0, i32 %64, i1 false) #9
  br label %234

69:                                               ; preds = %63
  %70 = add i32 %42, %30
  %71 = load i32, ptr %11, align 8
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load i64, ptr %9, align 8
  %75 = zext i32 %42 to i64
  %76 = add i64 %74, %75
  %77 = load i64, ptr %33, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %114

79:                                               ; preds = %73, %69
  %80 = icmp sgt i32 %70, %71
  br i1 %80, label %81, label %86, !prof !9

81:                                               ; preds = %79
  %82 = tail call ptr @llvm.thread.pointer() #9
  %83 = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 52
  %84 = load i32, ptr %83, align 8
  %85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_more_update_data, i32 noundef 308, i32 noundef %84) #10
  tail call void @dump_stack() #10
  br label %86

86:                                               ; preds = %81, %79
  %87 = load ptr, ptr %43, align 8
  %88 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %104

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %93 = load i32, ptr %92, align 4
  %94 = add i32 %70, -1
  %95 = add i32 %94, %93
  %96 = sub i32 0, %93
  %97 = and i32 %95, %96
  %98 = getelementptr i8, ptr %87, i32 %70
  %99 = sub i32 %97, %70
  tail call void @llvm.memset.p0.i32(ptr align 1 %98, i8 -1, i32 %99, i1 false) #9
  %100 = tail call i32 @ubi_calc_data_len(ptr noundef %0, ptr noundef %87, i32 noundef %97) #9
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %91
  %103 = tail call i32 @ubi_eba_write_leb(ptr noundef %0, ptr noundef %1, i32 noundef %29, ptr noundef %87, i32 noundef 0, i32 noundef %100) #9
  br label %111

104:                                              ; preds = %86
  %105 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 19
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i8, ptr %87, i32 %70
  %108 = load i32, ptr %11, align 8
  %109 = sub i32 %108, %70
  tail call void @llvm.memset.p0.i32(ptr align 1 %107, i8 0, i32 %109, i1 false) #9
  %110 = tail call i32 @ubi_eba_write_leb_st(ptr noundef %0, ptr noundef %1, i32 noundef %29, ptr noundef %87, i32 noundef %70, i32 noundef %106) #9
  br label %111

111:                                              ; preds = %104, %102
  %112 = phi i32 [ %103, %102 ], [ %110, %104 ]
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %234

114:                                              ; preds = %111, %91, %73
  %115 = zext i32 %42 to i64
  %116 = load i64, ptr %9, align 8
  %117 = add i64 %116, %115
  store i64 %117, ptr %9, align 8
  %118 = sub i32 %38, %42
  %119 = getelementptr i8, ptr %2, i32 %42
  %120 = add i32 %29, 1
  br label %121

121:                                              ; preds = %114, %28
  %122 = phi i64 [ %117, %114 ], [ %10, %28 ]
  %123 = phi i32 [ %120, %114 ], [ %29, %28 ]
  %124 = phi i32 [ %118, %114 ], [ %38, %28 ]
  %125 = phi ptr [ %119, %114 ], [ %2, %28 ]
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %205, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  %129 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 10
  %130 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 19
  %131 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  br label %132

132:                                              ; preds = %197, %127
  %133 = phi ptr [ %125, %127 ], [ %203, %197 ]
  %134 = phi i32 [ %124, %127 ], [ %201, %197 ]
  %135 = phi i32 [ %123, %127 ], [ %202, %197 ]
  %136 = load i32, ptr %11, align 8
  %137 = tail call i32 @llvm.smin.i32(i32 %134, i32 %136)
  %138 = load ptr, ptr %128, align 8
  %139 = icmp slt i32 %137, 0
  %140 = load i1, ptr @check_copy_size.__already_done, align 1
  %141 = xor i1 %140, true
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %144, !prof !9

143:                                              ; preds = %132
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %144

144:                                              ; preds = %143, %132
  br i1 %139, label %234, label %145, !prof !9

145:                                              ; preds = %144
  %146 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %133, i32 %137, i32 -1090519040) #12, !srcloc !11
  %147 = extractvalue { i32, i32 } %146, 0
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156, !prof !8

149:                                              ; preds = %145
  %150 = tail call ptr @llvm.thread.pointer() #9
  %151 = getelementptr inbounds %struct.thread_info, ptr %150, i32 0, i32 3
  %152 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %151) #13, !srcloc !12
  %153 = and i32 %152, -13
  %154 = or i32 %153, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %154) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %155 = tail call i32 @arm_copy_from_user(ptr noundef %138, ptr noundef %133, i32 noundef %137) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %156

156:                                              ; preds = %149, %145
  %157 = phi i32 [ %155, %149 ], [ %137, %145 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159, !prof !8

159:                                              ; preds = %156
  %160 = sub i32 %137, %157
  %161 = getelementptr i8, ptr %138, i32 %160
  tail call void @llvm.memset.p0.i32(ptr align 1 %161, i8 0, i32 %157, i1 false) #9
  br label %234

162:                                              ; preds = %156
  %163 = load i32, ptr %11, align 8
  %164 = icmp eq i32 %163, %137
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i64, ptr %9, align 8
  %167 = zext i32 %137 to i64
  %168 = add i64 %166, %167
  %169 = load i64, ptr %33, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %197

171:                                              ; preds = %165, %162
  %172 = load ptr, ptr %128, align 8
  %173 = load i32, ptr %129, align 4
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load i32, ptr %131, align 4
  %177 = add nsw i32 %137, -1
  %178 = add i32 %177, %176
  %179 = sub i32 0, %176
  %180 = and i32 %178, %179
  %181 = getelementptr i8, ptr %172, i32 %137
  %182 = sub i32 %180, %137
  tail call void @llvm.memset.p0.i32(ptr align 1 %181, i8 -1, i32 %182, i1 false) #9
  %183 = tail call i32 @ubi_calc_data_len(ptr noundef %0, ptr noundef %172, i32 noundef %180) #9
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %175
  %186 = tail call i32 @ubi_eba_write_leb(ptr noundef %0, ptr noundef %1, i32 noundef %135, ptr noundef %172, i32 noundef 0, i32 noundef %183) #9
  br label %192

187:                                              ; preds = %171
  %188 = load i32, ptr %130, align 4
  %189 = getelementptr i8, ptr %172, i32 %137
  %190 = sub i32 %163, %137
  tail call void @llvm.memset.p0.i32(ptr align 1 %189, i8 0, i32 %190, i1 false) #9
  %191 = tail call i32 @ubi_eba_write_leb_st(ptr noundef %0, ptr noundef %1, i32 noundef %135, ptr noundef %172, i32 noundef %137, i32 noundef %188) #9
  br label %192

192:                                              ; preds = %187, %185
  %193 = phi i32 [ %186, %185 ], [ %191, %187 ]
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %192
  %196 = load i64, ptr %9, align 8
  br label %205

197:                                              ; preds = %192, %175, %165
  %198 = zext i32 %137 to i64
  %199 = load i64, ptr %9, align 8
  %200 = add i64 %199, %198
  store i64 %200, ptr %9, align 8
  %201 = sub i32 %134, %137
  %202 = add i32 %135, 1
  %203 = getelementptr i8, ptr %133, i32 %137
  %204 = icmp eq i32 %201, 0
  br i1 %204, label %205, label %132

205:                                              ; preds = %197, %195, %121
  %206 = phi i64 [ %122, %121 ], [ %196, %195 ], [ %200, %197 ]
  %207 = phi i32 [ 0, %121 ], [ %193, %195 ], [ 0, %197 ]
  %208 = load i64, ptr %33, align 8
  %209 = icmp sgt i64 %206, %208
  br i1 %209, label %210, label %217, !prof !9

210:                                              ; preds = %205
  %211 = tail call ptr @llvm.thread.pointer() #9
  %212 = getelementptr inbounds %struct.task_struct, ptr %211, i32 0, i32 52
  %213 = load i32, ptr %212, align 8
  %214 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_more_update_data, i32 noundef 349, i32 noundef %213) #10
  tail call void @dump_stack() #10
  %215 = load i64, ptr %9, align 8
  %216 = load i64, ptr %33, align 8
  br label %217

217:                                              ; preds = %210, %205
  %218 = phi i64 [ %216, %210 ], [ %208, %205 ]
  %219 = phi i64 [ %215, %210 ], [ %206, %205 ]
  %220 = icmp eq i64 %219, %218
  br i1 %220, label %221, label %234

221:                                              ; preds = %217
  %222 = tail call i32 @ubi_wl_flush(ptr noundef %0, i32 noundef -1, i32 noundef -1) #9
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %221
  %225 = load i64, ptr %33, align 8
  %226 = tail call fastcc i32 @clear_update_marker(ptr noundef %0, ptr noundef %1, i64 noundef %225)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 25
  %230 = load i8, ptr %229, align 8
  %231 = and i8 %230, -17
  store i8 %231, ptr %229, align 8
  %232 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  %233 = load ptr, ptr %232, align 8
  tail call void @vfree(ptr noundef %233) #9
  br label %234

234:                                              ; preds = %228, %224, %221, %217, %159, %144, %111, %66, %51, %4
  %235 = phi i32 [ %112, %111 ], [ -30, %4 ], [ %222, %221 ], [ %226, %224 ], [ %38, %228 ], [ %207, %217 ], [ -14, %51 ], [ -14, %66 ], [ -14, %159 ], [ -14, %144 ]
  ret i32 %235
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ubi_more_leb_change_data(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 69
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %93

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 22
  %10 = load i64, ptr %9, align 8
  %11 = sext i32 %3 to i64
  %12 = add i64 %10, %11
  %13 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 21
  %14 = load i64, ptr %13, align 8
  %15 = icmp sgt i64 %12, %14
  %16 = sub i64 %14, %10
  %17 = trunc i64 %16 to i32
  %18 = select i1 %15, i32 %17, i32 %3
  %19 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 23
  %20 = load ptr, ptr %19, align 8
  %21 = trunc i64 %10 to i32
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = icmp slt i32 %18, 0
  %24 = load i1, ptr @check_copy_size.__already_done, align 1
  %25 = xor i1 %24, true
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %27, label %28, !prof !9

27:                                               ; preds = %8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %28

28:                                               ; preds = %27, %8
  br i1 %23, label %93, label %29, !prof !9

29:                                               ; preds = %28
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %18, i32 -1090519040) #12, !srcloc !11
  %31 = extractvalue { i32, i32 } %30, 0
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40, !prof !8

33:                                               ; preds = %29
  %34 = tail call ptr @llvm.thread.pointer() #9
  %35 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %36 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %35) #13, !srcloc !12
  %37 = and i32 %36, -13
  %38 = or i32 %37, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  %39 = tail call i32 @arm_copy_from_user(ptr noundef %22, ptr noundef %2, i32 noundef %18) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %36) #9, !srcloc !13
  tail call void asm sideeffect "isb ", "~{memory}"() #9, !srcloc !14
  br label %40

40:                                               ; preds = %33, %29
  %41 = phi i32 [ %39, %33 ], [ %18, %29 ]
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !8

43:                                               ; preds = %40
  %44 = sub i32 %18, %41
  %45 = getelementptr i8, ptr %22, i32 %44
  tail call void @llvm.memset.p0.i32(ptr align 1 %45, i8 0, i32 %41, i1 false) #9
  br label %93

46:                                               ; preds = %40
  %47 = zext i32 %18 to i64
  %48 = load i64, ptr %9, align 8
  %49 = add i64 %48, %47
  store i64 %49, ptr %9, align 8
  %50 = load i64, ptr %13, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %46
  %53 = trunc i64 %49 to i32
  %54 = getelementptr inbounds %struct.ubi_device, ptr %0, i32 0, i32 67
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %53, -1
  %57 = add i32 %56, %55
  %58 = sub i32 0, %55
  %59 = and i32 %57, %58
  %60 = load ptr, ptr %19, align 8
  %61 = getelementptr i8, ptr %60, i32 %53
  %62 = sub i32 %59, %53
  tail call void @llvm.memset.p0.i32(ptr align 1 %61, i8 -1, i32 %62, i1 false)
  %63 = load ptr, ptr %19, align 8
  %64 = tail call i32 @ubi_calc_data_len(ptr noundef %0, ptr noundef %63, i32 noundef %59) #9
  %65 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 20
  %66 = load i32, ptr %65, align 8
  %67 = load ptr, ptr %19, align 8
  %68 = tail call i32 @ubi_eba_atomic_leb_change(ptr noundef %0, ptr noundef %1, i32 noundef %66, ptr noundef %67, i32 noundef %64) #9
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %52
  %71 = load i64, ptr %9, align 8
  %72 = load i64, ptr %13, align 8
  br label %73

73:                                               ; preds = %70, %46
  %74 = phi i64 [ %72, %70 ], [ %50, %46 ]
  %75 = phi i64 [ %71, %70 ], [ %49, %46 ]
  %76 = icmp sgt i64 %75, %74
  br i1 %76, label %77, label %84, !prof !9

77:                                               ; preds = %73
  %78 = tail call ptr @llvm.thread.pointer() #9
  %79 = getelementptr inbounds %struct.task_struct, ptr %78, i32 0, i32 52
  %80 = load i32, ptr %79, align 8
  %81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.ubi_more_leb_change_data, i32 noundef 412, i32 noundef %80) #10
  tail call void @dump_stack() #10
  %82 = load i64, ptr %9, align 8
  %83 = load i64, ptr %13, align 8
  br label %84

84:                                               ; preds = %77, %73
  %85 = phi i64 [ %83, %77 ], [ %74, %73 ]
  %86 = phi i64 [ %82, %77 ], [ %75, %73 ]
  %87 = icmp eq i64 %86, %85
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.ubi_volume, ptr %1, i32 0, i32 25
  %90 = load i8, ptr %89, align 8
  %91 = and i8 %90, -33
  store i8 %91, ptr %89, align 8
  %92 = load ptr, ptr %19, align 8
  tail call void @vfree(ptr noundef %92) #9
  br label %93

93:                                               ; preds = %88, %84, %52, %43, %28, %4
  %94 = phi i32 [ %68, %52 ], [ -30, %4 ], [ %18, %88 ], [ 0, %84 ], [ -14, %28 ], [ -14, %43 ]
  ret i32 %94
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_calc_data_len(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_change_vtbl_record(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ubi_eba_write_leb_st(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readonly }

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
!10 = !{i64 2148601362, i64 2148601642, i64 2148601976, i64 2148602310}
!11 = !{i64 2149915297, i64 2149915322}
!12 = !{i64 2411409}
!13 = !{i64 2411606}
!14 = !{i64 2149896885}
