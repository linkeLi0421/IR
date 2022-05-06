; ModuleID = '/llk/IR/drivers/phy/st/phy-spear1310-miphy.c_pt.bc'
source_filename = "../drivers/phy/st/phy-spear1310-miphy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.spear1310_miphy_priv = type { i32, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_phy_spear1310_miphy__250_253_spear1310_miphy_driver_init6 = internal global ptr @spear1310_miphy_driver_init, section ".initcall6.init", align 4
@spear1310_miphy_driver = internal global %struct.platform_driver { ptr @spear1310_miphy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spear1310_miphy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_spear1310_miphy_driver_exit = internal global ptr @spear1310_miphy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"phy_spear1310_miphy.description=ST SPEAR1310-MIPHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [69 x i8] c"phy_spear1310_miphy.author=Pratyush Anand <pratyush.anand@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [60 x i8] c"phy_spear1310_miphy.file=drivers/phy/st/phy-spear1310-miphy\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [35 x i8] c"phy_spear1310_miphy.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"spear1310-miphy\00", align 1
@spear1310_miphy_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear1310-miphy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to find misc regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"phy-id\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to find phy id\0A\00", align 1
@spear1310_miphy_ops = internal constant %struct.phy_ops { ptr @spear1310_miphy_init, ptr @spear1310_miphy_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to create SATA PCIe PHY\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"failed to register phy provider\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"DT did not pass correct no of args\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"DT did not pass correct phy mode\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_license254, ptr @__exitcall_spear1310_miphy_driver_exit, ptr @__initcall__kmod_phy_spear1310_miphy__250_253_spear1310_miphy_driver_init6, ptr @spear1310_miphy_driver_exit], section "llvm.metadata"
@switch.table.spear1310_miphy_init = private unnamed_addr constant [3 x i32] [i32 15, i32 240, i32 3840], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @spear1310_miphy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear1310_miphy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @spear1310_miphy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear1310_miphy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1310_miphy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 16, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  %8 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %7, ptr noundef nonnull @.str.1) #4
  %9 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #5
  %12 = ptrtoint ptr %8 to i32
  br label %32

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8
  %15 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.3, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #5
  br label %32

18:                                               ; preds = %13
  %19 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @spear1310_miphy_ops) #4
  %20 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  %23 = load ptr, ptr %20, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %32

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %26, align 8
  %27 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  store ptr %3, ptr %27, align 8
  %28 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @spear1310_miphy_xlate) #4
  %29 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6) #5
  %31 = ptrtoint ptr %28 to i32
  br label %32

32:                                               ; preds = %30, %25, %22, %17, %11, %1
  %33 = phi i32 [ %12, %11 ], [ -22, %17 ], [ %24, %22 ], [ %31, %30 ], [ -12, %1 ], [ 0, %25 ]
  ret i32 %33
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
define internal ptr @spear1310_miphy_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #5
  br label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %4, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = icmp ult i32 %11, 2
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.8) #5
  br label %18

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %4, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %15, %14, %8
  %19 = phi ptr [ inttoptr (i32 -19 to ptr), %8 ], [ inttoptr (i32 -19 to ptr), %14 ], [ %17, %15 ]
  ret ptr %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1310_miphy_init(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 936, i32 noundef -65536, i32 noundef -2145812455, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %11 = load i32, ptr %3, align 4
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %22

13:                                               ; preds = %7
  %14 = getelementptr inbounds [3 x i32], ptr @switch.table.spear1310_miphy_init, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %8, align 4
  %17 = shl nuw nsw i32 %11, 2
  %18 = shl nuw nsw i32 15, %17
  %19 = shl nuw i32 536870912, %11
  %20 = or i32 %18, %19
  %21 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 932, i32 noundef %20, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %22

22:                                               ; preds = %13, %7, %1
  %23 = phi i32 [ 0, %1 ], [ 0, %13 ], [ -22, %7 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @spear1310_miphy_exit(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.spear1310_miphy_priv, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %3, align 4
  %11 = shl i32 %10, 2
  %12 = shl i32 15, %11
  %13 = add i32 %10, 29
  %14 = shl nuw i32 1, %13
  %15 = or i32 %12, %14
  %16 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 932, i32 noundef %15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %17 = load ptr, ptr %8, align 4
  %18 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 936, i32 noundef -65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %19

19:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
