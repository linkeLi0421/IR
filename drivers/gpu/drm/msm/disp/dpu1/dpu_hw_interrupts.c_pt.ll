; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_intr_reg = type { i32, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dpu_kms = type { %struct.msm_kms, ptr, i32, ptr, ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.dpu_core_perf, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.dpu_rm, i8, [2 x ptr], ptr, i8, ptr, i8, %struct.dss_module_power, %struct.atomic_t, [2 x ptr], i32 }
%struct.msm_kms = type { ptr, ptr, i32, ptr, ptr, %struct.kthread_work, %struct.mutex, [8 x %struct.mutex], i32, [8 x %struct.msm_pending_timer] }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_pending_timer = type { %struct.msm_hrtimer_work, ptr, ptr, i32 }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dpu_core_perf = type { ptr, ptr, ptr, ptr, i64, i64, %struct.dpu_core_perf_tune, i32, i64, i64, i64 }
%struct.dpu_core_perf_tune = type { i32, i64, i64 }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.dpu_rm = type { [7 x ptr], [7 x ptr], [6 x ptr], [7 x ptr], [4 x ptr], [3 x ptr], i32 }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_hw_intr = type { %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, %struct.spinlock, i32, ptr, ptr }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.dpu_irq_callback = type { %struct.list_head, ptr, ptr }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.73 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@dpu_intr_set = internal unnamed_addr constant [16 x %struct.dpu_intr_reg] [%struct.dpu_intr_reg { i32 24, i32 16, i32 20 }, %struct.dpu_intr_reg { i32 44, i32 8, i32 12 }, %struct.dpu_intr_reg { i32 36, i32 28, i32 32 }, %struct.dpu_intr_reg { i32 434632, i32 434624, i32 434628 }, %struct.dpu_intr_reg { i32 436680, i32 436672, i32 436676 }, %struct.dpu_intr_reg { i32 438728, i32 438720, i32 438724 }, %struct.dpu_intr_reg { i32 440776, i32 440768, i32 440772 }, %struct.dpu_intr_reg { i32 442824, i32 442816, i32 442820 }, %struct.dpu_intr_reg { i32 508964, i32 508956, i32 508960 }, %struct.dpu_intr_reg { i32 513060, i32 513052, i32 513056 }, %struct.dpu_intr_reg { i32 213448, i32 213440, i32 213444 }, %struct.dpu_intr_reg { i32 217544, i32 217536, i32 217540 }, %struct.dpu_intr_reg { i32 221640, i32 221632, i32 221636 }, %struct.dpu_intr_reg { i32 225736, i32 225728, i32 225732 }, %struct.dpu_intr_reg { i32 229832, i32 229824, i32 229828 }, %struct.dpu_intr_reg { i32 233928, i32 233920, i32 233924 }], align 4
@.str = private unnamed_addr constant [30 x i8] c"dpu_intr_set[reg_idx].clr_off\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\013[dpu error][%pS] invalid irq_idx=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\013invalid IRQ index: [%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"\013[dpu error]invalid params\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"\013[dpu error]invalid irq_cb:%d func:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"\013[dpu error]invalid IRQ index: [%d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"\013[dpu error]Fail to enable IRQ for irq_idx:%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"\013[dpu error]Fail to disable IRQ for irq_idx:%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"core_irq\00", align 1
@dpu_debugfs_core_irq_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @dpu_debugfs_core_irq_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [50 x i8] c"\013[dpu error]irq_idx=%d still enabled/registered\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"no registered cb, idx:%d\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__tracepoint_dpu_core_irq_register_callback = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"reg->clr_off\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"reg->en_off\00", align 1
@__tracepoint_dpu_core_irq_unregister_callback = external dso_local global %struct.tracepoint, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.18 = private unnamed_addr constant [50 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"idx:%d irq:%d cb:%d\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"dpu_intr_set[i].clr_off\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"dpu_intr_set[i].en_off\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %85, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.dpu_hw_intr, ptr %3, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.dpu_hw_intr, ptr %3, i32 0, i32 5
  br label %9

9:                                                ; preds = %81, %5
  %10 = phi i32 [ 0, %5 ], [ %82, %81 ]
  %11 = lshr i32 %10, 5
  %12 = getelementptr i32, ptr %8, i32 %11
  %13 = load volatile i32, ptr %12, align 4
  %14 = shl nuw i32 1, %10
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %81, label %17

17:                                               ; preds = %9
  %18 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %10, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @dpu_reg_read(ptr noundef nonnull %3, i32 noundef %19) #8
  %21 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %10, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 @dpu_reg_read(ptr noundef nonnull %3, i32 noundef %22) #8
  %24 = icmp eq i32 %20, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %17
  %26 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %10
  %27 = load i32, ptr %26, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %3, i32 noundef %27, i32 noundef %20, ptr noundef nonnull @.str) #8
  br label %28

28:                                               ; preds = %25, %17
  %29 = and i32 %23, %20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %81, label %31

31:                                               ; preds = %28
  %32 = shl i32 %10, 5
  %33 = load ptr, ptr %2, align 8
  br label %34

34:                                               ; preds = %75, %31
  %35 = phi ptr [ %33, %31 ], [ %76, %75 ]
  %36 = phi i32 [ %29, %31 ], [ %79, %75 ]
  %37 = tail call i32 @llvm.cttz.i32(i32 %36, i1 true), !range !8
  %38 = or i32 %37, %32
  %39 = getelementptr inbounds %struct.dpu_hw_intr, ptr %35, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.list_head, ptr %40, i32 %38
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10, i32 noundef %38) #8
  %45 = load ptr, ptr %2, align 8
  br label %46

46:                                               ; preds = %44, %34
  %47 = phi ptr [ %45, %44 ], [ %35, %34 ]
  %48 = getelementptr inbounds %struct.dpu_hw_intr, ptr %47, i32 0, i32 7
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr %struct.atomic_t, ptr %49, i32 %38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %50) #8, !srcloc !9
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %50, ptr %50, i32 1, ptr elementtype(i32) %50) #8, !srcloc !10
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.dpu_hw_intr, ptr %52, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr %struct.list_head, ptr %54, i32 %38
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, %55
  br i1 %57, label %75, label %58

58:                                               ; preds = %68, %46
  %59 = phi ptr [ %69, %68 ], [ %52, %46 ]
  %60 = phi ptr [ %70, %68 ], [ %56, %46 ]
  %61 = getelementptr inbounds %struct.dpu_irq_callback, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.dpu_irq_callback, ptr %60, i32 0, i32 2
  %66 = load ptr, ptr %65, align 4
  tail call void %62(ptr noundef %66, i32 noundef %38) #8
  %67 = load ptr, ptr %2, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = phi ptr [ %59, %58 ], [ %67, %64 ]
  %70 = load ptr, ptr %60, align 4
  %71 = getelementptr inbounds %struct.dpu_hw_intr, ptr %69, i32 0, i32 6
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr %struct.list_head, ptr %72, i32 %38
  %74 = icmp eq ptr %70, %73
  br i1 %74, label %75, label %58

75:                                               ; preds = %68, %46
  %76 = phi ptr [ %52, %46 ], [ %69, %68 ]
  %77 = shl nuw i32 1, %37
  %78 = xor i32 %77, -1
  %79 = and i32 %36, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %34

81:                                               ; preds = %75, %28, %9
  %82 = add nuw nsw i32 %10, 1
  %83 = icmp eq i32 %82, 16
  br i1 %83, label %84, label %9

84:                                               ; preds = %81
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #8
  br label %85

85:                                               ; preds = %84, %1
  %86 = phi i32 [ 1, %84 ], [ 0, %1 ]
  ret i32 %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_read(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = icmp slt i32 %1, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = tail call ptr @llvm.returnaddress(i32 0)
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10, i32 noundef %1) #9
  br label %34

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.dpu_hw_intr, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, %1
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %34

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.dpu_hw_intr, ptr %5, i32 0, i32 4
  %20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %19) #8
  %21 = lshr i32 %1, 5
  %22 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %21, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @dpu_reg_read(ptr noundef nonnull %5, i32 noundef %23) #8
  %25 = and i32 %1, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = and i1 %28, %2
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %21
  %32 = load i32, ptr %31, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %5, i32 noundef %32, i32 noundef %27, ptr noundef nonnull @.str) #8
  br label %33

33:                                               ; preds = %30, %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %20) #8
  br label %34

34:                                               ; preds = %33, %16, %9, %3
  %35 = phi i32 [ 0, %9 ], [ 0, %16 ], [ %27, %33 ], [ 0, %3 ]
  ret i32 %35
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_intr_init(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %29

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 52) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  store ptr %0, ptr %8, align 8
  %11 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %8, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %1, align 4
  %17 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %8, i32 0, i32 4
  store i32 %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.dpu_hw_intr, ptr %8, i32 0, i32 3
  store i32 512, ptr %18, align 8
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %20 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 64) #10
  %21 = getelementptr inbounds %struct.dpu_hw_intr, ptr %8, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #8
  br label %29

24:                                               ; preds = %10
  %25 = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %1, i32 0, i32 27
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dpu_hw_intr, ptr %8, i32 0, i32 5
  store i32 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.dpu_hw_intr, ptr %8, i32 0, i32 4
  store i32 0, ptr %28, align 4
  br label %29

29:                                               ; preds = %24, %23, %6, %2
  %30 = phi ptr [ inttoptr (i32 -12 to ptr), %23 ], [ %8, %24 ], [ inttoptr (i32 -22 to ptr), %2 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_hw_intr_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.dpu_hw_intr, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.dpu_hw_intr, ptr %0, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.dpu_hw_intr, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #8
  tail call void @kfree(ptr noundef nonnull %0) #8
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_register_callback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %103

12:                                               ; preds = %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dpu_irq_callback, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %12
  %19 = phi i32 [ 0, %12 ], [ 1, %14 ]
  %20 = phi i32 [ -1, %12 ], [ 0, %14 ]
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %20) #9
  br label %103

22:                                               ; preds = %14
  %23 = icmp slt i32 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, %1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #9
  br label %103

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 4
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #8
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_register_callback, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !13
  %47 = tail call i32 @__traceiter_dpu_core_irq_register_callback(ptr noundef null, i32 noundef %1, ptr noundef nonnull %2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !14
  br label %48

48:                                               ; preds = %46, %35, %30
  %49 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %49, align 4
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_intr, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.list_head, ptr %55, i32 %1
  %57 = getelementptr %struct.list_head, ptr %55, i32 %1, i32 1
  %58 = load ptr, ptr %57, align 4
  store ptr %2, ptr %57, align 4
  store ptr %56, ptr %2, align 4
  store ptr %58, ptr %49, align 4
  store volatile ptr %2, ptr %58, align 4
  %59 = load ptr, ptr %5, align 8
  %60 = getelementptr inbounds %struct.dpu_hw_intr, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr %struct.list_head, ptr %61, i32 %1
  %63 = load ptr, ptr %49, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %65, label %100

65:                                               ; preds = %48
  %66 = icmp eq ptr %59, null
  br i1 %66, label %98, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.dpu_hw_intr, ptr %59, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %69, %1
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %98

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.dpu_hw_intr, ptr %59, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %75 = load volatile i32, ptr %74, align 4
  store volatile i32 %75, ptr %4, align 4
  %76 = lshr i32 %75, 16
  %77 = and i32 %75, 65535
  %78 = icmp eq i32 %77, %76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %78, label %79, label %80, !prof !15

79:                                               ; preds = %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #8, !srcloc !16
  unreachable

80:                                               ; preds = %73
  %81 = lshr i32 %1, 5
  %82 = getelementptr inbounds %struct.dpu_hw_intr, ptr %59, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i32, ptr %83, i32 %81
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %1, 31
  %87 = shl nuw i32 1, %86
  %88 = and i32 %85, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %81
  %92 = or i32 %85, %87
  %93 = load i32, ptr %91, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %59, i32 noundef %93, i32 noundef %87, ptr noundef nonnull @.str.14) #8
  %94 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %81, i32 1
  %95 = load i32, ptr %94, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %59, i32 noundef %95, i32 noundef %92, ptr noundef nonnull @.str.15) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %96 = load ptr, ptr %82, align 4
  %97 = getelementptr i32, ptr %96, i32 %81
  store i32 %92, ptr %97, align 4
  br label %100

98:                                               ; preds = %71, %65
  %99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %1) #9
  br label %100

100:                                              ; preds = %98, %90, %80, %48
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr inbounds %struct.dpu_hw_intr, ptr %101, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %102, i32 noundef %32) #8
  br label %103

103:                                              ; preds = %100, %28, %18, %10
  %104 = phi i32 [ -22, %28 ], [ 0, %100 ], [ -22, %18 ], [ -22, %10 ]
  ret i32 %104
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_core_irq_unregister_callback(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %98

12:                                               ; preds = %3
  %13 = icmp eq ptr %2, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.dpu_irq_callback, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %12
  %19 = phi i32 [ 0, %12 ], [ 1, %14 ]
  %20 = phi i32 [ -1, %12 ], [ 0, %14 ]
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19, i32 noundef %20) #9
  br label %98

22:                                               ; preds = %14
  %23 = icmp slt i32 %1, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ugt i32 %26, %1
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %22
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %1) #9
  br label %98

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 4
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #8
  %33 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dpu_core_irq_unregister_callback, i32 0, i32 1), align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = tail call ptr @llvm.thread.pointer() #8
  %37 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 8
  %39 = lshr i32 %38, 5
  %40 = getelementptr i32, ptr @__cpu_online_mask, i32 %39
  %41 = load volatile i32, ptr %40, align 4
  %42 = and i32 %38, 31
  %43 = shl nuw i32 1, %42
  %44 = and i32 %43, %41
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %35
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !18
  %47 = tail call i32 @__traceiter_dpu_core_irq_unregister_callback(ptr noundef null, i32 noundef %1, ptr noundef nonnull %2) #8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %48

48:                                               ; preds = %46, %35, %30
  %49 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %2, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store volatile ptr %2, ptr %2, align 4
  store ptr %2, ptr %49, align 4
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.dpu_hw_intr, ptr %53, i32 0, i32 6
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.list_head, ptr %55, i32 %1
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %59, label %95

59:                                               ; preds = %48
  %60 = icmp eq ptr %53, null
  br i1 %60, label %93, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.dpu_hw_intr, ptr %53, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = icmp ugt i32 %63, %1
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %93

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.dpu_hw_intr, ptr %53, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %69 = load volatile i32, ptr %68, align 4
  store volatile i32 %69, ptr %4, align 4
  %70 = lshr i32 %69, 16
  %71 = and i32 %69, 65535
  %72 = icmp eq i32 %71, %70
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %72, label %73, label %74, !prof !15

73:                                               ; preds = %67
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 294, 0\0A.popsection", ""() #8, !srcloc !20
  unreachable

74:                                               ; preds = %67
  %75 = lshr i32 %1, 5
  %76 = getelementptr inbounds %struct.dpu_hw_intr, ptr %53, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i32, ptr %77, i32 %75
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %1, 31
  %81 = shl nuw i32 1, %80
  %82 = and i32 %79, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %74
  %85 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %75
  %86 = xor i32 %81, -1
  %87 = and i32 %79, %86
  %88 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %75, i32 1
  %89 = load i32, ptr %88, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %53, i32 noundef %89, i32 noundef %87, ptr noundef nonnull @.str.15) #8
  %90 = load i32, ptr %85, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %53, i32 noundef %90, i32 noundef %81, ptr noundef nonnull @.str.14) #8
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  %91 = load ptr, ptr %76, align 4
  %92 = getelementptr i32, ptr %91, i32 %75
  store i32 %87, ptr %92, align 4
  br label %95

93:                                               ; preds = %65, %59
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %1) #9
  br label %95

95:                                               ; preds = %93, %84, %74, %48
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds %struct.dpu_hw_intr, ptr %96, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %32) #8
  br label %98

98:                                               ; preds = %95, %28, %18, %10
  %99 = phi i32 [ -22, %28 ], [ 0, %95 ], [ -22, %18 ], [ -22, %10 ]
  ret i32 %99
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_debugfs_core_irq_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %1, ptr noundef %0, ptr noundef nonnull @dpu_debugfs_core_irq_fops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_core_irq_preinstall(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dpu_hw_intr, ptr %7, i32 0, i32 5
  br label %11

11:                                               ; preds = %22, %9
  %12 = phi i32 [ 0, %9 ], [ %23, %22 ]
  %13 = lshr i32 %12, 5
  %14 = getelementptr i32, ptr %10, i32 %13
  %15 = load volatile i32, ptr %14, align 4
  %16 = shl nuw i32 1, %12
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %12
  %21 = load i32, ptr %20, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %7, i32 noundef %21, i32 noundef -1, ptr noundef nonnull @.str.20) #8
  br label %22

22:                                               ; preds = %19, %11
  %23 = add nuw nsw i32 %12, 1
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %11

25:                                               ; preds = %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %26 = load ptr, ptr %6, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.dpu_hw_intr, ptr %26, i32 0, i32 5
  br label %30

30:                                               ; preds = %41, %28
  %31 = phi i32 [ 0, %28 ], [ %42, %41 ]
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr %29, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = shl nuw i32 1, %31
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %31, i32 1
  %40 = load i32, ptr %39, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %26, i32 noundef %40, i32 noundef 0, ptr noundef nonnull @.str.21) #8
  br label %41

41:                                               ; preds = %38, %30
  %42 = add nuw nsw i32 %31, 1
  %43 = icmp eq i32 %42, 16
  br i1 %43, label %44, label %30

44:                                               ; preds = %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  br label %45

45:                                               ; preds = %44, %25, %1
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  %48 = tail call i32 @__pm_runtime_idle(ptr noundef %47, i32 noundef 4) #8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.dpu_hw_intr, ptr %49, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 8) #8
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %57, label %54, !prof !15

54:                                               ; preds = %45
  %55 = extractvalue { i32, i1 } %52, 0
  %56 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %55, i32 noundef 3520) #11
  br label %57

57:                                               ; preds = %54, %45
  %58 = phi ptr [ %56, %54 ], [ null, %45 ]
  %59 = load ptr, ptr %6, align 8
  %60 = getelementptr inbounds %struct.dpu_hw_intr, ptr %59, i32 0, i32 6
  store ptr %58, ptr %60, align 4
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.dpu_hw_intr, ptr %61, i32 0, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %63, i32 4) #8
  %65 = extractvalue { i32, i1 } %64, 1
  br i1 %65, label %69, label %66, !prof !15

66:                                               ; preds = %57
  %67 = extractvalue { i32, i1 } %64, 0
  %68 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %67, i32 noundef 3520) #11
  br label %69

69:                                               ; preds = %66, %57
  %70 = phi ptr [ %68, %66 ], [ null, %57 ]
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.dpu_hw_intr, ptr %71, i32 0, i32 7
  store ptr %70, ptr %72, align 4
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds %struct.dpu_hw_intr, ptr %73, i32 0, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %77, %69
  %78 = phi ptr [ %89, %77 ], [ %73, %69 ]
  %79 = phi i32 [ %88, %77 ], [ 0, %69 ]
  %80 = getelementptr inbounds %struct.dpu_hw_intr, ptr %78, i32 0, i32 6
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr %struct.list_head, ptr %81, i32 %79
  store volatile ptr %82, ptr %82, align 4
  %83 = getelementptr %struct.list_head, ptr %81, i32 %79, i32 1
  store ptr %82, ptr %83, align 4
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr inbounds %struct.dpu_hw_intr, ptr %84, i32 0, i32 7
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr %struct.atomic_t, ptr %86, i32 %79
  store volatile i32 0, ptr %87, align 4
  %88 = add nuw i32 %79, 1
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds %struct.dpu_hw_intr, ptr %89, i32 0, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %77, label %93

93:                                               ; preds = %77, %69
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @dpu_core_irq_uninstall(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 19
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %5 = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #8
  %6 = getelementptr inbounds %struct.dpu_kms, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_intr, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %22, %1
  %12 = phi ptr [ %23, %22 ], [ %7, %1 ]
  %13 = phi i32 [ %24, %22 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.dpu_hw_intr, ptr %12, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.list_head, ptr %15, i32 %13
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %13) #9
  %21 = load ptr, ptr %6, align 8
  br label %22

22:                                               ; preds = %19, %11
  %23 = phi ptr [ %12, %11 ], [ %21, %19 ]
  %24 = add nuw i32 %13, 1
  %25 = getelementptr inbounds %struct.dpu_hw_intr, ptr %23, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %11, label %28

28:                                               ; preds = %22, %1
  %29 = phi ptr [ %7, %1 ], [ %23, %22 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %67, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.dpu_hw_intr, ptr %29, i32 0, i32 5
  br label %33

33:                                               ; preds = %44, %31
  %34 = phi i32 [ 0, %31 ], [ %45, %44 ]
  %35 = lshr i32 %34, 5
  %36 = getelementptr i32, ptr %32, i32 %35
  %37 = load volatile i32, ptr %36, align 4
  %38 = shl nuw i32 1, %34
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33
  %42 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %34
  %43 = load i32, ptr %42, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %29, i32 noundef %43, i32 noundef -1, ptr noundef nonnull @.str.20) #8
  br label %44

44:                                               ; preds = %41, %33
  %45 = add nuw nsw i32 %34, 1
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %33

47:                                               ; preds = %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %6, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %67, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.dpu_hw_intr, ptr %48, i32 0, i32 5
  br label %52

52:                                               ; preds = %63, %50
  %53 = phi i32 [ 0, %50 ], [ %64, %63 ]
  %54 = lshr i32 %53, 5
  %55 = getelementptr i32, ptr %51, i32 %54
  %56 = load volatile i32, ptr %55, align 4
  %57 = shl nuw i32 1, %53
  %58 = and i32 %56, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %52
  %61 = getelementptr [16 x %struct.dpu_intr_reg], ptr @dpu_intr_set, i32 0, i32 %53, i32 1
  %62 = load i32, ptr %61, align 4
  tail call void @dpu_reg_write(ptr noundef nonnull %48, i32 noundef %62, i32 noundef 0, ptr noundef nonnull @.str.21) #8
  br label %63

63:                                               ; preds = %60, %52
  %64 = add nuw nsw i32 %53, 1
  %65 = icmp eq i32 %64, 16
  br i1 %65, label %66, label %52

66:                                               ; preds = %63
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  br label %67

67:                                               ; preds = %66, %47, %28
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %70 = tail call i32 @__pm_runtime_idle(ptr noundef %69, i32 noundef 4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_irq_register_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dpu_core_irq_unregister_callback(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_core_irq_open(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 47
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @single_open(ptr noundef %1, ptr noundef nonnull @dpu_debugfs_core_irq_show, ptr noundef %4) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_debugfs_core_irq_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.dpu_kms, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !15

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.dpu_hw_intr, ptr %6, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %46, label %15

14:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 543, i32 noundef 9, ptr noundef null) #8
  br label %46

15:                                               ; preds = %40, %10
  %16 = phi ptr [ %42, %40 ], [ %6, %10 ]
  %17 = phi i32 [ %41, %40 ], [ 0, %10 ]
  %18 = getelementptr inbounds %struct.dpu_hw_intr, ptr %16, i32 0, i32 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.dpu_hw_intr, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr %struct.atomic_t, ptr %22, i32 %17
  %24 = load volatile i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dpu_hw_intr, ptr %20, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.list_head, ptr %26, i32 %17
  br label %28

28:                                               ; preds = %28, %15
  %29 = phi i32 [ 0, %15 ], [ %33, %28 ]
  %30 = phi ptr [ %27, %15 ], [ %31, %28 ]
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %27
  %33 = add i32 %29, 1
  br i1 %32, label %34, label %28

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.dpu_hw_intr, ptr %20, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %19) #8
  %36 = icmp ne i32 %24, 0
  %37 = icmp ne i32 %29, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %24, i32 noundef %29) #8
  br label %40

40:                                               ; preds = %39, %34
  %41 = add nuw i32 %17, 1
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.dpu_hw_intr, ptr %42, i32 0, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %41, %44
  br i1 %45, label %15, label %46

46:                                               ; preds = %40, %14, %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 376194, i64 2147866165, i64 2147866191, i64 2147866238, i64 2147866260, i64 2147866288, i64 2147866308}
!10 = !{i64 2147878377, i64 2147878403, i64 2147878432, i64 2147878466, i64 2147878497, i64 2147878520}
!11 = !{i64 2156861347}
!12 = !{i64 2156875478}
!13 = !{i64 2156737137}
!14 = !{i64 2156737343}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156862455, i64 2156862969, i64 2156862492, i64 2156862548, i64 2156862582, i64 2156862606, i64 2156862647, i64 2156862668, i64 2156862696, i64 2156862730}
!17 = !{i64 2156863876}
!18 = !{i64 2156751601}
!19 = !{i64 2156751811}
!20 = !{i64 2156865889, i64 2156866403, i64 2156865926, i64 2156865982, i64 2156866016, i64 2156866040, i64 2156866081, i64 2156866102, i64 2156866130, i64 2156866164}
!21 = !{i64 2156867310}
!22 = !{i64 2156868840}
!23 = !{i64 2156869463}
