; ModuleID = '/llk/IR/drivers/phy/marvell/phy-mvebu-a3700-comphy.c_pt.bc'
source_filename = "../drivers/phy/marvell/phy-mvebu-a3700-comphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mvebu_a3700_comphy_conf = type { i32, i32, i32, i32, i32 }
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
%struct.mvebu_a3700_comphy_lane = type { ptr, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.arm_smccc_res = type { i32, i32, i32, i32 }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@__initcall__kmod_phy_mvebu_a3700_comphy__287_327_mvebu_a3700_comphy_driver_init6 = internal global ptr @mvebu_a3700_comphy_driver_init, section ".initcall6.init", align 4
@mvebu_a3700_comphy_driver = internal global %struct.platform_driver { ptr @mvebu_a3700_comphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_a3700_comphy_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_mvebu_a3700_comphy_driver_exit = internal global ptr @mvebu_a3700_comphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author288 = internal constant [73 x i8] c"phy_mvebu_a3700_comphy.author=Miqu\C3\A8l Raynal <miquel.raynal@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description289 = internal constant [63 x i8] c"phy_mvebu_a3700_comphy.description=Common PHY driver for A3700\00", section ".modinfo", align 1
@__UNIQUE_ID_file290 = internal constant [71 x i8] c"phy_mvebu_a3700_comphy.file=drivers/phy/marvell/phy-mvebu-a3700-comphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license291 = internal constant [38 x i8] c"phy_mvebu_a3700_comphy.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"mvebu-a3700-comphy\00", align 1
@mvebu_a3700_comphy_of_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,comphy-a3700\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"missing 'reg' property (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"invalid 'reg' property\0A\00", align 1
@mvebu_a3700_comphy_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @mvebu_a3700_comphy_power_on, ptr @mvebu_a3700_comphy_power_off, ptr @mvebu_a3700_comphy_set_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid COMPHY mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"unsupported SMC call, try updating your firmware\0A\00", align 1
@mvebu_a3700_comphy_modes = internal unnamed_addr constant [8 x %struct.mvebu_a3700_comphy_conf] [%struct.mvebu_a3700_comphy_conf { i32 0, i32 5, i32 0, i32 0, i32 4 }, %struct.mvebu_a3700_comphy_conf { i32 0, i32 15, i32 4, i32 1, i32 2 }, %struct.mvebu_a3700_comphy_conf { i32 0, i32 15, i32 22, i32 1, i32 3 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 14, i32 0, i32 0, i32 6 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 15, i32 4, i32 0, i32 2 }, %struct.mvebu_a3700_comphy_conf { i32 1, i32 15, i32 22, i32 0, i32 3 }, %struct.mvebu_a3700_comphy_conf { i32 2, i32 17, i32 0, i32 0, i32 1 }, %struct.mvebu_a3700_comphy_conf { i32 2, i32 5, i32 0, i32 0, i32 4 }], align 4
@.str.8 = private unnamed_addr constant [45 x i8] c"drivers/phy/marvell/phy-mvebu-a3700-comphy.c\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author288, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file290, ptr @__UNIQUE_ID_license291, ptr @__exitcall_mvebu_a3700_comphy_driver_exit, ptr @__initcall__kmod_phy_mvebu_a3700_comphy__287_327_mvebu_a3700_comphy_driver_init6, ptr @mvebu_a3700_comphy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @mvebu_a3700_comphy_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @mvebu_a3700_comphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @mvebu_a3700_comphy_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @of_get_next_available_child(ptr noundef %5, ptr noundef null) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %39, label %8

8:                                                ; preds = %35, %1
  %9 = phi ptr [ %37, %35 ], [ %6, %1 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %10 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %9, ptr noundef nonnull @.str.1, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #6
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2, i32 noundef %10) #7
  br label %35

13:                                               ; preds = %8
  %14 = load i32, ptr %2, align 4
  %15 = icmp ugt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %35

17:                                               ; preds = %13
  %18 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 20, i32 noundef 3520) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @of_node_put(ptr noundef nonnull %9) #6
  br label %33

21:                                               ; preds = %17
  %22 = call ptr @devm_phy_create(ptr noundef %3, ptr noundef nonnull %9, ptr noundef nonnull @mvebu_a3700_comphy_ops) #6
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  call void @of_node_put(ptr noundef nonnull %9) #6
  %25 = ptrtoint ptr %22 to i32
  br label %33

26:                                               ; preds = %21
  store ptr %3, ptr %18, align 4
  %27 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %18, i32 0, i32 2
  store i32 0, ptr %27, align 4
  %28 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %18, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = load i32, ptr %2, align 4
  %30 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %18, i32 0, i32 1
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %18, i32 0, i32 4
  store i32 -1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 8
  store ptr %18, ptr %32, align 8
  br label %35

33:                                               ; preds = %24, %20
  %34 = phi i32 [ %25, %24 ], [ -12, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  br label %44

35:                                               ; preds = %26, %16, %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %36 = load ptr, ptr %4, align 8
  %37 = call ptr @of_get_next_available_child(ptr noundef %36, ptr noundef nonnull %9) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %8

39:                                               ; preds = %35, %1
  %40 = call ptr @__devm_of_phy_provider_register(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef nonnull @mvebu_a3700_comphy_xlate) #6
  %41 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  %42 = ptrtoint ptr %40 to i32
  %43 = select i1 %41, i32 %42, i32 0
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi i32 [ %34, %33 ], [ %43, %39 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mvebu_a3700_comphy_xlate(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %15

7:                                                ; preds = %2
  %8 = tail call ptr @of_phy_simple_xlate(ptr noundef %0, ptr noundef %1) #6
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = load i32, ptr %3, align 4
  %14 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %12, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %7, %6
  %16 = phi ptr [ inttoptr (i32 -22 to ptr), %6 ], [ %8, %10 ], [ %8, %7 ]
  ret ptr %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %4, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %4, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %1
  switch i32 %6, label %36 [
    i32 0, label %15
    i32 1, label %23
    i32 2, label %29
  ]

15:                                               ; preds = %14
  switch i32 %8, label %36 [
    i32 0, label %16
    i32 1, label %20
  ]

16:                                               ; preds = %15
  %17 = icmp eq i32 %10, 5
  %18 = icmp eq i32 %12, 0
  %19 = and i1 %17, %18
  br i1 %19, label %38, label %36

20:                                               ; preds = %15
  %21 = icmp eq i32 %10, 15
  br i1 %21, label %22, label %36

22:                                               ; preds = %20
  switch i32 %12, label %36 [
    i32 4, label %43
    i32 22, label %50
  ]

23:                                               ; preds = %14
  %24 = icmp eq i32 %8, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %23
  switch i32 %10, label %36 [
    i32 14, label %26
    i32 15, label %28
  ]

26:                                               ; preds = %25
  %27 = icmp eq i32 %12, 0
  br i1 %27, label %58, label %36

28:                                               ; preds = %25
  switch i32 %12, label %36 [
    i32 4, label %43
    i32 22, label %50
  ]

29:                                               ; preds = %14
  %30 = icmp eq i32 %8, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  switch i32 %10, label %36 [
    i32 17, label %32
    i32 5, label %34
  ]

32:                                               ; preds = %31
  %33 = icmp eq i32 %12, 0
  br i1 %33, label %65, label %36

34:                                               ; preds = %31
  %35 = icmp eq i32 %12, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %34, %32, %31, %29, %28, %26, %25, %23, %22, %20, %16, %15, %14, %1
  %37 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.4) #7
  br label %75

38:                                               ; preds = %34, %16
  %39 = phi i32 [ 0, %16 ], [ 7, %34 ]
  %40 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %39, i32 4
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 12
  br label %65

43:                                               ; preds = %28, %22
  %44 = phi i32 [ 1, %22 ], [ %12, %28 ]
  %45 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %44, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = shl i32 %46, 12
  %48 = shl nuw nsw i32 %8, 8
  %49 = or i32 %47, %48
  br label %65

50:                                               ; preds = %28, %22
  %51 = phi i32 [ 2, %22 ], [ 5, %28 ]
  %52 = getelementptr [8 x %struct.mvebu_a3700_comphy_conf], ptr @mvebu_a3700_comphy_modes, i32 0, i32 %51, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 12
  %55 = shl nuw nsw i32 %8, 8
  %56 = or i32 %55, %54
  %57 = or i32 %56, 8
  br label %65

58:                                               ; preds = %26
  %59 = shl nuw nsw i32 %8, 8
  %60 = getelementptr inbounds %struct.phy, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = shl i32 %61, 18
  %63 = or i32 %59, %62
  %64 = or i32 %63, 24588
  br label %65

65:                                               ; preds = %58, %50, %43, %38, %32
  %66 = phi i32 [ %64, %58 ], [ %57, %50 ], [ %49, %43 ], [ %42, %38 ], [ 4096, %32 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @__arm_smccc_smc(i32 noundef -2113929215, i32 noundef %6, i32 noundef %66, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #6
  %67 = load i32, ptr %2, align 4
  %68 = icmp eq i32 %67, -1
  %69 = select i1 %68, i32 -95, i32 -22
  %70 = icmp eq i32 %67, 0
  %71 = select i1 %70, i32 0, i32 %69
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  %72 = icmp eq i32 %71, -95
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.7) #7
  br label %75

75:                                               ; preds = %73, %65, %36
  %76 = phi i32 [ -22, %36 ], [ -95, %73 ], [ %71, %65 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca %struct.arm_smccc_res, align 4
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i32 16, i1 false) #6, !annotation !8
  call void @__arm_smccc_smc(i32 noundef -2113929214, i32 noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #6
  %7 = load i32, ptr %2, align 4
  %8 = icmp eq i32 %7, -1
  %9 = select i1 %8, i32 -95, i32 -22
  %10 = icmp eq i32 %7, 0
  %11 = select i1 %10, i32 0, i32 %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #6
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mvebu_a3700_comphy_set_mode(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq i32 %2, 21
  %7 = select i1 %6, i32 4, i32 %2
  %8 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %5, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %5, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  switch i32 %13, label %38 [
    i32 0, label %14
    i32 1, label %22
    i32 2, label %28
  ]

14:                                               ; preds = %11
  switch i32 %9, label %38 [
    i32 0, label %15
    i32 1, label %19
  ]

15:                                               ; preds = %14
  %16 = icmp eq i32 %1, 5
  %17 = icmp eq i32 %7, 0
  %18 = and i1 %16, %17
  br i1 %18, label %35, label %38

19:                                               ; preds = %14
  %20 = icmp eq i32 %1, 15
  br i1 %20, label %21, label %38

21:                                               ; preds = %19
  switch i32 %7, label %38 [
    i32 4, label %35
    i32 22, label %35
  ]

22:                                               ; preds = %11
  %23 = icmp eq i32 %9, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %22
  switch i32 %1, label %38 [
    i32 14, label %25
    i32 15, label %27
  ]

25:                                               ; preds = %24
  %26 = icmp eq i32 %7, 0
  br i1 %26, label %35, label %38

27:                                               ; preds = %24
  switch i32 %7, label %38 [
    i32 4, label %35
    i32 22, label %35
  ]

28:                                               ; preds = %11
  %29 = icmp eq i32 %9, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %28
  switch i32 %1, label %38 [
    i32 17, label %31
    i32 5, label %33
  ]

31:                                               ; preds = %30
  %32 = icmp eq i32 %7, 0
  br i1 %32, label %35, label %38

33:                                               ; preds = %30
  %34 = icmp eq i32 %7, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %33, %31, %27, %27, %25, %21, %21, %15
  %36 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %5, i32 0, i32 2
  store i32 %1, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, ptr %5, i32 0, i32 3
  store i32 %7, ptr %37, align 4
  br label %40

38:                                               ; preds = %33, %31, %30, %28, %27, %25, %24, %22, %21, %19, %15, %14, %11, %3
  %39 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.4) #7
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ -22, %38 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__arm_smccc_smc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
