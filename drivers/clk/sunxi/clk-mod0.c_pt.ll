; ModuleID = '/llk/IR/drivers/clk/sunxi/clk-mod0.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-mod0.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmc_phase = type { %struct.clk_hw, i8, ptr, ptr }

@__of_table_sun4i_a10_mod0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_mod0_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mod0__166_117_sun4i_a10_mod0_clk_driver_init6 = internal global ptr @sun4i_a10_mod0_clk_driver_init, section ".initcall6.init", align 4
@__of_table_sun9i_a80_mod0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_mod0_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_mbus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-mbus-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_mbus_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_mmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mmc-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_mmc_setup }, section "__clk_of_table", align 4
@__of_table_sun9i_a80_mmc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_mmc_setup }, section "__clk_of_table", align 4
@sun4i_a10_mod0_data = internal constant %struct.factors_data { i32 31, i32 24, i32 3, ptr @sun4i_a10_mod0_config, ptr @sun4i_a10_get_mod0_factors, ptr null, ptr null }, align 4
@sun4i_a10_mod0_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun4i_a10_mod0_config = internal constant %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 16, i8 2, i8 0 }, align 1
@sun4i_a10_mod0_clk_driver = internal global %struct.platform_driver { ptr @sun4i_a10_mod0_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_a10_mod0_clk_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [19 x i8] c"sun4i-a10-mod0-clk\00", align 1
@sun4i_a10_mod0_clk_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mod0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"\013Could not get registers for mod0-clk: %pOFn\0A\00", align 1
@sun9i_a80_mod0_data = internal constant %struct.factors_data { i32 31, i32 24, i32 15, ptr @sun4i_a10_mod0_config, ptr @sun4i_a10_get_mod0_factors, ptr null, ptr null }, section ".init.rodata", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"<no-node>\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"\013Could not get registers for a13-mbus-clk\0A\00", align 1
@sun5i_a13_mbus_lock = internal global %struct.spinlock zeroinitializer, align 4
@sun4i_a10_mmc_lock = internal global %struct.spinlock zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"\013Couldn't map the %pOFn clock registers\0A\00", align 1
@mmc_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmc_get_phase, ptr @mmc_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@sun9i_a80_mmc_lock = internal global %struct.spinlock zeroinitializer, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__initcall__kmod_clk_mod0__166_117_sun4i_a10_mod0_clk_driver_init6, ptr @__of_table_sun4i_a10_mmc, ptr @__of_table_sun4i_a10_mod0, ptr @__of_table_sun5i_a13_mbus, ptr @__of_table_sun9i_a80_mmc, ptr @__of_table_sun9i_a80_mod0], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_mod0_of_clk_init_driver(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %2) #9
  tail call fastcc void @sun4i_a10_mod0_setup(ptr noundef %0) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun4i_a10_mod0_clk_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_a10_mod0_clk_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_mod0_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi ptr [ %5, %3 ], [ @.str.2, %1 ]
  %8 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %7) #9
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %0) #11
  br label %14

12:                                               ; preds = %6
  %13 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun9i_a80_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef %8) #9
  br label %14

14:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun5i_a13_mbus_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %8

6:                                                ; preds = %1
  %7 = tail call ptr @sunxi_factors_register_critical(ptr noundef %0, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun5i_a13_mbus_lock, ptr noundef nonnull %2) #9
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun4i_a10_mmc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_mmc_setup(ptr noundef %0, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mmc_lock) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun9i_a80_mmc_setup(ptr noundef %0) #0 section ".init.text" {
  tail call fastcc void @sunxi_mmc_setup(ptr noundef %0, ptr noundef nonnull @sun9i_a80_mod0_data, ptr noundef nonnull @sun9i_a80_mmc_lock) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sun4i_a10_mod0_setup(ptr noundef %0) unnamed_addr #0 section ".init.text" {
  %2 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef nonnull %2) #9
  br label %6

6:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun4i_a10_get_mod0_factors(ptr nocapture noundef %0) #3 {
  %2 = load i32, ptr %0, align 4
  %3 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %6 = add i32 %4, -1
  %7 = add i32 %6, %5
  %8 = udiv i32 %7, %5
  %9 = and i32 %8, 255
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = icmp ult i32 %9, 32
  br i1 %12, label %16, label %13

13:                                               ; preds = %11
  %14 = icmp ult i32 %9, 64
  %15 = select i1 %14, i8 2, i8 3
  br label %16

16:                                               ; preds = %13, %11, %1
  %17 = phi i8 [ 0, %1 ], [ 1, %11 ], [ %15, %13 ]
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 1, %18
  %20 = add nuw nsw i32 %19, %9
  %21 = trunc i32 %20 to i16
  %22 = add nsw i16 %21, -1
  %23 = trunc i32 %19 to i16
  %24 = udiv i16 %22, %23
  %25 = lshr i32 %4, %18
  %26 = and i16 %24, 255
  %27 = zext i16 %26 to i32
  %28 = udiv i32 %25, %27
  store i32 %28, ptr %0, align 4
  %29 = trunc i16 %24 to i8
  %30 = add i8 %29, -1
  %31 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 5
  store i8 %30, ptr %31, align 1
  %32 = getelementptr inbounds %struct.factors_request, ptr %0, i32 0, i32 6
  store i8 %17, ptr %32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun4i_a10_mod0_clk_probe(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = ptrtoint ptr %6 to i32
  br label %12

10:                                               ; preds = %5
  %11 = tail call ptr @sunxi_factors_register(ptr noundef nonnull %3, ptr noundef nonnull @sun4i_a10_mod0_data, ptr noundef nonnull @sun4i_a10_mod0_lock, ptr noundef %6) #9
  br label %12

12:                                               ; preds = %10, %8, %1
  %13 = phi i32 [ %9, %8 ], [ 0, %10 ], [ -19, %1 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register_critical(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_setup(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca ptr, align 4
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %6 = icmp eq ptr %0, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.device_node, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ @.str.2, %3 ]
  %12 = tail call ptr @of_io_request_and_map(ptr noundef %0, i32 noundef 0, ptr noundef %11) #9
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %0) #11
  br label %68

16:                                               ; preds = %10
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 8) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 12) #12
  store ptr %22, ptr %18, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %67, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.clk_onecell_data, ptr %18, i32 0, i32 1
  store i32 3, ptr %25, align 4
  %26 = tail call ptr @sunxi_factors_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %12) #9
  store ptr %26, ptr %22, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @__clk_get_name(ptr noundef nonnull %26) #9
  store ptr %29, ptr %4, align 4
  %30 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %31 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  %32 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 4
  %33 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  %34 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  br label %35

35:                                               ; preds = %60, %28
  %36 = phi ptr [ %22, %28 ], [ %61, %60 ]
  %37 = phi i32 [ 1, %28 ], [ %62, %60 ]
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr @mmc_clk_ops, ptr %30, align 4
  store ptr %4, ptr %31, align 4
  store ptr null, ptr %32, align 4
  store i8 1, ptr %33, align 4
  store i32 0, ptr %34, align 4
  %38 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %39 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3264, i32 noundef 24) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %60, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.clk_hw, ptr %39, i32 0, i32 2
  store ptr %5, ptr %42, align 8
  %43 = getelementptr inbounds %struct.mmc_phase, ptr %39, i32 0, i32 2
  store ptr %12, ptr %43, align 8
  %44 = getelementptr inbounds %struct.mmc_phase, ptr %39, i32 0, i32 3
  store ptr %2, ptr %44, align 4
  %45 = icmp eq i32 %37, 1
  %46 = select i1 %45, i8 8, i8 20
  %47 = getelementptr inbounds %struct.mmc_phase, ptr %39, i32 0, i32 1
  store i8 %46, ptr %47, align 4
  %48 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %5, i32 noundef 1, i32 noundef %37) #9
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load ptr, ptr %0, align 4
  store ptr %51, ptr %5, align 4
  br label %52

52:                                               ; preds = %50, %41
  %53 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %39) #9
  %54 = getelementptr ptr, ptr %36, i32 %37
  store ptr %53, ptr %54, align 4
  %55 = load ptr, ptr %18, align 8
  %56 = getelementptr ptr, ptr %55, i32 %37
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  call void @kfree(ptr noundef nonnull %39) #9
  br label %60

60:                                               ; preds = %59, %52, %35
  %61 = phi ptr [ %55, %52 ], [ %36, %35 ], [ %55, %59 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #9
  %62 = add nuw nsw i32 %37, 1
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %35

64:                                               ; preds = %60
  %65 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %18) #9
  br label %68

66:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #9
  br label %67

67:                                               ; preds = %66, %20
  tail call void @kfree(ptr noundef nonnull %18) #9
  br label %68

68:                                               ; preds = %67, %64, %16, %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_get_phase(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mmc_phase, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !9
  %7 = getelementptr inbounds %struct.mmc_phase, ptr %0, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = lshr i32 %6, %9
  %11 = trunc i32 %10 to i8
  %12 = and i8 %11, 3
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %1
  %15 = tail call ptr @clk_get_parent(ptr noundef %3) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @clk_get_rate(ptr noundef nonnull %15) #9
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = tail call ptr @clk_get_parent(ptr noundef nonnull %15) #9
  %22 = icmp eq ptr %21, null
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @clk_get_rate(ptr noundef nonnull %21) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = udiv i32 %24, %18
  %28 = trunc i32 %27 to i16
  %29 = lshr i16 %28, 1
  %30 = add nuw i16 %29, 360
  %31 = udiv i16 %30, %28
  %32 = zext i16 %31 to i32
  %33 = zext i8 %12 to i32
  %34 = mul nuw nsw i32 %32, %33
  br label %35

35:                                               ; preds = %26, %23, %20, %17, %14, %1
  %36 = phi i32 [ %34, %26 ], [ 180, %1 ], [ -22, %14 ], [ -22, %17 ], [ -22, %20 ], [ -22, %23 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmc_set_phase(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.clk_hw, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @clk_get_parent(ptr noundef %4) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %50, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %50, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @clk_get_parent(ptr noundef nonnull %5) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %50, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @clk_get_rate(ptr noundef nonnull %11) #9
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %50, label %16

16:                                               ; preds = %13
  %17 = icmp eq i32 %1, 180
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = udiv i32 %14, %8
  %20 = trunc i32 %19 to i16
  %21 = lshr i16 %20, 1
  %22 = add nuw i16 %21, 360
  %23 = udiv i16 %22, %20
  %24 = zext i16 %23 to i32
  %25 = lshr i32 %24, 1
  %26 = add i32 %25, %1
  %27 = sdiv i32 %26, %24
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %18, %16
  %30 = phi i32 [ %28, %18 ], [ 0, %16 ]
  %31 = getelementptr inbounds %struct.mmc_phase, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %32) #9
  %34 = getelementptr inbounds %struct.mmc_phase, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  %37 = getelementptr inbounds %struct.mmc_phase, ptr %0, i32 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = shl nsw i32 -1, %39
  %41 = sub nsw i32 28, %39
  %42 = lshr i32 -1, %41
  %43 = and i32 %42, %40
  %44 = xor i32 %43, -1
  %45 = and i32 %36, %44
  %46 = shl i32 %30, %39
  %47 = or i32 %45, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  %48 = load ptr, ptr %34, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #9, !srcloc !12
  %49 = load ptr, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %33) #9
  br label %50

50:                                               ; preds = %29, %13, %10, %7, %2
  %51 = phi i32 [ 0, %29 ], [ -22, %2 ], [ -22, %7 ], [ -22, %10 ], [ -22, %13 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2881008}
!9 = !{i64 2151512297}
!10 = !{i64 2151515050}
!11 = !{i64 2151516114}
!12 = !{i64 2880590}
