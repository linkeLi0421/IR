; ModuleID = '/llk/IR/drivers/gpio/gpio-pxa.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pxa.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.pxa_gpio_id = type { i32, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pxa_gpio_chip = type { ptr, %struct.gpio_chip, ptr, ptr, i32, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.58, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.58 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa_gpio_platform_data = type { i32, ptr }
%struct.pxa_gpio_bank = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@pxa_gpio_chip = internal unnamed_addr global ptr null, align 4
@__initcall__kmod_gpio_pxa__210_749_pxa_gpio_legacy_init2 = internal global ptr @pxa_gpio_legacy_init, section ".initcall2.init", align 4
@__initcall__kmod_gpio_pxa__211_758_pxa_gpio_dt_init6 = internal global ptr @pxa_gpio_dt_init, section ".initcall6.init", align 4
@__initcall__kmod_gpio_pxa__212_816_pxa_gpio_sysinit2 = internal global ptr @pxa_gpio_sysinit, section ".initcall2.init", align 4
@pxa_last_gpio = dso_local local_unnamed_addr global i32 0, align 4
@pxa_gpio_driver = internal global %struct.platform_driver { ptr @pxa_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pxa_gpio_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @gpio_id_table, i8 0 }, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [9 x i8] c"pxa-gpio\00", align 1
@pxa_gpio_dt_ids = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa25x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa25x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa26x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa26x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa27x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa27x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,pxa3xx-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa3xx_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa93x-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa93x_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_id }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pxa1928-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pxa1928_id }, %struct.of_device_id zeroinitializer], align 4
@gpio_id_table = internal constant [9 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pxa25x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa25x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa26x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa26x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa27x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa27x_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa3xx-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa3xx_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa93x-gpio\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa93x_id to i32) }, %struct.platform_device_id { [20 x i8] c"mmp-gpio\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mmp_id to i32) }, %struct.platform_device_id { [20 x i8] c"mmp2-gpio\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @mmp2_id to i32) }, %struct.platform_device_id { [20 x i8] c"pxa1928-gpio\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @pxa1928_id to i32) }, %struct.platform_device_id zeroinitializer], align 4
@irq_base = internal unnamed_addr global i32 0, align 4
@pxa_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @pxa_irq_domain_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"gpio0\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"gpio1\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gpio_mux\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error %ld to get gpio clock\0A\00", align 1
@gpio_type = internal unnamed_addr global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"gpio-0\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"request of gpio0 irq failed: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"gpio-1\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"request of gpio1 irq failed: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"gpio-mux\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"request of gpio-mux irq failed: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to allocate IRQ numbers\0A\00", align 1
@pxa_muxed_gpio_chip = internal global %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr @pxa_ack_muxed_gpio, ptr @pxa_mask_muxed_gpio, ptr null, ptr @pxa_unmask_muxed_gpio, ptr null, ptr null, ptr null, ptr @pxa_gpio_irq_type, ptr @pxa_gpio_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"GPIO\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gpio-pxa\00", align 1
@gpio_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"\013%s() unknown irq %d\0A\00", align 1
@__func__.pxa_gpio_direct_handler = private unnamed_addr constant [24 x i8] c"pxa_gpio_direct_handler\00", align 1
@pxa25x_id = internal global %struct.pxa_gpio_id { i32 0, i32 85 }, align 4
@pxa26x_id = internal global %struct.pxa_gpio_id { i32 1, i32 90 }, align 4
@pxa27x_id = internal global %struct.pxa_gpio_id { i32 2, i32 121 }, align 4
@pxa3xx_id = internal global %struct.pxa_gpio_id { i32 3, i32 128 }, align 4
@pxa93x_id = internal global %struct.pxa_gpio_id { i32 4, i32 192 }, align 4
@mmp_id = internal global %struct.pxa_gpio_id { i32 16, i32 128 }, align 4
@mmp2_id = internal global %struct.pxa_gpio_id { i32 17, i32 192 }, align 4
@pxa1928_id = internal global %struct.pxa_gpio_id { i32 18, i32 224 }, align 4
@pxa_gpio_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @pxa_gpio_suspend, ptr @pxa_gpio_resume, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_gpio_pxa__210_749_pxa_gpio_legacy_init2, ptr @__initcall__kmod_gpio_pxa__211_758_pxa_gpio_dt_init6, ptr @__initcall__kmod_gpio_pxa__212_816_pxa_gpio_sysinit2], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pxa_irq_to_gpio(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @pxa_gpio_chip, align 4
  %4 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %2) #8
  %7 = icmp eq ptr %6, null
  %8 = load i32, ptr %2, align 4
  %9 = select i1 %7, i32 0, i32 %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %10 = icmp sgt i32 %9, 0
  %11 = sub i32 %0, %9
  %12 = select i1 %10, i32 %11, i32 %9
  ret i32 %12
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pxa_gpio_legacy_init() #2 section ".init.text" {
  %1 = load ptr, ptr @of_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_gpio_driver, ptr noundef null) #8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pxa_gpio_dt_init() #2 section ".init.text" {
  %1 = load ptr, ptr @of_root, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @pxa_gpio_driver, ptr noundef null) #8
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pxa_gpio_sysinit() #2 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @pxa_gpio_syscore_ops) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 328, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %129, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 4
  store i32 %10, ptr @irq_base, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %129, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device_id, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  switch i32 %18, label %23 [
    i32 0, label %19
    i32 1, label %19
    i32 2, label %19
    i32 3, label %19
    i32 4, label %19
    i32 16, label %19
    i32 17, label %19
    i32 18, label %19
  ]

19:                                               ; preds = %12, %12, %12, %12, %12, %12, %12, %12
  store i32 %18, ptr @gpio_type, align 4
  %20 = getelementptr inbounds %struct.pxa_gpio_id, ptr %17, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -1
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i32 [ %22, %19 ], [ -22, %12 ]
  store i32 %24, ptr @pxa_last_gpio, align 4
  %25 = getelementptr inbounds %struct.pxa_gpio_platform_data, ptr %7, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 6
  store ptr %26, ptr %27, align 4
  br label %42

28:                                               ; preds = %5
  %29 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %30 = load i32, ptr %29, align 4
  store i32 %30, ptr @gpio_type, align 4
  %31 = getelementptr inbounds %struct.pxa_gpio_id, ptr %29, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = add i32 %32, -1
  store i32 %33, ptr @pxa_last_gpio, align 4
  %34 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %2, i32 noundef -1, i32 noundef 0, i32 noundef %32, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  store i32 %34, ptr @irq_base, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #9
  %37 = load i32, ptr @irq_base, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %129, label %39

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %37, %36 ], [ %34, %28 ]
  %41 = load i32, ptr @pxa_last_gpio, align 4
  br label %42

42:                                               ; preds = %39, %23
  %43 = phi i32 [ %40, %39 ], [ %10, %23 ]
  %44 = phi i32 [ %41, %39 ], [ %24, %23 ]
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %129, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %48 = load ptr, ptr %47, align 8
  %49 = add i32 %44, 1
  %50 = tail call ptr @irq_domain_add_legacy(ptr noundef %48, i32 noundef %49, i32 noundef %43, i32 noundef 0, ptr noundef nonnull @pxa_irq_domain_ops, ptr noundef nonnull %3) #8
  %51 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 3
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %129, label %53

53:                                               ; preds = %46
  %54 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.1) #8
  %55 = tail call i32 @platform_get_irq_byname_optional(ptr noundef %0, ptr noundef nonnull @.str.2) #8
  %56 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.3) #8
  %57 = icmp sgt i32 %54, 0
  %58 = icmp slt i32 %55, 1
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %129, label %60

60:                                               ; preds = %53
  %61 = icmp slt i32 %54, 1
  %62 = icmp sgt i32 %55, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp slt i32 %56, 1
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %129, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 4
  store i32 %54, ptr %67, align 4
  %68 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 5
  store i32 %55, ptr %68, align 4
  %69 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %70 = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = ptrtoint ptr %69 to i32
  br label %129

73:                                               ; preds = %66
  %74 = tail call ptr @clk_get(ptr noundef %2, ptr noundef null) #8
  %75 = icmp ugt ptr %74, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = ptrtoint ptr %74 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef %77) #9
  br label %129

78:                                               ; preds = %73
  %79 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %74)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @clk_put(ptr noundef %74) #8
  br label %129

82:                                               ; preds = %78
  %83 = load i32, ptr @pxa_last_gpio, align 4
  %84 = add i32 %83, 1
  %85 = tail call fastcc i32 @pxa_init_gpio_chip(ptr noundef nonnull %3, i32 noundef %84, ptr noundef %69)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82
  tail call void @clk_put(ptr noundef %74) #8
  br label %129

88:                                               ; preds = %82
  %89 = load i32, ptr @pxa_last_gpio, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %114, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  br label %94

94:                                               ; preds = %109, %91
  %95 = phi i32 [ %110, %109 ], [ 0, %91 ]
  %96 = phi ptr [ %111, %109 ], [ %93, %91 ]
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr i8, ptr %97, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 0) #8, !srcloc !9
  %99 = load ptr, ptr %96, align 4
  %100 = getelementptr i8, ptr %99, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 0) #8, !srcloc !9
  %101 = load ptr, ptr %96, align 4
  %102 = getelementptr i8, ptr %101, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 -1) #8, !srcloc !9
  %103 = load i32, ptr @gpio_type, align 4
  %104 = and i32 %103, 16
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %94
  %107 = load ptr, ptr %96, align 4
  %108 = getelementptr i8, ptr %107, i32 156
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 -1) #8, !srcloc !9
  br label %109

109:                                              ; preds = %106, %94
  %110 = add i32 %95, 32
  %111 = getelementptr %struct.pxa_gpio_bank, ptr %96, i32 1
  %112 = load i32, ptr @pxa_last_gpio, align 4
  %113 = icmp sgt i32 %110, %112
  br i1 %113, label %114, label %94

114:                                              ; preds = %109, %88
  br i1 %57, label %115, label %119

115:                                              ; preds = %114
  %116 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %54, ptr noundef nonnull @pxa_gpio_direct_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull %3) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %116) #9
  br label %119

119:                                              ; preds = %118, %115, %114
  br i1 %62, label %120, label %124

120:                                              ; preds = %119
  %121 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %55, ptr noundef nonnull @pxa_gpio_direct_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %3) #8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef %121) #9
  br label %124

124:                                              ; preds = %123, %120, %119
  %125 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %56, ptr noundef nonnull @pxa_gpio_demux_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull %3) #8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10, i32 noundef %125) #9
  br label %128

128:                                              ; preds = %127, %124
  store ptr %3, ptr @pxa_gpio_chip, align 4
  br label %129

129:                                              ; preds = %128, %87, %81, %76, %71, %60, %53, %46, %42, %36, %9, %1
  %130 = phi i32 [ %72, %71 ], [ %77, %76 ], [ %79, %81 ], [ %85, %87 ], [ 0, %128 ], [ -12, %1 ], [ -22, %9 ], [ -22, %36 ], [ -22, %42 ], [ -12, %46 ], [ -22, %60 ], [ -22, %53 ]
  ret i32 %130
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname_optional(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pxa_init_gpio_chip(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = add i32 %1, 31
  %5 = sdiv i32 %4, 32
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %5, i32 32) #8
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %8, label %10, !prof !10

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 2
  store ptr null, ptr %9, align 4
  br label %51

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 4
  %12 = extractvalue { i32, i1 } %6, 0
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #8
  %14 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 2
  store ptr %13, ptr %14, align 4
  %15 = icmp eq ptr %13, null
  br i1 %15, label %51, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 2
  store ptr %17, ptr %19, align 4
  store ptr @.str.13, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 8
  store ptr @pxa_gpio_direction_input, ptr %20, align 4
  %21 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 9
  store ptr @pxa_gpio_direction_output, ptr %21, align 4
  %22 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 10
  store ptr @pxa_gpio_get, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 12
  store ptr @pxa_gpio_set, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 15
  store ptr @pxa_gpio_to_irq, ptr %24, align 4
  %25 = trunc i32 %1 to i16
  %26 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 20
  store i16 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 5
  store ptr @gpiochip_generic_request, ptr %27, align 4
  %28 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 6
  store ptr @gpiochip_generic_free, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 41
  store ptr @pxa_gpio_of_xlate, ptr %29, align 4
  %30 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %0, i32 0, i32 1, i32 40
  store i32 2, ptr %30, align 4
  %31 = icmp sgt i32 %4, 31
  br i1 %31, label %32, label %49

32:                                               ; preds = %16
  store ptr %2, ptr %13, align 4
  %33 = add i32 %1, -1
  %34 = icmp ult i32 %33, 32
  br i1 %34, label %49, label %35

35:                                               ; preds = %35, %32
  %36 = phi i32 [ %47, %35 ], [ 1, %32 ]
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr %struct.pxa_gpio_bank, ptr %37, i32 %36
  %39 = freeze i32 %36
  %40 = udiv i32 %39, 3
  %41 = shl i32 %40, 8
  %42 = getelementptr i8, ptr %2, i32 %41
  %43 = mul i32 %40, 3
  %44 = sub i32 %39, %43
  %45 = shl nuw nsw i32 %44, 2
  %46 = getelementptr i8, ptr %42, i32 %45
  store ptr %46, ptr %38, align 4
  %47 = add nuw nsw i32 %36, 1
  %48 = icmp eq i32 %47, %5
  br i1 %48, label %49, label %35

49:                                               ; preds = %35, %32, %16
  %50 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %18, ptr noundef %0, ptr noundef null, ptr noundef null) #8
  br label %51

51:                                               ; preds = %49, %10, %8
  %52 = phi i32 [ %50, %49 ], [ -12, %10 ], [ -12, %8 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direct_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef 0) #8
  br label %20

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @generic_handle_domain_irq(ptr noundef %16, i32 noundef 1) #8
  br label %20

18:                                               ; preds = %10
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.pxa_gpio_direct_handler, i32 noundef %0) #9
  br label %20

20:                                               ; preds = %18, %14, %6
  %21 = phi i32 [ 0, %18 ], [ 1, %14 ], [ 1, %6 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_demux_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 3
  %6 = load i32, ptr @pxa_last_gpio, align 4
  br label %7

7:                                                ; preds = %41, %2
  %8 = phi i32 [ %6, %2 ], [ %39, %41 ]
  %9 = phi i32 [ 0, %2 ], [ %42, %41 ]
  %10 = icmp slt i32 %8, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %4, align 4
  br label %13

13:                                               ; preds = %35, %11
  %14 = phi i32 [ %36, %35 ], [ 0, %11 ]
  %15 = phi i32 [ %37, %35 ], [ 0, %11 ]
  %16 = phi ptr [ %38, %35 ], [ %12, %11 ]
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i8, ptr %17, i32 72
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !11
  %20 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, ptr %3, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr i8, ptr %23, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !9
  %25 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef 0) #8
  %26 = icmp slt i32 %25, 32
  br i1 %26, label %27, label %35

27:                                               ; preds = %27, %13
  %28 = phi i32 [ %33, %27 ], [ %25, %13 ]
  %29 = load ptr, ptr %5, align 4
  %30 = add i32 %28, %15
  %31 = call i32 @generic_handle_domain_irq(ptr noundef %29, i32 noundef %30) #8
  %32 = add nsw i32 %28, 1
  %33 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef 32, i32 noundef %32) #8
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %27, label %35

35:                                               ; preds = %27, %13
  %36 = phi i32 [ %14, %13 ], [ 1, %27 ]
  %37 = add i32 %15, 32
  %38 = getelementptr %struct.pxa_gpio_bank, ptr %16, i32 1
  %39 = load i32, ptr @pxa_last_gpio, align 4
  %40 = icmp sgt i32 %37, %39
  br i1 %40, label %41, label %13

41:                                               ; preds = %35
  %42 = add i32 %36, %9
  %43 = icmp eq i32 %36, 0
  br i1 %43, label %44, label %7

44:                                               ; preds = %41, %7
  %45 = phi i32 [ %42, %41 ], [ %9, %7 ]
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_irq_domain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @pxa_muxed_gpio_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #8
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #8
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_ack_muxed_gpio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 1
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = sdiv i32 %5, 32
  %11 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = and i32 %5, 31
  %14 = shl nuw i32 1, %13
  %15 = getelementptr i8, ptr %12, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %14) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_mask_muxed_gpio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 1
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %5, 5
  %11 = tail call ptr @gpiochip_get_data(ptr noundef %6) #8
  %12 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = sdiv i32 %5, 32
  %15 = getelementptr %struct.pxa_gpio_bank, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = and i32 %5, 31
  %18 = shl nuw i32 1, %17
  %19 = xor i32 %18, -1
  %20 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, %19
  store i32 %22, ptr %20, align 4
  %23 = getelementptr i8, ptr %16, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !11
  %25 = and i32 %24, %19
  %26 = getelementptr i8, ptr %16, i32 60
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !11
  %28 = and i32 %27, %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %25) #8, !srcloc !9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %28) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_unmask_muxed_gpio(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 1
  %7 = tail call ptr @gpiochip_get_data(ptr noundef %6) #8
  %8 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = lshr i32 %5, 5
  %11 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10
  %12 = and i32 %5, 31
  %13 = shl nuw i32 1, %12
  %14 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr i8, ptr %17, i32 48
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #8, !srcloc !11
  %20 = load i32, ptr %14, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load ptr, ptr %11, align 4
  %24 = getelementptr i8, ptr %23, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !11
  %26 = load i32, ptr %14, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %26
  %32 = or i32 %31, %22
  %33 = getelementptr %struct.pxa_gpio_bank, ptr %9, i32 %10, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, %26
  %36 = or i32 %35, %28
  %37 = load ptr, ptr %11, align 4
  %38 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %32) #8, !srcloc !9
  %39 = load ptr, ptr %11, align 4
  %40 = getelementptr i8, ptr %39, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %36) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_irq_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %4, i32 0, i32 1
  %8 = tail call ptr @gpiochip_get_data(ptr noundef %7) #8
  %9 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = lshr i32 %6, 5
  %12 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11
  %13 = and i32 %6, 31
  %14 = shl nuw i32 1, %13
  %15 = icmp eq i32 %1, 16
  br i1 %15, label %16, label %62

16:                                               ; preds = %2
  %17 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = or i32 %20, %18
  %22 = and i32 %21, %14
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %130

24:                                               ; preds = %16
  %25 = tail call ptr @gpiochip_get_data(ptr noundef %7) #8
  %26 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = sdiv i32 %6, 32
  %29 = getelementptr %struct.pxa_gpio_bank, ptr %27, i32 %28
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !11
  %33 = load i32, ptr @gpio_type, align 4
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %57

35:                                               ; preds = %24
  %36 = getelementptr i8, ptr %30, i32 84
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #8, !srcloc !11
  %38 = shl i32 %6, 1
  %39 = and i32 %38, 30
  %40 = lshr i32 %37, %39
  %41 = and i32 %40, 3
  %42 = and i32 %32, %14
  %43 = load i32, ptr @gpio_type, align 4
  %44 = icmp ne i32 %43, 1
  %45 = icmp slt i32 %6, 86
  %46 = or i1 %45, %44
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = icmp ne i32 %41, 1
  %49 = icmp eq i32 %42, 0
  %50 = select i1 %48, i1 true, i1 %49
  %51 = zext i1 %50 to i32
  br label %59

52:                                               ; preds = %35
  %53 = icmp ne i32 %41, 0
  %54 = icmp ne i32 %42, 0
  %55 = select i1 %53, i1 true, i1 %54
  %56 = zext i1 %55 to i32
  br label %59

57:                                               ; preds = %24
  %58 = and i32 %32, %14
  br label %59

59:                                               ; preds = %57, %52, %47
  %60 = phi i32 [ %58, %57 ], [ %51, %47 ], [ %56, %52 ]
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %130

62:                                               ; preds = %59, %2
  %63 = phi i32 [ %1, %2 ], [ 3, %59 ]
  %64 = load ptr, ptr %12, align 4
  %65 = getelementptr i8, ptr %64, i32 12
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #8, !srcloc !11
  %67 = load i32, ptr @gpio_type, align 4
  %68 = icmp ne i32 %67, 1
  %69 = icmp slt i32 %6, 86
  %70 = or i1 %69, %68
  br i1 %70, label %75, label %71

71:                                               ; preds = %62
  %72 = or i32 %66, %14
  %73 = load ptr, ptr %12, align 4
  %74 = getelementptr i8, ptr %73, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %72) #8, !srcloc !9
  br label %80

75:                                               ; preds = %62
  %76 = xor i32 %14, -1
  %77 = and i32 %66, %76
  %78 = load ptr, ptr %12, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #8, !srcloc !9
  br label %80

80:                                               ; preds = %75, %71
  %81 = and i32 %63, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %80
  %84 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = or i32 %85, %14
  store i32 %86, ptr %84, align 4
  br label %92

87:                                               ; preds = %80
  %88 = xor i32 %14, -1
  %89 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, %88
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %87, %83
  %93 = and i32 %63, 2
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, %14
  store i32 %98, ptr %96, align 4
  br label %104

99:                                               ; preds = %92
  %100 = xor i32 %14, -1
  %101 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, %100
  store i32 %103, ptr %101, align 4
  br label %104

104:                                              ; preds = %99, %95
  %105 = load ptr, ptr %12, align 4
  %106 = getelementptr i8, ptr %105, i32 48
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !11
  %108 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %107, %110
  %112 = load ptr, ptr %12, align 4
  %113 = getelementptr i8, ptr %112, i32 60
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #8, !srcloc !11
  %115 = load i32, ptr %108, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 2
  %119 = load i32, ptr %118, align 4
  %120 = and i32 %119, %115
  %121 = or i32 %120, %111
  %122 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 %11, i32 3
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, %115
  %125 = or i32 %124, %117
  %126 = load ptr, ptr %12, align 4
  %127 = getelementptr i8, ptr %126, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %121) #8, !srcloc !9
  %128 = load ptr, ptr %12, align 4
  %129 = getelementptr i8, ptr %128, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 %125) #8, !srcloc !9
  br label %130

130:                                              ; preds = %104, %59, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 %6(i32 noundef %10, i32 noundef %1) #8
  br label %12

12:                                               ; preds = %8, %2
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = sdiv i32 %1, 32
  %7 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = and i32 %1, 31
  %10 = shl nuw i32 1, %9
  %11 = load i32, ptr @gpio_type, align 4
  switch i32 %11, label %12 [
    i32 17, label %18
    i32 3, label %18
  ]

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %1
  %16 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %15) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %12, %2, %2
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #8
  %20 = getelementptr i8, ptr %8, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !11
  %22 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, %1
  %25 = load i32, ptr @gpio_type, align 4
  %26 = icmp ne i32 %25, 1
  %27 = icmp slt i32 %24, 86
  %28 = or i1 %27, %26
  %29 = or i32 %21, %10
  %30 = xor i32 %10, -1
  %31 = and i32 %21, %30
  %32 = select i1 %28, i32 %31, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %32) #8, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %19) #8
  br label %33

33:                                               ; preds = %18, %12
  %34 = phi i32 [ 0, %18 ], [ %16, %12 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = sdiv i32 %1, 32
  %8 = getelementptr %struct.pxa_gpio_bank, ptr %6, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 36, i32 24
  %14 = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #8, !srcloc !9
  %15 = load i32, ptr @gpio_type, align 4
  switch i32 %15, label %16 [
    i32 17, label %22
    i32 3, label %22
  ]

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %1
  %20 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %19) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %16, %3, %3
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_lock) #8
  %24 = getelementptr i8, ptr %9, i32 12
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !11
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %1
  %29 = load i32, ptr @gpio_type, align 4
  %30 = icmp ne i32 %29, 1
  %31 = icmp slt i32 %28, 86
  %32 = or i1 %31, %30
  %33 = xor i32 %11, -1
  %34 = and i32 %25, %33
  %35 = or i32 %25, %11
  %36 = select i1 %32, i32 %35, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %36) #8, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_lock, i32 noundef %23) #8
  br label %37

37:                                               ; preds = %22, %16
  %38 = phi i32 [ 0, %22 ], [ %20, %16 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = sdiv i32 %1, 32
  %7 = getelementptr %struct.pxa_gpio_bank, ptr %5, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #8, !srcloc !11
  %10 = and i32 %1, 31
  %11 = lshr i32 %9, %10
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = sdiv i32 %1, 32
  %8 = getelementptr %struct.pxa_gpio_bank, ptr %6, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %1, 31
  %11 = shl nuw i32 1, %10
  %12 = icmp eq i32 %2, 0
  %13 = select i1 %12, i32 36, i32 24
  %14 = getelementptr i8, ptr %9, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %11) #8, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %1, ptr noundef nonnull %3) #8
  %8 = icmp eq ptr %7, null
  %9 = load i32, ptr %3, align 4
  %10 = select i1 %8, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @pxa_gpio_of_xlate(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #6 {
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr @pxa_last_gpio, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %2, align 4
  %13 = load i32, ptr %4, align 4
  br label %14

14:                                               ; preds = %10, %8, %3
  %15 = phi i32 [ -22, %3 ], [ %13, %10 ], [ %5, %8 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pxa_gpio_suspend() #0 {
  %1 = load ptr, ptr @pxa_gpio_chip, align 4
  %2 = icmp eq ptr %1, null
  %3 = load i32, ptr @pxa_last_gpio, align 4
  %4 = icmp slt i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %33, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %30, %9 ], [ %8, %6 ]
  %11 = phi i32 [ %29, %9 ], [ 0, %6 ]
  %12 = load ptr, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !11
  %14 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %10, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr i8, ptr %15, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #8, !srcloc !11
  %18 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %10, i32 0, i32 5
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !11
  %22 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %10, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %23, i32 60
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !11
  %26 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %10, i32 0, i32 7
  store i32 %25, ptr %26, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr i8, ptr %27, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 -1) #8, !srcloc !9
  %29 = add i32 %11, 32
  %30 = getelementptr %struct.pxa_gpio_bank, ptr %10, i32 1
  %31 = load i32, ptr @pxa_last_gpio, align 4
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %9

33:                                               ; preds = %9, %0
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pxa_gpio_resume() #0 {
  %1 = load ptr, ptr @pxa_gpio_chip, align 4
  %2 = icmp eq ptr %1, null
  %3 = load i32, ptr @pxa_last_gpio, align 4
  %4 = icmp slt i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %36, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.pxa_gpio_chip, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ %32, %9 ], [ 0, %6 ]
  %11 = phi ptr [ %33, %9 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %11, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr i8, ptr %14, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #8, !srcloc !9
  %16 = load i32, ptr %12, align 4
  %17 = xor i32 %16, -1
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %17) #8, !srcloc !9
  %20 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %11, i32 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #8, !srcloc !9
  %24 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %11, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %11, align 4
  %27 = getelementptr i8, ptr %26, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #8, !srcloc !9
  %28 = getelementptr inbounds %struct.pxa_gpio_bank, ptr %11, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr %11, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !9
  %32 = add i32 %10, 32
  %33 = getelementptr %struct.pxa_gpio_bank, ptr %11, i32 1
  %34 = load i32, ptr @pxa_last_gpio, align 4
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %9

36:                                               ; preds = %9, %0
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"auto-init"}
!9 = !{i64 3724515}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 3724933}
