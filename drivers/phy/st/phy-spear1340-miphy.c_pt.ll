; ModuleID = '/llk/IR/drivers/phy/st/phy-spear1340-miphy.c_pt.bc'
source_filename = "../drivers/phy/st/phy-spear1340-miphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spear1340_miphy_priv = type { i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_spear1340_miphy__250_286_spear1340_miphy_driver_init6 = internal global ptr @spear1340_miphy_driver_init, section ".initcall6.init", align 4
@spear1340_miphy_driver = internal global %struct.platform_driver { ptr @spear1340_miphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear1340_miphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear1340_miphy_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear1340_miphy_driver_exit = internal global ptr @spear1340_miphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"phy_spear1340_miphy.description=ST SPEAR1340-MIPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [69 x i8] c"phy_spear1340_miphy.author=Pratyush Anand <pratyush.anand@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [60 x i8] c"phy_spear1340_miphy.file=drivers/phy/st/phy-spear1340-miphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [35 x i8] c"phy_spear1340_miphy.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"spear1340-miphy\00", align 1
@spear1340_miphy_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear1340-miphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@spear1340_miphy_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @spear1340_miphy_suspend, ptr @spear1340_miphy_resume, ptr @spear1340_miphy_suspend, ptr @spear1340_miphy_resume, ptr @spear1340_miphy_suspend, ptr @spear1340_miphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to find misc regmap\0A\00", align 1
@spear1340_miphy_ops = internal constant %struct.phy_ops { ptr @spear1340_miphy_init, ptr @spear1340_miphy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to create SATA PCIe PHY\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"failed to register phy provider\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"DT did not pass correct no of args\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"DT did not pass correct phy mode\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_spear1340_miphy_driver_exit, ptr @__initcall__kmod_phy_spear1340_miphy__250_286_spear1340_miphy_driver_init6, ptr @spear1340_miphy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear1340_miphy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear1340_miphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear1340_miphy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 12, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %20, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @spear1340_miphy_ops) #4
  %13 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %16, align 8
  %17 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  store ptr %3, ptr %17, align 8
  %18 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @spear1340_miphy_xlate) #4
  %19 = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %19, label %20, label %24

20:                                               ; preds = %15, %11, %5
  %21 = phi ptr [ @.str.2, %5 ], [ @.str.3, %11 ], [ @.str.4, %15 ]
  %22 = phi ptr [ %8, %5 ], [ %12, %11 ], [ %18, %15 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %21) #5
  %23 = ptrtoint ptr %22 to i32
  br label %24

24:                                               ; preds = %20, %15, %1
  %25 = phi i32 [ -12, %1 ], [ 0, %15 ], [ %23, %20 ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @spear1340_miphy_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.5) #5
  br label %17

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %4, align 4
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #5
  br label %17

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %4, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %13, %8
  %18 = phi ptr [ inttoptr (i32 -19 to ptr), %8 ], [ inttoptr (i32 -19 to ptr), %13 ], [ %16, %14 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %15
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1060, i32 noundef 3871, i32 noundef 31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1064, i32 noundef -134217473, i32 noundef 120, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  %13 = load ptr, ptr %6, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 792, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  br label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1064, i32 noundef -134217473, i32 noundef -2147483623, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1060, i32 noundef 3871, i32 noundef 3840, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %21

21:                                               ; preds = %15, %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  switch i32 %4, label %21 [
    i32 0, label %5
    i32 1, label %15
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 1060, i32 noundef 3871, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %9 = load ptr, ptr %6, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 1064, i32 noundef -134217473, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %11 = load ptr, ptr %6, align 4
  %12 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 792, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  %13 = load ptr, ptr %6, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  br label %21

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1064, i32 noundef -134217473, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %19 = load ptr, ptr %16, align 4
  %20 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 1060, i32 noundef 3871, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %21

21:                                               ; preds = %15, %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1060, i32 noundef 3871, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1064, i32 noundef -134217473, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 792, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 256, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  br label %16

16:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1340_miphy_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.spear1340_miphy_priv, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 1060, i32 noundef 3871, i32 noundef 31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %10 = load ptr, ptr %7, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 1064, i32 noundef -134217473, i32 noundef 120, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %12 = load ptr, ptr %7, align 4
  %13 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 256, i32 noundef 2048, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  %14 = load ptr, ptr %7, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 792, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void @msleep(i32 noundef 20) #4
  br label %16

16:                                               ; preds = %6, %1
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
