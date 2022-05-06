; ModuleID = '/llk/IR/drivers/mmc/core/pwrseq_simple.c_pt.bc'
source_filename = "../drivers/mmc/core/pwrseq_simple.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mmc_pwrseq_ops = type { ptr, ptr, ptr, ptr }
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
%struct.mmc_pwrseq_simple = type { %struct.mmc_pwrseq, i8, i32, i32, ptr, ptr }
%struct.mmc_pwrseq = type { ptr, ptr, %struct.list_head, ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }

@__initcall__kmod_pwrseq_simple__259_163_mmc_pwrseq_simple_driver_init6 = internal global ptr @mmc_pwrseq_simple_driver_init, section ".initcall6.init", align 4
@mmc_pwrseq_simple_driver = internal global %struct.platform_driver { ptr @mmc_pwrseq_simple_probe, ptr @mmc_pwrseq_simple_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmc_pwrseq_simple_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mmc_pwrseq_simple_driver_exit = internal global ptr @mmc_pwrseq_simple_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file260 = internal constant [50 x i8] c"pwrseq_simple.file=drivers/mmc/core/pwrseq_simple\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [29 x i8] c"pwrseq_simple.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [14 x i8] c"pwrseq_simple\00", align 1
@mmc_pwrseq_simple_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mmc-pwrseq-simple\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ext_clock\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"post-power-on-delay-ms\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"power-off-delay-us\00", align 1
@mmc_pwrseq_simple_ops = internal constant %struct.mmc_pwrseq_ops { ptr @mmc_pwrseq_simple_pre_power_on, ptr @mmc_pwrseq_simple_post_power_on, ptr @mmc_pwrseq_simple_power_off, ptr null }, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_mmc_pwrseq_simple_driver_exit, ptr @__initcall__kmod_pwrseq_simple__259_163_mmc_pwrseq_simple_driver_init6, ptr @mmc_pwrseq_simple_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmc_pwrseq_simple_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmc_pwrseq_simple_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.1) #4
  %7 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 4
  store ptr %6, ptr %7, align 4
  %8 = icmp ule ptr %6, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %6 to i32
  %10 = icmp eq ptr %6, inttoptr (i32 -2 to ptr)
  %11 = or i1 %8, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = tail call ptr @devm_gpiod_get_array(ptr noundef %2, ptr noundef nonnull @.str.2, i32 noundef 7) #4
  %14 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 5
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  switch i32 %17, label %27 [
    i32 -2, label %18
    i32 -38, label %18
  ]

18:                                               ; preds = %16, %16, %12
  %19 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 2
  %20 = tail call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef %19, i32 noundef 1) #4
  %21 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 3
  %22 = tail call i32 @device_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef %21, i32 noundef 1) #4
  %23 = getelementptr inbounds %struct.mmc_pwrseq, ptr %3, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  store ptr @mmc_pwrseq_simple_ops, ptr %3, align 4
  %24 = getelementptr inbounds %struct.mmc_pwrseq, ptr %3, i32 0, i32 3
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %25, align 8
  %26 = tail call i32 @mmc_pwrseq_register(ptr noundef nonnull %3) #4
  br label %27

27:                                               ; preds = %18, %16, %5, %1
  %28 = phi i32 [ %26, %18 ], [ -12, %1 ], [ %9, %5 ], [ %17, %16 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_pwrseq_simple_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mmc_pwrseq_unregister(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_pwrseq_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_pre_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 1
  %9 = load i8, ptr %8, align 4, !range !8
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = tail call i32 @clk_prepare(ptr noundef %5) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = tail call i32 @clk_enable(ptr noundef %5) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call void @clk_unprepare(ptr noundef %5) #4
  br label %18

18:                                               ; preds = %17, %14, %11
  store i8 1, ptr %8, align 4
  br label %19

19:                                               ; preds = %18, %7, %1
  %20 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %35, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.gpio_descs, ptr %21, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = tail call ptr @bitmap_alloc(i32 noundef %25, i32 noundef 3264) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = add i32 %25, 31
  %30 = lshr i32 %29, 3
  %31 = and i32 %30, 536870908
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %26, i8 -1, i32 %31, i1 false) #4
  %32 = getelementptr inbounds %struct.gpio_descs, ptr %21, i32 0, i32 2
  %33 = load ptr, ptr %21, align 4
  %34 = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %25, ptr noundef %32, ptr noundef %33, ptr noundef nonnull %26) #4
  tail call void @bitmap_free(ptr noundef nonnull %26) #4
  br label %35

35:                                               ; preds = %28, %23, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_post_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @bitmap_alloc(i32 noundef %9, i32 noundef 3264) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = add i32 %9, 31
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 536870908
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %10, i8 0, i32 %15, i1 false) #4
  %16 = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %9, ptr noundef %16, ptr noundef %17, ptr noundef nonnull %10) #4
  tail call void @bitmap_free(ptr noundef nonnull %10) #4
  br label %19

19:                                               ; preds = %12, %7, %1
  %20 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @msleep(i32 noundef %21) #4
  br label %24

24:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mmc_pwrseq_simple_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call ptr @bitmap_alloc(i32 noundef %9, i32 noundef 3264) #4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7
  %13 = add i32 %9, 31
  %14 = lshr i32 %13, 3
  %15 = and i32 %14, 536870908
  tail call void @llvm.memset.p0.i32(ptr nonnull align 4 %10, i8 -1, i32 %15, i1 false) #4
  %16 = getelementptr inbounds %struct.gpio_descs, ptr %5, i32 0, i32 2
  %17 = load ptr, ptr %5, align 4
  %18 = tail call i32 @gpiod_set_array_value_cansleep(i32 noundef %9, ptr noundef %16, ptr noundef %17, ptr noundef nonnull %10) #4
  tail call void @bitmap_free(ptr noundef nonnull %10) #4
  br label %19

19:                                               ; preds = %12, %7, %1
  %20 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = shl i32 %21, 1
  tail call void @usleep_range_state(i32 noundef %21, i32 noundef %24, i32 noundef 2) #4
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.mmc_pwrseq_simple, ptr %3, i32 0, i32 1
  %31 = load i8, ptr %30, align 4, !range !8
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @clk_disable(ptr noundef %27) #4
  tail call void @clk_unprepare(ptr noundef %27) #4
  store i8 0, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %29, %25
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_pwrseq_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
