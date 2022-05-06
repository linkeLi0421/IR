; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a6xx_gmu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a6xx_gmu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.a6xx_gmu_oob_bits = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.lock_class_key = type {}
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.a6xx_gmu = type { ptr, %struct.mutex, ptr, ptr, ptr, i32, i32, ptr, i32, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, %struct.a6xx_gmu_bo, i32, ptr, ptr, ptr, i32, i32, [16 x i32], [16 x i32], i32, [4 x i32], [4 x i32], i32, [2 x %struct.a6xx_hfi_queue], i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.a6xx_gmu_bo = type { ptr, ptr, i32, i64 }
%struct.a6xx_hfi_queue = type { ptr, %struct.spinlock, ptr, %struct.atomic_t, [8 x i32], i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.a6xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, %struct.a6xx_gmu, ptr, i64, ptr, i8, ptr, ptr, ptr, i8 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.95, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.95 = type { i8, i64 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.msm_gpu_fault_info = type { i64, i32, i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.msm_gpu_devfreq = type { ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i64, i64, i64, %struct.msm_hrtimer_work, %struct.msm_hrtimer_work }
%struct.dev_pm_qos_request = type { i32, %union.anon.68, ptr }
%union.anon.68 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.msm_hrtimer_work = type { %struct.hrtimer, %struct.kthread_work, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.block_header = type { i32, i32, i32, i32, [0 x i32] }
%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@.str = private unnamed_addr constant [33 x i8] c"GMU set GPU frequency error: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@a6xx_gmu_set_oob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"drivers/gpu/drm/msm/adreno/a6xx_gmu.c\00", align 1
@a6xx_gmu_oob_bits = internal unnamed_addr constant [4 x %struct.a6xx_gmu_oob_bits] [%struct.a6xx_gmu_oob_bits { i32 22, i32 30, i32 0, i32 0, i32 30, i32 0, ptr @.str.17 }, %struct.a6xx_gmu_oob_bits { i32 16, i32 24, i32 30, i32 31, i32 24, i32 31, ptr @.str.18 }, %struct.a6xx_gmu_oob_bits { i32 23, i32 31, i32 0, i32 0, i32 31, i32 0, ptr @.str.19 }, %struct.a6xx_gmu_oob_bits { i32 17, i32 25, i32 28, i32 30, i32 25, i32 29, ptr @.str.20 }], align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"*ERROR* Invalid non-legacy GMU request %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"*ERROR* Timeout waiting for GMU OOB set %s: 0x%x\0A\00", align 1
@a6xx_gmu_clear_oob.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"The GMU is not set up yet\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"rscc\00", align 1
@a6xx_gmu_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"&gmu->lock\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"icache\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"dcache\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"hfi\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"gmu\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"gx\00", align 1
@__tracepoint_msm_gmu_freq_change = external dso_local global %struct.tracepoint, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"BOOT_SLUMBER\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"GPU_SET\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"GPU_DCVS\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"PERFCOUNTER\00", align 1
@a6xx_gmu_fw_start.rpmh_init = internal unnamed_addr global i1 false, align 1
@.str.21 = private unnamed_addr constant [28 x i8] c"GMU firmware is not loaded\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"*ERROR* Unable to power on the GPU RSC\0A\00", align 1
@.str.23 = private unnamed_addr constant [56 x i8] c"*ERROR* GPU RSC sequence stuck while waking up the GPU\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"gmu_pdc\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"gmu_pdc_seq\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"*ERROR* GMU firmware is bigger than the available region\0A\00", align 1
@.str.27 = private unnamed_addr constant [67 x i8] c"*ERROR* failed to match fw block (addr=%.8x size=%d data[0]=%.8x)\0A\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"*ERROR* GMU firmware initialization timed out\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"*ERROR* Unable to power on SPTPRAC: 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"*ERROR* Unable to start the HFI queues\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"*ERROR* Unable to power off the GPU RSC\0A\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to power off SPTPRAC: 0x%x\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"*ERROR* Unable to slumber GMU: status = 0%x/0%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"*ERROR* The GMU did not go into slumber\0A\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.36 = private unnamed_addr constant [41 x i8] c"*ERROR* Unable to find the %s registers\0A\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"*ERROR* Unable to map the %s registers\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"*ERROR* Unable to get interrupt %s %d\0A\00", align 1
@a6xx_hfi_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a6xx_hfi_irq = private unnamed_addr constant [13 x i8] c"a6xx_hfi_irq\00", align 1
@.str.39 = private unnamed_addr constant [20 x i8] c"GMU firmware fault\0A\00", align 1
@a6xx_gmu_irq._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@__func__.a6xx_gmu_irq = private unnamed_addr constant [13 x i8] c"a6xx_gmu_irq\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"GMU watchdog expired\0A\00", align 1
@a6xx_gmu_irq._rs.41 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.42 = private unnamed_addr constant [19 x i8] c"GMU AHB bus error\0A\00", align 1
@a6xx_gmu_irq._rs.43 = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, align 4
@.str.44 = private unnamed_addr constant [23 x i8] c"GMU fence error: 0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [49 x i8] c"*ERROR* Unable to set the OPP table for the GMU\0A\00", align 1
@.str.46 = private unnamed_addr constant [44 x i8] c"The GMU frequency table is being truncated\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_sptprac_is_on(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 28
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 82752
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = and i32 %9, 20
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ %11, %5 ], [ false, %1 ]
  ret i1 %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_gx_is_on(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 28
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 82752
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = and i32 %9, 192
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ %11, %5 ], [ false, %1 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_set_freq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %4 = tail call i32 @dev_pm_opp_get_freq(ptr noundef %1) #9
  %5 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 26
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %85, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 20
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %18, %8
  %14 = phi i32 [ %19, %18 ], [ 0, %8 ]
  %15 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 21, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %4, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %21, label %13

21:                                               ; preds = %18, %13, %8
  %22 = phi i32 [ 0, %8 ], [ %14, %13 ], [ %11, %18 ]
  %23 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 19
  store i32 %22, ptr %23, align 8
  %24 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 21, i32 %22
  %25 = load i32, ptr %24, align 4
  store i32 %25, ptr %5, align 4
  %26 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_msm_gmu_freq_change, i32 0, i32 1), align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = tail call ptr @llvm.thread.pointer() #9
  %30 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 8
  %32 = lshr i32 %31, 5
  %33 = getelementptr i32, ptr @__cpu_online_mask, i32 %32
  %34 = load volatile i32, ptr %33, align 4
  %35 = and i32 %31, 31
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %28
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !9
  %40 = tail call i32 @__traceiter_msm_gmu_freq_change(ptr noundef null, i32 noundef %25, i32 noundef %22) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !10
  br label %41

41:                                               ; preds = %39, %28, %21
  %42 = load ptr, ptr %3, align 8
  %43 = tail call i32 @pm_runtime_get_if_active(ptr noundef %42, i1 noundef zeroext false) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %85, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 30
  %47 = load i8, ptr %46, align 2, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = tail call i32 @a6xx_hfi_set_freq(ptr noundef %3, i32 noundef %22) #9
  br label %78

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 36848
  tail call void @msm_writel(i32 noundef 0, ptr noundef %54) #9
  %55 = or i32 %22, 805306368
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr i8, ptr %56, i32 36852
  tail call void @msm_writel(i32 noundef %55, ptr noundef %57) #9
  %58 = load ptr, ptr %52, align 4
  %59 = getelementptr i8, ptr %58, i32 36856
  tail call void @msm_writel(i32 noundef 255, ptr noundef %59) #9
  %60 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %3, i32 noundef 2)
  %61 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  %62 = tail call zeroext i1 @mutex_is_locked(ptr noundef %61) #9
  %63 = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %66, label %65, !prof !11

65:                                               ; preds = %51
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i8, ptr %46, align 2, !range !8
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, i32 1, i32 -2147483648
  %70 = load ptr, ptr %52, align 4
  %71 = getelementptr i8, ptr %70, i32 83536
  tail call void @msm_writel(i32 noundef %69, ptr noundef %71) #9
  %72 = load ptr, ptr %52, align 4
  %73 = getelementptr i8, ptr %72, i32 36860
  %74 = tail call i32 @msm_readl(ptr noundef %73) #9
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %66
  %77 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str, i32 noundef %74) #10
  br label %78

78:                                               ; preds = %76, %66, %49
  %79 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.platform_device, ptr %80, i32 0, i32 3
  %82 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %81, ptr noundef %1) #9
  %83 = load ptr, ptr %3, align 8
  %84 = tail call i32 @__pm_runtime_idle(ptr noundef %83, i32 noundef 5) #9
  br label %85

85:                                               ; preds = %78, %41, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_freq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_hfi_set_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_set_opp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_set_oob(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 1
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #9
  %5 = load i1, ptr @a6xx_gmu_set_oob.__already_done, align 1
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %8, label %7, !prof !11

7:                                                ; preds = %2
  store i1 true, ptr @a6xx_gmu_set_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 299, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp ugt i32 %1, 3
  br i1 %9, label %71, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1
  %16 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 1
  br label %26

17:                                               ; preds = %10
  %18 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 2
  %19 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 3
  %20 = and i32 %1, 1073741821
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %0, align 8
  %24 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 6
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %25) #9
  br label %71

26:                                               ; preds = %17, %14
  %27 = phi ptr [ %16, %14 ], [ %19, %17 ]
  %28 = phi ptr [ %15, %14 ], [ %18, %17 ]
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %27, align 4
  %31 = shl nuw i32 1, %29
  %32 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 83536
  tail call void @msm_writel(i32 noundef %31, ptr noundef %34) #9
  %35 = tail call i64 @ktime_get() #9
  %36 = add i64 %35, 10000000
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 83528
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %40 = shl nuw i32 1, %30
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %50, %26
  %44 = tail call i64 @ktime_get() #9
  %45 = icmp sgt i64 %44, %36
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load ptr, ptr %32, align 4
  %48 = getelementptr i8, ptr %47, i32 83528
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  br label %56

50:                                               ; preds = %43
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %51 = load ptr, ptr %32, align 4
  %52 = getelementptr i8, ptr %51, i32 83528
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !13
  %54 = and i32 %53, %40
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %43, label %56

56:                                               ; preds = %50, %46, %26
  %57 = phi i32 [ %49, %46 ], [ %39, %26 ], [ %53, %50 ]
  %58 = and i32 %57, %40
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 -110, i32 0
  br i1 %59, label %61, label %68

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 8
  %63 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 6
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %32, align 4
  %66 = getelementptr i8, ptr %65, i32 83528
  %67 = tail call i32 @msm_readl(ptr noundef %66) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef %64, i32 noundef %67) #9
  br label %68

68:                                               ; preds = %61, %56
  %69 = load ptr, ptr %32, align 4
  %70 = getelementptr i8, ptr %69, i32 83524
  tail call void @msm_writel(i32 noundef %40, ptr noundef %70) #9
  br label %71

71:                                               ; preds = %68, %22, %8
  %72 = phi i32 [ %60, %68 ], [ -22, %22 ], [ -22, %8 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_clear_oob(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 1
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #9
  %5 = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  %6 = select i1 %4, i1 true, i1 %5
  br i1 %6, label %8, label %7, !prof !11

7:                                                ; preds = %2
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %8

8:                                                ; preds = %7, %2
  %9 = icmp ugt i32 %1, 3
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %12 = load i8, ptr %11, align 2, !range !8
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 4
  %15 = getelementptr [4 x %struct.a6xx_gmu_oob_bits], ptr @a6xx_gmu_oob_bits, i32 0, i32 %1, i32 5
  %16 = select i1 %13, ptr %15, ptr %14
  %17 = load i32, ptr %16, align 4
  %18 = shl nuw i32 1, %17
  %19 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 83536
  tail call void @msm_writel(i32 noundef %18, ptr noundef %21) #9
  br label %22

22:                                               ; preds = %10, %8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @a6xx_gmu_get_freq(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 26
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_wait_for_idle(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load volatile i32, ptr @jiffies, align 64
  %3 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 28
  %4 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %6 = sub i32 -100, %2
  br label %7

7:                                                ; preds = %27, %1
  %8 = load i32, ptr %4, align 8
  %9 = icmp eq i32 %8, 2
  %10 = select i1 %9, i32 3, i32 %8
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr i8, ptr %11, i32 82864
  %13 = tail call i32 @msm_readl(ptr noundef %12) #9
  %14 = icmp eq i32 %13, %10
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = load i32, ptr %4, align 8
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %31

18:                                               ; preds = %15
  %19 = load i8, ptr %3, align 8, !range !8
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 82752
  %24 = tail call i32 @msm_readl(ptr noundef %23) #9
  %25 = and i32 %24, 192
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21, %7
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %6, %28
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %7, label %31

31:                                               ; preds = %27, %21, %18, %15
  %32 = phi i32 [ -110, %27 ], [ 0, %21 ], [ 0, %15 ], [ 0, %18 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_resume(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 28
  %4 = load i8, ptr %3, align 8, !range !8
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !15

6:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 922, i32 noundef 9, ptr noundef nonnull @.str.5) #9
  br label %592

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 29
  store i8 0, ptr %8, align 1
  %9 = load ptr, ptr %2, align 8
  %10 = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #9
  %11 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %15 = or i1 %13, %14
  br i1 %15, label %18, label %16

16:                                               ; preds = %7
  %17 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %12, i32 noundef 4) #9
  br label %18

18:                                               ; preds = %16, %7
  %19 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = tail call i32 @clk_set_rate(ptr noundef %20, i32 noundef 200000000) #9
  %22 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 18
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @clk_set_rate(ptr noundef %23, i32 noundef 150000000) #9
  %25 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 15
  %26 = load i32, ptr %25, align 8
  %27 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 16
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @clk_bulk_prepare(i32 noundef %26, ptr noundef %28) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %18
  %32 = tail call i32 @clk_bulk_enable(i32 noundef %26, ptr noundef %28) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  tail call void @clk_bulk_unprepare(i32 noundef %26, ptr noundef %28) #9
  br label %35

35:                                               ; preds = %34, %18
  %36 = phi i32 [ %32, %34 ], [ %29, %18 ]
  %37 = load ptr, ptr %11, align 4
  %38 = tail call i32 @__pm_runtime_idle(ptr noundef %37, i32 noundef 5) #9
  %39 = load ptr, ptr %2, align 8
  %40 = tail call i32 @__pm_runtime_idle(ptr noundef %39, i32 noundef 5) #9
  br label %592

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 19
  %43 = load i32, ptr %42, align 8
  %44 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 21, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.platform_device, ptr %47, i32 0, i32 3
  %49 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %48, i32 noundef %45, i1 noundef zeroext true) #9
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load ptr, ptr %46, align 8
  %53 = getelementptr inbounds %struct.platform_device, ptr %52, i32 0, i32 3
  %54 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %53, ptr noundef %49) #9
  tail call void @dev_pm_opp_put(ptr noundef %49) #9
  br label %55

55:                                               ; preds = %51, %41
  %56 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 150544
  tail call void @msm_writel(i32 noundef -1, ptr noundef %58) #9
  %59 = load ptr, ptr %56, align 4
  %60 = getelementptr i8, ptr %59, i32 150552
  tail call void @msm_writel(i32 noundef -42, ptr noundef %60) #9
  %61 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 6
  %62 = load i32, ptr %61, align 8
  tail call void @enable_irq(i32 noundef %62) #9
  %63 = load ptr, ptr %56, align 4
  %64 = getelementptr i8, ptr %63, i32 83760
  %65 = tail call i32 @msm_readl(ptr noundef %64) #9
  %66 = icmp ne i32 %65, 1
  %67 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 30
  %68 = load i8, ptr %67, align 2, !range !8
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i1 true, i1 %66
  %71 = zext i1 %70 to i32
  %72 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  switch i32 %73, label %74 [
    i32 650, label %79
    i32 620, label %79
    i32 660, label %79
  ]

74:                                               ; preds = %55
  %75 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %76 = load i32, ptr %75, align 8
  %77 = insertvalue [1 x i32] undef, i32 %76, 0
  %78 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %77) #9
  br i1 %78, label %79, label %84

79:                                               ; preds = %74, %55, %55, %55
  %80 = load ptr, ptr %56, align 4
  %81 = getelementptr i8, ptr %80, i32 82884
  tail call void @msm_writel(i32 noundef 1, ptr noundef %81) #9
  %82 = load ptr, ptr %56, align 4
  %83 = getelementptr i8, ptr %82, i32 82880
  tail call void @msm_writel(i32 noundef 1, ptr noundef %83) #9
  br label %84

84:                                               ; preds = %79, %74
  br i1 %70, label %88, label %85

85:                                               ; preds = %84
  %86 = tail call fastcc i32 @a6xx_rpmh_start(ptr noundef %2) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %365, label %585

88:                                               ; preds = %84
  %89 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 8, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93, !prof !15

92:                                               ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 769, i32 noundef 9, ptr noundef nonnull @.str.21) #9
  br label %585

93:                                               ; preds = %88
  %94 = load ptr, ptr %56, align 4
  %95 = getelementptr i8, ptr %94, i32 83760
  tail call void @msm_writel(i32 noundef 1, ptr noundef %95) #9
  %96 = load i1, ptr @a6xx_gmu_fw_start.rpmh_init, align 1
  br i1 %96, label %243, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %2, align 8
  %99 = getelementptr i8, ptr %98, i32 -16
  %100 = tail call ptr @platform_get_resource_byname(ptr noundef %99, i32 noundef 512, ptr noundef nonnull @.str.24) #9
  %101 = icmp eq ptr %100, null
  br i1 %101, label %110, label %102

102:                                              ; preds = %97
  %103 = load i32, ptr %100, align 4
  %104 = getelementptr inbounds %struct.resource, ptr %100, i32 0, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = sub i32 1, %103
  %107 = add i32 %106, %105
  %108 = tail call ptr @ioremap(i32 noundef %103, i32 noundef %107) #9
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %102, %97
  %111 = phi ptr [ @.str.36, %97 ], [ @.str.37, %102 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %98, ptr noundef nonnull @.str.2, ptr noundef nonnull %111, ptr noundef nonnull @.str.24) #9
  br label %242

112:                                              ; preds = %102
  %113 = icmp ugt ptr %108, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %242, label %114

114:                                              ; preds = %112
  %115 = load i32, ptr %72, align 4
  switch i32 %115, label %116 [
    i32 660, label %143
    i32 650, label %143
  ]

116:                                              ; preds = %114
  %117 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %118 = load i32, ptr %117, align 8
  %119 = insertvalue [1 x i32] undef, i32 %118, 0
  %120 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %119) #9
  br i1 %120, label %143, label %121

121:                                              ; preds = %116
  %122 = load i32, ptr %72, align 4
  %123 = icmp eq i32 %122, 618
  %124 = icmp ne i32 %122, 640
  %125 = icmp ne i32 %122, 680
  %126 = and i1 %124, %125
  %127 = select i1 %126, i32 196736, i32 196752
  %128 = select i1 %123, i32 196752, i32 %127
  %129 = tail call ptr @platform_get_resource_byname(ptr noundef %99, i32 noundef 512, ptr noundef nonnull @.str.25) #9
  %130 = icmp eq ptr %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %121
  %132 = load i32, ptr %129, align 4
  %133 = getelementptr inbounds %struct.resource, ptr %129, i32 0, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = sub i32 1, %132
  %136 = add i32 %135, %134
  %137 = tail call ptr @ioremap(i32 noundef %132, i32 noundef %136) #9
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %141

139:                                              ; preds = %131, %121
  %140 = phi ptr [ @.str.36, %121 ], [ @.str.37, %131 ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %98, ptr noundef nonnull @.str.2, ptr noundef nonnull %140, ptr noundef nonnull @.str.25) #9
  br label %236

141:                                              ; preds = %131
  %142 = icmp ugt ptr %137, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %236, label %143

143:                                              ; preds = %141, %116, %114, %114
  %144 = phi i1 [ false, %141 ], [ true, %116 ], [ true, %114 ], [ true, %114 ]
  %145 = phi i32 [ %128, %141 ], [ 0, %116 ], [ 0, %114 ], [ 0, %114 ]
  %146 = phi ptr [ %137, %141 ], [ null, %116 ], [ null, %114 ], [ null, %114 ]
  %147 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr i8, ptr %148, i32 16
  tail call void @msm_writel(i32 noundef 16777216, ptr noundef %149) #9
  %150 = load ptr, ptr %147, align 8
  %151 = getelementptr i8, ptr %150, i32 44
  tail call void @msm_writel(i32 noundef 1, ptr noundef %151) #9
  %152 = load ptr, ptr %147, align 8
  %153 = getelementptr i8, ptr %152, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %153) #9
  %154 = load ptr, ptr %147, align 8
  %155 = getelementptr i8, ptr %154, i32 52
  tail call void @msm_writel(i32 noundef 0, ptr noundef %155) #9
  %156 = load ptr, ptr %147, align 8
  %157 = getelementptr i8, ptr %156, i32 64
  tail call void @msm_writel(i32 noundef 0, ptr noundef %157) #9
  %158 = load ptr, ptr %147, align 8
  %159 = getelementptr i8, ptr %158, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %159) #9
  %160 = load ptr, ptr %147, align 8
  %161 = getelementptr i8, ptr %160, i32 72
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %161) #9
  %162 = load ptr, ptr %147, align 8
  %163 = getelementptr i8, ptr %162, i32 68
  tail call void @msm_writel(i32 noundef 0, ptr noundef %163) #9
  %164 = load ptr, ptr %147, align 8
  %165 = getelementptr i8, ptr %164, i32 1024
  tail call void @msm_writel(i32 noundef 0, ptr noundef %165) #9
  %166 = load ptr, ptr %147, align 8
  %167 = getelementptr i8, ptr %166, i32 32
  tail call void @msm_writel(i32 noundef 17696, ptr noundef %167) #9
  %168 = load ptr, ptr %147, align 8
  %169 = getelementptr i8, ptr %168, i32 36
  tail call void @msm_writel(i32 noundef 17680, ptr noundef %169) #9
  %170 = load ptr, ptr %147, align 8
  %171 = getelementptr i8, ptr %170, i32 40
  tail call void @msm_writel(i32 noundef 17684, ptr noundef %171) #9
  %172 = load i32, ptr %72, align 4
  switch i32 %172, label %173 [
    i32 650, label %179
    i32 620, label %179
    i32 660, label %179
  ]

173:                                              ; preds = %143
  %174 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %175 = load i32, ptr %174, align 8
  %176 = insertvalue [1 x i32] undef, i32 %175, 0
  %177 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %176) #9
  br i1 %177, label %179, label %178

178:                                              ; preds = %173
  br label %179

179:                                              ; preds = %178, %173, %143, %143, %143
  %180 = phi i32 [ -1482357088, %178 ], [ -357898848, %143 ], [ -357898848, %143 ], [ -357898848, %143 ], [ -357898848, %173 ]
  %181 = phi i32 [ -1578719513, %178 ], [ -509482069, %143 ], [ -509482069, %143 ], [ -509482069, %143 ], [ -509482069, %173 ]
  %182 = phi i32 [ -1562344991, %178 ], [ -1562335871, %143 ], [ -1562335871, %143 ], [ -1562335871, %143 ], [ -1562335871, %173 ]
  %183 = phi i32 [ -374766878, %178 ], [ -324238622, %143 ], [ -324238622, %143 ], [ -324238622, %143 ], [ -324238622, %173 ]
  %184 = phi i32 [ 2156712, %178 ], [ 2157997, %143 ], [ 2157997, %143 ], [ 2157997, %143 ], [ 2157997, %173 ]
  %185 = load ptr, ptr %147, align 8
  %186 = getelementptr i8, ptr %185, i32 1536
  tail call void @msm_writel(i32 noundef %180, ptr noundef %186) #9
  %187 = load ptr, ptr %147, align 8
  %188 = getelementptr i8, ptr %187, i32 1540
  tail call void @msm_writel(i32 noundef %181, ptr noundef %188) #9
  %189 = load ptr, ptr %147, align 8
  %190 = getelementptr i8, ptr %189, i32 1544
  tail call void @msm_writel(i32 noundef %182, ptr noundef %190) #9
  %191 = load ptr, ptr %147, align 8
  %192 = getelementptr i8, ptr %191, i32 1548
  tail call void @msm_writel(i32 noundef %183, ptr noundef %192) #9
  %193 = load ptr, ptr %147, align 8
  %194 = getelementptr i8, ptr %193, i32 1552
  tail call void @msm_writel(i32 noundef %184, ptr noundef %194) #9
  br i1 %144, label %233, label %195

195:                                              ; preds = %179
  tail call void @msm_writel(i32 noundef -21061151, ptr noundef %146) #9
  %196 = getelementptr i8, ptr %146, i32 4
  tail call void @msm_writel(i32 noundef -1515936862, ptr noundef %196) #9
  %197 = getelementptr i8, ptr %146, i32 8
  tail call void @msm_writel(i32 noundef -2088589600, ptr noundef %197) #9
  %198 = getelementptr i8, ptr %146, i32 12
  tail call void @msm_writel(i32 noundef -1125916028, ptr noundef %198) #9
  %199 = getelementptr i8, ptr %146, i32 16
  tail call void @msm_writel(i32 noundef 2130428, ptr noundef %199) #9
  %200 = getelementptr i8, ptr %108, i32 21964
  tail call void @msm_writel(i32 noundef 7, ptr noundef %200) #9
  %201 = getelementptr i8, ptr %108, i32 21968
  tail call void @msm_writel(i32 noundef 0, ptr noundef %201) #9
  %202 = getelementptr i8, ptr %108, i32 21960
  tail call void @msm_writel(i32 noundef 0, ptr noundef %202) #9
  %203 = getelementptr i8, ptr %108, i32 21972
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %203) #9
  %204 = getelementptr i8, ptr %108, i32 21976
  tail call void @msm_writel(i32 noundef 196624, ptr noundef %204) #9
  %205 = getelementptr i8, ptr %108, i32 21980
  tail call void @msm_writel(i32 noundef 1, ptr noundef %205) #9
  %206 = getelementptr i8, ptr %108, i32 21988
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %206) #9
  %207 = getelementptr i8, ptr %108, i32 21992
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %207) #9
  %208 = getelementptr i8, ptr %108, i32 21996
  tail call void @msm_writel(i32 noundef 0, ptr noundef %208) #9
  %209 = getelementptr i8, ptr %108, i32 22004
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %209) #9
  %210 = getelementptr i8, ptr %108, i32 22008
  tail call void @msm_writel(i32 noundef %145, ptr noundef %210) #9
  %211 = getelementptr i8, ptr %108, i32 22012
  tail call void @msm_writel(i32 noundef 0, ptr noundef %211) #9
  %212 = getelementptr i8, ptr %108, i32 22364
  tail call void @msm_writel(i32 noundef 7, ptr noundef %212) #9
  %213 = getelementptr i8, ptr %108, i32 22368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %213) #9
  %214 = getelementptr i8, ptr %108, i32 22360
  tail call void @msm_writel(i32 noundef 0, ptr noundef %214) #9
  %215 = getelementptr i8, ptr %108, i32 22372
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %215) #9
  %216 = getelementptr i8, ptr %108, i32 22376
  tail call void @msm_writel(i32 noundef 196624, ptr noundef %216) #9
  %217 = getelementptr i8, ptr %108, i32 22380
  tail call void @msm_writel(i32 noundef 2, ptr noundef %217) #9
  %218 = getelementptr i8, ptr %108, i32 22388
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %218) #9
  %219 = getelementptr i8, ptr %108, i32 22392
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %219) #9
  %220 = load i32, ptr %72, align 4
  switch i32 %220, label %221 [
    i32 618, label %227
    i32 650, label %227
    i32 620, label %227
    i32 660, label %227
  ]

221:                                              ; preds = %195
  %222 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %223 = load i32, ptr %222, align 8
  %224 = insertvalue [1 x i32] undef, i32 %223, 0
  %225 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %224) #9
  %226 = select i1 %225, i32 2, i32 3
  br label %227

227:                                              ; preds = %221, %195, %195, %195, %195
  %228 = phi i32 [ 2, %195 ], [ 2, %195 ], [ 2, %195 ], [ 2, %195 ], [ %226, %221 ]
  %229 = getelementptr i8, ptr %108, i32 22396
  tail call void @msm_writel(i32 noundef %228, ptr noundef %229) #9
  %230 = getelementptr i8, ptr %108, i32 22404
  tail call void @msm_writel(i32 noundef 65800, ptr noundef %230) #9
  %231 = getelementptr i8, ptr %108, i32 22408
  tail call void @msm_writel(i32 noundef %145, ptr noundef %231) #9
  %232 = getelementptr i8, ptr %108, i32 22412
  tail call void @msm_writel(i32 noundef 3, ptr noundef %232) #9
  br label %233

233:                                              ; preds = %227, %179
  %234 = getelementptr i8, ptr %108, i32 17696
  tail call void @msm_writel(i32 noundef 0, ptr noundef %234) #9
  %235 = getelementptr i8, ptr %108, i32 17664
  tail call void @msm_writel(i32 noundef -2147483647, ptr noundef %235) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !16
  tail call void @arm_heavy_mb() #9
  br label %236

236:                                              ; preds = %233, %141, %139
  %237 = phi ptr [ %146, %233 ], [ %137, %141 ], [ inttoptr (i32 -22 to ptr), %139 ]
  tail call void @iounmap(ptr noundef nonnull %108) #9
  %238 = icmp eq ptr %237, null
  %239 = icmp ugt ptr %237, inttoptr (i32 -4096 to ptr)
  %240 = or i1 %238, %239
  br i1 %240, label %242, label %241

241:                                              ; preds = %236
  tail call void @iounmap(ptr noundef nonnull %237) #9
  br label %242

242:                                              ; preds = %241, %236, %112, %110
  store i1 true, ptr @a6xx_gmu_fw_start.rpmh_init, align 1
  br label %246

243:                                              ; preds = %93
  %244 = tail call fastcc i32 @a6xx_rpmh_start(ptr noundef %2) #9
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %585

246:                                              ; preds = %243, %242
  %247 = load ptr, ptr %89, align 4
  %248 = load i32, ptr %72, align 4
  switch i32 %248, label %249 [
    i32 650, label %255
    i32 620, label %255
    i32 660, label %255
  ]

249:                                              ; preds = %246
  %250 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %251 = load i32, ptr %250, align 8
  %252 = insertvalue [1 x i32] undef, i32 %251, 0
  %253 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %252) #9
  %254 = select i1 %253, i32 268451840, i32 262144
  br label %255

255:                                              ; preds = %249, %246, %246, %246
  %256 = phi i32 [ 268451840, %246 ], [ 268451840, %246 ], [ 268451840, %246 ], [ %254, %249 ]
  %257 = load i8, ptr %67, align 2, !range !8
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %267, label %259

259:                                              ; preds = %255
  %260 = load i32, ptr %247, align 4
  %261 = icmp ugt i32 %260, 32768
  br i1 %261, label %363, label %262

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.firmware, ptr %247, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = load ptr, ptr %56, align 4
  %266 = getelementptr i8, ptr %265, i32 12288
  tail call void @mmiocpy(ptr noundef %266, ptr noundef %264, i32 noundef %260) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  br label %365

267:                                              ; preds = %255
  %268 = getelementptr inbounds %struct.firmware, ptr %247, i32 0, i32 1
  %269 = load ptr, ptr %268, align 4
  %270 = load i32, ptr %247, align 4
  %271 = getelementptr i8, ptr %269, i32 %270
  %272 = icmp ult ptr %269, %271
  br i1 %272, label %273, label %365

273:                                              ; preds = %267
  %274 = add nuw nsw i32 %256, 16384
  %275 = sub nsw i32 28672, %256
  %276 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11, i32 3
  %277 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11, i32 2
  %278 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11, i32 1
  %279 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12, i32 3
  %280 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12, i32 2
  %281 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12, i32 1
  %282 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13, i32 3
  %283 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13, i32 2
  %284 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13, i32 1
  br label %285

285:                                              ; preds = %355, %273
  %286 = phi ptr [ %269, %273 ], [ %358, %355 ]
  %287 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 1
  %288 = load i32, ptr %287, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %355, label %290

290:                                              ; preds = %285
  %291 = load i32, ptr %286, align 4
  %292 = icmp ugt i32 %291, 16383
  br i1 %292, label %299, label %293

293:                                              ; preds = %290
  %294 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  %295 = load ptr, ptr %56, align 4
  %296 = add nuw nsw i32 %291, 12288
  %297 = and i32 %296, -4
  %298 = getelementptr i8, ptr %295, i32 %297
  tail call void @mmiocpy(ptr noundef %298, ptr noundef %294, i32 noundef %288) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  br label %355

299:                                              ; preds = %290
  %300 = icmp ult i32 %291, %256
  %301 = icmp ule i32 %274, %291
  %302 = or i1 %300, %301
  br i1 %302, label %309, label %303

303:                                              ; preds = %299
  %304 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  %305 = load ptr, ptr %56, align 4
  %306 = add i32 %275, %291
  %307 = and i32 %306, -4
  %308 = getelementptr i8, ptr %305, i32 %307
  tail call void @mmiocpy(ptr noundef %308, ptr noundef %304, i32 noundef %288) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !17
  tail call void @arm_heavy_mb() #9
  br label %355

309:                                              ; preds = %299
  %310 = load i64, ptr %276, align 8
  %311 = trunc i64 %310 to i32
  %312 = load i32, ptr %277, align 8
  %313 = icmp ult i32 %291, %311
  %314 = add i32 %312, %311
  %315 = icmp ule i32 %314, %291
  %316 = or i1 %313, %315
  br i1 %316, label %323, label %317

317:                                              ; preds = %309
  %318 = load ptr, ptr %278, align 4
  %319 = getelementptr i8, ptr %318, i32 %291
  %320 = sub i32 0, %311
  %321 = getelementptr i8, ptr %319, i32 %320
  %322 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %321, ptr align 4 %322, i32 %288, i1 false) #9
  br label %355

323:                                              ; preds = %309
  %324 = load i64, ptr %279, align 8
  %325 = trunc i64 %324 to i32
  %326 = load i32, ptr %280, align 8
  %327 = icmp ult i32 %291, %325
  %328 = add i32 %326, %325
  %329 = icmp ule i32 %328, %291
  %330 = or i1 %327, %329
  br i1 %330, label %337, label %331

331:                                              ; preds = %323
  %332 = load ptr, ptr %281, align 4
  %333 = getelementptr i8, ptr %332, i32 %291
  %334 = sub i32 0, %325
  %335 = getelementptr i8, ptr %333, i32 %334
  %336 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %335, ptr align 4 %336, i32 %288, i1 false) #9
  br label %355

337:                                              ; preds = %323
  %338 = load i64, ptr %282, align 8
  %339 = trunc i64 %338 to i32
  %340 = load i32, ptr %283, align 8
  %341 = icmp ult i32 %291, %339
  %342 = add i32 %340, %339
  %343 = icmp ule i32 %342, %291
  %344 = or i1 %341, %343
  br i1 %344, label %351, label %345

345:                                              ; preds = %337
  %346 = load ptr, ptr %284, align 4
  %347 = getelementptr i8, ptr %346, i32 %291
  %348 = sub i32 0, %339
  %349 = getelementptr i8, ptr %347, i32 %348
  %350 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %349, ptr align 4 %350, i32 %288, i1 false) #9
  br label %355

351:                                              ; preds = %337
  %352 = load ptr, ptr %2, align 8
  %353 = getelementptr inbounds %struct.block_header, ptr %286, i32 0, i32 4
  %354 = load i32, ptr %353, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %352, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.27, i32 noundef %291, i32 noundef %288, i32 noundef %354) #9
  br label %355

355:                                              ; preds = %351, %345, %331, %317, %303, %293, %285
  %356 = load i32, ptr %287, align 4
  %357 = lshr i32 %356, 2
  %358 = getelementptr %struct.block_header, ptr %286, i32 0, i32 4, i32 %357
  %359 = load ptr, ptr %268, align 4
  %360 = load i32, ptr %247, align 4
  %361 = getelementptr i8, ptr %359, i32 %360
  %362 = icmp ult ptr %358, %361
  br i1 %362, label %285, label %365

363:                                              ; preds = %259
  %364 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %364, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #9
  br label %585

365:                                              ; preds = %355, %267, %262, %85
  %366 = load ptr, ptr %56, align 4
  %367 = getelementptr i8, ptr %366, i32 82032
  tail call void @msm_writel(i32 noundef 0, ptr noundef %367) #9
  %368 = load ptr, ptr %56, align 4
  %369 = getelementptr i8, ptr %368, i32 81924
  tail call void @msm_writel(i32 noundef 2, ptr noundef %369) #9
  %370 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9, i32 3
  %371 = load i64, ptr %370, align 8
  %372 = trunc i64 %371 to i32
  %373 = load ptr, ptr %56, align 4
  %374 = getelementptr i8, ptr %373, i32 83476
  tail call void @msm_writel(i32 noundef %372, ptr noundef %374) #9
  %375 = load ptr, ptr %56, align 4
  %376 = getelementptr i8, ptr %375, i32 83472
  tail call void @msm_writel(i32 noundef 1, ptr noundef %376) #9
  %377 = load ptr, ptr %56, align 4
  %378 = getelementptr i8, ptr %377, i32 150596
  tail call void @msm_writel(i32 noundef -2144862048, ptr noundef %378) #9
  %379 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1
  %380 = load i8, ptr %379, align 8
  %381 = zext i8 %380 to i32
  %382 = shl nuw i32 %381, 24
  %383 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1, i32 1
  %384 = load i8, ptr %383, align 1
  %385 = zext i8 %384 to i32
  %386 = shl nuw nsw i32 %385, 16
  %387 = or i32 %386, %382
  %388 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1, i32 2
  %389 = load i8, ptr %388, align 2
  %390 = zext i8 %389 to i32
  %391 = shl nuw nsw i32 %390, 12
  %392 = or i32 %387, %391
  %393 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 1, i32 3
  %394 = load i8, ptr %393, align 1
  %395 = zext i8 %394 to i32
  %396 = shl nuw nsw i32 %395, 8
  %397 = or i32 %392, %396
  %398 = load ptr, ptr %56, align 4
  %399 = getelementptr i8, ptr %398, i32 83464
  tail call void @msm_writel(i32 noundef %397, ptr noundef %399) #9
  %400 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14, i32 3
  %401 = load i64, ptr %400, align 8
  %402 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14, i32 2
  %403 = load i32, ptr %402, align 8
  %404 = lshr i32 %403, 12
  %405 = add nsw i32 %404, -1
  %406 = trunc i64 %401 to i32
  %407 = or i32 %405, %406
  %408 = load ptr, ptr %56, align 4
  %409 = getelementptr i8, ptr %408, i32 82944
  tail call void @msm_writel(i32 noundef %407, ptr noundef %409) #9
  %410 = load ptr, ptr %56, align 4
  %411 = getelementptr i8, ptr %410, i32 77884
  tail call void @msm_writel(i32 noundef 1, ptr noundef %411) #9
  %412 = load ptr, ptr %56, align 4
  %413 = getelementptr i8, ptr %412, i32 77824
  tail call void @msm_writel(i32 noundef 1, ptr noundef %413) #9
  %414 = load ptr, ptr %56, align 4
  %415 = getelementptr i8, ptr %414, i32 77828
  tail call void @msm_writel(i32 noundef 1, ptr noundef %415) #9
  %416 = load ptr, ptr %56, align 4
  %417 = getelementptr i8, ptr %416, i32 82688
  tail call void @msm_writel(i32 noundef 163841024, ptr noundef %417) #9
  %418 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 8
  %419 = load i32, ptr %418, align 8
  switch i32 %419, label %438 [
    i32 3, label %420
    i32 2, label %429
  ]

420:                                              ; preds = %365
  %421 = load ptr, ptr %56, align 4
  %422 = getelementptr i8, ptr %421, i32 82692
  tail call void @msm_writel(i32 noundef 661120, ptr noundef %422) #9
  %423 = load ptr, ptr %56, align 4
  %424 = getelementptr i8, ptr %423, i32 82688
  %425 = tail call i32 @msm_readl(ptr noundef %424) #9
  %426 = or i32 %425, 3
  %427 = load ptr, ptr %56, align 4
  %428 = getelementptr i8, ptr %427, i32 82688
  tail call void @msm_writel(i32 noundef %426, ptr noundef %428) #9
  br label %429

429:                                              ; preds = %420, %365
  %430 = load ptr, ptr %56, align 4
  %431 = getelementptr i8, ptr %430, i32 82696
  tail call void @msm_writel(i32 noundef 661120, ptr noundef %431) #9
  %432 = load ptr, ptr %56, align 4
  %433 = getelementptr i8, ptr %432, i32 82688
  %434 = tail call i32 @msm_readl(ptr noundef %433) #9
  %435 = or i32 %434, 5
  %436 = load ptr, ptr %56, align 4
  %437 = getelementptr i8, ptr %436, i32 82688
  tail call void @msm_writel(i32 noundef %435, ptr noundef %437) #9
  br label %438

438:                                              ; preds = %429, %365
  %439 = load ptr, ptr %56, align 4
  %440 = getelementptr i8, ptr %439, i32 82848
  %441 = tail call i32 @msm_readl(ptr noundef %440) #9
  %442 = or i32 %441, 3857
  %443 = load ptr, ptr %56, align 4
  %444 = getelementptr i8, ptr %443, i32 82848
  tail call void @msm_writel(i32 noundef %442, ptr noundef %444) #9
  %445 = load ptr, ptr %56, align 4
  %446 = getelementptr i8, ptr %445, i32 45024
  %447 = tail call i32 @msm_readl(ptr noundef %446) #9
  %448 = icmp ult i32 %447, 536936453
  %449 = select i1 %448, i32 -1161889074, i32 256
  %450 = select i1 %448, i32 -1, i32 511
  %451 = load ptr, ptr %56, align 4
  %452 = getelementptr i8, ptr %451, i32 81920
  tail call void @msm_writel(i32 noundef 1, ptr noundef %452) #9
  %453 = load ptr, ptr %56, align 4
  %454 = getelementptr i8, ptr %453, i32 82948
  tail call void @msm_writel(i32 noundef 0, ptr noundef %454) #9
  %455 = load ptr, ptr %56, align 4
  %456 = getelementptr i8, ptr %455, i32 81920
  tail call void @msm_writel(i32 noundef 0, ptr noundef %456) #9
  %457 = tail call i64 @ktime_get() #9
  %458 = add i64 %457, 10000000
  %459 = load ptr, ptr %56, align 4
  %460 = getelementptr i8, ptr %459, i32 82032
  %461 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %462 = and i32 %461, %450
  %463 = icmp eq i32 %462, %449
  br i1 %463, label %481, label %464

464:                                              ; preds = %467, %438
  %465 = tail call i64 @ktime_get() #9
  %466 = icmp sgt i64 %465, %458
  br i1 %466, label %473, label %467

467:                                              ; preds = %464
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %468 = load ptr, ptr %56, align 4
  %469 = getelementptr i8, ptr %468, i32 82032
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %469) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !18
  %471 = and i32 %470, %450
  %472 = icmp eq i32 %471, %449
  br i1 %472, label %481, label %464

473:                                              ; preds = %464
  %474 = load ptr, ptr %56, align 4
  %475 = getelementptr i8, ptr %474, i32 82032
  %476 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %475) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %477 = and i32 %476, %450
  %478 = icmp eq i32 %477, %449
  br i1 %478, label %481, label %479

479:                                              ; preds = %473
  %480 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %480, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.28) #9
  br label %585

481:                                              ; preds = %473, %467, %438
  %482 = load i8, ptr %67, align 2, !range !8
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %501, label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr %56, align 4
  %486 = getelementptr i8, ptr %485, i32 36832
  tail call void @msm_writel(i32 noundef 0, ptr noundef %486) #9
  %487 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 20
  %488 = load i32, ptr %487, align 4
  %489 = add i32 %488, -1
  %490 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 22, i32 %489
  %491 = load i32, ptr %490, align 4
  %492 = and i32 %491, 255
  %493 = load ptr, ptr %56, align 4
  %494 = getelementptr i8, ptr %493, i32 36836
  tail call void @msm_writel(i32 noundef %492, ptr noundef %494) #9
  %495 = lshr i32 %491, 8
  %496 = and i32 %495, 255
  %497 = load ptr, ptr %56, align 4
  %498 = getelementptr i8, ptr %497, i32 36840
  tail call void @msm_writel(i32 noundef %496, ptr noundef %498) #9
  %499 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %2, i32 noundef 0) #9
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %585

501:                                              ; preds = %484, %481
  %502 = load i32, ptr %418, align 8
  %503 = icmp slt i32 %502, 2
  br i1 %503, label %504, label %537

504:                                              ; preds = %501
  %505 = load i8, ptr %67, align 2, !range !8
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %537, label %507

507:                                              ; preds = %504
  %508 = load ptr, ptr %56, align 4
  %509 = getelementptr i8, ptr %508, i32 516
  tail call void @msm_writel(i32 noundef 7831552, ptr noundef %509) #9
  %510 = tail call i64 @ktime_get() #9
  %511 = add i64 %510, 100000
  %512 = load ptr, ptr %56, align 4
  %513 = getelementptr i8, ptr %512, i32 82752
  %514 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %513) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %515 = and i32 %514, 56
  %516 = icmp eq i32 %515, 40
  br i1 %516, label %537, label %517

517:                                              ; preds = %520, %507
  %518 = tail call i64 @ktime_get() #9
  %519 = icmp sgt i64 %518, %511
  br i1 %519, label %526, label %520

520:                                              ; preds = %517
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #9
  %521 = load ptr, ptr %56, align 4
  %522 = getelementptr i8, ptr %521, i32 82752
  %523 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %522) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %524 = and i32 %523, 56
  %525 = icmp eq i32 %524, 40
  br i1 %525, label %537, label %517

526:                                              ; preds = %517
  %527 = load ptr, ptr %56, align 4
  %528 = getelementptr i8, ptr %527, i32 82752
  %529 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %528) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %530 = and i32 %529, 56
  %531 = icmp eq i32 %530, 40
  br i1 %531, label %537, label %532

532:                                              ; preds = %526
  %533 = load ptr, ptr %2, align 8
  %534 = load ptr, ptr %56, align 4
  %535 = getelementptr i8, ptr %534, i32 82752
  %536 = tail call i32 @msm_readl(ptr noundef %535) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %533, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, i32 noundef %536) #9
  br label %537

537:                                              ; preds = %532, %526, %520, %507, %504, %501
  %538 = load ptr, ptr %56, align 4
  %539 = getelementptr i8, ptr %538, i32 83480
  tail call void @msm_writel(i32 noundef 1, ptr noundef %539) #9
  %540 = tail call i64 @ktime_get() #9
  %541 = add i64 %540, 10000000
  %542 = load ptr, ptr %56, align 4
  %543 = getelementptr i8, ptr %542, i32 83456
  %544 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %543) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %545 = and i32 %544, 1
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %560

547:                                              ; preds = %554, %537
  %548 = tail call i64 @ktime_get() #9
  %549 = icmp sgt i64 %548, %541
  br i1 %549, label %550, label %554

550:                                              ; preds = %547
  %551 = load ptr, ptr %56, align 4
  %552 = getelementptr i8, ptr %551, i32 83456
  %553 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %552) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !23
  br label %560

554:                                              ; preds = %547
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %555 = load ptr, ptr %56, align 4
  %556 = getelementptr i8, ptr %555, i32 83456
  %557 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %556) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %558 = and i32 %557, 1
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %547, label %560

560:                                              ; preds = %554, %550, %537
  %561 = phi i32 [ %553, %550 ], [ %544, %537 ], [ %557, %554 ]
  %562 = and i32 %561, 1
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %566

564:                                              ; preds = %560
  %565 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %565, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.30) #9
  br label %585

566:                                              ; preds = %560
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !24
  tail call void @arm_heavy_mb() #9
  %567 = tail call i32 @a6xx_hfi_start(ptr noundef %2, i32 noundef %71) #9
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %585

569:                                              ; preds = %566
  %570 = load ptr, ptr %56, align 4
  %571 = getelementptr i8, ptr %570, i32 83524
  tail call void @msm_writel(i32 noundef -1, ptr noundef %571) #9
  %572 = load ptr, ptr %56, align 4
  %573 = getelementptr i8, ptr %572, i32 83532
  tail call void @msm_writel(i32 noundef -8388609, ptr noundef %573) #9
  %574 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 5
  %575 = load i32, ptr %574, align 4
  tail call void @enable_irq(i32 noundef %575) #9
  %576 = load i32, ptr %42, align 8
  %577 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 21, i32 %576
  %578 = load i32, ptr %577, align 4
  %579 = load ptr, ptr %46, align 8
  %580 = getelementptr inbounds %struct.platform_device, ptr %579, i32 0, i32 3
  %581 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %580, i32 noundef %578, i1 noundef zeroext true) #9
  %582 = icmp ugt ptr %581, inttoptr (i32 -4096 to ptr)
  br i1 %582, label %592, label %583

583:                                              ; preds = %569
  %584 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 26
  store i32 0, ptr %584, align 4
  tail call void @a6xx_gmu_set_freq(ptr noundef %0, ptr noundef %581) #9
  tail call void @dev_pm_opp_put(ptr noundef %581) #9
  br label %592

585:                                              ; preds = %566, %564, %484, %479, %363, %243, %92, %85
  %586 = phi i32 [ %567, %566 ], [ -110, %564 ], [ %499, %484 ], [ -110, %479 ], [ -22, %363 ], [ %244, %243 ], [ %86, %85 ], [ -2, %92 ]
  %587 = load i32, ptr %61, align 8
  tail call void @disable_irq(i32 noundef %587) #9
  tail call fastcc void @a6xx_rpmh_stop(ptr noundef %2)
  %588 = load ptr, ptr %11, align 4
  %589 = tail call i32 @__pm_runtime_idle(ptr noundef %588, i32 noundef 5) #9
  %590 = load ptr, ptr %2, align 8
  %591 = tail call i32 @__pm_runtime_idle(ptr noundef %590, i32 noundef 5) #9
  br label %592

592:                                              ; preds = %585, %583, %569, %35, %6
  %593 = phi i32 [ 0, %6 ], [ %36, %35 ], [ %586, %585 ], [ 0, %569 ], [ 0, %583 ]
  ret i32 %593
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_hfi_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_rpmh_stop(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 150556
  tail call void @msm_writel(i32 noundef 1, ptr noundef %4) #9
  %5 = tail call i64 @ktime_get() #9
  %6 = add i64 %5, 10000000
  %7 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %8, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %11 = and i32 %10, 65536
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %20, %1
  %14 = tail call i64 @ktime_get() #9
  %15 = icmp sgt i64 %14, %6
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load ptr, ptr %7, align 8
  %18 = getelementptr i8, ptr %17, i32 16
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !26
  br label %26

20:                                               ; preds = %13
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr i8, ptr %21, i32 16
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !25
  %24 = and i32 %23, 65536
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %13, label %26

26:                                               ; preds = %20, %16, %1
  %27 = phi i32 [ %19, %16 ], [ %10, %1 ], [ %23, %20 ]
  %28 = and i32 %27, 65536
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %31, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.31) #9
  br label %32

32:                                               ; preds = %30, %26
  %33 = load ptr, ptr %2, align 4
  %34 = getelementptr i8, ptr %33, i32 150556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %34) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @a6xx_gmu_isidle(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 28
  %3 = load i8, ptr %2, align 8, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 150576
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = and i32 %9, 8388608
  %11 = icmp eq i32 %10, 0
  br label %12

12:                                               ; preds = %5, %1
  %13 = phi i1 [ true, %1 ], [ %11, %5 ]
  ret i1 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_stop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 18
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, i32 15
  %9 = load i16, ptr %8, align 8
  %10 = and i16 %9, 7
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %201, label %12

12:                                               ; preds = %7, %1
  %13 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 29
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call fastcc void @a6xx_gmu_force_off(ptr noundef %2)
  br label %182

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 82864
  %21 = tail call i32 @msm_readl(ptr noundef %20) #9
  %22 = icmp eq i32 %21, 15
  br i1 %22, label %173, label %23

23:                                               ; preds = %17
  %24 = load volatile i32, ptr @jiffies, align 64
  %25 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 28
  %26 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 8
  %27 = sub i32 -100, %24
  br label %28

28:                                               ; preds = %48, %23
  %29 = load i32, ptr %26, align 8
  %30 = icmp eq i32 %29, 2
  %31 = select i1 %30, i32 3, i32 %29
  %32 = load ptr, ptr %18, align 4
  %33 = getelementptr i8, ptr %32, i32 82864
  %34 = tail call i32 @msm_readl(ptr noundef %33) #9
  %35 = icmp eq i32 %34, %31
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = load i32, ptr %26, align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i8, ptr %25, align 8, !range !8
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %18, align 4
  %44 = getelementptr i8, ptr %43, i32 82752
  %45 = tail call i32 @msm_readl(ptr noundef %44) #9
  %46 = and i32 %45, 192
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42, %28
  %49 = load volatile i32, ptr @jiffies, align 64
  %50 = add i32 %27, %49
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %28, label %52

52:                                               ; preds = %48
  tail call fastcc void @a6xx_gmu_force_off(ptr noundef %2) #9
  br label %182

53:                                               ; preds = %42, %39, %36
  %54 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 630
  %57 = getelementptr %struct.a6xx_gpu, ptr %0, i32 0, i32 0, i32 0, i32 22
  %58 = load ptr, ptr %57, align 8
  br i1 %56, label %59, label %73

59:                                               ; preds = %53
  %60 = getelementptr i8, ptr %58, i32 49664
  tail call void @msm_writel(i32 noundef 15, ptr noundef %60) #9
  %61 = load volatile i32, ptr @jiffies, align 64
  %62 = sub i32 -100, %61
  br label %63

63:                                               ; preds = %69, %59
  %64 = load ptr, ptr %57, align 8
  %65 = getelementptr i8, ptr %64, i32 49668
  %66 = tail call i32 @msm_readl(ptr noundef %65) #9
  %67 = and i32 %66, 15
  %68 = icmp eq i32 %67, 15
  br i1 %68, label %102, label %69

69:                                               ; preds = %63
  %70 = load volatile i32, ptr @jiffies, align 64
  %71 = add i32 %62, %70
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %63, label %102

73:                                               ; preds = %53
  %74 = getelementptr i8, ptr %58, i32 61716
  tail call void @msm_writel(i32 noundef 1, ptr noundef %74) #9
  %75 = load volatile i32, ptr @jiffies, align 64
  %76 = sub i32 -100, %75
  br label %77

77:                                               ; preds = %83, %73
  %78 = load ptr, ptr %57, align 8
  %79 = getelementptr i8, ptr %78, i32 61720
  %80 = tail call i32 @msm_readl(ptr noundef %79) #9
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load volatile i32, ptr @jiffies, align 64
  %85 = add i32 %76, %84
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %77, label %87

87:                                               ; preds = %83, %77
  %88 = load ptr, ptr %57, align 8
  %89 = getelementptr i8, ptr %88, i32 61716
  tail call void @msm_writel(i32 noundef 2, ptr noundef %89) #9
  %90 = load volatile i32, ptr @jiffies, align 64
  %91 = sub i32 -100, %90
  br label %92

92:                                               ; preds = %98, %87
  %93 = load ptr, ptr %57, align 8
  %94 = getelementptr i8, ptr %93, i32 61720
  %95 = tail call i32 @msm_readl(ptr noundef %94) #9
  %96 = and i32 %95, 2
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load volatile i32, ptr @jiffies, align 64
  %100 = add i32 %91, %99
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %92, label %102

102:                                              ; preds = %98, %92, %69, %63
  %103 = phi i32 [ 49664, %63 ], [ 49664, %69 ], [ 61716, %92 ], [ 61716, %98 ]
  %104 = load ptr, ptr %57, align 8
  %105 = getelementptr i8, ptr %104, i32 %103
  tail call void @msm_writel(i32 noundef 0, ptr noundef %105) #9
  %106 = load ptr, ptr %18, align 4
  %107 = getelementptr i8, ptr %106, i32 82176
  tail call void @msm_writel(i32 noundef 0, ptr noundef %107) #9
  %108 = load i32, ptr %26, align 8
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %111

110:                                              ; preds = %102
  tail call fastcc void @a6xx_sptprac_disable(ptr noundef %2) #9
  br label %111

111:                                              ; preds = %110, %102
  %112 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 30
  %113 = load i8, ptr %112, align 2, !range !8
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = tail call i32 @a6xx_hfi_send_prep_slumber(ptr noundef %2) #9
  br label %140

117:                                              ; preds = %111
  %118 = load ptr, ptr %18, align 4
  %119 = getelementptr i8, ptr %118, i32 36832
  tail call void @msm_writel(i32 noundef 1, ptr noundef %119) #9
  %120 = tail call i32 @a6xx_gmu_set_oob(ptr noundef %2, i32 noundef 0) #9
  %121 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  %122 = tail call zeroext i1 @mutex_is_locked(ptr noundef %121) #9
  %123 = load i1, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  %124 = select i1 %122, i1 true, i1 %123
  br i1 %124, label %126, label %125, !prof !11

125:                                              ; preds = %117
  store i1 true, ptr @a6xx_gmu_clear_oob.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 342, i32 noundef 9, ptr noundef null) #9
  br label %126

126:                                              ; preds = %125, %117
  %127 = load i8, ptr %112, align 2, !range !8
  %128 = icmp eq i8 %127, 0
  %129 = select i1 %128, i32 1, i32 1073741824
  %130 = load ptr, ptr %18, align 4
  %131 = getelementptr i8, ptr %130, i32 83536
  tail call void @msm_writel(i32 noundef %129, ptr noundef %131) #9
  %132 = icmp eq i32 %120, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load ptr, ptr %18, align 4
  %135 = getelementptr i8, ptr %134, i32 82864
  %136 = tail call i32 @msm_readl(ptr noundef %135) #9
  %137 = icmp eq i32 %136, 15
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %2, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %139, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.34) #9
  br label %140

140:                                              ; preds = %138, %133, %126, %115
  %141 = load ptr, ptr %18, align 4
  %142 = getelementptr i8, ptr %141, i32 150592
  tail call void @msm_writel(i32 noundef 0, ptr noundef %142) #9
  %143 = tail call i64 @ktime_get() #9
  %144 = add i64 %143, 10000000
  %145 = load ptr, ptr %18, align 4
  %146 = getelementptr i8, ptr %145, i32 150576
  %147 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %146) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %148 = and i32 %147, 8388608
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %173, label %150

150:                                              ; preds = %153, %140
  %151 = tail call i64 @ktime_get() #9
  %152 = icmp sgt i64 %151, %144
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %154 = load ptr, ptr %18, align 4
  %155 = getelementptr i8, ptr %154, i32 150576
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !27
  %157 = and i32 %156, 8388608
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %173, label %150

159:                                              ; preds = %150
  %160 = load ptr, ptr %18, align 4
  %161 = getelementptr i8, ptr %160, i32 150576
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %161) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !28
  %163 = and i32 %162, 8388608
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %159
  %166 = load ptr, ptr %2, align 8
  %167 = load ptr, ptr %18, align 4
  %168 = getelementptr i8, ptr %167, i32 150576
  %169 = tail call i32 @msm_readl(ptr noundef %168) #9
  %170 = load ptr, ptr %18, align 4
  %171 = getelementptr i8, ptr %170, i32 150580
  %172 = tail call i32 @msm_readl(ptr noundef %171) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %166, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, i32 noundef %169, i32 noundef %172) #9
  br label %173

173:                                              ; preds = %165, %159, %153, %140, %17
  tail call void @a6xx_hfi_stop(ptr noundef %2) #9
  %174 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 6
  %175 = load i32, ptr %174, align 8
  tail call void @disable_irq(i32 noundef %175) #9
  %176 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 5
  %177 = load i32, ptr %176, align 4
  tail call void @disable_irq(i32 noundef %177) #9
  %178 = load ptr, ptr %18, align 4
  %179 = getelementptr i8, ptr %178, i32 150552
  tail call void @msm_writel(i32 noundef -1, ptr noundef %179) #9
  %180 = load ptr, ptr %18, align 4
  %181 = getelementptr i8, ptr %180, i32 83532
  tail call void @msm_writel(i32 noundef -1, ptr noundef %181) #9
  tail call fastcc void @a6xx_rpmh_stop(ptr noundef %2) #9
  br label %182

182:                                              ; preds = %173, %52, %16
  %183 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %184 = load ptr, ptr %183, align 8
  %185 = getelementptr inbounds %struct.platform_device, ptr %184, i32 0, i32 3
  %186 = tail call i32 @dev_pm_opp_set_opp(ptr noundef %185, ptr noundef null) #9
  %187 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 7
  %188 = load ptr, ptr %187, align 4
  %189 = icmp eq ptr %188, null
  %190 = icmp ugt ptr %188, inttoptr (i32 -4096 to ptr)
  %191 = or i1 %189, %190
  br i1 %191, label %194, label %192

192:                                              ; preds = %182
  %193 = tail call i32 @__pm_runtime_idle(ptr noundef nonnull %188, i32 noundef 4) #9
  br label %194

194:                                              ; preds = %192, %182
  %195 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 15
  %196 = load i32, ptr %195, align 8
  %197 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 16
  %198 = load ptr, ptr %197, align 4
  tail call void @clk_bulk_disable(i32 noundef %196, ptr noundef %198) #9
  tail call void @clk_bulk_unprepare(i32 noundef %196, ptr noundef %198) #9
  %199 = load ptr, ptr %2, align 8
  %200 = tail call i32 @__pm_runtime_idle(ptr noundef %199, i32 noundef 4) #9
  br label %201

201:                                              ; preds = %194, %7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_gmu_force_off(ptr noundef %0) unnamed_addr #0 {
  tail call void @a6xx_hfi_stop(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 8
  tail call void @disable_irq(i32 noundef %3) #9
  %4 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #9
  %6 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 150552
  tail call void @msm_writel(i32 noundef -1, ptr noundef %8) #9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 83532
  tail call void @msm_writel(i32 noundef -1, ptr noundef %10) #9
  tail call fastcc void @a6xx_sptprac_disable(ptr noundef %0)
  %11 = tail call i64 @ktime_get() #9
  %12 = add i64 %11, 10000000
  %13 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i32 3352
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %26, %1
  %20 = tail call i64 @ktime_get() #9
  %21 = icmp sgt i64 %20, %12
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 8
  %24 = getelementptr i8, ptr %23, i32 3352
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !30
  br label %32

26:                                               ; preds = %19
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %27 = load ptr, ptr %13, align 8
  %28 = getelementptr i8, ptr %27, i32 3352
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !29
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %19, label %32

32:                                               ; preds = %26, %22, %1
  %33 = tail call i64 @ktime_get() #9
  %34 = add i64 %33, 10000000
  %35 = load ptr, ptr %13, align 8
  %36 = getelementptr i8, ptr %35, i32 4024
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %47, %32
  %41 = tail call i64 @ktime_get() #9
  %42 = icmp sgt i64 %41, %34
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr i8, ptr %44, i32 4024
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !32
  br label %53

47:                                               ; preds = %40
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %48 = load ptr, ptr %13, align 8
  %49 = getelementptr i8, ptr %48, i32 4024
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !31
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %53

53:                                               ; preds = %47, %43, %32
  %54 = tail call i64 @ktime_get() #9
  %55 = add i64 %54, 10000000
  %56 = load ptr, ptr %13, align 8
  %57 = getelementptr i8, ptr %56, i32 4696
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %68, %53
  %62 = tail call i64 @ktime_get() #9
  %63 = icmp sgt i64 %62, %55
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr i8, ptr %65, i32 4696
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !34
  br label %74

68:                                               ; preds = %61
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %69 = load ptr, ptr %13, align 8
  %70 = getelementptr i8, ptr %69, i32 4696
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !33
  %72 = and i32 %71, 1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %61, label %74

74:                                               ; preds = %68, %64, %53
  %75 = tail call i64 @ktime_get() #9
  %76 = add i64 %75, 1000000
  %77 = load ptr, ptr %13, align 8
  %78 = getelementptr i8, ptr %77, i32 5368
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %89, %74
  %83 = tail call i64 @ktime_get() #9
  %84 = icmp sgt i64 %83, %76
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr %13, align 8
  %87 = getelementptr i8, ptr %86, i32 5368
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !36
  br label %95

89:                                               ; preds = %82
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %90 = load ptr, ptr %13, align 8
  %91 = getelementptr i8, ptr %90, i32 5368
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !35
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %82, label %95

95:                                               ; preds = %89, %85, %74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a6xx_gmu_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr i8, ptr %3, i32 -16
  %5 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 28
  %6 = load i8, ptr %5, align 8, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %59, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %3) #9
  %10 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %14 = or i1 %12, %13
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  tail call void @__pm_runtime_disable(ptr noundef nonnull %11, i1 noundef zeroext true) #9
  %16 = load ptr, ptr %10, align 4
  tail call void @dev_pm_domain_detach(ptr noundef %16, i1 noundef zeroext false) #9
  br label %17

17:                                               ; preds = %15, %8
  %18 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void @iounmap(ptr noundef %19) #9
  %20 = tail call ptr @platform_get_resource_byname(ptr noundef %4, i32 noundef 512, ptr noundef nonnull @.str.6) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  %24 = load ptr, ptr %23, align 8
  tail call void @iounmap(ptr noundef %24) #9
  br label %25

25:                                               ; preds = %22, %17
  store ptr null, ptr %18, align 4
  %26 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  store ptr null, ptr %26, align 8
  %27 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 2
  %30 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %28, ptr noundef %30) #9
  %31 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %32, ptr noundef %33) #9
  %34 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %35, ptr noundef %36) #9
  %37 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12
  %38 = load ptr, ptr %37, align 8
  %39 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %38, ptr noundef %39) #9
  %40 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %41, ptr noundef %42) #9
  %43 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %29, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %44, ptr noundef %45) #9
  %46 = load ptr, ptr %29, align 8
  %47 = getelementptr inbounds %struct.msm_gem_address_space, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %48) #9
  %51 = load ptr, ptr %29, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %51) #9
  %52 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 6
  %53 = load i32, ptr %52, align 8
  %54 = tail call ptr @free_irq(i32 noundef %53, ptr noundef %2) #9
  %55 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 5
  %56 = load i32, ptr %55, align 4
  %57 = tail call ptr @free_irq(i32 noundef %56, ptr noundef %2) #9
  %58 = load ptr, ptr %2, align 8
  tail call void @put_device(ptr noundef %58) #9
  store i8 0, ptr %5, align 8
  br label %59

59:                                               ; preds = %25, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_domain_detach(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a6xx_gmu_init(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4
  %4 = tail call ptr @of_find_device_by_node(ptr noundef %1) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %174, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 1
  tail call void @__mutex_init(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef nonnull @a6xx_gmu_init.__key) #9
  %8 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  store ptr %8, ptr %3, align 8
  %9 = tail call i32 @of_dma_configure_id(ptr noundef %8, ptr noundef %1, i1 noundef zeroext true, ptr noundef null) #9
  %10 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 8
  store i32 0, ptr %10, align 8
  %11 = load ptr, ptr %3, align 8
  tail call void @pm_runtime_enable(ptr noundef %11) #9
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 16
  %14 = tail call i32 @devm_clk_bulk_get_all(ptr noundef %12, ptr noundef %13) #9
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %25, label %16

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 15
  store i32 %14, ptr %17, align 8
  %18 = load ptr, ptr %13, align 4
  %19 = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %18, i32 noundef %14, ptr noundef nonnull @.str.14) #9
  %20 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 17
  store ptr %19, ptr %20, align 8
  %21 = load ptr, ptr %13, align 4
  %22 = load i32, ptr %17, align 8
  %23 = tail call ptr @msm_clk_bulk_get_clock(ptr noundef %21, i32 noundef %22, ptr noundef nonnull @.str.35) #9
  %24 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 18
  store ptr %23, ptr %24, align 4
  br label %27

25:                                               ; preds = %6
  %26 = icmp eq i32 %14, 0
  br i1 %26, label %27, label %171

27:                                               ; preds = %25, %16
  %28 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %171, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %3, align 8
  %32 = tail call ptr @msm_iommu_new(ptr noundef %31, ptr noundef nonnull %28) #9
  %33 = tail call ptr @msm_gem_address_space_create(ptr noundef %32, ptr noundef nonnull @.str.14, i64 noundef 0, i64 noundef 2147483648) #9
  %34 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 2
  store ptr %33, ptr %34, align 8
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  tail call void @iommu_domain_free(ptr noundef nonnull %28) #9
  %37 = load ptr, ptr %34, align 8
  %38 = ptrtoint ptr %37 to i32
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %171

40:                                               ; preds = %36, %30
  %41 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13
  %42 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 13, i32 2
  store i32 4096, ptr %42, align 8
  %43 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 660
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = insertvalue [1 x i32] undef, i32 %48, 0
  %50 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %49) #9
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load i32, ptr %42, align 8
  br label %58

53:                                               ; preds = %46, %40
  %54 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10
  %55 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %54, i32 noundef 28672, i64 noundef 1614807040, ptr noundef nonnull @.str.8)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %146

57:                                               ; preds = %53
  store i32 8192, ptr %42, align 8
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %52, %51 ], [ 8192, %57 ]
  %60 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %41, i32 noundef %59, i64 noundef 1610612736, ptr noundef nonnull @.str.9)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %146

62:                                               ; preds = %58
  %63 = load i32, ptr %43, align 4
  switch i32 %63, label %64 [
    i32 650, label %69
    i32 620, label %69
    i32 660, label %69
  ]

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %66 = load i32, ptr %65, align 8
  %67 = insertvalue [1 x i32] undef, i32 %66, 0
  %68 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %67) #9
  br i1 %68, label %69, label %73

69:                                               ; preds = %64, %62, %62, %62
  %70 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11
  %71 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %70, i32 noundef 16760832, i64 noundef 16384, ptr noundef nonnull @.str.10)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %93, label %146

73:                                               ; preds = %64
  %74 = load i32, ptr %43, align 4
  switch i32 %74, label %83 [
    i32 680, label %75
    i32 640, label %75
    i32 660, label %87
  ]

75:                                               ; preds = %73, %73
  %76 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11
  %77 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %76, i32 noundef 245760, i64 noundef 16384, ptr noundef nonnull @.str.10)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12
  %81 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %80, i32 noundef 245760, i64 noundef 278528, ptr noundef nonnull @.str.11)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %146

83:                                               ; preds = %73
  %84 = load i32, ptr %65, align 8
  %85 = insertvalue [1 x i32] undef, i32 %84, 0
  %86 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %85) #9
  br i1 %86, label %87, label %88, !prof !15

87:                                               ; preds = %83, %73
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/msm/adreno/a6xx_gmu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1551, 0\0A.popsection", ""() #9, !srcloc !37
  unreachable

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 30
  store i8 1, ptr %89, align 2
  %90 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10
  %91 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %90, i32 noundef 16384, i64 noundef 0, ptr noundef nonnull @.str.8)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %146

93:                                               ; preds = %88, %79, %69
  %94 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9
  %95 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %94, i32 noundef 16384, i64 noundef 0, ptr noundef nonnull @.str.12)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %146

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14
  %99 = tail call fastcc i32 @a6xx_gmu_memory_alloc(ptr noundef %3, ptr noundef %98, i32 noundef 4096, i64 noundef 0, ptr noundef nonnull @.str.13)
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %146

101:                                              ; preds = %97
  %102 = tail call fastcc ptr @a6xx_gmu_get_mmio(ptr noundef nonnull %4, ptr noundef nonnull @.str.14)
  %103 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 3
  store ptr %102, ptr %103, align 4
  %104 = icmp ugt ptr %102, inttoptr (i32 -4096 to ptr)
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = ptrtoint ptr %102 to i32
  br label %146

107:                                              ; preds = %101
  %108 = tail call fastcc i32 @adreno_is_a650_family(ptr noundef %0)
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = tail call fastcc ptr @a6xx_gmu_get_mmio(ptr noundef nonnull %4, ptr noundef nonnull @.str.6)
  %112 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  store ptr %111, ptr %112, align 8
  %113 = icmp ugt ptr %111, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %132, label %118

114:                                              ; preds = %107
  %115 = load ptr, ptr %103, align 4
  %116 = getelementptr i8, ptr %115, i32 143360
  %117 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  store ptr %116, ptr %117, align 8
  br label %118

118:                                              ; preds = %114, %110
  %119 = tail call fastcc i32 @a6xx_gmu_get_irq(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull @.str.12, ptr noundef nonnull @a6xx_hfi_irq)
  %120 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 5
  store i32 %119, ptr %120, align 4
  %121 = tail call fastcc i32 @a6xx_gmu_get_irq(ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @a6xx_gmu_irq)
  %122 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 6
  store i32 %121, ptr %122, align 8
  %123 = load i32, ptr %120, align 4
  %124 = icmp slt i32 %123, 0
  %125 = icmp slt i32 %121, 0
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %132, label %127

127:                                              ; preds = %118
  %128 = load ptr, ptr %3, align 8
  %129 = tail call ptr @dev_pm_domain_attach_by_name(ptr noundef %128, ptr noundef nonnull @.str.15) #9
  %130 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 7
  store ptr %129, ptr %130, align 4
  tail call fastcc void @a6xx_gmu_pwrlevels_probe(ptr noundef %3)
  tail call void @a6xx_hfi_init(ptr noundef %3) #9
  %131 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 28
  store i8 1, ptr %131, align 8
  br label %174

132:                                              ; preds = %118, %110
  %133 = load ptr, ptr %103, align 4
  tail call void @iounmap(ptr noundef %133) #9
  %134 = tail call ptr @platform_get_resource_byname(ptr noundef nonnull %4, i32 noundef 512, ptr noundef nonnull @.str.6) #9
  %135 = icmp eq ptr %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 4
  %138 = load ptr, ptr %137, align 8
  tail call void @iounmap(ptr noundef %138) #9
  br label %139

139:                                              ; preds = %136, %132
  %140 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 6
  %141 = load i32, ptr %140, align 8
  %142 = tail call ptr @free_irq(i32 noundef %141, ptr noundef %3) #9
  %143 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 5
  %144 = load i32, ptr %143, align 4
  %145 = tail call ptr @free_irq(i32 noundef %144, ptr noundef %3) #9
  br label %146

146:                                              ; preds = %139, %105, %97, %93, %88, %79, %75, %69, %58, %53
  %147 = phi i32 [ %55, %53 ], [ %60, %58 ], [ %71, %69 ], [ %95, %93 ], [ %99, %97 ], [ %106, %105 ], [ -19, %139 ], [ %77, %75 ], [ %81, %79 ], [ %91, %88 ]
  %148 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 9
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %149, ptr noundef %150) #9
  %151 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 10
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %152, ptr noundef %153) #9
  %154 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 11
  %155 = load ptr, ptr %154, align 8
  %156 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %155, ptr noundef %156) #9
  %157 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 12
  %158 = load ptr, ptr %157, align 8
  %159 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %158, ptr noundef %159) #9
  %160 = load ptr, ptr %41, align 8
  %161 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %160, ptr noundef %161) #9
  %162 = getelementptr inbounds %struct.a6xx_gpu, ptr %0, i32 0, i32 4, i32 14
  %163 = load ptr, ptr %162, align 8
  %164 = load ptr, ptr %34, align 8
  tail call void @msm_gem_kernel_put(ptr noundef %163, ptr noundef %164) #9
  %165 = load ptr, ptr %34, align 8
  %166 = getelementptr inbounds %struct.msm_gem_address_space, ptr %165, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %167, align 4
  %169 = load ptr, ptr %168, align 4
  tail call void %169(ptr noundef %167) #9
  %170 = load ptr, ptr %34, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %170) #9
  br label %171

171:                                              ; preds = %146, %36, %27, %25
  %172 = phi i32 [ %14, %25 ], [ %38, %36 ], [ %147, %146 ], [ -19, %27 ]
  %173 = load ptr, ptr %3, align 8
  tail call void @put_device(ptr noundef %173) #9
  br label %174

174:                                              ; preds = %171, %127, %2
  %175 = phi i32 [ %172, %171 ], [ 0, %127 ], [ -19, %2 ]
  ret i32 %175
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_gmu_memory_alloc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = getelementptr i8, ptr %0, i32 -684
  %7 = load ptr, ptr %6, align 4
  %8 = add i32 %2, 4095
  %9 = and i32 %8, -4096
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %5
  %12 = zext i32 %9 to i64
  %13 = add i64 %12, %3
  %14 = lshr i64 %3, 12
  %15 = lshr i64 %13, 12
  br label %16

16:                                               ; preds = %11, %5
  %17 = phi i32 [ 537001984, %11 ], [ 131072, %5 ]
  %18 = phi i64 [ %14, %11 ], [ 393217, %5 ]
  %19 = phi i64 [ %15, %11 ], [ 524288, %5 ]
  %20 = tail call ptr @msm_gem_new(ptr noundef %7, i32 noundef %9, i32 noundef %17) #9
  store ptr %20, ptr %1, align 8
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = ptrtoint ptr %20 to i32
  br label %46

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %1, i32 0, i32 3
  %28 = tail call i32 @msm_gem_get_and_pin_iova_range(ptr noundef %20, ptr noundef %26, ptr noundef %27, i64 noundef %18, i64 noundef %19) #9
  %29 = icmp eq i32 %28, 0
  %30 = load ptr, ptr %1, align 8
  br i1 %29, label %41, label %31

31:                                               ; preds = %24
  %32 = icmp eq ptr %30, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !38
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %30) #9, !srcloc !39
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %30, ptr nonnull %30, i32 1, ptr nonnull elementtype(i32) %30) #9, !srcloc !40
  %35 = extractvalue { i32, i32, i32 } %34, 0
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = icmp sgt i32 %35, 0
  br i1 %38, label %46, label %39, !prof !11

39:                                               ; preds = %37
  tail call void @refcount_warn_saturate(ptr noundef nonnull %30, i32 noundef 3) #9
  br label %46

40:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !41
  tail call void @drm_gem_object_free(ptr noundef nonnull %30) #9
  br label %46

41:                                               ; preds = %24
  %42 = tail call ptr @msm_gem_get_vaddr(ptr noundef %30) #9
  %43 = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %1, i32 0, i32 1
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.a6xx_gmu_bo, ptr %1, i32 0, i32 2
  store i32 %9, ptr %44, align 8
  %45 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %45, ptr noundef %4) #9
  br label %46

46:                                               ; preds = %41, %40, %39, %37, %31, %22
  %47 = phi i32 [ %23, %22 ], [ 0, %41 ], [ %28, %31 ], [ %28, %37 ], [ %28, %39 ], [ %28, %40 ]
  ret i32 %47
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @adreno_is_a650_family(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %4 [
    i32 650, label %10
    i32 620, label %10
    i32 660, label %10
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = insertvalue [1 x i32] undef, i32 %6, 0
  %8 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %7) #9
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %4, %1, %1, %1
  %11 = phi i32 [ 1, %1 ], [ 1, %1 ], [ %9, %4 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @a6xx_gmu_get_mmio(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef %1) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 4
  %7 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 1, %6
  %10 = add i32 %9, %8
  %11 = tail call ptr @ioremap(i32 noundef %6, i32 noundef %10) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %5, %2
  %14 = phi ptr [ @.str.36, %2 ], [ @.str.37, %5 ]
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull %14, ptr noundef %1) #9
  br label %16

16:                                               ; preds = %13, %5
  %17 = phi ptr [ %11, %5 ], [ inttoptr (i32 -22 to ptr), %13 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_gmu_get_irq(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = tail call i32 @platform_get_irq_byname(ptr noundef %1, ptr noundef %2) #9
  %6 = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef %3, ptr noundef null, i32 noundef 4, ptr noundef %2, ptr noundef %0) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.38, ptr noundef %2, i32 noundef %6) #9
  br label %11

10:                                               ; preds = %4
  tail call void @disable_irq(i32 noundef %5) #9
  br label %11

11:                                               ; preds = %10, %8
  %12 = phi i32 [ %6, %8 ], [ %5, %10 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_hfi_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.a6xx_gmu, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 83528
  %6 = tail call i32 @msm_readl(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 83524
  tail call void @msm_writel(i32 noundef %6, ptr noundef %8) #9
  %9 = and i32 %6, 8388608
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_hfi_irq._rs, ptr noundef nonnull @__func__.a6xx_hfi_irq) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.39) #10
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.a6xx_gmu, ptr %1, i32 0, i32 29
  store i8 1, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 -460
  %19 = tail call i32 @del_timer(ptr noundef %18) #9
  %20 = getelementptr i8, ptr %1, i32 -344
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %1, i32 -396
  %23 = tail call zeroext i1 @kthread_queue_work(ptr noundef %21, ptr noundef %22) #9
  br label %24

24:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @a6xx_gmu_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.a6xx_gmu, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 150548
  %6 = tail call i32 @msm_readl(ptr noundef %5) #9
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 150544
  tail call void @msm_writel(i32 noundef %6, ptr noundef %8) #9
  %9 = and i32 %6, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.40) #10
  br label %16

16:                                               ; preds = %14, %11
  %17 = getelementptr inbounds %struct.a6xx_gmu, ptr %1, i32 0, i32 29
  store i8 1, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 -460
  %19 = tail call i32 @del_timer(ptr noundef %18) #9
  %20 = getelementptr i8, ptr %1, i32 -344
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr i8, ptr %1, i32 -396
  %23 = tail call zeroext i1 @kthread_queue_work(ptr noundef %21, ptr noundef %22) #9
  br label %24

24:                                               ; preds = %16, %2
  %25 = and i32 %6, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs.41, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.42) #10
  br label %32

32:                                               ; preds = %30, %27, %24
  %33 = and i32 %6, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @___ratelimit(ptr noundef nonnull @a6xx_gmu_irq._rs.43, ptr noundef nonnull @__func__.a6xx_gmu_irq) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %1, align 8
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr i8, ptr %40, i32 150604
  %42 = tail call i32 @msm_readl(ptr noundef %41) #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.44, i32 noundef %42) #10
  br label %43

43:                                               ; preds = %38, %35, %32
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_domain_attach_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_gmu_pwrlevels_probe(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8
  %5 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %4) #9
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr %0, align 8
  br i1 %6, label %9, label %8

8:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.45) #9
  br label %59

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 24
  %11 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %7) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 1, ptr %3, align 4
  %12 = add i32 %11, 1
  %13 = icmp ugt i32 %12, 4
  br i1 %13, label %14, label %15, !prof !15

14:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1339, i32 noundef 9, ptr noundef nonnull @.str.46) #9
  store i32 0, ptr %10, align 4
  br label %17

15:                                               ; preds = %9
  store i32 0, ptr %10, align 4
  %16 = icmp sgt i32 %11, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %15, %14
  %18 = tail call i32 @llvm.umin.i32(i32 %12, i32 4) #9
  br label %19

19:                                               ; preds = %23, %17
  %20 = phi i32 [ %26, %23 ], [ 1, %17 ]
  %21 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %7, ptr noundef nonnull %3) #9
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  call void @dev_pm_opp_put(ptr noundef %21) #9
  %24 = load i32, ptr %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, ptr %3, align 4
  %26 = add nuw i32 %20, 1
  %27 = getelementptr i32, ptr %10, i32 %20
  store i32 %24, ptr %27, align 4
  %28 = icmp eq i32 %26, %18
  br i1 %28, label %29, label %19

29:                                               ; preds = %23, %19, %15
  %30 = phi i32 [ 1, %15 ], [ %18, %23 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %31 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 23
  store i32 %30, ptr %31, align 8
  %32 = getelementptr i8, ptr %0, i32 -680
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.platform_device, ptr %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 21
  %36 = call i32 @dev_pm_opp_get_opp_count(ptr noundef %34) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 1, ptr %2, align 4
  %37 = add i32 %36, 1
  %38 = icmp ugt i32 %37, 16
  br i1 %38, label %39, label %40, !prof !15

39:                                               ; preds = %29
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1339, i32 noundef 9, ptr noundef nonnull @.str.46) #9
  store i32 0, ptr %35, align 4
  br label %42

40:                                               ; preds = %29
  store i32 0, ptr %35, align 4
  %41 = icmp sgt i32 %36, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %40, %39
  %43 = call i32 @llvm.umin.i32(i32 %37, i32 16) #9
  br label %44

44:                                               ; preds = %48, %42
  %45 = phi i32 [ %51, %48 ], [ 1, %42 ]
  %46 = call ptr @dev_pm_opp_find_freq_ceil(ptr noundef %34, ptr noundef nonnull %2) #9
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  call void @dev_pm_opp_put(ptr noundef %46) #9
  %49 = load i32, ptr %2, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %2, align 4
  %51 = add nuw i32 %45, 1
  %52 = getelementptr i32, ptr %35, i32 %45
  store i32 %49, ptr %52, align 4
  %53 = icmp eq i32 %51, %43
  br i1 %53, label %54, label %44

54:                                               ; preds = %48, %44, %40
  %55 = phi i32 [ 1, %40 ], [ %43, %48 ], [ %45, %44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %56 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 20
  store i32 %55, ptr %56, align 4
  %57 = add i32 %55, -1
  %58 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 19
  store i32 %57, ptr %58, align 8
  br label %59

59:                                               ; preds = %54, %8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_hfi_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_msm_gmu_freq_change(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @a6xx_rpmh_start(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 150556
  tail call void @msm_writel(i32 noundef 2, ptr noundef %4) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  tail call void @arm_heavy_mb() #9
  %5 = tail call i64 @ktime_get() #9
  %6 = add i64 %5, 10000000
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 150560
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %19, %1
  %13 = tail call i64 @ktime_get() #9
  %14 = icmp sgt i64 %13, %6
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 150560
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !44
  br label %25

19:                                               ; preds = %12
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 150560
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !43
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %12, label %25

25:                                               ; preds = %19, %15, %1
  %26 = phi i32 [ %18, %15 ], [ %9, %1 ], [ %22, %19 ]
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.22) #9
  br label %68

31:                                               ; preds = %25
  %32 = tail call i64 @ktime_get() #9
  %33 = add i64 %32, 10000000
  %34 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr i8, ptr %35, i32 1028
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %47, %31
  %40 = tail call i64 @ktime_get() #9
  %41 = icmp sgt i64 %40, %33
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load ptr, ptr %34, align 8
  %44 = getelementptr i8, ptr %43, i32 1028
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !46
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %52

47:                                               ; preds = %39
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %48 = load ptr, ptr %34, align 8
  %49 = getelementptr i8, ptr %48, i32 1028
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !45
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %54, label %39

52:                                               ; preds = %42
  %53 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %53, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.23) #9
  br label %68

54:                                               ; preds = %47, %42, %31
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr i8, ptr %55, i32 150556
  tail call void @msm_writel(i32 noundef 0, ptr noundef %56) #9
  %57 = load ptr, ptr %2, align 4
  %58 = getelementptr i8, ptr %57, i32 150584
  tail call void @msm_writel(i32 noundef -16777216, ptr noundef %58) #9
  %59 = load ptr, ptr %2, align 4
  %60 = getelementptr i8, ptr %59, i32 82180
  %61 = tail call i32 @msm_readl(ptr noundef %60) #9
  %62 = and i32 %61, -256
  %63 = or i32 %62, 32
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr i8, ptr %64, i32 82180
  tail call void @msm_writel(i32 noundef %63, ptr noundef %65) #9
  %66 = load ptr, ptr %2, align 4
  %67 = getelementptr i8, ptr %66, i32 82176
  tail call void @msm_writel(i32 noundef 1, ptr noundef %67) #9
  br label %68

68:                                               ; preds = %54, %52, %29
  %69 = phi i32 [ -110, %29 ], [ -110, %52 ], [ 0, %54 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @a6xx_hfi_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @a6xx_sptprac_disable(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 30
  %3 = load i8, ptr %2, align 2, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %44, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.a6xx_gmu, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 159756
  %9 = tail call i32 @msm_readl(ptr noundef %8) #9
  %10 = or i32 %9, 2048
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 159756
  tail call void @msm_writel(i32 noundef %10, ptr noundef %12) #9
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr i8, ptr %13, i32 516
  tail call void @msm_writel(i32 noundef 7831553, ptr noundef %14) #9
  %15 = tail call i64 @ktime_get() #9
  %16 = add i64 %15, 10000000
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 82752
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !47
  %20 = and i32 %19, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %29, %5
  %23 = tail call i64 @ktime_get() #9
  %24 = icmp sgt i64 %23, %16
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr i8, ptr %26, i32 82752
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !48
  br label %35

29:                                               ; preds = %22
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #9
  %30 = load ptr, ptr %6, align 4
  %31 = getelementptr i8, ptr %30, i32 82752
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #9, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !47
  %33 = and i32 %32, 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %22, label %35

35:                                               ; preds = %29, %25, %5
  %36 = phi i32 [ %28, %25 ], [ %19, %5 ], [ %32, %29 ]
  %37 = and i32 %36, 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load ptr, ptr %0, align 8
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 82752
  %43 = tail call i32 @msm_readl(ptr noundef %42) #9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %40, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.32, i32 noundef %43) #9
  br label %44

44:                                               ; preds = %39, %35, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @a6xx_hfi_send_prep_slumber(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_kernel_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_address_space_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_bulk_get_clock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_new(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gem_get_and_pin_iova_range(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_get_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_ceil(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2156510834}
!10 = !{i64 2156511016}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 5491371}
!13 = !{i64 2156611098}
!14 = !{i64 2156611492}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i64 2156627938}
!17 = !{i64 2156385780}
!18 = !{i64 2156605157}
!19 = !{i64 2156605551}
!20 = !{i64 2156614871}
!21 = !{i64 2156615265}
!22 = !{i64 2156607290}
!23 = !{i64 2156607684}
!24 = !{i64 2156631656}
!25 = !{i64 2156623979}
!26 = !{i64 2156624373}
!27 = !{i64 2156646789}
!28 = !{i64 2156647183}
!29 = !{i64 2156633282}
!30 = !{i64 2156633676}
!31 = !{i64 2156635282}
!32 = !{i64 2156635676}
!33 = !{i64 2156637282}
!34 = !{i64 2156637676}
!35 = !{i64 2156639278}
!36 = !{i64 2156639672}
!37 = !{i64 2156655616, i64 2156656119, i64 2156655653, i64 2156655709, i64 2156655743, i64 2156655767, i64 2156655808, i64 2156655829, i64 2156655857, i64 2156655891}
!38 = !{i64 2148085300}
!39 = !{i64 481461, i64 2147971432, i64 2147971458, i64 2147971505, i64 2147971527, i64 2147971555, i64 2147971575}
!40 = !{i64 2147987459, i64 2147987491, i64 2147987520, i64 2147987554, i64 2147987585, i64 2147987608}
!41 = !{i64 2149560585}
!42 = !{i64 2156618024}
!43 = !{i64 2156619653}
!44 = !{i64 2156620047}
!45 = !{i64 2156621753}
!46 = !{i64 2156622147}
!47 = !{i64 2156617097}
!48 = !{i64 2156617491}
