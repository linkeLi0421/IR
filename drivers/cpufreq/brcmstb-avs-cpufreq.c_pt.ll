; ModuleID = '/llk/IR/drivers/cpufreq/brcmstb-avs-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/brcmstb-avs-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.cpufreq_driver = type { [16 x i8], i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lock_class_key = type {}
%struct.freq_attr = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.private_data = type { ptr, ptr, ptr, %struct.completion, %struct.semaphore, %struct.pmap, i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.pmap = type { i32, i32, i32, i32 }
%struct.cpufreq_policy = type { [1 x %struct.cpumask], [1 x %struct.cpumask], [1 x %struct.cpumask], i32, i32, ptr, %struct.cpufreq_cpuinfo, i32, i32, i32, i32, i32, i32, ptr, ptr, [16 x i8], %struct.work_struct, %struct.freq_constraints, ptr, ptr, ptr, i32, %struct.list_head, %struct.kobject, %struct.completion, %struct.rw_semaphore, i8, i8, i8, i8, i32, i8, i32, i32, i8, %struct.spinlock, %struct.wait_queue_head, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.cpumask = type { [1 x i32] }
%struct.cpufreq_cpuinfo = type { i32, i32, i32 }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpufreq_frequency_table = type { i32, i32, i32 }

@__initcall__kmod_brcmstb_avs_cpufreq__182_778_brcm_avs_cpufreq_platdrv_init6 = internal global ptr @brcm_avs_cpufreq_platdrv_init, section ".initcall6.init", align 4
@brcm_avs_cpufreq_platdrv = internal global %struct.platform_driver { ptr @brcm_avs_cpufreq_probe, ptr @brcm_avs_cpufreq_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @brcm_avs_cpufreq_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_brcm_avs_cpufreq_platdrv_exit = internal global ptr @brcm_avs_cpufreq_platdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author183 = internal constant [62 x i8] c"brcmstb_avs_cpufreq.author=Markus Mayer <mmayer@broadcom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description184 = internal constant [68 x i8] c"brcmstb_avs_cpufreq.description=CPUfreq driver for Broadcom STB AVS\00", section ".modinfo", align 1
@__UNIQUE_ID_file185 = internal constant [61 x i8] c"brcmstb_avs_cpufreq.file=drivers/cpufreq/brcmstb-avs-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license186 = internal constant [32 x i8] c"brcmstb_avs_cpufreq.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"brcmstb-avs-cpufreq\00", align 1
@brcm_avs_cpufreq_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,avs-cpu-data-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@brcm_avs_driver = internal global %struct.cpufreq_driver { [16 x i8] c"brcmstb-avs\00\00\00\00\00", i16 32, ptr null, ptr @brcm_avs_cpufreq_init, ptr @cpufreq_generic_frequency_table_verify, ptr null, ptr null, ptr @brcm_avs_target_index, ptr null, ptr null, ptr null, ptr null, ptr @brcm_avs_cpufreq_get, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_avs_suspend, ptr @brcm_avs_resume, ptr null, ptr @brcm_avs_cpufreq_attr, i8 0, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"brcm,avs-cpu-data-mem\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Couldn't find property %s in device tree.\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"brcm,avs-cpu-l2-intr\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"sw_intr\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"IRQ request failed: %s (%d) -- %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"AVS firmware is not loaded or doesn't support DVFS\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"AVS command %#x didn't complete in time\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"    Time left: %u ms, AVS status: %#x\0A\00", align 1
@brcm_avs_cpufreq_attr = internal global [7 x ptr] [ptr @cpufreq_freq_attr_scaling_available_freqs, ptr @brcm_avs_pstate, ptr @brcm_avs_mode, ptr @brcm_avs_pmap, ptr @brcm_avs_voltage, ptr @brcm_avs_frequency, ptr null], align 4
@.str.11 = private unnamed_addr constant [42 x i8] c"Couldn't determine frequency table (%d).\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"registered\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"couldn't initialize driver (%d)\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"PMAP was already set\0A\00", align 1
@cpufreq_freq_attr_scaling_available_freqs = external dso_local global %struct.freq_attr, align 4
@brcm_avs_pstate = internal global %struct.freq_attr { %struct.attribute { ptr @.str.15, i16 292 }, ptr @show_brcm_avs_pstate, ptr null }, align 4
@brcm_avs_mode = internal global %struct.freq_attr { %struct.attribute { ptr @.str.18, i16 292 }, ptr @show_brcm_avs_mode, ptr null }, align 4
@brcm_avs_pmap = internal global %struct.freq_attr { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_brcm_avs_pmap, ptr null }, align 4
@brcm_avs_voltage = internal global %struct.freq_attr { %struct.attribute { ptr @.str.26, i16 292 }, ptr @show_brcm_avs_voltage, ptr null }, align 4
@brcm_avs_frequency = internal global %struct.freq_attr { %struct.attribute { ptr @.str.28, i16 292 }, ptr @show_brcm_avs_frequency, ptr null }, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"brcm_avs_pstate\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"<unknown>\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"brcm_avs_mode\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%s %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"AVS\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"DFS\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"DVS\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"DVFS\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"brcm_avs_pmap\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"0x%08x 0x%08x %u %u %u %u %u %u %u %u %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"brcm_avs_voltage\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"brcm_avs_frequency\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"drivers/cpufreq/brcmstb-avs-cpufreq.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author183, ptr @__UNIQUE_ID_description184, ptr @__UNIQUE_ID_file185, ptr @__UNIQUE_ID_license186, ptr @__exitcall_brcm_avs_cpufreq_platdrv_exit, ptr @__initcall__kmod_brcmstb_avs_cpufreq__182_778_brcm_avs_cpufreq_platdrv_init6, ptr @brcm_avs_cpufreq_platdrv_exit], section "llvm.metadata"
@switch.table.show_brcm_avs_mode = private unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_platdrv_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_avs_cpufreq_platdrv, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @brcm_avs_cpufreq_platdrv_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_avs_cpufreq_platdrv) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_probe(ptr noundef %0) #2 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 64, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %62, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 2
  store ptr %3, ptr %7, align 4
  %8 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 4
  %9 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 4, i32 2
  store i32 0, ptr %8, align 4
  %10 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 4, i32 1
  store i32 1, ptr %10, align 4
  store ptr %9, ptr %9, align 4
  %11 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 4, i32 2, i32 1
  store ptr %9, ptr %11, align 4
  %12 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 3
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %13, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #8
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %14, align 8
  %15 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  store ptr null, ptr %4, align 4
  br label %21

18:                                               ; preds = %6
  %19 = tail call ptr @of_iomap(ptr noundef nonnull %15, i32 noundef 0) #8
  tail call void @of_node_put(ptr noundef nonnull %15) #8
  store ptr %19, ptr %4, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1) #9
  br label %62

22:                                               ; preds = %18
  %23 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 1
  store ptr null, ptr %26, align 4
  br label %31

27:                                               ; preds = %22
  %28 = tail call ptr @of_iomap(ptr noundef nonnull %23, i32 noundef 0) #8
  tail call void @of_node_put(ptr noundef nonnull %23) #8
  %29 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 1
  store ptr %28, ptr %29, align 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #9
  br label %51

32:                                               ; preds = %27
  %33 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.4) #8
  %34 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 6
  store i32 %33, ptr %34, align 4
  %35 = tail call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %33, ptr noundef nonnull @irq_handler, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %34, align 4
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4, i32 noundef %38, i32 noundef %35) #9
  br label %48

41:                                               ; preds = %37, %32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #8, !annotation !8
  %42 = call fastcc i32 @__issue_avs_command(ptr noundef nonnull %4, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr i8, ptr %43, i32 52
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %46 = icmp eq i32 %45, -1592393519
  br i1 %46, label %54, label %47

47:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  br label %48

48:                                               ; preds = %47, %40
  %49 = phi i32 [ %35, %40 ], [ -19, %47 ]
  %50 = load ptr, ptr %29, align 4
  tail call void @iounmap(ptr noundef %50) #8
  br label %51

51:                                               ; preds = %48, %31
  %52 = phi i32 [ %49, %48 ], [ -2, %31 ]
  %53 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %53) #8
  br label %62

54:                                               ; preds = %41
  store ptr %0, ptr getelementptr inbounds (%struct.cpufreq_driver, ptr @brcm_avs_driver, i32 0, i32 2), align 4
  %55 = tail call i32 @cpufreq_register_driver(ptr noundef nonnull @brcm_avs_driver) #8
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %14, align 8
  %59 = getelementptr inbounds %struct.private_data, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  tail call void @iounmap(ptr noundef %60) #8
  %61 = load ptr, ptr %58, align 4
  tail call void @iounmap(ptr noundef %61) #8
  br label %62

62:                                               ; preds = %57, %54, %51, %21, %1
  %63 = phi i32 [ %55, %57 ], [ 0, %54 ], [ -12, %1 ], [ -2, %21 ], [ %52, %51 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call i32 @cpufreq_unregister_driver(ptr noundef nonnull @brcm_avs_driver) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !11

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 757, i32 noundef 9, ptr noundef null) #8
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.private_data, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @iounmap(ptr noundef %9) #8
  %10 = load ptr, ptr %7, align 4
  tail call void @iounmap(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.private_data, ptr %1, i32 0, i32 3
  tail call void @complete(ptr noundef %3) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @__issue_avs_command(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef %4) unnamed_addr #2 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.private_data, ptr %0, i32 0, i32 4
  %8 = tail call i32 @down_interruptible(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %82

10:                                               ; preds = %10, %5
  %11 = phi i32 [ %13, %10 ], [ 0, %5 ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %13 = add nuw nsw i32 %11, 1
  %14 = icmp ne i32 %12, 0
  %15 = icmp ult i32 %11, 9999
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %10, label %17

17:                                               ; preds = %10
  %18 = icmp eq i32 %13, 10000
  br i1 %18, label %80, label %19

19:                                               ; preds = %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %20 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #8, !srcloc !14
  %21 = icmp eq i32 %2, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ %29, %22 ], [ 0, %19 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  %24 = getelementptr i32, ptr %4, i32 %23
  %25 = load i32, ptr %24, align 4
  %26 = shl i32 %23, 2
  %27 = add i32 %26, 24
  %28 = getelementptr i8, ptr %6, i32 %27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %25) #8, !srcloc !14
  %29 = add nuw i32 %23, 1
  %30 = icmp eq i32 %29, %2
  br i1 %30, label %31, label %22

31:                                               ; preds = %22, %19
  %32 = getelementptr inbounds %struct.private_data, ptr %0, i32 0, i32 3
  store i32 0, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %1) #8, !srcloc !14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %33 = getelementptr inbounds %struct.private_data, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 -2147483648) #8, !srcloc !14
  %36 = getelementptr inbounds %struct.private_data, ptr %0, i32 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = icmp sgt i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = tail call i32 @wait_for_completion_timeout(ptr noundef %32, i32 noundef 30) #8
  br label %50

41:                                               ; preds = %47, %31
  %42 = phi i32 [ %48, %47 ], [ 300, %31 ]
  %43 = load ptr, ptr %0, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #8
  %48 = add nsw i32 %42, -1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %41

50:                                               ; preds = %47, %41, %39
  %51 = phi i32 [ %40, %39 ], [ %42, %41 ], [ 1, %47 ]
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %53 = icmp eq i32 %51, 0
  %54 = icmp eq i32 %52, 0
  %55 = select i1 %53, i1 true, i1 %54
  %56 = icmp ugt i32 %52, 255
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  %59 = icmp eq i32 %3, 0
  br i1 %59, label %74, label %65

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.private_data, ptr %0, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.9, i32 noundef %1) #9
  %63 = load ptr, ptr %61, align 4
  %64 = tail call i32 @jiffies_to_msecs(i32 noundef %51) #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.10, i32 noundef %64, i32 noundef %52) #9
  br label %80

65:                                               ; preds = %65, %58
  %66 = phi i32 [ %72, %65 ], [ 0, %58 ]
  %67 = shl i32 %66, 2
  %68 = add i32 %67, 24
  %69 = getelementptr i8, ptr %6, i32 %68
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !20
  %71 = getelementptr i32, ptr %4, i32 %66
  store i32 %70, ptr %71, align 4
  %72 = add nuw i32 %66, 1
  %73 = icmp eq i32 %72, %3
  br i1 %73, label %74, label %65

74:                                               ; preds = %65, %58
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #8, !srcloc !14
  switch i32 %52, label %80 [
    i32 241, label %75
    i32 242, label %76
    i32 243, label %77
    i32 244, label %78
    i32 255, label %79
  ]

75:                                               ; preds = %74
  br label %80

76:                                               ; preds = %74
  br label %80

77:                                               ; preds = %74
  br label %80

78:                                               ; preds = %74
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %78, %77, %76, %75, %74, %60, %17
  %81 = phi i32 [ -110, %60 ], [ 0, %74 ], [ -5, %79 ], [ -17, %78 ], [ -2, %77 ], [ -524, %76 ], [ -22, %75 ], [ -11, %17 ]
  tail call void @up(ptr noundef %7) #8
  br label %82

82:                                               ; preds = %80, %5
  %83 = phi i32 [ %81, %80 ], [ %8, %5 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_init(ptr nocapture noundef writeonly %0) #2 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = alloca [4 x i32], align 4
  %5 = alloca [4 x i32], align 4
  %6 = tail call ptr @cpufreq_get_driver_data() #8
  %7 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #8, !annotation !8
  %11 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %5) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %14 = inttoptr i32 %11 to ptr
  br label %75

15:                                               ; preds = %1
  %16 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %10, i32 noundef 60, i32 noundef 3520) #8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %78, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false) #8
  %21 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %53, %44, %35, %26, %19
  %24 = phi i32 [ %21, %19 ], [ %33, %26 ], [ %42, %35 ], [ %51, %44 ], [ %60, %53 ]
  %25 = inttoptr i32 %24 to ptr
  br label %75

26:                                               ; preds = %19
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 80
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %30 = mul i32 %29, 1000
  %31 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 0, i32 2
  store i32 %30, ptr %31, align 4
  %32 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 0, i32 1
  store i32 0, ptr %32, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 1, ptr %4, align 4
  %33 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %23

35:                                               ; preds = %26
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr i8, ptr %36, i32 80
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %39 = mul i32 %38, 1000
  %40 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 1, i32 2
  store i32 %39, ptr %40, align 4
  %41 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 1, i32 1
  store i32 1, ptr %41, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 2, ptr %4, align 4
  %42 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %23

44:                                               ; preds = %35
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 80
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %48 = mul i32 %47, 1000
  %49 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 2, i32 2
  store i32 %48, ptr %49, align 4
  %50 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 2, i32 1
  store i32 2, ptr %50, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 3, ptr %4, align 4
  %51 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %23

53:                                               ; preds = %44
  %54 = load ptr, ptr %8, align 4
  %55 = getelementptr i8, ptr %54, i32 80
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %57 = mul i32 %56, 1000
  %58 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 3, i32 2
  store i32 %57, ptr %58, align 4
  %59 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 3, i32 1
  store i32 3, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 4, ptr %4, align 4
  %60 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %23

62:                                               ; preds = %53
  %63 = load ptr, ptr %8, align 4
  %64 = getelementptr i8, ptr %63, i32 80
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %66 = mul i32 %65, 1000
  %67 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 4, i32 2
  store i32 %66, ptr %67, align 4
  %68 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 4, i32 1
  store i32 4, ptr %68, align 4
  %69 = getelementptr %struct.cpufreq_frequency_table, ptr %17, i32 5, i32 2
  store i32 -2, ptr %69, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %70 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %70, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 %16, ptr %3, align 4
  %71 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %72 = icmp eq i32 %71, 0
  %73 = inttoptr i32 %71 to ptr
  %74 = select i1 %72, ptr %17, ptr %73
  br label %75

75:                                               ; preds = %62, %23, %13
  %76 = phi ptr [ %14, %13 ], [ %25, %23 ], [ %74, %62 ]
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %81

78:                                               ; preds = %75, %15
  %79 = phi ptr [ %76, %75 ], [ inttoptr (i32 -12 to ptr), %15 ]
  %80 = ptrtoint ptr %79 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.11, i32 noundef %80) #9
  br label %96

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  store ptr %76, ptr %82, align 4
  store i32 -1, ptr %0, align 4
  %83 = tail call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 17, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #8, !annotation !8
  %86 = call fastcc i32 @__issue_avs_command(ptr noundef %8, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2) #8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %90 = getelementptr %struct.cpufreq_frequency_table, ptr %76, i32 %89, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 9
  store i32 %91, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.12) #9
  br label %96

93:                                               ; preds = %85
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %94

94:                                               ; preds = %93, %81
  %95 = phi i32 [ %83, %81 ], [ %86, %93 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.13, i32 noundef %95) #9
  br label %96

96:                                               ; preds = %94, %88, %78
  %97 = phi i32 [ %80, %78 ], [ %95, %94 ], [ 0, %88 ]
  ret i32 %97
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_generic_frequency_table_verify(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_target_index(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 20
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.cpufreq_frequency_table, ptr %7, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %10 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %10, i8 0, i32 12, i1 false) #8, !annotation !8
  store i32 %9, ptr %3, align 4
  %11 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 65, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_cpufreq_get(i32 noundef %0) #2 {
  %2 = tail call ptr @cpufreq_cpu_get(i32 noundef %0) #8
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %2, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  tail call void @cpufreq_cpu_put(ptr noundef %2) #8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %8 = mul i32 %7, 1000
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [4 x i32], align 4
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.private_data, ptr %5, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %7 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #8
  %8 = icmp eq i32 %7, 0
  %9 = icmp ne ptr %6, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load i32, ptr %3, align 4
  store i32 %12, ptr %6, align 4
  %13 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.private_data, ptr %5, i32 0, i32 5, i32 1
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.private_data, ptr %5, i32 0, i32 5, i32 2
  store i32 %17, ptr %18, align 4
  %19 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.private_data, ptr %5, i32 0, i32 5, i32 3
  store i32 %20, ptr %21, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br label %23

22:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  br i1 %8, label %23, label %31

23:                                               ; preds = %22, %11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #8, !annotation !8
  %24 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %2) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  br label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.private_data, ptr %5, i32 0, i32 5, i32 3
  %29 = load i32, ptr %2, align 4
  store i32 %29, ptr %28, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %30 = tail call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 18, i32 noundef 0, i32 noundef 0, ptr noundef null)
  br label %31

31:                                               ; preds = %27, %26, %22
  %32 = phi i32 [ 0, %27 ], [ %7, %22 ], [ %24, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcm_avs_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [4 x i32], align 4
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @__issue_avs_command(ptr noundef %4, i32 noundef 19, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %6 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #8
  %7 = load i32, ptr %6, align 4
  store i32 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 5, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.private_data, ptr %4, i32 0, i32 5, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds [4 x i32], ptr %2, i32 0, i32 3
  store i32 %15, ptr %16, align 4
  %17 = call fastcc i32 @__issue_avs_command(ptr noundef %4, i32 noundef 49, i32 noundef 4, i32 noundef 0, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #8
  %18 = icmp eq i32 %17, -17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = tail call ptr @cpufreq_get_driver_data() #8
  %21 = getelementptr inbounds %struct.platform_device, ptr %20, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.14) #9
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ 0, %19 ], [ %17, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_get_driver_data() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpufreq_cpu_get(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpufreq_cpu_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_pstate(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %6 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 64, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.16, i32 11, i1 false)
  br label %12

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %10)
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ 10, %8 ], [ %11, %9 ]
  ret i32 %13
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %6 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.16, i32 11, i1 false)
  br label %18

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds [4 x ptr], ptr @switch.table.show_brcm_avs_mode, i32 0, i32 %10
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %14, %12 ], [ null, %9 ]
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %16, i32 noundef %10)
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i32 [ 10, %8 ], [ %17, %15 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_pmap(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = alloca [4 x i32], align 4
  %4 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i32 16, i1 false) #8, !annotation !8
  %6 = call fastcc i32 @__issue_avs_command(ptr noundef %5, i32 noundef 48, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %3) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(11) %1, ptr noundef nonnull align 1 dereferenceable(11) @.str.16, i32 11, i1 false)
  br label %29

9:                                                ; preds = %2
  %10 = load i32, ptr %3, align 4
  %11 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds [4 x i32], ptr %3, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  %17 = lshr i32 %12, 16
  %18 = and i32 %17, 255
  %19 = lshr i32 %12, 10
  %20 = and i32 %19, 15
  %21 = and i32 %12, 1023
  %22 = lshr i32 %14, 24
  %23 = lshr i32 %14, 16
  %24 = and i32 %23, 255
  %25 = lshr i32 %14, 8
  %26 = and i32 %25, 255
  %27 = and i32 %14, 255
  %28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %12, i32 noundef %14, i32 noundef %21, i32 noundef %20, i32 noundef %18, i32 noundef %27, i32 noundef %26, i32 noundef %24, i32 noundef %22, i32 noundef %10, i32 noundef %16)
  br label %29

29:                                               ; preds = %9, %8
  %30 = phi i32 [ 10, %8 ], [ %28, %9 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_voltage(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_brcm_avs_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #2 {
  %3 = getelementptr inbounds %struct.cpufreq_policy, ptr %0, i32 0, i32 39
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !22
  %8 = mul i32 %7, 1000
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull @.str.27, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpufreq_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!9 = !{i64 4054937}
!10 = !{i64 2151865706}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2151860195}
!13 = !{i64 2151860394}
!14 = !{i64 4054519}
!15 = !{i64 2151860828}
!16 = !{i64 2151861185}
!17 = !{i64 2151861616}
!18 = !{i64 2151859868}
!19 = !{i64 2151862129}
!20 = !{i64 2151864022}
!21 = !{i64 2151864212}
!22 = !{i64 2151865127}
!23 = !{i64 2151864806}
