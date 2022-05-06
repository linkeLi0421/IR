; ModuleID = '/llk/IR/drivers/bus/sunxi-rsb.c_pt.bc'
source_filename = "../drivers/bus/sunxi-rsb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sunxi_rsb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22sunxi_rsb_driver_register\22\09\09\09\09\09"
module asm "__kstrtabns_sunxi_rsb_driver_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___devm_regmap_init_sunxi_rsb:\09\09\09\09\09"
module asm "\09.asciz \09\22__devm_regmap_init_sunxi_rsb\22\09\09\09\09\09"
module asm "__kstrtabns___devm_regmap_init_sunxi_rsb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type {}
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sunxi_rsb_addr_map = type { i16, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.sunxi_rsb_ctx = type { ptr, i32 }
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
%struct.sunxi_rsb_driver = type { %struct.device_driver, ptr, ptr }
%struct.sunxi_rsb_device = type { %struct.device, ptr, i32, i8, i16 }
%struct.sunxi_rsb = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.mutex, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@sunxi_rsb_bus = internal global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_device_match, ptr @of_device_uevent_modalias, ptr @sunxi_rsb_device_probe, ptr null, ptr @sunxi_rsb_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, align 4
@__kstrtab_sunxi_rsb_driver_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_sunxi_rsb_driver_register = external dso_local constant [0 x i8], align 1
@__ksymtab_sunxi_rsb_driver_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sunxi_rsb_driver_register to i32), ptr @__kstrtab_sunxi_rsb_driver_register, ptr @__kstrtabns_sunxi_rsb_driver_register }, section "___ksymtab_gpl+sunxi_rsb_driver_register", align 4
@regmap_sunxi_rsb = internal global %struct.regmap_bus { i8 0, ptr null, ptr null, ptr null, ptr @regmap_sunxi_rsb_reg_write, ptr null, ptr null, ptr @regmap_sunxi_rsb_reg_read, ptr @regmap_sunxi_rsb_free_ctx, ptr null, i8 0, i32 3, i32 3, i32 0, i32 0, i8 0 }, align 4
@__kstrtab___devm_regmap_init_sunxi_rsb = external dso_local constant [0 x i8], align 1
@__kstrtabns___devm_regmap_init_sunxi_rsb = external dso_local constant [0 x i8], align 1
@__ksymtab___devm_regmap_init_sunxi_rsb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__devm_regmap_init_sunxi_rsb to i32), ptr @__kstrtab___devm_regmap_init_sunxi_rsb, ptr @__kstrtabns___devm_regmap_init_sunxi_rsb }, section "___ksymtab_gpl+__devm_regmap_init_sunxi_rsb", align 4
@__initcall__kmod_sunxi_rsb__171_860_sunxi_rsb_init6 = internal global ptr @sunxi_rsb_init, section ".initcall6.init", align 4
@sunxi_rsb_driver = internal global %struct.platform_driver { ptr @sunxi_rsb_probe, ptr @sunxi_rsb_remove, ptr @sunxi_rsb_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sunxi_rsb_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_rsb_exit = internal global ptr @sunxi_rsb_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author172 = internal constant [46 x i8] c"sunxi_rsb.author=Chen-Yu Tsai <wens@csie.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [75 x i8] c"sunxi_rsb.description=Allwinner sunXi Reduced Serial Bus controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [37 x i8] c"sunxi_rsb.file=drivers/bus/sunxi-rsb\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [25 x i8] c"sunxi_rsb.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sunxi-rsb\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid access width: %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\013failed to register sunxi sunxi_rsb bus: %d\0A\00", align 1
@sunxi_rsb_of_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-rsb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@sunxi_rsb_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_suspend, ptr @sunxi_rsb_resume, ptr @sunxi_rsb_runtime_suspend, ptr @sunxi_rsb_runtime_resume, ptr null }, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"clock-frequency (%u Hz) is too high (max = 20MHz)\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to retrieve clk: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to retrieve reset controller: %d\0A\00", align 1
@sunxi_rsb_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"&rsb->lock\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"can't register interrupt handler irq %d: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Initialize device mode failed: %d\0A\00", align 1
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"failed to enable clk: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to deassert reset line: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"RSB running at %lu Hz\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%pOF: invalid 'reg' property: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"%pOF: unknown hardware device address\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"%pOF: set runtime address failed: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"failed to add child device %pOF: %ld\0A\00", align 1
@sunxi_rsb_addr_maps = internal unnamed_addr constant [3 x %struct.sunxi_rsb_addr_map] [%struct.sunxi_rsb_addr_map { i16 931, i8 45 }, %struct.sunxi_rsb_addr_map { i16 1861, i8 58 }, %struct.sunxi_rsb_addr_map { i16 3721, i8 78 }], align 2
@.str.19 = private unnamed_addr constant [6 x i8] c"%s-%x\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"Can't add %s, status %d\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__exitcall_sunxi_rsb_exit, ptr @__initcall__kmod_sunxi_rsb__171_860_sunxi_rsb_init6, ptr @__ksymtab___devm_regmap_init_sunxi_rsb, ptr @__ksymtab_sunxi_rsb_driver_register, ptr @sunxi_rsb_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_rsb_driver_register(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1
  store ptr @sunxi_rsb_bus, ptr %2, align 4
  %3 = tail call i32 @driver_register(ptr noundef %0) #7
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__devm_regmap_init_sunxi_rsb(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.regmap_config, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %18 [
    i32 8, label %7
    i32 16, label %7
    i32 32, label %7
  ]

7:                                                ; preds = %4, %4, %4
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  store ptr %0, ptr %9, align 8
  %12 = load i32, ptr %5, align 4
  %13 = sdiv i32 %12, 8
  %14 = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %9, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @__devm_regmap_init(ptr noundef %0, ptr noundef nonnull @regmap_sunxi_rsb, ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef %3) #7
  br label %18

18:                                               ; preds = %16, %11, %7, %4
  %19 = phi ptr [ %17, %16 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %7 ], [ inttoptr (i32 -22 to ptr), %4 ]
  ret ptr %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_init() #3 section ".init.text" {
  %1 = tail call i32 @bus_register(ptr noundef nonnull @sunxi_rsb_bus) #7
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %1) #9
  br label %7

5:                                                ; preds = %0
  %6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_rsb_driver, ptr noundef null) #7
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ %1, %3 ], [ %6, %5 ]
  ret i32 %8
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_rsb_exit() #3 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_rsb_driver) #7
  tail call void @bus_unregister(ptr noundef nonnull @sunxi_rsb_bus) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_device_match(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.device_driver, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @of_match_device(ptr noundef %4, ptr noundef %0) #7
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_uevent_modalias(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_device_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_rsb_driver, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %29, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = tail call i32 @of_irq_get(ptr noundef nonnull %13, i32 noundef 0) #7
  %17 = icmp eq i32 %16, -517
  br i1 %17, label %29, label %18

18:                                               ; preds = %15, %11
  %19 = phi i32 [ %16, %15 ], [ -2, %11 ]
  %20 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  store i32 %20, ptr %8, align 4
  br label %21

21:                                               ; preds = %18, %7
  %22 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @of_clk_set_defaults(ptr noundef %23, i1 noundef zeroext false) #7
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 4
  %28 = tail call i32 %27(ptr noundef %0) #7
  br label %29

29:                                               ; preds = %26, %21, %15, %1
  %30 = phi i32 [ %28, %26 ], [ -19, %1 ], [ %24, %21 ], [ -517, %15 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_rsb_device_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_rsb_driver, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_set_defaults(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_sunxi_rsb_reg_write(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %4, i32 0, i32 3
  %8 = load i8, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  switch i32 %10, label %13 [
    i32 1, label %15
    i32 2, label %11
    i32 4, label %12
  ]

11:                                               ; preds = %3
  br label %15

12:                                               ; preds = %3
  br label %15

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %10) #9
  br label %46

15:                                               ; preds = %12, %11, %3
  %16 = phi i32 [ 99, %12 ], [ 89, %11 ], [ 78, %3 ]
  %17 = load ptr, ptr %6, align 4
  %18 = tail call i32 @__pm_runtime_resume(ptr noundef %17, i32 noundef 4) #7
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %21) #7, !srcloc !9
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %21, ptr %21, i32 0, i32 -1, ptr elementtype(i32) %21) #7, !srcloc !10
  %23 = extractvalue { i32, i32, i32 } %22, 0
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %20
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  br label %46

26:                                               ; preds = %15
  %27 = getelementptr inbounds %struct.sunxi_rsb, ptr %6, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %27) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %28 = and i32 %1, 255
  %29 = getelementptr inbounds %struct.sunxi_rsb, ptr %6, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %28) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %32 = zext i8 %8 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = load ptr, ptr %29, align 4
  %35 = getelementptr i8, ptr %34, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %36 = load ptr, ptr %29, align 4
  %37 = getelementptr i8, ptr %36, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %2) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr i8, ptr %38, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %16) #7, !srcloc !13
  %40 = tail call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %6) #7
  tail call void @mutex_unlock(ptr noundef %27) #7
  %41 = load ptr, ptr %6, align 4
  %42 = tail call i64 @ktime_get_mono_fast_ns() #7
  %43 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 11, i32 22
  store volatile i64 %42, ptr %43, align 8
  %44 = load ptr, ptr %6, align 4
  %45 = tail call i32 @__pm_runtime_suspend(ptr noundef %44, i32 noundef 13) #7
  br label %46

46:                                               ; preds = %26, %25, %20, %13
  %47 = phi i32 [ -22, %13 ], [ %40, %26 ], [ %18, %20 ], [ %18, %25 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regmap_sunxi_rsb_reg_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = icmp ugt i32 %1, 255
  br i1 %4, label %57, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %6, i32 0, i32 3
  %10 = load i8, ptr %9, align 8
  %11 = getelementptr inbounds %struct.sunxi_rsb_ctx, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq ptr %2, null
  br i1 %13, label %57, label %14

14:                                               ; preds = %5
  switch i32 %12, label %17 [
    i32 1, label %19
    i32 2, label %15
    i32 4, label %16
  ]

15:                                               ; preds = %14
  br label %19

16:                                               ; preds = %14
  br label %19

17:                                               ; preds = %14
  %18 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.1, i32 noundef %12) #9
  br label %57

19:                                               ; preds = %16, %15, %14
  %20 = phi i32 [ 166, %16 ], [ 156, %15 ], [ 139, %14 ]
  %21 = load ptr, ptr %8, align 4
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #7
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %25) #7, !srcloc !9
  %26 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %25, ptr %25, i32 0, i32 -1, ptr elementtype(i32) %25) #7, !srcloc !10
  %27 = extractvalue { i32, i32, i32 } %26, 0
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %24
  tail call void asm sideeffect "dmb ish", "~{memory}"() #7, !srcloc !11
  br label %57

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.sunxi_rsb, ptr %8, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %31) #7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %32 = getelementptr inbounds %struct.sunxi_rsb, ptr %8, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %1) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %35 = zext i8 %10 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %20) #7, !srcloc !13
  %41 = tail call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %8) #7
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load ptr, ptr %32, align 4
  %45 = getelementptr i8, ptr %44, i32 28
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %47 = mul nsw i32 %12, -8
  %48 = add nsw i32 %47, 32
  %49 = lshr i32 -1, %48
  %50 = and i32 %46, %49
  store i32 %50, ptr %2, align 4
  br label %51

51:                                               ; preds = %43, %30
  tail call void @mutex_unlock(ptr noundef %31) #7
  %52 = load ptr, ptr %8, align 4
  %53 = tail call i64 @ktime_get_mono_fast_ns() #7
  %54 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 11, i32 22
  store volatile i64 %53, ptr %54, align 8
  %55 = load ptr, ptr %8, align 4
  %56 = tail call i32 @__pm_runtime_suspend(ptr noundef %55, i32 noundef 13) #7
  br label %57

57:                                               ; preds = %51, %29, %24, %17, %5, %3
  %58 = phi i32 [ -22, %3 ], [ -22, %17 ], [ %41, %51 ], [ -22, %5 ], [ %22, %24 ], [ %22, %29 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regmap_sunxi_rsb_free_ctx(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !22
  %5 = and i32 %4, 128
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 4
  store i32 0, ptr %8, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !23
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 7) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %11 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 130) #7, !srcloc !13
  %12 = tail call i32 @wait_for_completion_io_timeout(ptr noundef %8, i32 noundef 10) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %15 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 64) #7, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !26
  tail call void @arm_heavy_mb() #7
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !27
  %19 = load ptr, ptr %2, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !13
  br label %36

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = and i32 %23, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = and i32 %23, 65536
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = and i32 %23, 3840
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %26
  br label %36

36:                                               ; preds = %35, %32, %29, %21, %14, %1
  %37 = phi i32 [ 0, %35 ], [ -110, %14 ], [ -16, %1 ], [ -16, %21 ], [ -22, %29 ], [ -5, %32 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_io_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 3000000, ptr %3, align 4
  %7 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  %8 = load i32, ptr %3, align 4
  %9 = icmp ugt i32 %8, 20000000
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %8) #9
  br label %171

11:                                               ; preds = %1
  %12 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 60, i32 noundef 3520) #7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %171, label %14

14:                                               ; preds = %11
  store ptr %4, ptr %12, align 4
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 7
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %17, align 8
  %18 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %19 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = ptrtoint ptr %19 to i32
  br label %171

24:                                               ; preds = %14
  %25 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #7
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %171, label %27

27:                                               ; preds = %24
  %28 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef null) #7
  %29 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 2
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %32) #9
  br label %171

33:                                               ; preds = %27
  %34 = call ptr @__devm_reset_control_get(ptr noundef %4, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %35 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 3
  store ptr %34, ptr %35, align 4
  %36 = icmp ugt ptr %34, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = ptrtoint ptr %34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %38) #9
  br label %171

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 4
  store i32 0, ptr %40, align 4
  %41 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 4, i32 1
  call void @__init_swait_queue_head(ptr noundef %41, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #7
  %42 = getelementptr inbounds %struct.sunxi_rsb, ptr %12, i32 0, i32 5
  call void @__mutex_init(ptr noundef %42, ptr noundef nonnull @.str.7, ptr noundef nonnull @sunxi_rsb_probe.__key) #7
  %43 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %25, ptr noundef nonnull @sunxi_rsb_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %12) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %25, i32 noundef %43) #9
  br label %171

46:                                               ; preds = %39
  %47 = call fastcc i32 @sunxi_rsb_hw_init(ptr noundef nonnull %12)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %171

49:                                               ; preds = %46
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  call void @arm_heavy_mb() #7
  %50 = load ptr, ptr %20, align 4
  %51 = getelementptr i8, ptr %50, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 -2139341312) #7, !srcloc !13
  %52 = call i64 @ktime_get() #7
  %53 = add i64 %52, 250000000
  %54 = load ptr, ptr %20, align 4
  %55 = getelementptr i8, ptr %54, i32 40
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #7, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %70, label %58

58:                                               ; preds = %65, %49
  %59 = call i64 @ktime_get() #7
  %60 = icmp sgt i64 %59, %53
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load ptr, ptr %20, align 4
  %63 = getelementptr i8, ptr %62, i32 40
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #7, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !30
  br label %70

65:                                               ; preds = %58
  call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #7
  %66 = load ptr, ptr %20, align 4
  %67 = getelementptr i8, ptr %66, i32 40
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #7, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %69 = icmp sgt i32 %68, -1
  br i1 %69, label %70, label %58

70:                                               ; preds = %65, %61, %49
  %71 = phi i32 [ %64, %61 ], [ %56, %49 ], [ %68, %65 ]
  %72 = icmp slt i32 %71, 0
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !31
  call void @arm_heavy_mb() #7
  %73 = load ptr, ptr %20, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #7, !srcloc !20
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !32
  %76 = load ptr, ptr %20, align 4
  %77 = getelementptr i8, ptr %76, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %75) #7, !srcloc !13
  br i1 %72, label %78, label %79

78:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef -110) #9
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %81 = load i16, ptr %80, align 8
  %82 = or i16 %81, 256
  store i16 %82, ptr %80, align 8
  %83 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #7
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %4, i32 noundef 1000) #7
  call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext true) #7
  call void @pm_runtime_enable(ptr noundef %4) #7
  %84 = load ptr, ptr %12, align 4
  %85 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 25
  %86 = load ptr, ptr %85, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store i32 0, ptr %2, align 4, !annotation !33
  %87 = icmp eq ptr %86, null
  br i1 %87, label %170, label %88

88:                                               ; preds = %79
  %89 = call ptr @of_get_next_available_child(ptr noundef nonnull %86, ptr noundef null) #7
  %90 = icmp eq ptr %89, null
  br i1 %90, label %121, label %91

91:                                               ; preds = %118, %88
  %92 = phi ptr [ %119, %118 ], [ %89, %88 ]
  %93 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %92, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %94 = icmp sgt i32 %93, -1
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.15, ptr noundef nonnull %92, i32 noundef %93) #9
  br label %118

96:                                               ; preds = %91
  %97 = load i32, ptr %2, align 4
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %101 [
    i16 931, label %102
    i16 1861, label %99
    i16 3721, label %100
  ]

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  br label %102

101:                                              ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.16, ptr noundef nonnull %92) #9
  br label %118

102:                                              ; preds = %100, %99, %96
  %103 = phi i32 [ 0, %96 ], [ 1, %99 ], [ 2, %100 ]
  %104 = getelementptr [3 x %struct.sunxi_rsb_addr_map], ptr @sunxi_rsb_addr_maps, i32 0, i32 %103, i32 1
  %105 = load i8, ptr %104, align 2
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !34
  call void @arm_heavy_mb() #7
  %106 = load ptr, ptr %20, align 4
  %107 = getelementptr i8, ptr %106, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 232) #7, !srcloc !13
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !35
  call void @arm_heavy_mb() #7
  %108 = zext i8 %105 to i32
  %109 = shl nuw nsw i32 %108, 16
  %110 = load i32, ptr %2, align 4
  %111 = and i32 %110, 65535
  %112 = or i32 %111, %109
  %113 = load ptr, ptr %20, align 4
  %114 = getelementptr i8, ptr %113, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %112) #7, !srcloc !13
  %115 = call fastcc i32 @_sunxi_rsb_run_xfer(ptr noundef nonnull %12) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %102
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %84, ptr noundef nonnull @.str.17, ptr noundef nonnull %92, i32 noundef %115) #9
  br label %118

118:                                              ; preds = %117, %102, %101, %95
  %119 = call ptr @of_get_next_available_child(ptr noundef nonnull %86, ptr noundef nonnull %92) #7
  %120 = icmp eq ptr %119, null
  br i1 %120, label %121, label %91

121:                                              ; preds = %118, %88
  %122 = call ptr @of_get_next_available_child(ptr noundef nonnull %86, ptr noundef null) #7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %170, label %124

124:                                              ; preds = %167, %121
  %125 = phi ptr [ %168, %167 ], [ %122, %121 ]
  %126 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %125, ptr noundef nonnull @.str.14, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #7
  %127 = icmp sgt i32 %126, -1
  br i1 %127, label %128, label %167

128:                                              ; preds = %124
  %129 = load i32, ptr %2, align 4
  %130 = trunc i32 %129 to i16
  switch i16 %130, label %167 [
    i16 931, label %133
    i16 1861, label %131
    i16 3721, label %132
  ]

131:                                              ; preds = %128
  br label %133

132:                                              ; preds = %128
  br label %133

133:                                              ; preds = %132, %131, %128
  %134 = phi i32 [ 0, %128 ], [ 1, %131 ], [ 2, %132 ]
  %135 = getelementptr [3 x %struct.sunxi_rsb_addr_map], ptr @sunxi_rsb_addr_maps, i32 0, i32 %134, i32 1
  %136 = load i8, ptr %135, align 2
  %137 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %138 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3520, i32 noundef 488) #8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %164, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %138, i32 0, i32 1
  store ptr %12, ptr %141, align 8
  %142 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %138, i32 0, i32 4
  store i16 %130, ptr %142, align 2
  %143 = getelementptr inbounds %struct.sunxi_rsb_device, ptr %138, i32 0, i32 3
  store i8 %136, ptr %143, align 8
  %144 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 5
  store ptr @sunxi_rsb_bus, ptr %144, align 4
  %145 = load ptr, ptr %12, align 4
  %146 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 1
  store ptr %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 25
  store ptr %125, ptr %147, align 8
  %148 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 33
  store ptr @sunxi_rsb_dev_release, ptr %148, align 4
  %149 = and i32 %129, 65535
  %150 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %138, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str, i32 noundef %149) #7
  %151 = call i32 @device_register(ptr noundef nonnull %138) #7
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %140
  %154 = getelementptr inbounds %struct.device, ptr %138, i32 0, i32 3
  %155 = load ptr, ptr %154, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = load ptr, ptr %138, align 8
  br label %159

159:                                              ; preds = %157, %153
  %160 = phi ptr [ %158, %157 ], [ %155, %153 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %138, ptr noundef nonnull @.str.20, ptr noundef %160, i32 noundef %151) #9
  br label %161

161:                                              ; preds = %159, %140
  call void @put_device(ptr noundef nonnull %138) #7
  %162 = inttoptr i32 %151 to ptr
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  br i1 %163, label %164, label %167

164:                                              ; preds = %161, %133
  %165 = phi ptr [ %162, %161 ], [ inttoptr (i32 -12 to ptr), %133 ]
  %166 = ptrtoint ptr %165 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.18, ptr noundef nonnull %125, i32 noundef %166) #9
  br label %167

167:                                              ; preds = %164, %161, %128, %124
  %168 = call ptr @of_get_next_available_child(ptr noundef nonnull %86, ptr noundef nonnull %125) #7
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %124

170:                                              ; preds = %167, %121, %79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  br label %171

171:                                              ; preds = %170, %46, %45, %37, %31, %24, %22, %11, %10
  %172 = phi i32 [ -22, %10 ], [ %23, %22 ], [ %32, %31 ], [ %38, %37 ], [ %43, %45 ], [ 0, %170 ], [ -12, %11 ], [ %25, %24 ], [ %47, %46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @sunxi_rsb_remove_devices) #7
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #7
  %7 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @reset_control_assert(ptr noundef %8) #7
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, i32 18
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #7
  tail call void @clk_unprepare(ptr noundef %16) #7
  br label %17

17:                                               ; preds = %14, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_rsb_shutdown(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #7
  %5 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @reset_control_assert(ptr noundef %6) #7
  %8 = load ptr, ptr %3, align 4
  %9 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 11, i32 18
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  tail call void @clk_unprepare(ptr noundef %14) #7
  br label %15

15:                                               ; preds = %12, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !36
  %7 = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 6
  store i32 %6, ptr %7, align 4
  %8 = and i32 %6, 7
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !37
  tail call void @arm_heavy_mb() #7
  %9 = load ptr, ptr %3, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #7, !srcloc !13
  %11 = getelementptr inbounds %struct.sunxi_rsb, ptr %1, i32 0, i32 4
  tail call void @complete(ptr noundef %11) #7
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_rsb_hw_init(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @clk_prepare(ptr noundef %4) #7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call i32 @clk_enable(ptr noundef %4) #7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %4) #7
  br label %11

11:                                               ; preds = %10, %1
  %12 = phi i32 [ %8, %10 ], [ %5, %1 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11, i32 noundef %12) #9
  br label %61

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @reset_control_deassert(ptr noundef %15) #7
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12, i32 noundef %16) #9
  %19 = load ptr, ptr %3, align 4
  tail call void @clk_disable(ptr noundef %19) #7
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %61

20:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !38
  tail call void @arm_heavy_mb() #7
  %21 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 1) #7, !srcloc !13
  %23 = tail call i64 @ktime_get() #7
  %24 = add i64 %23, 100000000
  %25 = load ptr, ptr %21, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %35, %20
  %30 = tail call i64 @ktime_get() #7
  %31 = icmp sgt i64 %30, %24
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load ptr, ptr %21, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !40
  br label %40

35:                                               ; preds = %29
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #7
  %36 = load ptr, ptr %21, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #7, !srcloc !20
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !39
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %29

40:                                               ; preds = %35, %32, %20
  %41 = load ptr, ptr %3, align 4
  %42 = tail call i32 @clk_get_rate(ptr noundef %41) #7
  %43 = getelementptr inbounds %struct.sunxi_rsb, ptr %0, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = udiv i32 %42, %44
  %46 = lshr i32 %45, 1
  %47 = tail call i32 @llvm.umin.i32(i32 %46, i32 256)
  %48 = icmp ugt i32 %45, 1
  %49 = select i1 %48, i32 %47, i32 1
  %50 = icmp ugt i32 %49, 1
  %51 = udiv i32 %42, %49
  %52 = lshr i32 %51, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.13, i32 noundef %52) #9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !41
  tail call void @arm_heavy_mb() #7
  %53 = shl nuw nsw i32 %49, 7
  %54 = and i32 %53, 1792
  %55 = select i1 %50, i32 %54, i32 256
  %56 = add nuw nsw i32 %49, 255
  %57 = and i32 %56, 255
  %58 = or i32 %55, %57
  %59 = load ptr, ptr %21, align 4
  %60 = getelementptr i8, ptr %59, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #7, !srcloc !13
  br label %61

61:                                               ; preds = %40, %18, %11
  %62 = phi i32 [ %12, %11 ], [ %16, %18 ], [ 0, %40 ]
  ret i32 %62
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_rsb_dev_release(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_remove_devices(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @sunxi_rsb_bus
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @device_unregister(ptr noundef %0) #7
  br label %7

7:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @reset_control_assert(ptr noundef %5) #7
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 11, i32 18
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  tail call void @clk_unprepare(ptr noundef %13) #7
  br label %14

14:                                               ; preds = %11, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @sunxi_rsb_hw_init(ptr noundef %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_runtime_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_rsb_runtime_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.sunxi_rsb, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = phi i32 [ %6, %1 ], [ %9, %11 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!8 = !{i64 2147961787}
!9 = !{i64 460097, i64 2147950068, i64 2147950094, i64 2147950141, i64 2147950163, i64 2147950191, i64 2147950211}
!10 = !{i64 446666, i64 446691, i64 446713, i64 446729, i64 446741, i64 446761, i64 446785, i64 446801, i64 446813}
!11 = !{i64 2147961913}
!12 = !{i64 2151920655}
!13 = !{i64 3745562}
!14 = !{i64 2151921026}
!15 = !{i64 2151921392}
!16 = !{i64 2151921711}
!17 = !{i64 2151917934}
!18 = !{i64 2151918305}
!19 = !{i64 2151918670}
!20 = !{i64 3745980}
!21 = !{i64 2151919134}
!22 = !{i64 2151910308}
!23 = !{i64 2151911535}
!24 = !{i64 2151912235}
!25 = !{i64 2151913274}
!26 = !{i64 2151914138}
!27 = !{i64 2151914603}
!28 = !{i64 2151924805}
!29 = !{i64 2151926586}
!30 = !{i64 2151926917}
!31 = !{i64 2151927698}
!32 = !{i64 2151928163}
!33 = !{!"auto-init"}
!34 = !{i64 2151930900}
!35 = !{i64 2151931317}
!36 = !{i64 2151923872}
!37 = !{i64 2151924308}
!38 = !{i64 2151935036}
!39 = !{i64 2151936731}
!40 = !{i64 2151937059}
!41 = !{i64 2151937968}
