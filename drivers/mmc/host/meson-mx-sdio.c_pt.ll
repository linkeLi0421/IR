; ModuleID = '/llk/IR/drivers/mmc/host/meson-mx-sdio.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.meson_mx_mmc_host = type { ptr, ptr, ptr, %struct.clk_divider, ptr, %struct.clk_fixed_factor, ptr, ptr, i32, %struct.spinlock, %struct.timer_list, i32, ptr, ptr, ptr, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_meson_mx_sdio__330_767_meson_mx_mmc_driver_init6 = internal global ptr @meson_mx_mmc_driver_init, section ".initcall6.init", align 4
@meson_mx_mmc_driver = internal global %struct.platform_driver { ptr @meson_mx_mmc_probe, ptr @meson_mx_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @meson_mx_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_meson_mx_mmc_driver_exit = internal global ptr @meson_mx_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description331 = internal constant [74 x i8] c"meson_mx_sdio.description=Meson6, Meson8 and Meson8b SDIO/MMC Host Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author332 = internal constant [55 x i8] c"meson_mx_sdio.author=Carlo Caione <carlo@endlessm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author333 = internal constant [78 x i8] c"meson_mx_sdio.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file334 = internal constant [50 x i8] c"meson_mx_sdio.file=drivers/mmc/host/meson-mx-sdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license335 = internal constant [29 x i8] c"meson_mx_sdio.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"meson-mx-sdio\00", align 1
@meson_mx_mmc_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-sdio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"clkin\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to enable core clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Failed to enable MMC clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"mmc-slot\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"no 'mmc-slot' sub-node found\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/mmc/host/meson-mx-sdio.c\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.8 = private unnamed_addr constant [16 x i8] c"%s#fixed_factor\00", align 1
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"%s#div\00", align 1
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"missing 'reg' property\0A\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"invalid 'reg' property value %d\0A\00", align 1
@meson_mx_mmc_ops = internal global %struct.mmc_host_ops { ptr null, ptr null, ptr @meson_mx_mmc_request, ptr null, ptr @meson_mx_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.13 = private unnamed_addr constant [44 x i8] c"unaligned scatterlist: offset %x length %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"dma_map_sg failed\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"unsupported bus width: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"failed to set MMC clock to %lu: %d\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author332, ptr @__UNIQUE_ID_author333, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file334, ptr @__UNIQUE_ID_license335, ptr @__exitcall_meson_mx_mmc_driver_exit, ptr @__initcall__kmod_meson_mx_sdio__330_767_meson_mx_mmc_driver_init6, ptr @meson_mx_mmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_mmc_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @meson_mx_mmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_mmc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_get_compatible_child(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.6) #9
  br label %13

8:                                                ; preds = %1
  %9 = tail call ptr @of_platform_device_create(ptr noundef nonnull %5, ptr noundef null, ptr noundef %2) #8
  tail call void @of_node_put(ptr noundef nonnull %5) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11

11:                                               ; preds = %8
  %12 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %16

13:                                               ; preds = %11, %7
  %14 = phi ptr [ inttoptr (i32 -2 to ptr), %7 ], [ %9, %11 ]
  %15 = ptrtoint ptr %14 to i32
  br label %86

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %18 = tail call ptr @mmc_alloc_host(i32 noundef 120, ptr noundef %17) #8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %83, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 0, i32 68
  %22 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1, i32 10, i32 1
  store ptr %18, ptr %22, align 4
  store ptr %2, ptr %21, align 4
  %23 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1, i32 9
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %24, ptr noundef nonnull @meson_mx_mmc_timeout, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %21, ptr %25, align 8
  %26 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %27 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1, i32 7
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = ptrtoint ptr %26 to i32
  br label %81

31:                                               ; preds = %20
  %32 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %81, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr %21, align 4
  %36 = tail call i32 @devm_request_threaded_irq(ptr noundef %35, i32 noundef %32, ptr noundef nonnull @meson_mx_mmc_irq, ptr noundef nonnull @meson_mx_mmc_irq_thread, i32 noundef 8192, ptr noundef null, ptr noundef %21) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %81

38:                                               ; preds = %34
  %39 = load ptr, ptr %21, align 4
  %40 = tail call ptr @devm_clk_get(ptr noundef %39, ptr noundef nonnull @.str.1) #8
  %41 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1
  store ptr %40, ptr %41, align 4
  %42 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = ptrtoint ptr %40 to i32
  br label %81

45:                                               ; preds = %38
  %46 = load ptr, ptr %21, align 4
  %47 = tail call ptr @devm_clk_get(ptr noundef %46, ptr noundef nonnull @.str.2) #8
  %48 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %21, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = ptrtoint ptr %47 to i32
  br label %81

52:                                               ; preds = %45
  %53 = tail call fastcc i32 @meson_mx_mmc_register_clks(ptr noundef %21)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %52
  %56 = load ptr, ptr %41, align 4
  %57 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %56)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.3) #9
  br label %81

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.mmc_host, ptr %18, i32 1, i32 1, i32 0, i32 7
  %63 = load ptr, ptr %62, align 4
  %64 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.4) #9
  br label %78

68:                                               ; preds = %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !8
  tail call void @arm_heavy_mb() #8
  %69 = load ptr, ptr %27, align 4
  %70 = getelementptr i8, ptr %69, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 1096970240) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %71 = load ptr, ptr %27, align 4
  %72 = getelementptr i8, ptr %71, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 32768) #8, !srcloc !9
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 429496) #8
  %74 = tail call fastcc i32 @meson_mx_mmc_add_host(ptr noundef %21)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load ptr, ptr %62, align 4
  tail call void @clk_disable(ptr noundef %77) #8
  tail call void @clk_unprepare(ptr noundef %77) #8
  br label %78

78:                                               ; preds = %76, %66
  %79 = phi i32 [ %64, %66 ], [ %74, %76 ]
  %80 = load ptr, ptr %41, align 4
  tail call void @clk_disable(ptr noundef %80) #8
  tail call void @clk_unprepare(ptr noundef %80) #8
  br label %81

81:                                               ; preds = %78, %59, %52, %50, %43, %34, %31, %29
  %82 = phi i32 [ %30, %29 ], [ %36, %34 ], [ %44, %43 ], [ %51, %50 ], [ %53, %52 ], [ %57, %59 ], [ %79, %78 ], [ %32, %31 ]
  tail call void @mmc_free_host(ptr noundef nonnull %18) #8
  br label %83

83:                                               ; preds = %81, %16
  %84 = phi i32 [ %82, %81 ], [ -12, %16 ]
  %85 = tail call i32 @of_platform_device_destroy(ptr noundef %17, ptr noundef null) #8
  br label %86

86:                                               ; preds = %83, %68, %13, %8
  %87 = phi i32 [ %15, %13 ], [ %84, %83 ], [ -19, %8 ], [ 0, %68 ]
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %3, i32 0, i32 12
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 64
  %7 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %3, i32 0, i32 10
  %8 = tail call i32 @del_timer_sync(ptr noundef %7) #8
  %9 = load ptr, ptr %4, align 4
  tail call void @mmc_remove_host(ptr noundef %9) #8
  %10 = tail call i32 @of_platform_device_destroy(ptr noundef %6, ptr noundef null) #8
  %11 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %3, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %12) #8
  tail call void @clk_unprepare(ptr noundef %12) #8
  %13 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #8
  tail call void @clk_unprepare(ptr noundef %14) #8
  %15 = load ptr, ptr %4, align 4
  tail call void @mmc_free_host(ptr noundef %15) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_mmc_timeout(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %8 = and i32 %7, -17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  %11 = getelementptr i8, ptr %0, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.mmc_command, ptr %12, i32 0, i32 5
  store i32 -110, ptr %15, align 4
  %16 = getelementptr i8, ptr %0, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.mmc_command, ptr %18, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i8, ptr %23, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 32768) #8, !srcloc !9
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 429496) #8
  br label %26

26:                                               ; preds = %22, %14
  store ptr null, ptr %16, align 4
  store ptr null, ptr %11, align 4
  %27 = getelementptr i8, ptr %0, i32 24
  %28 = load ptr, ptr %27, align 4
  tail call void @mmc_request_done(ptr noundef %28, ptr noundef %17) #8
  br label %29

29:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !14
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %11 = and i32 %7, 512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %70, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 5
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 12
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_host, ptr %20, i32 1, i32 1, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !16
  %25 = and i32 %24, -61697
  %26 = or i32 %25, 256
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %27 = load ptr, ptr %21, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #8, !srcloc !9
  %29 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %17
  %34 = load ptr, ptr %21, align 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %36 = load ptr, ptr %21, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %38 = load ptr, ptr %21, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %40 = load ptr, ptr %21, align 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  %42 = tail call i32 @llvm.fshl.i32(i32 %41, i32 %39, i32 8) #8
  %43 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 2
  store i32 %42, ptr %43, align 4
  %44 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %37, i32 8) #8
  %45 = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 1
  store i32 %44, ptr %45, align 4
  %46 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %35, i32 8) #8
  %47 = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 2
  store i32 %46, ptr %47, align 4
  %48 = shl i32 %35, 8
  %49 = getelementptr %struct.mmc_command, ptr %15, i32 0, i32 2, i32 3
  store i32 %48, ptr %49, align 4
  br label %57

50:                                               ; preds = %17
  %51 = and i32 %30, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %21, align 4
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !19
  %56 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 2
  store i32 %55, ptr %56, align 4
  br label %57

57:                                               ; preds = %53, %50, %33
  %58 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = and i32 %7, 192
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %70

64:                                               ; preds = %57
  %65 = and i32 %7, 32
  %66 = and i32 %10, 65536
  %67 = or i32 %66, %65
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %61
  store i32 -84, ptr %18, align 4
  br label %70

70:                                               ; preds = %69, %64, %61, %13, %2
  %71 = phi i32 [ 1, %2 ], [ 1, %13 ], [ 2, %64 ], [ 2, %61 ], [ 2, %69 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %72 = load ptr, ptr %4, align 4
  %73 = getelementptr i8, ptr %72, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %7) #8, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !21
  %74 = load i16, ptr %3, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !22
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !23
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !24
  ret i32 %71
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_mx_mmc_irq_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !25

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 446, i32 noundef 9, ptr noundef null) #8
  br label %81

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 10
  %9 = tail call i32 @del_timer_sync(ptr noundef %8) #8
  %10 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %33, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 64
  %17 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 12
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 10
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds %struct.mmc_data, ptr %11, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 256
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef %25, i32 noundef 0) #8
  %26 = load ptr, ptr %10, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = mul i32 %30, %28
  %32 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 7
  store i32 %31, ptr %32, align 4
  br label %33

33:                                               ; preds = %13, %7
  %34 = load i32, ptr %4, align 4
  switch i32 %34, label %66 [
    i32 23, label %35
    i32 25, label %43
    i32 18, label %43
  ]

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.mmc_request, ptr %41, i32 0, i32 1
  br label %59

43:                                               ; preds = %33, %33
  %44 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 8
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load ptr, ptr %10, align 4
  %54 = getelementptr inbounds %struct.mmc_data, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %52, %48, %43
  %58 = getelementptr inbounds %struct.mmc_request, ptr %45, i32 0, i32 3
  br label %59

59:                                               ; preds = %57, %39
  %60 = phi ptr [ %58, %57 ], [ %42, %39 ]
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 12
  %65 = load ptr, ptr %64, align 4
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %65, ptr noundef nonnull %61)
  br label %81

66:                                               ; preds = %59, %52, %35, %33
  %67 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 13
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.mmc_command, ptr %69, i32 0, i32 5
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %74 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 32768) #8, !srcloc !9
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 429496) #8
  br label %78

78:                                               ; preds = %73, %66
  store ptr null, ptr %67, align 4
  store ptr null, ptr %3, align 4
  %79 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %1, i32 0, i32 12
  %80 = load ptr, ptr %79, align 4
  tail call void @mmc_request_done(ptr noundef %80, ptr noundef %68) #8
  br label %81

81:                                               ; preds = %78, %63, %6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_mmc_register_clks(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #8
  %5 = getelementptr inbounds i8, ptr %2, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i32 12, i1 false), !annotation !26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  %6 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @__clk_get_name(ptr noundef %7) #8
  store ptr %8, ptr %4, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load ptr, ptr %9, align 4
  br label %15

15:                                               ; preds = %13, %1
  %16 = phi ptr [ %14, %13 ], [ %11, %1 ]
  %17 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %9, i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %16) #8
  store ptr %17, ptr %2, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %63, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @clk_fixed_factor_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %21, align 4
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %4, ptr %22, align 4
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 5
  %25 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 5, i32 2
  store i32 2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 5, i32 1
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 5, i32 0, i32 2
  store ptr %2, ptr %27, align 4
  %28 = load ptr, ptr %0, align 4
  %29 = call ptr @devm_clk_register(ptr noundef %28, ptr noundef %24) #8
  %30 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 6
  store ptr %29, ptr %30, align 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %58, label %32, !prof !25

32:                                               ; preds = %19
  %33 = call ptr @__clk_get_name(ptr noundef %29) #8
  store ptr %33, ptr %3, align 4
  %34 = load ptr, ptr %0, align 4
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi ptr [ %39, %38 ], [ %36, %32 ]
  %42 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %34, i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %41) #8
  store ptr %42, ptr %2, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %63, label %44

44:                                               ; preds = %40
  store ptr @clk_divider_ops, ptr %20, align 4
  store i32 4, ptr %21, align 4
  store ptr %3, ptr %22, align 4
  store i8 1, ptr %23, align 4
  %45 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 7
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  %48 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3
  %49 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3, i32 1
  store ptr %47, ptr %49, align 4
  %50 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3, i32 2
  store i8 0, ptr %50, align 4
  %51 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3, i32 3
  store i8 10, ptr %51, align 1
  %52 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3, i32 0, i32 2
  store ptr %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 3, i32 4
  store i8 4, ptr %53, align 2
  %54 = load ptr, ptr %0, align 4
  %55 = call ptr @devm_clk_register(ptr noundef %54, ptr noundef %48) #8
  %56 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 4
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %63, !prof !25

58:                                               ; preds = %44, %19
  %59 = phi i32 [ 602, %19 ], [ 623, %44 ]
  %60 = phi ptr [ %30, %19 ], [ %56, %44 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef %59, i32 noundef 9, ptr noundef null) #8
  %61 = load ptr, ptr %60, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %63

63:                                               ; preds = %58, %44, %40, %15
  %64 = phi i32 [ -12, %15 ], [ -12, %40 ], [ 0, %44 ], [ %62, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #8
  ret i32 %64
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_mmc_add_host(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 64
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 11
  %8 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.10, ptr noundef %7, i32 noundef 1, i32 noundef 0) #8
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #9
  br label %41

11:                                               ; preds = %1
  %12 = load i32, ptr %7, align 4
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %12) #9
  br label %41

15:                                               ; preds = %11
  %16 = tail call i32 @mmc_regulator_get_supply(ptr noundef %3) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 23
  store i32 131072, ptr %19, align 16
  %20 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 20
  store i32 131072, ptr %20, align 8
  %21 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  store i32 255, ptr %21, align 8
  %22 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 24
  store i32 2040, ptr %22, align 4
  %23 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_round_rate(ptr noundef %24, i32 noundef 1) #8
  %26 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr inbounds %struct.meson_mx_mmc_host, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 @clk_get_rate(ptr noundef %29) #8
  %31 = tail call i32 @clk_round_rate(ptr noundef %27, i32 noundef %30) #8
  %32 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  store i32 %31, ptr %32, align 16
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 1073742336
  store i32 %35, ptr %33, align 8
  %36 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  store ptr @meson_mx_mmc_ops, ptr %36, align 4
  %37 = tail call i32 @mmc_of_parse(ptr noundef %3) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = tail call i32 @mmc_add_host(ptr noundef %3) #8
  br label %41

41:                                               ; preds = %39, %18, %15, %14, %10
  %42 = phi i32 [ -22, %10 ], [ -22, %14 ], [ %16, %15 ], [ %37, %18 ], [ %40, %39 ]
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_device_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_platform_device_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_mx_mmc_start_cmd(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2
  store ptr %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #8
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ 100, %2 ]
  %11 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 31
  switch i32 %13, label %16 [
    i32 21, label %14
    i32 29, label %14
    i32 1, label %14
    i32 7, label %15
  ]

14:                                               ; preds = %9, %9, %9
  br label %16

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %14, %9
  %17 = phi i32 [ 0, %9 ], [ 296192, %15 ], [ 11520, %14 ]
  %18 = shl i32 %12, 14
  %19 = and i32 %18, 65536
  %20 = shl i32 %12, 16
  %21 = and i32 %20, 524288
  %22 = or i32 %21, %19
  %23 = or i32 %22, %17
  %24 = xor i32 %23, 65536
  %25 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 2
  %34 = select i1 %33, i32 60, i32 15
  %35 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %36, 3
  %38 = add i32 %34, %37
  %39 = shl i32 %30, 24
  %40 = add i32 %39, -16777216
  %41 = or i32 %40, %24
  %42 = shl i32 %38, 16
  %43 = and i32 %42, 1073676288
  %44 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 256
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 131072, i32 1048576
  %49 = or i32 %48, %41
  %50 = getelementptr inbounds %struct.mmc_data, ptr %26, i32 0, i32 7
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %28, %16
  %52 = phi i32 [ %43, %28 ], [ 0, %16 ]
  %53 = phi i32 [ %49, %28 ], [ %24, %16 ]
  %54 = load i32, ptr %1, align 4
  %55 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  %56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %55) #8
  %57 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 20
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  %61 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 0, i32 1
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %60, 2147483644
  %64 = and i32 %54, 191
  %65 = or i32 %53, %64
  %66 = or i32 %65, 64
  %67 = and i32 %62, 3
  %68 = or i32 %63, %67
  %69 = or i32 %68, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !28
  tail call void @arm_heavy_mb() #8
  %70 = load ptr, ptr %57, align 4
  %71 = getelementptr i8, ptr %70, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #8, !srcloc !9
  %72 = load ptr, ptr %57, align 4
  %73 = getelementptr i8, ptr %72, i32 16
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %75 = or i32 %74, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %57, align 4
  %77 = getelementptr i8, ptr %76, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #8, !srcloc !9
  %78 = load ptr, ptr %57, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %81 = or i32 %80, 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %82 = load ptr, ptr %57, align 4
  %83 = getelementptr i8, ptr %82, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !31
  tail call void @arm_heavy_mb() #8
  %84 = getelementptr inbounds %struct.mmc_command, ptr %1, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %57, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %85) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !32
  tail call void @arm_heavy_mb() #8
  %87 = load ptr, ptr %57, align 4
  %88 = getelementptr i8, ptr %87, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %52) #8, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !33
  tail call void @arm_heavy_mb() #8
  %89 = load ptr, ptr %57, align 4
  %90 = getelementptr i8, ptr %89, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %66) #8, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %55, i32 noundef %56) #8
  %91 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9, i32 1
  %92 = load volatile i32, ptr @jiffies, align 64
  %93 = add i32 %92, %10
  %94 = tail call i32 @mod_timer(ptr noundef %91, i32 noundef %93) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_mmc_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 3
  %18 = icmp eq i32 %17, 0
  %19 = getelementptr inbounds %struct.scatterlist, ptr %14, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %18, i1 %22, i1 false
  %24 = load ptr, ptr %0, align 64
  br i1 %23, label %26, label %25

25:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.13, i32 noundef %16, i32 noundef %20) #9
  br label %38

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 10
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mmc_data, ptr %10, i32 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 2, i32 1
  %34 = tail call i32 @dma_map_sg_attrs(ptr noundef %24, ptr noundef %14, i32 noundef %28, i32 noundef %33, i32 noundef 0) #8
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.14) #9
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i32 [ -22, %25 ], [ -12, %36 ]
  store i32 %39, ptr %5, align 4
  br label %40

40:                                               ; preds = %38, %2
  %41 = phi i32 [ %39, %38 ], [ %6, %2 ]
  %42 = getelementptr inbounds %struct.mmc_command, ptr %4, i32 0, i32 5
  store i32 %41, ptr %42, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #8
  br label %62

43:                                               ; preds = %26, %8
  store i32 0, ptr %5, align 4
  %44 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 1, i32 1
  store ptr %1, ptr %44, align 4
  %45 = load ptr, ptr %9, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !34
  tail call void @arm_heavy_mb() #8
  %48 = load ptr, ptr %9, align 4
  %49 = getelementptr inbounds %struct.mmc_data, ptr %48, i32 0, i32 12
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.scatterlist, ptr %50, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %54, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %52) #8, !srcloc !9
  br label %56

56:                                               ; preds = %47, %43
  %57 = load ptr, ptr %1, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %0, ptr noundef nonnull %57)
  br label %62

60:                                               ; preds = %56
  %61 = load ptr, ptr %3, align 4
  tail call fastcc void @meson_mx_mmc_start_cmd(ptr noundef %0, ptr noundef %61)
  br label %62

62:                                               ; preds = %60, %59, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_mx_mmc_set_ios(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %4 = load i16, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  switch i8 %7, label %24 [
    i8 0, label %8
    i8 2, label %16
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %13 = and i32 %12, -1048577
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  br label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !29
  %21 = or i32 %20, 1048576
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !30
  tail call void @arm_heavy_mb() #8
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !9
  br label %28

24:                                               ; preds = %2
  %25 = zext i8 %7 to i32
  %26 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.15, i32 noundef %25) #9
  %27 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  store i32 -22, ptr %27, align 4
  br label %51

28:                                               ; preds = %16, %8
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  %31 = load i32, ptr %1, align 4
  %32 = tail call i32 @clk_set_rate(ptr noundef %30, i32 noundef %31) #8
  %33 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 10, i32 2, i32 1
  store i32 %32, ptr %33, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %32) #9
  br label %51

37:                                               ; preds = %28
  %38 = load ptr, ptr %29, align 4
  %39 = tail call i32 @clk_get_rate(ptr noundef %38) #8
  %40 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 57
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %42 = load i8, ptr %41, align 2
  switch i8 %42, label %51 [
    i8 0, label %43
    i8 1, label %44
  ]

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i16 [ %4, %37 ], [ 0, %43 ]
  %46 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54
  %47 = load ptr, ptr %46, align 4
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %0, ptr noundef %47, i16 noundef zeroext %45) #8
  store i32 %50, ptr %33, align 4
  br label %51

51:                                               ; preds = %49, %44, %37, %35, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2154094543}
!9 = !{i64 5211964}
!10 = !{i64 2153535333}
!11 = !{i64 5212382}
!12 = !{i64 2153837830}
!13 = !{i64 2153838103}
!14 = !{i64 2153834494}
!15 = !{i64 2153834833}
!16 = !{i64 2153791892}
!17 = !{i64 2153832992}
!18 = !{i64 2153833471}
!19 = !{i64 2153833819}
!20 = !{i64 2153835106}
!21 = !{i64 2148925790}
!22 = !{i64 2148921614}
!23 = !{i64 2148921689, i64 2148921716, i64 2148921763, i64 2148921785, i64 2148921813, i64 2148921833}
!24 = !{i64 2148948793}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"auto-init"}
!27 = !{i64 2153741900}
!28 = !{i64 2153786593}
!29 = !{i64 2153534713}
!30 = !{i64 2153534900}
!31 = !{i64 2153787257}
!32 = !{i64 2153787586}
!33 = !{i64 2153787906}
!34 = !{i64 2153791366}
