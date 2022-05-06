; ModuleID = '/llk/IR/drivers/cpufreq/ti-cpufreq.c_pt.bc'
source_filename = "../drivers/cpufreq/ti-cpufreq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ti_cpufreq_soc_data = type { ptr, ptr, i32, i32, i32, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.ti_cpufreq_data = type { ptr, ptr, ptr, ptr, ptr }
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

@__initcall__kmod_ti_cpufreq__166_423_ti_cpufreq_init6 = internal global ptr @ti_cpufreq_init, section ".initcall6.init", align 4
@__initcall__kmod_ti_cpufreq__167_431_ti_cpufreq_driver_init6 = internal global ptr @ti_cpufreq_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description168 = internal constant [58 x i8] c"ti_cpufreq.description=TI CPUFreq/OPP hw-supported driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author169 = internal constant [50 x i8] c"ti_cpufreq.author=Dave Gerlach <d-gerlach@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file170 = internal constant [43 x i8] c"ti_cpufreq.file=drivers/cpufreq/ti-cpufreq\00", section ".modinfo", align 1
@__UNIQUE_ID_license171 = internal constant [26 x i8] c"ti_cpufreq.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [11 x i8] c"ti-cpufreq\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@ti_cpufreq_of_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3x_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3517\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am3517_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am43\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am4x_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dra7_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap34xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap34xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap36xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap36xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap34xx_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3630\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap36xx_soc_data }, %struct.of_device_id zeroinitializer], align 4
@am3x_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr null, ptr @amx3_efuse_xlate, i32 7727, i32 2044, i32 8191, i32 0, i32 1536, i8 0 }, align 4
@am3517_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr null, ptr @omap3_efuse_xlate, i32 0, i32 476, i32 0, i32 0, i32 3178388, i8 0 }, align 4
@am4x_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr null, ptr @amx3_efuse_xlate, i32 4090, i32 1552, i32 63, i32 0, i32 1536, i8 0 }, align 4
@dra7_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr null, ptr @dra7_efuse_xlate, i32 0, i32 524, i32 16252928, i32 19, i32 516, i8 1 }, align 4
@omap34xx_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr null, ptr @omap3_efuse_xlate, i32 0, i32 3178396, i32 8, i32 3, i32 3178388, i8 0 }, align 4
@omap36xx_soc_data = internal global %struct.ti_cpufreq_soc_data { ptr @omap3_reg_names, ptr @omap3_efuse_xlate, i32 0, i32 476, i32 512, i32 9, i32 3178388, i8 1 }, align 4
@omap3_reg_names = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"cpu0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vbb\00", align 1
@ti_cpufreq_driver = internal global %struct.platform_driver { ptr @ti_cpufreq_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@__const.ti_cpufreq_probe.default_reg_names = private unnamed_addr constant [2 x ptr] [ptr @.str.4, ptr @.str.3], align 8
@.str.5 = private unnamed_addr constant [37 x i8] c"\013%s: Failed to get device for CPU0\0A\00", align 1
@__func__.ti_cpufreq_probe = private unnamed_addr constant [17 x i8] c"ti_cpufreq_probe\00", align 1
@.str.6 = private unnamed_addr constant [69 x i8] c"OPP-v2 not supported, cpufreq-dt will attempt to use legacy tables.\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to set supported hardware\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.10 = private unnamed_addr constant [46 x i8] c"\22syscon\22 is missing, cannot use OPPv2 table.\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"Failed to read the revision number from syscon: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Failed to read the efuse value from syscon: %d\0A\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author169, ptr @__UNIQUE_ID_description168, ptr @__UNIQUE_ID_file170, ptr @__UNIQUE_ID_license171, ptr @__initcall__kmod_ti_cpufreq__166_423_ti_cpufreq_init6, ptr @__initcall__kmod_ti_cpufreq__167_431_ti_cpufreq_driver_init6], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_init() #0 {
  %1 = alloca %struct.platform_device_info, align 8
  %2 = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull @.str.1, ptr noundef null) #8
  %3 = tail call ptr @of_match_node(ptr noundef nonnull @ti_cpufreq_of_match, ptr noundef %2) #8
  tail call void @of_node_put(ptr noundef %2) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #8
  %6 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false) #8
  store ptr @.str, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 4
  store i32 -1, ptr %7, align 8
  %8 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 7
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.platform_device_info, ptr %1, i32 0, i32 8
  store i32 196, ptr %9, align 8
  %10 = call ptr @platform_device_register_full(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #8
  br label %11

11:                                               ; preds = %5, %0
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_driver_init() #1 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_cpufreq_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @amx3_efuse_xlate(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ti_cpufreq_data, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  br label %9

9:                                                ; preds = %4, %2
  %10 = phi i32 [ %1, %2 ], [ %8, %4 ]
  %11 = xor i32 %10, -1
  ret i32 %11
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @omap3_efuse_xlate(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = shl nuw i32 1, %1
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @dra7_efuse_xlate(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  switch i32 %1, label %8 [
    i32 18, label %3
    i32 24, label %3
    i32 23, label %4
    i32 15, label %4
    i32 11, label %6
  ]

3:                                                ; preds = %2, %2
  br label %4

4:                                                ; preds = %3, %2, %2
  %5 = phi i32 [ 7, %2 ], [ 7, %2 ], [ 15, %3 ]
  br label %6

6:                                                ; preds = %4, %2
  %7 = phi i32 [ 3, %2 ], [ %5, %4 ]
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi i32 [ 1, %2 ], [ %7, %6 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ti_cpufreq_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.platform_device_info, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 8
  %6 = alloca [2 x ptr], align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  store i64 0, ptr %5, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  %7 = load i64, ptr @__const.ti_cpufreq_probe.default_reg_names, align 8
  store i64 %7, ptr %6, align 8
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %109, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %12, i32 noundef 20, i32 noundef 3520) #8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %109, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.ti_cpufreq_data, ptr %13, i32 0, i32 3
  store ptr %17, ptr %18, align 4
  %19 = tail call ptr @get_cpu_device(i32 noundef 0) #8
  store ptr %19, ptr %13, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ti_cpufreq_probe) #9
  br label %109

23:                                               ; preds = %15
  %24 = tail call ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef nonnull %19) #8
  %25 = getelementptr inbounds %struct.ti_cpufreq_data, ptr %13, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %19, ptr noundef nonnull @.str.6) #9
  br label %101

28:                                               ; preds = %23
  %29 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %24, ptr noundef nonnull @.str.9) #8
  %30 = getelementptr inbounds %struct.ti_cpufreq_data, ptr %13, i32 0, i32 2
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %19, ptr noundef nonnull @.str.10) #9
  %33 = ptrtoint ptr %29 to i32
  br label %106

34:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %35 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %17, i32 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @regmap_read(ptr noundef %29, i32 noundef %36, ptr noundef nonnull %4) #8
  switch i32 %37, label %45 [
    i32 -5, label %38
    i32 0, label %48
  ]

38:                                               ; preds = %34
  %39 = load i32, ptr %35, align 4
  %40 = add i32 %39, 1207968368
  %41 = call ptr @ioremap(i32 noundef %40, i32 noundef 4) #8
  %42 = icmp eq ptr %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %41) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  store i32 %44, ptr %4, align 4
  call void @iounmap(ptr noundef nonnull %41) #8
  br label %48

45:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %19, ptr noundef nonnull @.str.11, i32 noundef %37) #9
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ -12, %38 ], [ %37, %45 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %106

48:                                               ; preds = %43, %34
  %49 = load i32, ptr %4, align 4
  %50 = lshr i32 %49, 28
  %51 = shl nuw nsw i32 1, %50
  store i32 %51, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %52 = getelementptr inbounds [2 x i32], ptr %5, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %53 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %17, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = call i32 @regmap_read(ptr noundef %29, i32 noundef %54, ptr noundef nonnull %3) #8
  switch i32 %55, label %63 [
    i32 -5, label %56
    i32 0, label %66
  ]

56:                                               ; preds = %48
  %57 = load i32, ptr %53, align 4
  %58 = add i32 %57, 1207968368
  %59 = call ptr @ioremap(i32 noundef %58, i32 noundef 4) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %59) #8, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  store i32 %62, ptr %3, align 4
  call void @iounmap(ptr noundef nonnull %59) #8
  br label %66

63:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %19, ptr noundef nonnull @.str.12, i32 noundef %55) #9
  br label %64

64:                                               ; preds = %63, %56
  %65 = phi i32 [ -12, %56 ], [ %55, %63 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %106

66:                                               ; preds = %61, %48
  %67 = load i32, ptr %3, align 4
  %68 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %17, i32 0, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = and i32 %69, %67
  %71 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %17, i32 0, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %70, %72
  store i32 %73, ptr %3, align 4
  %74 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %17, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 %75(ptr noundef nonnull %13, i32 noundef %73) #8
  store i32 %76, ptr %52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %77 = load ptr, ptr %13, align 4
  %78 = call ptr @dev_pm_opp_set_supported_hw(ptr noundef %77, ptr noundef nonnull %5, i32 noundef 2) #8
  %79 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load ptr, ptr %13, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.7) #9
  %82 = ptrtoint ptr %78 to i32
  br label %106

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.ti_cpufreq_data, ptr %13, i32 0, i32 4
  store ptr %78, ptr %84, align 4
  %85 = load ptr, ptr %18, align 4
  %86 = getelementptr inbounds %struct.ti_cpufreq_soc_data, ptr %85, i32 0, i32 7
  %87 = load i8, ptr %86, align 4, !range !12
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %99, label %89

89:                                               ; preds = %83
  %90 = load ptr, ptr %85, align 4
  %91 = icmp eq ptr %90, null
  %92 = select i1 %91, ptr %6, ptr %90
  %93 = load ptr, ptr %13, align 4
  %94 = call ptr @dev_pm_opp_set_regulators(ptr noundef %93, ptr noundef nonnull %92, i32 noundef 2) #8
  %95 = icmp ugt ptr %94, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %99

96:                                               ; preds = %89
  %97 = load ptr, ptr %84, align 4
  call void @dev_pm_opp_put_supported_hw(ptr noundef %97) #8
  %98 = ptrtoint ptr %94 to i32
  br label %106

99:                                               ; preds = %89, %83
  %100 = load ptr, ptr %25, align 4
  call void @of_node_put(ptr noundef %100) #8
  br label %101

101:                                              ; preds = %99, %27
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #8
  %102 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false) #8
  store ptr @.str.8, ptr %102, align 4
  %103 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 4
  store i32 -1, ptr %103, align 8
  %104 = getelementptr inbounds %struct.platform_device_info, ptr %2, i32 0, i32 10
  store ptr null, ptr %104, align 8
  %105 = call ptr @platform_device_register_full(ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #8
  br label %109

106:                                              ; preds = %96, %80, %64, %46, %32
  %107 = phi i32 [ %33, %32 ], [ %82, %80 ], [ %98, %96 ], [ %47, %46 ], [ %65, %64 ]
  %108 = load ptr, ptr %25, align 4
  call void @of_node_put(ptr noundef %108) #8
  br label %109

109:                                              ; preds = %106, %101, %21, %11, %1
  %110 = phi i32 [ %107, %106 ], [ 0, %101 ], [ -19, %21 ], [ -19, %1 ], [ -12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  ret i32 %110
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_cpu_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_of_get_opp_desc_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_supported_hw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_set_regulators(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put_supported_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 3651829}
!10 = !{i64 2151556785}
!11 = !{i64 2151555753}
!12 = !{i8 0, i8 2}
