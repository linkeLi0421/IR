; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/a5xx_power.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/a5xx_power.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.96 = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.msm_gpu = type { ptr, ptr, ptr, ptr, %struct.adreno_smmu_priv, %struct.spinlock, i8, %struct.anon.93, i32, i32, [5 x i32], ptr, i32, [4 x ptr], i32, i32, %struct.list_head, %struct.mutex, i32, %struct.mutex, i8, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, %struct.timer_list, %struct.msm_gpu_fault_info, %struct.kthread_work, %struct.kthread_work, %struct.wait_queue_head, %struct.kthread_work, ptr, ptr, %struct.msm_gpu_devfreq, i32, ptr, i8, i8, ptr }
%struct.adreno_smmu_priv = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.93 = type { i8, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.a5xx_gpu = type { %struct.adreno_gpu, ptr, i64, ptr, i64, ptr, i64, i32, i32, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x i64], %struct.atomic_t, %struct.timer_list, ptr, i64, ptr, i8 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.97, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.97 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.firmware = type { i32, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"gpmufw\00", align 1
@a5xx_sequence_regs = internal unnamed_addr constant [55 x %struct.anon.96] [%struct.anon.96 { i32 47521, i32 66307 }, %struct.anon.96 { i32 47522, i32 318767104 }, %struct.anon.96 { i32 47523, i32 4587552 }, %struct.anon.96 { i32 47524, i32 268435456 }, %struct.anon.96 { i32 47525, i32 67770119 }, %struct.anon.96 { i32 47526, i32 65536 }, %struct.anon.96 { i32 47527, i32 234883332 }, %struct.anon.96 { i32 47528, i32 268435456 }, %struct.anon.96 { i32 47529, i32 18239488 }, %struct.anon.96 { i32 47530, i32 917506 }, %struct.anon.96 { i32 47531, i32 59261249 }, %struct.anon.96 { i32 47532, i32 268437568 }, %struct.anon.96 { i32 47533, i32 1462390784 }, %struct.anon.96 { i32 47534, i32 3 }, %struct.anon.96 { i32 47535, i32 0 }, %struct.anon.96 { i32 47536, i32 268435456 }, %struct.anon.96 { i32 47144, i32 1814052880 }, %struct.anon.96 { i32 47145, i32 1814052881 }, %struct.anon.96 { i32 47146, i32 1814052882 }, %struct.anon.96 { i32 47147, i32 1814052883 }, %struct.anon.96 { i32 47148, i32 1814052884 }, %struct.anon.96 { i32 47375, i32 4 }, %struct.anon.96 { i32 47376, i32 2 }, %struct.anon.96 { i32 47377, i32 2 }, %struct.anon.96 { i32 47378, i32 2 }, %struct.anon.96 { i32 47379, i32 2 }, %struct.anon.96 { i32 47407, i32 4 }, %struct.anon.96 { i32 47408, i32 5 }, %struct.anon.96 { i32 47409, i32 5 }, %struct.anon.96 { i32 47410, i32 5 }, %struct.anon.96 { i32 47411, i32 5 }, %struct.anon.96 { i32 47471, i32 1 }, %struct.anon.96 { i32 47472, i32 3 }, %struct.anon.96 { i32 47439, i32 4 }, %struct.anon.96 { i32 47440, i32 11 }, %struct.anon.96 { i32 47441, i32 11 }, %struct.anon.96 { i32 47442, i32 11 }, %struct.anon.96 { i32 47443, i32 11 }, %struct.anon.96 { i32 47367, i32 25 }, %struct.anon.96 { i32 47399, i32 25 }, %struct.anon.96 { i32 47431, i32 25 }, %struct.anon.96 { i32 47463, i32 25 }, %struct.anon.96 { i32 47495, i32 25 }, %struct.anon.96 { i32 47366, i32 2228225 }, %struct.anon.96 { i32 47398, i32 2228225 }, %struct.anon.96 { i32 47430, i32 2228225 }, %struct.anon.96 { i32 47462, i32 2228225 }, %struct.anon.96 { i32 47494, i32 3145728 }, %struct.anon.96 { i32 44096, i32 54591297 }, %struct.anon.96 { i32 44097, i32 62848720 }, %struct.anon.96 { i32 44098, i32 3350509 }, %struct.anon.96 { i32 44099, i32 35651027 }, %struct.anon.96 { i32 44100, i32 1431677610 }, %struct.anon.96 { i32 44101, i32 1431677610 }, %struct.anon.96 { i32 47546, i32 8 }], align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s: Unable to load GPMU firmware. GPMU will not be active\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: GPMU firmware initialization timed out\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: GPMU firmware initialization failed: %d\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @a5xx_power_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  switch i32 %3, label %268 [
    i32 530, label %4
    i32 540, label %68
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i32 [ 0, %4 ], [ %15, %6 ]
  %8 = getelementptr [55 x %struct.anon.96], ptr @a5xx_sequence_regs, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [55 x %struct.anon.96], ptr @a5xx_sequence_regs, i32 0, i32 %7, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %5, align 8
  %13 = shl i32 %9, 2
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void @msm_writel(i32 noundef %11, ptr noundef %14) #3
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp eq i32 %15, 55
  br i1 %16, label %17, label %6

17:                                               ; preds = %6
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr i8, ptr %18, i32 176128
  tail call void @msm_writel(i32 noundef 393223, ptr noundef %19) #3
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr i8, ptr %20, i32 176140
  tail call void @msm_writel(i32 noundef 1, ptr noundef %21) #3
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr i8, ptr %22, i32 176132
  tail call void @msm_writel(i32 noundef 1, ptr noundef %23) #3
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr i8, ptr %24, i32 176512
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %25) #3
  %26 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr i8, ptr %28, i32 176408
  tail call void @msm_writel(i32 noundef %27, ptr noundef %29) #3
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr i8, ptr %30, i32 176640
  tail call void @msm_writel(i32 noundef -2147477648, ptr noundef %31) #3
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr i8, ptr %32, i32 190080
  tail call void @msm_writel(i32 noundef 268443647, ptr noundef %33) #3
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr i8, ptr %34, i32 188464
  tail call void @msm_writel(i32 noundef 2105329, ptr noundef %35) #3
  %36 = load ptr, ptr %5, align 8
  %37 = getelementptr i8, ptr %36, i32 190080
  tail call void @msm_writel(i32 noundef 268443647, ptr noundef %37) #3
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr i8, ptr %38, i32 188464
  tail call void @msm_writel(i32 noundef 2105329, ptr noundef %39) #3
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr i8, ptr %40, i32 155676
  tail call void @msm_writel(i32 noundef 1, ptr noundef %41) #3
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr i8, ptr %42, i32 155680
  tail call void @msm_writel(i32 noundef 1, ptr noundef %43) #3
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr i8, ptr %44, i32 155696
  tail call void @msm_writel(i32 noundef 5448, ptr noundef %45) #3
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr i8, ptr %46, i32 155700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %47) #3
  %48 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 32
  %49 = load i32, ptr %48, align 8
  %50 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.drm_device, ptr %51, i32 0, i32 5
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.msm_drm_private, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.platform_device, ptr %55, i32 0, i32 3
  %57 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %56, i32 noundef %49, i1 noundef zeroext true) #3
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %62, label %59

59:                                               ; preds = %17
  %60 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %57) #3
  %61 = udiv i32 %60, 1000
  tail call void @dev_pm_opp_put(ptr noundef %57) #3
  br label %62

62:                                               ; preds = %59, %17
  %63 = phi i32 [ 0, %17 ], [ %61, %59 ]
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr i8, ptr %64, i32 155704
  tail call void @msm_writel(i32 noundef %63, ptr noundef %65) #3
  %66 = load i32, ptr %48, align 8
  %67 = udiv i32 %66, 1000000
  br label %111

68:                                               ; preds = %1
  %69 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %70 = load i8, ptr %69, align 1
  %71 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr i8, ptr %72, i32 176512
  tail call void @msm_writel(i32 noundef -2147483648, ptr noundef %73) #3
  %74 = load ptr, ptr %71, align 8
  %75 = getelementptr i8, ptr %74, i32 176640
  tail call void @msm_writel(i32 noundef -2147477648, ptr noundef %75) #3
  %76 = load ptr, ptr %71, align 8
  %77 = getelementptr i8, ptr %76, i32 155676
  tail call void @msm_writel(i32 noundef -2147483647, ptr noundef %77) #3
  %78 = load ptr, ptr %71, align 8
  %79 = getelementptr i8, ptr %78, i32 155680
  tail call void @msm_writel(i32 noundef 1, ptr noundef %79) #3
  %80 = load ptr, ptr %71, align 8
  %81 = getelementptr i8, ptr %80, i32 155696
  tail call void @msm_writel(i32 noundef 5448, ptr noundef %81) #3
  %82 = load ptr, ptr %71, align 8
  %83 = getelementptr i8, ptr %82, i32 155700
  tail call void @msm_writel(i32 noundef 1, ptr noundef %83) #3
  %84 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 32
  %85 = load i32, ptr %84, align 8
  %86 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.drm_device, ptr %87, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.msm_drm_private, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.platform_device, ptr %91, i32 0, i32 3
  %93 = tail call ptr @dev_pm_opp_find_freq_exact(ptr noundef %92, i32 noundef %85, i1 noundef zeroext true) #3
  %94 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %98, label %95

95:                                               ; preds = %68
  %96 = tail call i32 @dev_pm_opp_get_voltage(ptr noundef %93) #3
  %97 = udiv i32 %96, 1000
  tail call void @dev_pm_opp_put(ptr noundef %93) #3
  br label %98

98:                                               ; preds = %95, %68
  %99 = phi i32 [ 0, %68 ], [ %97, %95 ]
  %100 = zext i8 %70 to i32
  %101 = shl nuw nsw i32 %100, 17
  %102 = or i32 %101, 16777728
  %103 = load ptr, ptr %71, align 8
  %104 = getelementptr i8, ptr %103, i32 155704
  tail call void @msm_writel(i32 noundef %99, ptr noundef %104) #3
  %105 = load i32, ptr %84, align 8
  %106 = udiv i32 %105, 1000000
  %107 = load ptr, ptr %71, align 8
  %108 = getelementptr i8, ptr %107, i32 155708
  tail call void @msm_writel(i32 noundef %106, ptr noundef %108) #3
  %109 = load ptr, ptr %71, align 8
  %110 = getelementptr i8, ptr %109, i32 155832
  tail call void @msm_writel(i32 noundef %102, ptr noundef %110) #3
  br label %111

111:                                              ; preds = %98, %62
  %112 = phi ptr [ %71, %98 ], [ %5, %62 ]
  %113 = phi i32 [ 155836, %98 ], [ 155708, %62 ]
  %114 = phi i32 [ -772, %98 ], [ %67, %62 ]
  %115 = phi i32 [ 144, %98 ], [ 16, %62 ]
  %116 = load ptr, ptr %112, align 8
  %117 = getelementptr i8, ptr %116, i32 %113
  tail call void @msm_writel(i32 noundef %114, ptr noundef %117) #3
  %118 = load ptr, ptr %112, align 8
  %119 = getelementptr i8, ptr %118, i32 155688
  tail call void @msm_writel(i32 noundef %115, ptr noundef %119) #3
  %120 = load ptr, ptr %112, align 8
  %121 = getelementptr i8, ptr %120, i32 155668
  tail call void @msm_writel(i32 noundef -1161889074, ptr noundef %121) #3
  %122 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr i8, ptr %123, i32 172616
  tail call void @msm_writel(i32 noundef 127, ptr noundef %124) #3
  %125 = load ptr, ptr %122, align 8
  %126 = getelementptr i8, ptr %125, i32 172624
  tail call void @msm_writel(i32 noundef 0, ptr noundef %126) #3
  %127 = load ptr, ptr %122, align 8
  %128 = getelementptr i8, ptr %127, i32 172620
  tail call void @msm_writel(i32 noundef 655488, ptr noundef %128) #3
  %129 = load ptr, ptr %122, align 8
  %130 = getelementptr i8, ptr %129, i32 172612
  tail call void @msm_writel(i32 noundef 6291520, ptr noundef %130) #3
  %131 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 7
  %132 = load i32, ptr %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %252, label %134

134:                                              ; preds = %111
  %135 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %136 = load ptr, ptr %135, align 4
  tail call void @adreno_wait_ring(ptr noundef %136, i32 noundef 2) #3
  %137 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 4
  %140 = load ptr, ptr %139, align 8
  %141 = icmp eq ptr %138, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %134
  %143 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %144 = load ptr, ptr %143, align 4
  br label %145

145:                                              ; preds = %142, %134
  %146 = phi ptr [ %144, %142 ], [ %138, %134 ]
  %147 = getelementptr i32, ptr %146, i32 1
  store ptr %147, ptr %137, align 8
  store i32 1893662721, ptr %146, align 4
  %148 = load ptr, ptr %137, align 8
  %149 = load ptr, ptr %139, align 8
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %153 = load ptr, ptr %152, align 4
  br label %154

154:                                              ; preds = %151, %145
  %155 = phi ptr [ %153, %151 ], [ %148, %145 ]
  %156 = getelementptr i32, ptr %155, i32 1
  store ptr %156, ptr %137, align 8
  store i32 0, ptr %155, align 4
  tail call void @adreno_wait_ring(ptr noundef %136, i32 noundef 4) #3
  %157 = load ptr, ptr %137, align 8
  %158 = load ptr, ptr %139, align 8
  %159 = icmp eq ptr %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %162 = load ptr, ptr %161, align 4
  br label %163

163:                                              ; preds = %160, %154
  %164 = phi ptr [ %162, %160 ], [ %157, %154 ]
  %165 = getelementptr i32, ptr %164, i32 1
  store ptr %165, ptr %137, align 8
  store i32 1891598339, ptr %164, align 4
  %166 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 6
  %167 = load i64, ptr %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = load ptr, ptr %137, align 8
  %170 = load ptr, ptr %139, align 8
  %171 = icmp eq ptr %169, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %163
  %173 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %174 = load ptr, ptr %173, align 4
  br label %175

175:                                              ; preds = %172, %163
  %176 = phi ptr [ %174, %172 ], [ %169, %163 ]
  %177 = getelementptr i32, ptr %176, i32 1
  store ptr %177, ptr %137, align 8
  store i32 %168, ptr %176, align 4
  %178 = load i64, ptr %166, align 8
  %179 = lshr i64 %178, 32
  %180 = trunc i64 %179 to i32
  %181 = load ptr, ptr %137, align 8
  %182 = load ptr, ptr %139, align 8
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %186 = load ptr, ptr %185, align 4
  br label %187

187:                                              ; preds = %184, %175
  %188 = phi ptr [ %186, %184 ], [ %181, %175 ]
  %189 = getelementptr i32, ptr %188, i32 1
  store ptr %189, ptr %137, align 8
  store i32 %180, ptr %188, align 4
  %190 = load i32, ptr %131, align 8
  %191 = load ptr, ptr %137, align 8
  %192 = load ptr, ptr %139, align 8
  %193 = icmp eq ptr %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %187
  %195 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  br label %197

197:                                              ; preds = %194, %187
  %198 = phi ptr [ %196, %194 ], [ %191, %187 ]
  %199 = getelementptr i32, ptr %198, i32 1
  store ptr %199, ptr %137, align 8
  store i32 %190, ptr %198, align 4
  tail call void @adreno_wait_ring(ptr noundef %136, i32 noundef 2) #3
  %200 = load ptr, ptr %137, align 8
  %201 = load ptr, ptr %139, align 8
  %202 = icmp eq ptr %200, %201
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %205 = load ptr, ptr %204, align 4
  br label %206

206:                                              ; preds = %203, %197
  %207 = phi ptr [ %205, %203 ], [ %200, %197 ]
  %208 = getelementptr i32, ptr %207, i32 1
  store ptr %208, ptr %137, align 8
  store i32 1893662721, ptr %207, align 4
  %209 = load ptr, ptr %137, align 8
  %210 = load ptr, ptr %139, align 8
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = getelementptr inbounds %struct.msm_ringbuffer, ptr %136, i32 0, i32 3
  %214 = load ptr, ptr %213, align 4
  br label %215

215:                                              ; preds = %212, %206
  %216 = phi ptr [ %214, %212 ], [ %209, %206 ]
  %217 = getelementptr i32, ptr %216, i32 1
  store ptr %217, ptr %137, align 8
  store i32 1, ptr %216, align 4
  tail call void @a5xx_flush(ptr noundef %0, ptr noundef %136, i1 noundef zeroext true) #3
  %218 = tail call zeroext i1 @a5xx_idle(ptr noundef %0, ptr noundef %136) #3
  br i1 %218, label %219, label %250

219:                                              ; preds = %215
  %220 = load i32, ptr %2, align 4
  %221 = icmp eq i32 %220, 530
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load ptr, ptr %122, align 8
  %224 = getelementptr i8, ptr %223, i32 172804
  tail call void @msm_writel(i32 noundef 16404, ptr noundef %224) #3
  br label %225

225:                                              ; preds = %222, %219
  %226 = load ptr, ptr %122, align 8
  %227 = getelementptr i8, ptr %226, i32 172896
  tail call void @msm_writel(i32 noundef 0, ptr noundef %227) #3
  br label %228

228:                                              ; preds = %235, %225
  %229 = phi i32 [ 24, %225 ], [ %236, %235 ]
  %230 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %230(i32 noundef 214748) #3
  %231 = load ptr, ptr %122, align 8
  %232 = getelementptr i8, ptr %231, i32 172928
  %233 = tail call i32 @msm_readl(ptr noundef %232) #3
  %234 = icmp eq i32 %233, -1161889074
  br i1 %234, label %240, label %235

235:                                              ; preds = %228
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #3, !srcloc !9
  %236 = add nsw i32 %229, -1
  %237 = icmp eq i32 %229, 0
  br i1 %237, label %238, label %228

238:                                              ; preds = %235
  %239 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, ptr noundef %239) #3
  br label %240

240:                                              ; preds = %238, %228
  %241 = load i32, ptr %2, align 4
  %242 = icmp eq i32 %241, 530
  br i1 %242, label %255, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr %122, align 8
  %245 = getelementptr i8, ptr %244, i32 172932
  %246 = tail call i32 @msm_readl(ptr noundef %245) #3
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, ptr noundef %249, i32 noundef %246) #3
  br label %252

250:                                              ; preds = %215
  %251 = load ptr, ptr %0, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1, ptr noundef %251) #3
  br label %268

252:                                              ; preds = %248, %243, %111
  %253 = load i32, ptr %2, align 4
  %254 = icmp eq i32 %253, 530
  br i1 %254, label %255, label %268

255:                                              ; preds = %252, %240
  %256 = load ptr, ptr %122, align 8
  %257 = getelementptr i8, ptr %256, i32 188484
  tail call void @msm_writel(i32 noundef 0, ptr noundef %257) #3
  %258 = load ptr, ptr %122, align 8
  %259 = getelementptr i8, ptr %258, i32 188476
  tail call void @msm_writel(i32 noundef 10, ptr noundef %259) #3
  %260 = load ptr, ptr %122, align 8
  %261 = getelementptr i8, ptr %260, i32 176520
  tail call void @msm_writel(i32 noundef 1, ptr noundef %261) #3
  %262 = load ptr, ptr %122, align 8
  %263 = getelementptr i8, ptr %262, i32 176152
  tail call void @msm_writel(i32 noundef 327680, ptr noundef %263) #3
  %264 = load ptr, ptr %122, align 8
  %265 = getelementptr i8, ptr %264, i32 172704
  tail call void @msm_writel(i32 noundef 196608, ptr noundef %265) #3
  %266 = load ptr, ptr %122, align 8
  %267 = getelementptr i8, ptr %266, i32 172684
  tail call void @msm_writel(i32 noundef 17, ptr noundef %267) #3
  br label %268

268:                                              ; preds = %255, %252, %250, %1
  %269 = phi i32 [ -22, %250 ], [ 0, %252 ], [ 0, %255 ], [ 0, %1 ]
  ret i32 %269
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @a5xx_gpmu_ucode_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  switch i32 %5, label %103 [
    i32 530, label %6
    i32 540, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %103

10:                                               ; preds = %6
  %11 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %12, align 4
  %16 = icmp ult i32 %15, 8
  br i1 %16, label %103, label %17

17:                                               ; preds = %10
  %18 = load i32, ptr %14, align 4
  %19 = icmp ugt i32 %18, 1
  %20 = lshr i32 %15, 2
  %21 = icmp ult i32 %18, %20
  %22 = select i1 %19, i1 %21, i1 false
  br i1 %22, label %23, label %103

23:                                               ; preds = %17
  %24 = getelementptr i32, ptr %14, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %103

27:                                               ; preds = %23
  %28 = getelementptr i32, ptr %14, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %18, %29
  %31 = add i32 %30, -2
  %32 = udiv i32 %31, 127
  %33 = add i32 %32, %31
  %34 = shl i32 %33, 2
  %35 = add i32 %34, 4
  %36 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 6
  %39 = tail call ptr @msm_gem_kernel_new(ptr noundef %3, i32 noundef %35, i32 noundef 131074, ptr noundef %37, ptr noundef %7, ptr noundef %38) #3
  %40 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %103, label %41

41:                                               ; preds = %27
  %42 = load ptr, ptr %7, align 8
  tail call void (ptr, ptr, ...) @msm_gem_object_set_name(ptr noundef %42, ptr noundef nonnull @.str) #3
  %43 = icmp eq i32 %31, 0
  br i1 %43, label %99, label %44

44:                                               ; preds = %41
  %45 = getelementptr i32, ptr %14, i32 %29
  %46 = getelementptr i32, ptr %45, i32 3
  br label %47

47:                                               ; preds = %95, %44
  %48 = phi i32 [ %97, %95 ], [ %31, %44 ]
  %49 = phi ptr [ %90, %95 ], [ %46, %44 ]
  %50 = phi i32 [ %96, %95 ], [ 0, %44 ]
  %51 = phi i32 [ %86, %95 ], [ 0, %44 ]
  %52 = tail call i32 @llvm.umin.i32(i32 %48, i32 127)
  %53 = lshr i32 %52, 4
  %54 = and i32 %52, 15
  %55 = xor i32 %53, %54
  %56 = lshr i32 38505, %55
  %57 = shl nuw nsw i32 %56, 7
  %58 = and i32 %57, 128
  %59 = add i32 %50, 34816
  %60 = shl i32 %59, 8
  %61 = and i32 %60, 67108608
  %62 = lshr i32 %59, 4
  %63 = xor i32 %62, %59
  %64 = lshr i32 %59, 8
  %65 = xor i32 %63, %64
  %66 = lshr i32 %59, 12
  %67 = xor i32 %65, %66
  %68 = lshr i32 %59, 16
  %69 = xor i32 %67, %68
  %70 = lshr i32 %59, 20
  %71 = xor i32 %69, %70
  %72 = lshr i32 %59, 24
  %73 = xor i32 %71, %72
  %74 = lshr i32 %59, 28
  %75 = and i32 %73, 15
  %76 = xor i32 %75, %74
  %77 = lshr i32 38505, %76
  %78 = shl i32 %77, 27
  %79 = and i32 %78, 134217728
  %80 = or i32 %52, %61
  %81 = or i32 %80, %58
  %82 = or i32 %81, %79
  %83 = or i32 %82, 1073741824
  %84 = getelementptr i32, ptr %39, i32 %51
  store i32 %83, ptr %84, align 4
  %85 = add i32 %51, 1
  %86 = add i32 %85, %52
  br label %87

87:                                               ; preds = %87, %47
  %88 = phi i32 [ %93, %87 ], [ %85, %47 ]
  %89 = phi ptr [ %90, %87 ], [ %49, %47 ]
  %90 = getelementptr i32, ptr %89, i32 1
  %91 = load i32, ptr %89, align 4
  %92 = getelementptr i32, ptr %39, i32 %88
  store i32 %91, ptr %92, align 4
  %93 = add i32 %88, 1
  %94 = icmp eq i32 %93, %86
  br i1 %94, label %95, label %87

95:                                               ; preds = %87
  %96 = add i32 %52, %50
  %97 = sub i32 %48, %52
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %47

99:                                               ; preds = %95, %41
  %100 = phi i32 [ 0, %41 ], [ %86, %95 ]
  %101 = load ptr, ptr %7, align 8
  tail call void @msm_gem_put_vaddr(ptr noundef %101) #3
  %102 = getelementptr inbounds %struct.a5xx_gpu, ptr %0, i32 0, i32 7
  store i32 %100, ptr %102, align 8
  br label %103

103:                                              ; preds = %99, %27, %23, %17, %10, %6, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_object_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_exact(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @a5xx_flush(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @a5xx_idle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adreno_wait_ring(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i64 2156110526}
!9 = !{i64 2156110368}
