; ModuleID = '/llk/IR/drivers/gpu/drm/msm/adreno/adreno_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/adreno/adreno_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.adreno_gpu = type { %struct.msm_gpu, %struct.adreno_rev, ptr, i32, i32, ptr, ptr, i32, [3 x ptr], ptr }
%struct.adreno_rev = type { i8, i8, i8, i8 }
%struct.adreno_info = type { %struct.adreno_rev, i32, ptr, [3 x ptr], i32, i32, ptr, ptr, i32, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.69, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
%struct.anon.69 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.79 = type { i32, ptr }
%struct.iommu_domain = type { i32, ptr, i32, ptr, ptr, %struct.iommu_domain_geometry, ptr }
%struct.iommu_domain_geometry = type { i32, i32, i8 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.adreno_gpu_funcs = type { %struct.msm_gpu_funcs, ptr }
%struct.msm_gpu_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.msm_ringbuffer = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.drm_gpu_scheduler, %struct.list_head, %struct.spinlock, i64, i32, i32, ptr, i64, ptr, %struct.spinlock }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.msm_fence_context = type { ptr, [32 x i8], i32, i32, i32, ptr, %struct.spinlock }
%struct.msm_rbmemptrs = type { i32, i32, [64 x %struct.msm_gpu_submit_stats], i64 }
%struct.msm_gpu_submit_stats = type { i64, i64, i64, i64 }
%struct.msm_gpu_state = type { %struct.kref, %struct.timespec64, [4 x %struct.anon.84], i32, ptr, i32, ptr, ptr, %struct.msm_gpu_fault_info, i32, ptr }
%struct.timespec64 = type { i64, i32 }
%struct.anon.84 = type { i64, i32, i32, i32, i32, ptr, i32, i8 }
%struct.msm_gpu_state_bo = type { i64, i32, ptr, i8 }
%struct.msm_gpu_config = type { ptr, i32 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.96, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.96 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }

@zap_available = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"*ERROR* SCM is not available\0A\00", align 1
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s: invalid param: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"qcom/%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\016\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"loaded %s from new location\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"*ERROR* failed to load %s: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"loaded %s from legacy location\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"loaded %s with helper\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"*ERROR* failed to load %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"*ERROR* gpu hw init failed: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.12 = private unnamed_addr constant [62 x i8] c"%s: timeout waiting to drain ringbuffer %d rptr/wptr = %X/%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/msm/adreno/adreno_gpu.c\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"    data: !!ascii85 |\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"revision: %d (%d.%d.%d.%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"fault-info:\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"  - ttbr0=%.16llx\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"  - iova=%.16lx\0A\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"  - dir=%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"  - type=%s\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"  - source=%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"rbbm-status: 0x%08x\0A\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"ringbuffer:\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"  - id: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"    iova: 0x%016llx\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"    last-fence: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"    retired-fence: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"    rptr: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"    wptr: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"    size: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"bos:\0A\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"  - iova: 0x%016llx\0A\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"    size: %zd\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"registers:\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"  - { offset: 0x%04x, value: 0x%08x }\0A\00", align 1
@.str.40 = private unnamed_addr constant [24 x i8] c"rb %d: fence:    %d/%d\0A\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"rptr:     %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"rb wptr:  %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"IO:region %s 00000000 00020000\0A\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"IO:R %08x %08x\0A\00", align 1
@.str.45 = private unnamed_addr constant [52 x i8] c"*ERROR* timeout waiting for space in ringbuffer %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"kgsl_3d0_reg_memory\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"zap-shader\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"memory-region\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"firmware-name\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"*ERROR* Unable to load %s\0A\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"*ERROR* memory region is too small to load the MDT\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"*ERROR* Unable to authorize the image\0A\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.54 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.55 = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.56 = private unnamed_addr constant [37 x i8] c"*ERROR* Unable to set the OPP table\0A\00", align 1
@.str.57 = private unnamed_addr constant [57 x i8] c"Could not find a clock rate. Using a reasonable default\0A\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"fast_rate=%u, slow_rate=27000000\0A\00", align 1
@.str.59 = private unnamed_addr constant [19 x i8] c"qcom,gpu-pwrlevels\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"Could not find the GPU powerlevels\0A\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"qcom,gpu-freq\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_zap_shader_load(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.of_phandle_args, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.resource, align 4
  %7 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8
  %9 = load i1, ptr @zap_available, align 1
  br i1 %9, label %105, label %10

10:                                               ; preds = %2
  %11 = tail call zeroext i1 @qcom_scm_is_available() #10
  br i1 %11, label %14, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %13, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %105

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.adreno_info, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %7, align 8
  %20 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %6, i8 0, i32 32, i1 false) #10, !annotation !8
  %21 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = tail call ptr @of_get_child_by_name(ptr noundef %22, ptr noundef nonnull @.str.47) #10
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i1 true, ptr @zap_available, align 1
  br label %103

26:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %3, i8 0, i32 72, i1 false) #10, !annotation !8
  %27 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %23, ptr noundef nonnull @.str.48, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %3) #10
  %28 = icmp ne i32 %27, 0
  %29 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #10
  call void @of_node_put(ptr noundef nonnull %23) #10
  %30 = icmp eq ptr %29, null
  %31 = select i1 %28, i1 true, i1 %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i1 true, ptr @zap_available, align 1
  br label %103

33:                                               ; preds = %26
  %34 = call i32 @of_address_to_resource(ptr noundef nonnull %29, i32 noundef 0, ptr noundef nonnull %6) #10
  call void @of_node_put(ptr noundef nonnull %29) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %33
  %37 = load i32, ptr %6, align 4
  %38 = call i32 @of_property_read_string_helper(ptr noundef nonnull %23, ptr noundef nonnull @.str.49, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #10
  %39 = load ptr, ptr %5, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.drm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @request_firmware_direct(ptr noundef nonnull %4, ptr noundef nonnull %39, ptr noundef %45) #10
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = inttoptr i32 %46 to ptr
  store ptr %49, ptr %4, align 4
  br label %56

50:                                               ; preds = %36
  %51 = icmp eq ptr %18, null
  br i1 %51, label %103, label %52

52:                                               ; preds = %50
  %53 = call ptr @adreno_request_fw(ptr noundef %0, ptr noundef nonnull %18) #10
  store ptr %53, ptr %4, align 4
  br label %56

54:                                               ; preds = %41
  %55 = load ptr, ptr %4, align 4
  br label %56

56:                                               ; preds = %54, %52, %48
  %57 = phi ptr [ %55, %54 ], [ %49, %48 ], [ %53, %52 ]
  %58 = phi ptr [ %39, %54 ], [ %39, %48 ], [ %18, %52 ]
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.50, ptr noundef nonnull %58) #10
  %61 = load ptr, ptr %4, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %103

63:                                               ; preds = %56
  %64 = call i32 @qcom_mdt_get_size(ptr noundef %57) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.resource, ptr %6, i32 0, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = load i32, ptr %6, align 4
  %70 = add i32 %68, 1
  %71 = sub i32 %70, %69
  %72 = icmp ugt i32 %64, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #10
  br label %100

74:                                               ; preds = %66
  %75 = call ptr @memremap(i32 noundef %37, i32 noundef %64, i32 noundef 4) #10
  %76 = icmp eq ptr %75, null
  br i1 %76, label %100, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %5, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 7
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %77
  %85 = load ptr, ptr %4, align 4
  %86 = call i32 @qcom_mdt_load(ptr noundef %20, ptr noundef %85, ptr noundef nonnull %58, i32 noundef %1, ptr noundef nonnull %75, i32 noundef %37, i32 noundef %64, ptr noundef null) #10
  br label %91

87:                                               ; preds = %80
  %88 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef nonnull %58) #10
  %89 = load ptr, ptr %4, align 4
  %90 = call i32 @qcom_mdt_load(ptr noundef %20, ptr noundef %89, ptr noundef %88, i32 noundef %1, ptr noundef nonnull %75, i32 noundef %37, i32 noundef %64, ptr noundef null) #10
  call void @kfree(ptr noundef %88) #10
  br label %91

91:                                               ; preds = %87, %84
  %92 = phi i32 [ %86, %84 ], [ %90, %87 ]
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = call i32 @qcom_scm_pas_auth_and_reset(i32 noundef %1) #10
  switch i32 %95, label %97 [
    i32 -95, label %96
    i32 0, label %98
  ]

96:                                               ; preds = %94
  store i1 true, ptr @zap_available, align 1
  br label %98

97:                                               ; preds = %94
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef nonnull @.str.52) #10
  br label %98

98:                                               ; preds = %97, %96, %94, %91
  %99 = phi i32 [ %95, %94 ], [ %95, %97 ], [ -95, %96 ], [ %92, %91 ]
  call void @memunmap(ptr noundef nonnull %75) #10
  br label %100

100:                                              ; preds = %98, %74, %73, %63
  %101 = phi i32 [ %99, %98 ], [ -7, %73 ], [ %64, %63 ], [ -12, %74 ]
  %102 = load ptr, ptr %4, align 4
  call void @release_firmware(ptr noundef %102) #10
  br label %103

103:                                              ; preds = %100, %60, %50, %33, %32, %25
  %104 = phi i32 [ %62, %60 ], [ %101, %100 ], [ -22, %32 ], [ -19, %25 ], [ %34, %33 ], [ -19, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %105

105:                                              ; preds = %103, %12, %2
  %106 = phi i32 [ %104, %103 ], [ -517, %12 ], [ -19, %2 ]
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_set_llc_attributes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @iommu_set_pgtable_quirks(ptr noundef %0, i32 noundef 64) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iommu_set_pgtable_quirks(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @adreno_iommu_create_address_space(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @iommu_domain_alloc(ptr noundef nonnull @platform_bus_type) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %7 = tail call ptr @msm_iommu_new(ptr noundef %6, ptr noundef nonnull %3) #10
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @iommu_domain_free(ptr noundef nonnull %3) #10
  br label %26

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.iommu_domain, ptr %3, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @llvm.umax.i32(i32 %12, i32 16777216)
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.iommu_domain, ptr %3, i32 0, i32 5, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = zext i32 %16 to i64
  %18 = sub nsw i64 1, %14
  %19 = add nsw i64 %18, %17
  %20 = tail call ptr @msm_gem_address_space_create(ptr noundef %7, ptr noundef nonnull @.str.2, i64 noundef %14, i64 noundef %19) #10
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %26

22:                                               ; preds = %10
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %7) #10
  br label %26

26:                                               ; preds = %22, %10, %9, %2
  %27 = phi ptr [ %7, %9 ], [ null, %2 ], [ %20, %22 ], [ %20, %10 ]
  ret ptr %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_domain_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_iommu_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iommu_domain_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_address_space_create(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_get_param(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  switch i32 %1, label %82 [
    i32 1, label %4
    i32 2, label %10
    i32 6, label %14
    i32 3, label %26
    i32 4, label %46
    i32 5, label %50
    i32 7, label %68
    i32 8, label %73
    i32 9, label %74
    i32 10, label %78
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.adreno_info, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, ptr %2, align 8
  br label %84

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 8
  %13 = zext i32 %12 to i64
  store i64 %13, ptr %2, align 8
  br label %84

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  switch i32 %16, label %17 [
    i32 650, label %23
    i32 620, label %23
    i32 660, label %23
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  %20 = insertvalue [1 x i32] undef, i32 %19, 0
  %21 = tail call zeroext i1 @adreno_cmp_rev([1 x i32] [i32 -16448762], [1 x i32] %20) #10
  %22 = select i1 %21, i32 0, i32 1048576
  br label %23

23:                                               ; preds = %17, %14, %14, %14
  %24 = phi i32 [ 0, %14 ], [ 0, %14 ], [ 0, %14 ], [ %22, %17 ]
  %25 = zext i32 %24 to i64
  store i64 %25, ptr %2, align 8
  br label %84

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or i32 %34, %30
  %36 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or i32 %35, %39
  %41 = load i8, ptr %27, align 8
  %42 = zext i8 %41 to i32
  %43 = shl nuw i32 %42, 24
  %44 = or i32 %40, %43
  %45 = sext i32 %44 to i64
  store i64 %45, ptr %2, align 8
  br label %84

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 32
  %48 = load i32, ptr %47, align 8
  %49 = zext i32 %48 to i64
  store i64 %49, ptr %2, align 8
  br label %84

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 5
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.adreno_gpu_funcs, ptr %52, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %84, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3
  %60 = tail call i32 @__pm_runtime_resume(ptr noundef %59, i32 noundef 4) #10
  %61 = load ptr, ptr %51, align 8
  %62 = getelementptr inbounds %struct.adreno_gpu_funcs, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = tail call i32 %63(ptr noundef %0, ptr noundef %2) #10
  %65 = load ptr, ptr %57, align 8
  %66 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  %67 = tail call i32 @__pm_runtime_suspend(ptr noundef %66, i32 noundef 13) #10
  br label %84

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %70 = load i32, ptr %69, align 4
  %71 = mul i32 %70, 3
  %72 = sext i32 %71 to i64
  store i64 %72, ptr %2, align 8
  br label %84

73:                                               ; preds = %3
  store i64 0, ptr %2, align 8
  br label %84

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 21
  %76 = load i32, ptr %75, align 4
  %77 = sext i32 %76 to i64
  store i64 %77, ptr %2, align 8
  br label %84

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 42
  %80 = load i32, ptr %79, align 8
  %81 = zext i32 %80 to i64
  store i64 %81, ptr %2, align 8
  br label %84

82:                                               ; preds = %3
  %83 = load ptr, ptr %0, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, ptr noundef %83, i32 noundef %1) #10
  br label %84

84:                                               ; preds = %82, %78, %74, %73, %68, %56, %50, %46, %26, %23, %10, %4
  %85 = phi i32 [ -22, %82 ], [ 0, %78 ], [ 0, %74 ], [ 0, %73 ], [ 0, %68 ], [ %64, %56 ], [ 0, %46 ], [ 0, %26 ], [ 0, %23 ], [ 0, %10 ], [ 0, %4 ], [ -22, %50 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @adreno_request_fw(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store ptr null, ptr %3, align 4
  %6 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.4, ptr noundef %1) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %57, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 8
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = call i32 @request_firmware_direct(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %14) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %18, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull %6) #10
  store i32 1, ptr %9, align 8
  br label %55

19:                                               ; preds = %12
  %20 = load i32, ptr %9, align 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %23, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull %6, i32 noundef %15) #10
  %24 = inttoptr i32 %15 to ptr
  store ptr %24, ptr %3, align 4
  br label %55

25:                                               ; preds = %8
  switch i32 %10, label %52 [
    i32 2, label %26
    i32 3, label %39
  ]

26:                                               ; preds = %25, %19
  %27 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @request_firmware_direct(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %28) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %32, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull %6) #10
  store i32 2, ptr %9, align 8
  br label %55

33:                                               ; preds = %26
  %34 = load i32, ptr %9, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %29) #10
  %38 = inttoptr i32 %29 to ptr
  store ptr %38, ptr %3, align 4
  br label %55

39:                                               ; preds = %33, %25
  %40 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef %41) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.9, ptr noundef nonnull %6) #10
  store i32 3, ptr %9, align 8
  br label %55

46:                                               ; preds = %39
  %47 = load i32, ptr %9, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %40, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %50, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull %6, i32 noundef %42) #10
  %51 = inttoptr i32 %42 to ptr
  store ptr %51, ptr %3, align 4
  br label %55

52:                                               ; preds = %46, %25
  %53 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %54, ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, ptr noundef %1) #10
  store ptr inttoptr (i32 -2 to ptr), ptr %3, align 4
  br label %55

55:                                               ; preds = %52, %49, %44, %36, %31, %22, %17
  call void @kfree(ptr noundef nonnull %6) #10
  %56 = load ptr, ptr %3, align 4
  br label %57

57:                                               ; preds = %55, %2
  %58 = phi ptr [ %56, %55 ], [ inttoptr (i32 -12 to ptr), %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_direct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_load_fw(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr %struct.adreno_info, ptr %3, i32 0, i32 3, i32 0
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 0
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call ptr @adreno_request_fw(ptr noundef %0, ptr noundef nonnull %5)
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  store ptr %12, ptr %8, align 4
  %15 = load ptr, ptr %2, align 4
  br label %19

16:                                               ; preds = %42, %28, %11
  %17 = phi ptr [ %12, %11 ], [ %29, %28 ], [ %43, %42 ]
  %18 = ptrtoint ptr %17 to i32
  br label %46

19:                                               ; preds = %14, %7, %1
  %20 = phi ptr [ %15, %14 ], [ %3, %1 ], [ %3, %7 ]
  %21 = getelementptr %struct.adreno_info, ptr %20, i32 0, i32 3, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = tail call ptr @adreno_request_fw(ptr noundef %0, ptr noundef nonnull %22)
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %16, label %31

31:                                               ; preds = %28
  store ptr %29, ptr %25, align 4
  %32 = load ptr, ptr %2, align 4
  br label %33

33:                                               ; preds = %31, %24, %19
  %34 = phi ptr [ %32, %31 ], [ %20, %24 ], [ %20, %19 ]
  %35 = getelementptr %struct.adreno_info, ptr %34, i32 0, i32 3, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call ptr @adreno_request_fw(ptr noundef %0, ptr noundef nonnull %36)
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %16, label %45

45:                                               ; preds = %42
  store ptr %43, ptr %39, align 4
  br label %46

46:                                               ; preds = %45, %38, %33, %16
  %47 = phi i32 [ %18, %16 ], [ 0, %45 ], [ 0, %38 ], [ 0, %33 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @adreno_fw_create_bo(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = add i32 %7, -4
  %9 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 24
  %10 = load ptr, ptr %9, align 8
  %11 = call ptr @msm_gem_kernel_new(ptr noundef %6, i32 noundef %8, i32 noundef 131074, ptr noundef %10, ptr noundef nonnull %4, ptr noundef %2) #10
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.firmware, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  %17 = load i32, ptr %1, align 4
  %18 = add i32 %17, -4
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %16, i32 %18, i1 false)
  %19 = load ptr, ptr %4, align 4
  call void @msm_gem_put_vaddr(ptr noundef %19) #10
  %20 = load ptr, ptr %4, align 4
  br label %21

21:                                               ; preds = %13, %3
  %22 = phi ptr [ %20, %13 ], [ %11, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret ptr %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_gem_kernel_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gem_put_vaddr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_hw_init(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @adreno_load_fw(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %32

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %32

8:                                                ; preds = %28, %4
  %9 = phi i32 [ %29, %28 ], [ %6, %4 ]
  %10 = phi i32 [ %30, %28 ], [ 0, %4 ]
  %11 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %28, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 5
  store ptr %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 6
  store ptr %16, ptr %18, align 8
  %19 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 15
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.msm_fence_context, ptr %20, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_ringbuffer, ptr %12, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %24, i32 0, i32 1
  store volatile i32 %22, ptr %25, align 4
  %26 = load ptr, ptr %23, align 8
  store volatile i32 0, ptr %26, align 8
  %27 = load i32, ptr %5, align 4
  br label %28

28:                                               ; preds = %14, %8
  %29 = phi i32 [ %9, %8 ], [ %27, %14 ]
  %30 = add nuw nsw i32 %10, 1
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %8, label %32

32:                                               ; preds = %28, %4, %1
  %33 = phi i32 [ %2, %1 ], [ 0, %4 ], [ 0, %28 ]
  ret i32 %33
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @adreno_active_ring(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_recover(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0) #10
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0) #10
  %13 = tail call i32 @msm_gpu_hw_init(ptr noundef %0) #10
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %17, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %13) #10
  br label %18

18:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_hw_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_flush(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 5
  store ptr %5, ptr %6, align 4
  %7 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %5 to i32
  %10 = ptrtoint ptr %8 to i32
  %11 = sub i32 %9, %10
  %12 = ashr exact i32 %11, 2
  %13 = srem i32 %12, 8192
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %14 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  %15 = load ptr, ptr %14, align 8
  %16 = shl i32 %2, 2
  %17 = getelementptr i8, ptr %15, i32 %16
  tail call void @msm_writel(i32 noundef %13, ptr noundef %17) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @adreno_idle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %4 to i32
  %8 = ptrtoint ptr %6 to i32
  %9 = sub i32 %7, %8
  %10 = ashr exact i32 %9, 2
  %11 = srem i32 %10, 8192
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  %14 = sub i32 -100, %12
  br label %15

15:                                               ; preds = %21, %2
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %16, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %0, ptr noundef %1) #10
  %20 = icmp eq i32 %19, %11
  br i1 %20, label %33, label %21

21:                                               ; preds = %15
  %22 = load volatile i32, ptr @jiffies, align 64
  %23 = add i32 %14, %22
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %15, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 8
  %27 = getelementptr inbounds %struct.msm_ringbuffer, ptr %1, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %13, align 4
  %30 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %29, i32 0, i32 19
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, ptr noundef %1) #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, ptr noundef %26, i32 noundef %28, i32 noundef %32, i32 noundef %11) #10
  br label %33

33:                                               ; preds = %25, %15
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_state_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 17
  %4 = tail call zeroext i1 @mutex_is_locked(ptr noundef %3) #10
  br i1 %4, label %6, label %5, !prof !10

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 507, i32 noundef 9, ptr noundef null) #10
  br label %6

6:                                                ; preds = %5, %2
  store volatile i32 1, ptr %1, align 4
  %7 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 1
  tail call void @ktime_get_real_ts64(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %75

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  br label %13

13:                                               ; preds = %71, %11
  %14 = phi i32 [ 0, %11 ], [ %72, %71 ]
  %15 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_ringbuffer, ptr %16, i32 0, i32 13
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %18, i32 0, i32 1
  %20 = load volatile i32, ptr %19, align 4
  %21 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14
  %22 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 1
  store i32 %20, ptr %22, align 8
  %23 = load ptr, ptr %15, align 4
  %24 = getelementptr inbounds %struct.msm_ringbuffer, ptr %23, i32 0, i32 10
  %25 = load i64, ptr %24, align 8
  store i64 %25, ptr %21, align 8
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr inbounds %struct.msm_ringbuffer, ptr %26, i32 0, i32 11
  %28 = load i32, ptr %27, align 8
  %29 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 2
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %15, align 4
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %31, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %0, ptr noundef %30) #10
  %35 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 3
  store i32 %34, ptr %35, align 8
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr inbounds %struct.msm_ringbuffer, ptr %36, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.msm_ringbuffer, ptr %36, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = ptrtoint ptr %38 to i32
  %42 = ptrtoint ptr %40 to i32
  %43 = sub i32 %41, %42
  %44 = ashr exact i32 %43, 2
  %45 = srem i32 %44, 8192
  %46 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 4
  store i32 %45, ptr %46, align 4
  %47 = load ptr, ptr %15, align 4
  %48 = getelementptr inbounds %struct.msm_ringbuffer, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %50, %13
  %51 = phi i32 [ %45, %13 ], [ %56, %50 ]
  %52 = phi i32 [ %45, %13 ], [ %57, %50 ]
  %53 = getelementptr i32, ptr %49, i32 %51
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  %56 = add nsw i32 %51, 1
  %57 = select i1 %55, i32 %52, i32 %56
  %58 = icmp eq i32 %56, 8192
  br i1 %58, label %59, label %50

59:                                               ; preds = %50
  %60 = icmp eq i32 %57, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %59
  %62 = shl i32 %57, 2
  %63 = tail call noalias ptr @kvmalloc_node(i32 noundef %62, i32 noundef 3264, i32 noundef -1) #11
  %64 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 5
  store ptr %63, ptr %64, align 8
  %65 = icmp eq ptr %63, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %15, align 4
  %68 = getelementptr inbounds %struct.msm_ringbuffer, ptr %67, i32 0, i32 3
  %69 = load ptr, ptr %68, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 1 %63, ptr align 4 %69, i32 %62, i1 false)
  %70 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %14, i32 6
  store i32 %62, ptr %70, align 4
  br label %71

71:                                               ; preds = %66, %61, %59
  %72 = add nuw nsw i32 %14, 1
  %73 = load i32, ptr %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %13, label %75

75:                                               ; preds = %71, %6
  %76 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %149, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %77, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %96, label %82

82:                                               ; preds = %82, %79
  %83 = phi i32 [ %94, %82 ], [ %80, %79 ]
  %84 = phi i32 [ %91, %82 ], [ 0, %79 ]
  %85 = phi i32 [ %92, %82 ], [ 0, %79 ]
  %86 = or i32 %85, 1
  %87 = getelementptr i32, ptr %77, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = add i32 %84, 1
  %90 = sub i32 %89, %83
  %91 = add i32 %90, %88
  %92 = add i32 %85, 2
  %93 = getelementptr i32, ptr %77, i32 %92
  %94 = load i32, ptr %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %82

96:                                               ; preds = %82, %79
  %97 = phi i32 [ 0, %79 ], [ %91, %82 ]
  %98 = shl i32 %97, 1
  %99 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 4) #10
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %101, label %103, !prof !11

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 4
  store ptr null, ptr %102, align 4
  br label %149

103:                                              ; preds = %96
  %104 = extractvalue { i32, i1 } %99, 0
  %105 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %104, i32 noundef 3520) #11
  %106 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 4
  store ptr %105, ptr %106, align 4
  %107 = icmp eq ptr %105, null
  br i1 %107, label %149, label %108

108:                                              ; preds = %103
  %109 = load ptr, ptr %76, align 4
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %147, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %114

114:                                              ; preds = %140, %112
  %115 = phi ptr [ %109, %112 ], [ %141, %140 ]
  %116 = phi i32 [ %110, %112 ], [ %145, %140 ]
  %117 = phi i32 [ 0, %112 ], [ %142, %140 ]
  %118 = phi i32 [ 0, %112 ], [ %143, %140 ]
  %119 = or i32 %118, 1
  %120 = getelementptr i32, ptr %115, i32 %119
  %121 = load i32, ptr %120, align 4
  %122 = icmp ugt i32 %116, %121
  br i1 %122, label %140, label %123

123:                                              ; preds = %123, %114
  %124 = phi i32 [ %136, %123 ], [ %116, %114 ]
  %125 = phi i32 [ %134, %123 ], [ %117, %114 ]
  %126 = load ptr, ptr %106, align 4
  %127 = add i32 %125, 1
  %128 = getelementptr i32, ptr %126, i32 %125
  store i32 %124, ptr %128, align 4
  %129 = load ptr, ptr %113, align 8
  %130 = shl i32 %124, 2
  %131 = getelementptr i8, ptr %129, i32 %130
  %132 = tail call i32 @msm_readl(ptr noundef %131) #10
  %133 = load ptr, ptr %106, align 4
  %134 = add i32 %125, 2
  %135 = getelementptr i32, ptr %133, i32 %127
  store i32 %132, ptr %135, align 4
  %136 = add i32 %124, 1
  %137 = icmp ugt i32 %136, %121
  br i1 %137, label %138, label %123

138:                                              ; preds = %123
  %139 = load ptr, ptr %76, align 4
  br label %140

140:                                              ; preds = %138, %114
  %141 = phi ptr [ %115, %114 ], [ %139, %138 ]
  %142 = phi i32 [ %117, %114 ], [ %134, %138 ]
  %143 = add i32 %118, 2
  %144 = getelementptr i32, ptr %141, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %114

147:                                              ; preds = %140, %108
  %148 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 3
  store i32 %97, ptr %148, align 8
  br label %149

149:                                              ; preds = %147, %103, %101, %75
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_gpu_state_destroy(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr %struct.msm_gpu_state, ptr %0, i32 0, i32 2, i32 0, i32 5
  %3 = load ptr, ptr %2, align 8
  tail call void @kvfree(ptr noundef %3) #10
  %4 = getelementptr %struct.msm_gpu_state, ptr %0, i32 0, i32 2, i32 1, i32 5
  %5 = load ptr, ptr %4, align 8
  tail call void @kvfree(ptr noundef %5) #10
  %6 = getelementptr %struct.msm_gpu_state, ptr %0, i32 0, i32 2, i32 2, i32 5
  %7 = load ptr, ptr %6, align 8
  tail call void @kvfree(ptr noundef %7) #10
  %8 = getelementptr %struct.msm_gpu_state, ptr %0, i32 0, i32 2, i32 3, i32 5
  %9 = load ptr, ptr %8, align 8
  tail call void @kvfree(ptr noundef %9) #10
  %10 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 9
  %11 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %19, %1
  %15 = phi ptr [ %23, %19 ], [ %12, %1 ]
  %16 = phi i32 [ %22, %19 ], [ 0, %1 ]
  %17 = load i32, ptr %10, align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr %struct.msm_gpu_state_bo, ptr %15, i32 %16, i32 2
  %21 = load ptr, ptr %20, align 4
  tail call void @kvfree(ptr noundef %21) #10
  %22 = add nuw nsw i32 %16, 1
  %23 = load ptr, ptr %11, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %14

25:                                               ; preds = %19, %14, %1
  %26 = phi ptr [ null, %1 ], [ null, %19 ], [ %15, %14 ]
  tail call void @kfree(ptr noundef %26) #10
  %27 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %28) #10
  %29 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  tail call void @kfree(ptr noundef %30) #10
  %31 = getelementptr inbounds %struct.msm_gpu_state, ptr %0, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  tail call void @kfree(ptr noundef %32) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_state_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #10, !srcloc !13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #10, !srcloc !14
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !10

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #10
  br label %13

12:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void @adreno_gpu_state_destroy(ptr noundef nonnull %0) #10
  tail call void @kfree(ptr noundef nonnull %0) #10
  br label %13

13:                                               ; preds = %12, %11, %9, %1
  %14 = phi i32 [ 1, %1 ], [ 1, %12 ], [ 0, %9 ], [ 0, %11 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_show_object(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = alloca [6 x i8], align 1
  %6 = load ptr, ptr %1, align 4
  %7 = icmp ne ptr %6, null
  %8 = icmp ne i32 %2, 0
  %9 = and i1 %8, %7
  br i1 %9, label %10, label %88

10:                                               ; preds = %4
  %11 = load i8, ptr %3, align 1, !range !16
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  %14 = icmp sgt i32 %2, 3
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  br label %82

16:                                               ; preds = %13
  %17 = lshr i32 %2, 2
  br label %18

18:                                               ; preds = %18, %16
  %19 = phi i32 [ %27, %18 ], [ 0, %16 ]
  %20 = phi i32 [ %26, %18 ], [ 0, %16 ]
  %21 = getelementptr i32, ptr %6, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = shl i32 %19, 2
  %25 = add nuw nsw i32 %24, 4
  %26 = select i1 %23, i32 %20, i32 %25
  %27 = add nuw nsw i32 %19, 1
  %28 = icmp eq i32 %27, %17
  br i1 %28, label %29, label %18

29:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(6) %5, i8 0, i32 6, i1 false) #10, !annotation !8
  %30 = icmp eq i32 %26, 0
  br i1 %30, label %82, label %31

31:                                               ; preds = %29
  %32 = add i32 %26, 3
  %33 = sdiv i32 %32, 4
  %34 = mul i32 %33, 5
  %35 = add i32 %34, 1
  %36 = tail call noalias ptr @kvmalloc_node(i32 noundef %35, i32 noundef 3264, i32 noundef -1) #11
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %38

38:                                               ; preds = %31
  %39 = icmp sgt i32 %32, 3
  br i1 %39, label %40, label %82

40:                                               ; preds = %38
  %41 = getelementptr inbounds i8, ptr %5, i32 5
  %42 = getelementptr inbounds i8, ptr %5, i32 4
  %43 = getelementptr inbounds i8, ptr %5, i32 3
  %44 = getelementptr inbounds i8, ptr %5, i32 2
  %45 = getelementptr inbounds i8, ptr %5, i32 1
  br label %46

46:                                               ; preds = %76, %40
  %47 = phi i32 [ 0, %40 ], [ %80, %76 ]
  %48 = phi i32 [ 0, %40 ], [ %79, %76 ]
  %49 = getelementptr i8, ptr %36, i32 %48
  %50 = sub i32 %35, %48
  %51 = getelementptr i32, ptr %6, i32 %47
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %46
  store i8 0, ptr %41, align 1
  %55 = freeze i32 %52
  %56 = udiv i32 %55, 85
  %57 = mul i32 %56, 85
  %58 = sub i32 %55, %57
  %59 = trunc i32 %58 to i8
  %60 = add nuw nsw i8 %59, 33
  store i8 %60, ptr %42, align 1
  %61 = urem i32 %56, 85
  %62 = trunc i32 %61 to i8
  %63 = add nuw nsw i8 %62, 33
  store i8 %63, ptr %43, align 1
  %64 = udiv i32 %52, 7225
  %65 = urem i32 %64, 85
  %66 = trunc i32 %65 to i8
  %67 = add nuw nsw i8 %66, 33
  store i8 %67, ptr %44, align 1
  %68 = udiv i32 %52, 614125
  %69 = trunc i32 %68 to i16
  %70 = urem i16 %69, 85
  %71 = trunc i16 %70 to i8
  %72 = add nuw nsw i8 %71, 33
  store i8 %72, ptr %45, align 1
  %73 = udiv i32 %52, 52200625
  %74 = trunc i32 %73 to i8
  %75 = add nuw nsw i8 %74, 33
  store i8 %75, ptr %5, align 1
  br label %76

76:                                               ; preds = %54, %46
  %77 = phi ptr [ @.str.54, %46 ], [ %5, %54 ]
  %78 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %49, i32 noundef %50, ptr noundef nonnull @.str.53, ptr noundef nonnull %77) #10
  %79 = add i32 %78, %48
  %80 = add nuw nsw i32 %47, 1
  %81 = icmp eq i32 %80, %33
  br i1 %81, label %82, label %46

82:                                               ; preds = %76, %38, %31, %29, %15
  %83 = phi ptr [ null, %29 ], [ null, %31 ], [ %36, %38 ], [ null, %15 ], [ %36, %76 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %5) #10
  store ptr %83, ptr %1, align 4
  call void @kvfree(ptr noundef nonnull %6) #10
  store i8 1, ptr %3, align 1
  %84 = load ptr, ptr %1, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %82, %10
  call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.14) #10
  call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.15) #10
  %87 = load ptr, ptr %1, align 4
  call void @drm_puts(ptr noundef %0, ptr noundef %87) #10
  call void @drm_puts(ptr noundef %0, ptr noundef nonnull @.str.16) #10
  br label %88

88:                                               ; preds = %86, %82, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_show(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  %5 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %6 = or i1 %4, %5
  br i1 %6, label %111, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.adreno_info, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %13 = load i8, ptr %12, align 8
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.17, i32 noundef %11, i32 noundef %14, i32 noundef %17, i32 noundef %20, i32 noundef %23) #10
  %24 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 8
  %25 = load i64, ptr %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %40, label %27

27:                                               ; preds = %7
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.18) #10
  %28 = load i64, ptr %24, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.19, i64 noundef %28) #10
  %29 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 8, i32 1
  %30 = load i32, ptr %29, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.20, i32 noundef %30) #10
  %31 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 8, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.23, ptr @.str.22
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef nonnull %35) #10
  %36 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 8, i32 3
  %37 = load ptr, ptr %36, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %37) #10
  %38 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 8, i32 4
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.25, ptr noundef %39) #10
  br label %40

40:                                               ; preds = %27, %7
  %41 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 5
  %42 = load i32, ptr %41, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %42) #10
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.27) #10
  %43 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %46, %40
  %47 = phi i32 [ %62, %46 ], [ 0, %40 ]
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.28, i32 noundef %47) #10
  %48 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47
  %49 = load i64, ptr %48, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.29, i64 noundef %49) #10
  %50 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 2
  %51 = load i32, ptr %50, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %51) #10
  %52 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 1
  %53 = load i32, ptr %52, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.31, i32 noundef %53) #10
  %54 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 3
  %55 = load i32, ptr %54, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.32, i32 noundef %55) #10
  %56 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 4
  %57 = load i32, ptr %56, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.33, i32 noundef %57) #10
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.34, i32 noundef 32768) #10
  %58 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 5
  %59 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.msm_gpu_state, ptr %1, i32 0, i32 2, i32 %47, i32 7
  tail call void @adreno_show_object(ptr noundef %2, ptr noundef %58, i32 noundef %60, ptr noundef %61)
  %62 = add nuw nsw i32 %47, 1
  %63 = load i32, ptr %43, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %46, label %65

65:                                               ; preds = %46, %40
  %66 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 10
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %89, label %69

69:                                               ; preds = %65
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.35) #10
  %70 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 9
  %71 = load i32, ptr %70, align 8
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %73, %69
  %74 = phi i32 [ %86, %73 ], [ 0, %69 ]
  %75 = load ptr, ptr %66, align 4
  %76 = getelementptr %struct.msm_gpu_state_bo, ptr %75, i32 %74
  %77 = load i64, ptr %76, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.36, i64 noundef %77) #10
  %78 = load ptr, ptr %66, align 4
  %79 = getelementptr %struct.msm_gpu_state_bo, ptr %78, i32 %74, i32 1
  %80 = load i32, ptr %79, align 8
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.37, i32 noundef %80) #10
  %81 = load ptr, ptr %66, align 4
  %82 = getelementptr %struct.msm_gpu_state_bo, ptr %81, i32 %74, i32 2
  %83 = getelementptr %struct.msm_gpu_state_bo, ptr %81, i32 %74, i32 1
  %84 = load i32, ptr %83, align 8
  %85 = getelementptr %struct.msm_gpu_state_bo, ptr %81, i32 %74, i32 3
  tail call void @adreno_show_object(ptr noundef %2, ptr noundef %82, i32 noundef %84, ptr noundef %85)
  %86 = add nuw nsw i32 %74, 1
  %87 = load i32, ptr %70, align 8
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %73, label %89

89:                                               ; preds = %73, %69, %65
  %90 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 3
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %111, label %93

93:                                               ; preds = %89
  tail call void @drm_puts(ptr noundef %2, ptr noundef nonnull @.str.38) #10
  %94 = load i32, ptr %90, align 8
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.msm_gpu_state, ptr %1, i32 0, i32 4
  br label %98

98:                                               ; preds = %98, %96
  %99 = phi i32 [ 0, %96 ], [ %108, %98 ]
  %100 = load ptr, ptr %97, align 4
  %101 = shl nuw i32 %99, 1
  %102 = getelementptr i32, ptr %100, i32 %101
  %103 = load i32, ptr %102, align 4
  %104 = shl i32 %103, 2
  %105 = or i32 %101, 1
  %106 = getelementptr i32, ptr %100, i32 %105
  %107 = load i32, ptr %106, align 4
  tail call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef nonnull @.str.39, i32 noundef %104, i32 noundef %107) #10
  %108 = add nuw nsw i32 %99, 1
  %109 = load i32, ptr %90, align 8
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %98, label %111

111:                                              ; preds = %98, %93, %89, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_dump_info(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.adreno_info, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1
  %7 = load i8, ptr %6, align 8
  %8 = zext i8 %7 to i32
  %9 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 1, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %8, i32 noundef %11, i32 noundef %14, i32 noundef %17) #12
  %19 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 14
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 3
  br label %24

24:                                               ; preds = %24, %22
  %25 = phi i32 [ 0, %22 ], [ %50, %24 ]
  %26 = getelementptr %struct.msm_gpu, ptr %0, i32 0, i32 13, i32 %25
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.msm_ringbuffer, ptr %27, i32 0, i32 13
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.msm_rbmemptrs, ptr %29, i32 0, i32 1
  %31 = load volatile i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.msm_ringbuffer, ptr %27, i32 0, i32 11
  %33 = load i32, ptr %32, align 8
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %25, i32 noundef %31, i32 noundef %33) #12
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %35, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 %37(ptr noundef %0, ptr noundef %27) #10
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %38) #12
  %40 = getelementptr inbounds %struct.msm_ringbuffer, ptr %27, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.msm_ringbuffer, ptr %27, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = ptrtoint ptr %41 to i32
  %45 = ptrtoint ptr %43 to i32
  %46 = sub i32 %44, %45
  %47 = ashr exact i32 %46, 2
  %48 = srem i32 %47, 8192
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %48) #12
  %50 = add nuw nsw i32 %25, 1
  %51 = load i32, ptr %19, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %24, label %53

53:                                               ; preds = %24, %1
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_dump(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.adreno_gpu, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %6) #12
  %8 = load ptr, ptr %2, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %38, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 22
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi ptr [ %8, %11 ], [ %33, %32 ]
  %15 = phi i32 [ %9, %11 ], [ %36, %32 ]
  %16 = phi i32 [ 0, %11 ], [ %34, %32 ]
  %17 = or i32 %16, 1
  %18 = getelementptr i32, ptr %14, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %15, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %21, %13
  %22 = phi i32 [ %28, %21 ], [ %15, %13 ]
  %23 = load ptr, ptr %12, align 8
  %24 = shl i32 %22, 2
  %25 = getelementptr i8, ptr %23, i32 %24
  %26 = tail call i32 @msm_readl(ptr noundef %25) #10
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %24, i32 noundef %26) #12
  %28 = add i32 %22, 1
  %29 = icmp ugt i32 %28, %19
  br i1 %29, label %30, label %21

30:                                               ; preds = %21
  %31 = load ptr, ptr %2, align 4
  br label %32

32:                                               ; preds = %30, %13
  %33 = phi ptr [ %31, %30 ], [ %14, %13 ]
  %34 = add i32 %16, 2
  %35 = getelementptr i32, ptr %33, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %13

38:                                               ; preds = %32, %5, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_wait_ring(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 6
  %5 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 3
  %6 = sub i32 -100, %3
  br label %7

7:                                                ; preds = %24, %2
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 4
  %11 = ptrtoint ptr %9 to i32
  %12 = ptrtoint ptr %10 to i32
  %13 = sub i32 %11, %12
  %14 = lshr exact i32 %13, 2
  %15 = getelementptr inbounds %struct.msm_gpu, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.msm_gpu_funcs, ptr %16, i32 0, i32 19
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %8, ptr noundef %0) #10
  %20 = add i32 %19, 8191
  %21 = sub i32 %20, %14
  %22 = and i32 %21, 8191
  %23 = icmp ult i32 %22, %1
  br i1 %23, label %24, label %36

24:                                               ; preds = %7
  %25 = load volatile i32, ptr @jiffies, align 64
  %26 = add i32 %6, %25
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %7, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.msm_gpu, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.msm_ringbuffer, ptr %0, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %35) #10
  br label %36

36:                                               ; preds = %28, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @adreno_gpu_ocmem_init(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local void @adreno_gpu_ocmem_cleanup(ptr nocapture noundef %0) local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @adreno_gpu_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msm_gpu_config, align 8
  %9 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %10 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  %12 = getelementptr inbounds %struct.adreno_gpu, ptr %2, i32 0, i32 5
  store ptr %3, ptr %12, align 8
  %13 = load i32, ptr %11, align 1
  %14 = insertvalue [1 x i32] undef, i32 %13, 0
  %15 = tail call ptr @adreno_info([1 x i32] %14) #10
  %16 = getelementptr inbounds %struct.adreno_gpu, ptr %2, i32 0, i32 2
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.adreno_info, ptr %15, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.adreno_gpu, ptr %2, i32 0, i32 3
  store i32 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.adreno_info, ptr %15, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.adreno_gpu, ptr %2, i32 0, i32 4
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.adreno_gpu, ptr %2, i32 0, i32 1
  %24 = load i32, ptr %11, align 1
  store i32 %24, ptr %23, align 8
  store ptr @.str.46, ptr %8, align 8
  %25 = getelementptr inbounds %struct.msm_gpu_config, ptr %8, i32 0, i32 1
  store i32 %4, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  store i32 -1, ptr %7, align 4
  %26 = getelementptr inbounds %struct.msm_gpu, ptr %2, i32 0, i32 32
  store i32 0, ptr %26, align 8
  %27 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 25
  %28 = load ptr, ptr %27, align 8
  %29 = tail call ptr @of_find_property(ptr noundef %28, ptr noundef nonnull @.str.55, ptr noundef null) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %5
  %32 = load ptr, ptr %27, align 8
  %33 = tail call ptr @of_get_compatible_child(ptr noundef %32, ptr noundef nonnull @.str.59) #10
  %34 = icmp eq ptr %33, null
  br i1 %34, label %51, label %35

35:                                               ; preds = %31
  %36 = tail call ptr @of_get_next_child(ptr noundef nonnull %33, ptr noundef null) #10
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %47, %35
  %39 = phi ptr [ %48, %47 ], [ %36, %35 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %39, ptr noundef nonnull @.str.61, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #10
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i32, ptr %6, align 4
  %44 = icmp eq i32 %43, 27000000
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call i32 @dev_pm_opp_add(ptr noundef %9, i32 noundef %43, i32 noundef 0) #10
  br label %47

47:                                               ; preds = %45, %42, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  %48 = call ptr @of_get_next_child(ptr noundef nonnull %33, ptr noundef nonnull %39) #10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %38

50:                                               ; preds = %47, %35
  call void @of_node_put(ptr noundef nonnull %33) #10
  br label %56

51:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.60) #10
  br label %61

52:                                               ; preds = %5
  %53 = tail call i32 @devm_pm_opp_of_add_table(ptr noundef %9) #10
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.56) #10
  br label %61

56:                                               ; preds = %52, %50
  %57 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %9, ptr noundef nonnull %7) #10
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, ptr %7, align 4
  store i32 %60, ptr %26, align 8
  call void @dev_pm_opp_put(ptr noundef %57) #10
  br label %61

61:                                               ; preds = %59, %56, %55, %51
  %62 = load i32, ptr %26, align 8
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.57) #12
  store i32 200000000, ptr %26, align 8
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ 200000000, %64 ], [ %62, %61 ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.58, i32 noundef %66) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  %67 = load ptr, ptr %16, align 4
  %68 = getelementptr inbounds %struct.adreno_info, ptr %67, i32 0, i32 8
  %69 = load i32, ptr %68, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %9, i32 noundef %69) #10
  call void @__pm_runtime_use_autosuspend(ptr noundef %9, i1 noundef zeroext true) #10
  call void @pm_runtime_enable(ptr noundef %9) #10
  %70 = load ptr, ptr %16, align 4
  %71 = getelementptr inbounds %struct.adreno_info, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 @msm_gpu_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %72, ptr noundef nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @adreno_info([1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_gpu_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @adreno_gpu_cleanup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.msm_gpu, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 0
  %7 = load ptr, ptr %6, align 4
  tail call void @release_firmware(ptr noundef %7) #10
  %8 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @release_firmware(ptr noundef %9) #10
  %10 = getelementptr %struct.adreno_gpu, ptr %0, i32 0, i32 8, i32 2
  %11 = load ptr, ptr %10, align 4
  tail call void @release_firmware(ptr noundef %11) #10
  %12 = getelementptr inbounds %struct.msm_drm_private, ptr %5, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %14, i1 noundef zeroext true) #10
  tail call void @msm_gpu_cleanup(ptr noundef %0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_gpu_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_get_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_mdt_load(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @adreno_cmp_rev([1 x i32], [1 x i32]) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pm_opp_of_add_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

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
!9 = !{i64 2156352111}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2148013802}
!13 = !{i64 409963, i64 2147899934, i64 2147899960, i64 2147900007, i64 2147900029, i64 2147900057, i64 2147900077}
!14 = !{i64 2147915961, i64 2147915993, i64 2147916022, i64 2147916056, i64 2147916087, i64 2147916110}
!15 = !{i64 2149419410}
!16 = !{i8 0, i8 2}
