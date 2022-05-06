; ModuleID = '/llk/IR/sound/pci/hda/hda_tegra.c_pt.bc'
source_filename = "../sound/pci/hda/hda_tegra.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hda_tegra_soc = type { i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.hda_controller_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.hda_tegra = type { %struct.azx, ptr, [3 x %struct.reset_control_bulk_data], [3 x %struct.clk_bulk_data], i32, i32, ptr, %struct.work_struct, ptr }
%struct.azx = type { %struct.hda_bus, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [2 x ptr], [2 x ptr], %struct.mutex, %struct.list_head, i32, i32, ptr, i32, i16 }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.reset_control_bulk_data = type { ptr, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@__param_str_power_save = internal constant [11 x i8] c"power_save\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_bint = external dso_local constant %struct.kernel_param_ops, align 4
@power_save = internal global i32 0, align 4
@__param_power_save = internal constant %struct.kernel_param { ptr @__param_str_power_save, ptr @__this_module, ptr @param_ops_bint, i16 420, i8 -1, i8 0, %union.anon.60 { ptr @power_save } }, section "__param", align 4
@__UNIQUE_ID_power_savetype233 = internal constant [25 x i8] c"parmtype=power_save:bint\00", section ".modinfo", align 1
@__UNIQUE_ID_power_save234 = internal constant [74 x i8] c"parm=power_save:Automatic power-saving timeout (in seconds, 0 = disable).\00", section ".modinfo", align 1
@hda_tegra_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra30-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra30_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra194-hda\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra194_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description235 = internal constant [33 x i8] c"description=Tegra HDA bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@tegra30_data = internal constant %struct.hda_tegra_soc { i8 1 }, align 1
@tegra194_data = internal constant %struct.hda_tegra_soc zeroinitializer, align 1
@tegra_platform_hda = internal global %struct.platform_driver { ptr @hda_tegra_probe, ptr @hda_tegra_remove, ptr @hda_tegra_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hda_tegra_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hda_tegra_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [10 x i8] c"tegra-hda\00", align 1
@hda_tegra_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr @hda_tegra_suspend, ptr @hda_tegra_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hda_tegra_runtime_suspend, ptr @hda_tegra_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Error creating card!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"hda\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"hda2hdmi\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"hda2codec_2x\00", align 1
@hda_tegra_create.ops = internal constant %struct.snd_device_ops { ptr @hda_tegra_dev_free, ptr null, ptr @hda_tegra_dev_disconnect }, align 4
@hda_tegra_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"&chip->open_mutex\00", align 1
@hda_tegra_ops = internal constant %struct.hda_controller_ops zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Error creating device\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"snd_hda_tegra\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"unable to request IRQ %d, disabling device\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"nvidia,tegra194-hda\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Override SDO lines to %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"failed to initialize streams: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"failed to allocate stream pages: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"nvidia,tegra30-hda\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"no codecs found!\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"nvidia,model\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"truncating shortname for card\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%s at 0x%lx irq %i\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@str = private unnamed_addr constant [17 x i8] c"tegra-hda\00\00\00\00\00\00\00\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_license236, ptr @__UNIQUE_ID_power_save234, ptr @__UNIQUE_ID_power_savetype233, ptr @__param_power_save], section "llvm.metadata"

@__mod_of__hda_tegra_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @hda_tegra_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_platform_hda, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_platform_hda) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1304, i32 noundef 3520) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 1
  store ptr %3, ptr %7, align 4
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %3) #10
  %9 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 8
  store ptr %8, ptr %9, align 4
  %10 = call i32 @snd_card_new(ptr noundef %3, i32 noundef -1, ptr noundef null, ptr noundef nonnull @__this_module, i32 noundef 0, ptr noundef nonnull %2) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #11
  br label %93

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 2
  %15 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1
  store i32 %17, ptr %15, align 4
  %18 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 2, i32 %16
  store ptr @.str.2, ptr %18, align 4
  %19 = load i32, ptr %15, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %15, align 4
  %21 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 2, i32 %19
  store ptr @.str.3, ptr %21, align 4
  %22 = load ptr, ptr %9, align 4
  %23 = load i8, ptr %22, align 1, !range !9
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %13
  %26 = load i32, ptr %15, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %15, align 4
  %28 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 2, i32 %26
  store ptr @.str.4, ptr %28, align 4
  br label %29

29:                                               ; preds = %25, %13
  %30 = load i32, ptr %15, align 4
  %31 = call i32 @__devm_reset_control_bulk_get(ptr noundef %3, i32 noundef %30, ptr noundef %14, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 3
  %35 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 3, i32 %36
  store ptr @.str.2, ptr %38, align 4
  %39 = add i32 %36, 2
  %40 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 3, i32 %37
  store ptr @.str.3, ptr %40, align 4
  %41 = add i32 %36, 3
  store i32 %41, ptr %35, align 4
  %42 = getelementptr %struct.hda_tegra, ptr %4, i32 0, i32 3, i32 %39
  store ptr @.str.4, ptr %42, align 4
  %43 = call i32 @devm_clk_bulk_get(ptr noundef %3, i32 noundef %41, ptr noundef %34) #10
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %89, label %45

45:                                               ; preds = %33
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 15
  call void @__mutex_init(ptr noundef %47, ptr noundef nonnull @.str.5, ptr noundef nonnull @hda_tegra_create.__key) #10
  %48 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  %49 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 12
  store ptr @hda_tegra_ops, ptr %49, align 4
  %50 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 5
  store i32 335544320, ptr %50, align 4
  %51 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 4
  store i32 0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 3
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 16
  store volatile ptr %53, ptr %53, align 4
  %54 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 16, i32 1
  store ptr %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 17
  store i32 -1, ptr %55, align 4
  %56 = getelementptr inbounds %struct.azx, ptr %4, i32 0, i32 21
  %57 = load i16, ptr %56, align 4
  %58 = and i16 %57, -37
  %59 = or i16 %58, 32
  store i16 %59, ptr %56, align 4
  %60 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 7
  store i32 -32, ptr %60, align 4
  %61 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 7, i32 1
  store volatile ptr %61, ptr %61, align 4
  %62 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 7, i32 1, i32 1
  store ptr %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.hda_tegra, ptr %4, i32 0, i32 7, i32 2
  store ptr @hda_tegra_probe_work, ptr %63, align 4
  %64 = call i32 @azx_bus_init(ptr noundef nonnull %4, ptr noundef null) #10
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %89, label %66

66:                                               ; preds = %45
  %67 = getelementptr inbounds %struct.hdac_bus, ptr %4, i32 0, i32 28
  %68 = load i16, ptr %67, align 4
  %69 = and i16 %68, -519
  %70 = or i16 %69, 514
  store i16 %70, ptr %67, align 4
  %71 = call i32 @snd_device_new(ptr noundef %46, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull @hda_tegra_create.ops) #10
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.snd_card, ptr %46, i32 0, i32 27
  %75 = load ptr, ptr %74, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.6) #11
  br label %89

76:                                               ; preds = %66
  %77 = load ptr, ptr %2, align 4
  %78 = getelementptr inbounds %struct.snd_card, ptr %77, i32 0, i32 9
  store ptr %4, ptr %78, align 8
  %79 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %77, ptr %79, align 8
  %80 = load ptr, ptr %7, align 4
  call void @pm_runtime_enable(ptr noundef %80) #10
  %81 = load i32, ptr %50, align 4
  %82 = and i32 %81, 67108864
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = load ptr, ptr %7, align 4
  call void @pm_runtime_forbid(ptr noundef %85) #10
  br label %86

86:                                               ; preds = %84, %76
  %87 = load ptr, ptr @system_wq, align 4
  %88 = call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %87, ptr noundef %60) #10
  br label %93

89:                                               ; preds = %73, %45, %33, %29
  %90 = phi i32 [ %31, %29 ], [ %43, %33 ], [ %64, %45 ], [ %71, %73 ]
  %91 = load ptr, ptr %2, align 4
  %92 = call i32 @snd_card_free(ptr noundef %91) #10
  br label %93

93:                                               ; preds = %89, %86, %12, %1
  %94 = phi i32 [ %10, %12 ], [ %90, %89 ], [ 0, %86 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i32 @snd_card_free(ptr noundef %4) #10
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #10
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hda_tegra_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.azx, ptr %7, i32 0, i32 21
  %11 = load i16, ptr %10, align 4
  %12 = and i16 %11, 1
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @azx_stop_chip(ptr noundef nonnull %7) #10
  br label %15

15:                                               ; preds = %14, %9, %5, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_reset_control_bulk_get(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_dev_free(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hda_tegra, ptr %3, i32 0, i32 7
  %5 = tail call zeroext i1 @cancel_work_sync(ptr noundef %4) #10
  %6 = getelementptr inbounds %struct.hdac_bus, ptr %3, i32 0, i32 28
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @azx_stop_all_streams(ptr noundef %3) #10
  tail call void @azx_stop_chip(ptr noundef %3) #10
  br label %11

11:                                               ; preds = %10, %1
  tail call void @snd_hdac_bus_free_stream_pages(ptr noundef %3) #10
  tail call void @azx_free_streams(ptr noundef %3) #10
  tail call void @snd_hdac_bus_exit(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hda_tegra_dev_disconnect(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.snd_device, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.hda_bus, ptr %3, i32 0, i32 6
  %5 = load i8, ptr %4, align 4
  %6 = or i8 %5, 2
  store i8 %6, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hda_tegra_probe_work(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = getelementptr i8, ptr %0, i32 -1284
  %4 = getelementptr i8, ptr %0, i32 -64
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 -16
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %8 = getelementptr i8, ptr %0, i32 -176
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @platform_get_irq(ptr noundef %6, i32 noundef 0) #10
  %11 = getelementptr i8, ptr %5, i32 416
  %12 = load ptr, ptr %11, align 8
  %13 = icmp slt i32 %10, 0
  br i1 %13, label %145, label %14

14:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store ptr null, ptr %2, align 4, !annotation !8
  %15 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %2) #10
  %16 = getelementptr i8, ptr %0, i32 -4
  store ptr %15, ptr %16, align 4
  %17 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = getelementptr i8, ptr %15, i32 32768
  %20 = getelementptr i8, ptr %0, i32 -1268
  store ptr %19, ptr %20, align 4
  %21 = load ptr, ptr %2, align 4
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, 32768
  %24 = getelementptr i8, ptr %0, i32 -1272
  store i32 %23, ptr %24, align 4
  call fastcc void @hda_tegra_init(ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr inbounds %struct.snd_card, ptr %25, i32 0, i32 27
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 @devm_request_threaded_irq(ptr noundef %27, i32 noundef %10, ptr noundef nonnull @azx_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.7, ptr noundef %3) #10
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %32

30:                                               ; preds = %14
  %31 = ptrtoint ptr %15 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  br label %126

32:                                               ; preds = %18
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.snd_card, ptr %33, i32 0, i32 27
  %35 = load ptr, ptr %34, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.8, i32 noundef %10) #11
  br label %126

36:                                               ; preds = %18
  %37 = getelementptr i8, ptr %0, i32 -1264
  store i32 %10, ptr %37, align 4
  %38 = getelementptr i8, ptr %0, i32 -336
  store i32 100, ptr %38, align 4
  %39 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 33
  store i32 %10, ptr %39, align 4
  %40 = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.9) #10
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %44 = load ptr, ptr %43, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.10, i32 noundef 4) #11
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i8, ptr %45, i32 4340
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %48 = and i32 %47, -786433
  %49 = or i32 %48, 524288
  call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  call void @arm_heavy_mb() #10
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i8, ptr %50, i32 4340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #10, !srcloc !13
  br label %52

52:                                               ; preds = %42, %36
  %53 = load ptr, ptr %20, align 4
  %54 = getelementptr i8, ptr %0, i32 -348
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 2
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %52
  %59 = call i32 @snd_hdac_aligned_read(ptr noundef %53, i32 noundef 65535) #10
  br label %63

60:                                               ; preds = %52
  %61 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %53) #10, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi i32 [ %59, %58 ], [ %62, %60 ]
  %65 = getelementptr i8, ptr %0, i32 -68
  %66 = load i16, ptr %65, align 4
  %67 = or i16 %66, 128
  store i16 %67, ptr %65, align 4
  %68 = lshr i32 %64, 8
  %69 = and i32 %68, 15
  %70 = getelementptr i8, ptr %0, i32 -148
  store i32 %69, ptr %70, align 4
  %71 = lshr i32 %64, 12
  %72 = and i32 %71, 15
  %73 = getelementptr i8, ptr %0, i32 -156
  store i32 %72, ptr %73, align 4
  %74 = and i32 %64, 61440
  %75 = icmp eq i32 %74, 0
  %76 = icmp eq i32 %69, 0
  %77 = select i1 %75, i1 %76, i1 false
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  store i32 1, ptr %73, align 4
  store i32 1, ptr %70, align 4
  br label %79

79:                                               ; preds = %78, %63
  %80 = phi i32 [ 1, %78 ], [ %72, %63 ]
  %81 = phi i32 [ 1, %78 ], [ %69, %63 ]
  %82 = getelementptr i8, ptr %0, i32 -144
  store i32 0, ptr %82, align 4
  %83 = getelementptr i8, ptr %0, i32 -152
  store i32 %81, ptr %83, align 4
  %84 = add nuw nsw i32 %81, %80
  %85 = getelementptr i8, ptr %0, i32 -140
  store i32 %84, ptr %85, align 4
  %86 = call i32 @azx_init_streams(ptr noundef %3) #10
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %90 = load ptr, ptr %89, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.11, i32 noundef %86) #11
  br label %145

91:                                               ; preds = %79
  %92 = call i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef %3) #10
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %96 = load ptr, ptr %95, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.12, i32 noundef %92) #11
  br label %145

97:                                               ; preds = %91
  call void @azx_init_chip(ptr noundef %3, i1 noundef zeroext true) #10
  %98 = call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.13) #10
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = getelementptr i8, ptr %0, i32 -256
  store i32 16, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %97
  %103 = getelementptr i8, ptr %0, i32 -628
  %104 = load i32, ptr %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %108 = load ptr, ptr %107, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.14) #11
  br label %145

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 2
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(16) %110, ptr noundef nonnull align 1 dereferenceable(16) @str, i32 noundef 16, i1 false) #10
  %111 = call ptr @of_get_property(ptr noundef %12, ptr noundef nonnull @.str.15, ptr noundef null) #10
  %112 = icmp eq ptr %111, null
  %113 = select i1 %112, ptr @.str, ptr %111
  %114 = call i32 @strlen(ptr noundef %113) #10
  %115 = icmp ugt i32 %114, 32
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 27
  %118 = load ptr, ptr %117, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.16) #11
  br label %119

119:                                              ; preds = %116, %109
  %120 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 3
  %121 = call ptr @strncpy(ptr noundef %120, ptr noundef %113, i32 noundef 32) #10
  %122 = getelementptr inbounds %struct.snd_card, ptr %9, i32 0, i32 4
  %123 = load i32, ptr %24, align 4
  %124 = load i32, ptr %37, align 4
  %125 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %122, i32 noundef 80, ptr noundef nonnull @.str.17, ptr noundef %120, i32 noundef %123, i32 noundef %124) #10
  br label %129

126:                                              ; preds = %32, %30
  %127 = phi i32 [ %28, %32 ], [ %31, %30 ]
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %126, %119
  %130 = call i32 @azx_probe_codecs(ptr noundef %3, i32 noundef 8) #10
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %129
  %133 = call i32 @azx_codec_configure(ptr noundef %3) #10
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %8, align 4
  %137 = call i32 @snd_card_register(ptr noundef %136) #10
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = getelementptr i8, ptr %0, i32 -68
  %141 = load i16, ptr %140, align 4
  %142 = or i16 %141, 1
  store i16 %142, ptr %140, align 4
  %143 = load i32, ptr @power_save, align 4
  %144 = mul i32 %143, 1000
  call void @snd_hda_set_power_save(ptr noundef %3, i32 noundef %144) #10
  br label %145

145:                                              ; preds = %139, %135, %132, %129, %126, %106, %94, %88, %1
  %146 = load ptr, ptr %4, align 4
  %147 = call i32 @__pm_runtime_idle(ptr noundef %146, i32 noundef 5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_bus_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_all_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_stop_chip(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_free_stream_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_free_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_probe_codecs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_codec_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_set_power_save(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_interrupt(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @azx_init_streams(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_bus_alloc_stream_pages(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @azx_init_chip(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @hda_tegra_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hda_tegra, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 384
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !16
  %6 = or i32 %5, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !17
  tail call void @arm_heavy_mb() #10
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #10, !srcloc !13
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 4100
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !18
  %12 = and i32 %11, -1288
  %13 = or i32 %12, 263
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !19
  tail call void @arm_heavy_mb() #10
  %14 = load ptr, ptr %2, align 4
  %15 = getelementptr i8, ptr %14, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 -1) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr i8, ptr %18, i32 4112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 16384) #10, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 64) #10, !srcloc !13
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr i8, ptr %22, i32 392
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %25 = or i32 %24, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr i8, ptr %26, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_aligned_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 37
  store volatile i32 768, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #10
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 37
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 39
  tail call void @__wake_up(ptr noundef %8, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %36, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.azx, ptr %5, i32 0, i32 21
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 28
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = tail call i32 @snd_hdac_aligned_read(ptr noundef %15, i32 noundef 65535) #10
  br label %25

22:                                               ; preds = %12
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %15) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %24 = zext i16 %23 to i32
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  %27 = trunc i32 %26 to i16
  %28 = or i16 %27, 255
  %29 = load i16, ptr %16, align 4
  %30 = and i16 %29, 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = zext i16 %28 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %33, ptr noundef %15, i32 noundef 65535) #10
  br label %35

34:                                               ; preds = %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 %28) #10, !srcloc !26
  br label %35

35:                                               ; preds = %34, %32
  tail call void @azx_stop_chip(ptr noundef nonnull %5) #10
  tail call void @snd_hdac_bus_enter_link_reset(ptr noundef nonnull %5) #10
  br label %36

36:                                               ; preds = %35, %7, %1
  %37 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 5
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef %38, ptr noundef %39) #10
  tail call void @clk_bulk_unprepare(i32 noundef %38, ptr noundef %39) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hda_tegra_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.azx, ptr %5, i32 0, i32 21
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 2
  %14 = tail call i32 @reset_control_bulk_assert(i32 noundef %12, ptr noundef %13) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 3
  %20 = tail call i32 @clk_bulk_prepare(i32 noundef %18, ptr noundef %19) #10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %16
  %23 = tail call i32 @clk_bulk_enable(i32 noundef %18, ptr noundef %19) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @clk_bulk_unprepare(i32 noundef %18, ptr noundef %19) #10
  br label %60

26:                                               ; preds = %22
  %27 = load i16, ptr %6, align 4
  %28 = and i16 %27, 1
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %53, label %30

30:                                               ; preds = %26
  tail call fastcc void @hda_tegra_init(ptr noundef %5)
  tail call void @azx_init_chip(ptr noundef %5, i1 noundef zeroext true) #10
  %31 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  %34 = getelementptr inbounds %struct.hdac_bus, ptr %5, i32 0, i32 28
  %35 = load i16, ptr %34, align 4
  %36 = and i16 %35, 2
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = tail call i32 @snd_hdac_aligned_read(ptr noundef %33, i32 noundef 65535) #10
  br label %43

40:                                               ; preds = %30
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #10, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !15
  %42 = zext i16 %41 to i32
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i32 [ %39, %38 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i16
  %46 = and i16 %45, -256
  %47 = load i16, ptr %34, align 4
  %48 = and i16 %47, 2
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = zext i16 %46 to i32
  tail call void @snd_hdac_aligned_write(i32 noundef %51, ptr noundef %33, i32 noundef 65535) #10
  br label %59

52:                                               ; preds = %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !25
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %46) #10, !srcloc !26
  br label %59

53:                                               ; preds = %26
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #10
  %54 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 4
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.hda_tegra, ptr %5, i32 0, i32 2
  %57 = tail call i32 @reset_control_bulk_deassert(i32 noundef %55, ptr noundef %56) #10
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53, %52, %50
  br label %60

60:                                               ; preds = %59, %53, %25, %16, %10
  %61 = phi i32 [ 0, %59 ], [ %14, %10 ], [ %57, %53 ], [ %23, %25 ], [ %20, %16 ]
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_bus_enter_link_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hdac_aligned_write(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_assert(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_bulk_deassert(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2830511}
!11 = !{i64 2153538977}
!12 = !{i64 2153539208}
!13 = !{i64 2830093}
!14 = !{i64 2829673}
!15 = !{i64 2153410256}
!16 = !{i64 2153521879}
!17 = !{i64 2153522072}
!18 = !{i64 2153522541}
!19 = !{i64 2153522778}
!20 = !{i64 2153523115}
!21 = !{i64 2153523468}
!22 = !{i64 2153523805}
!23 = !{i64 2153524275}
!24 = !{i64 2153524474}
!25 = !{i64 2153409282}
!26 = !{i64 2829473}
