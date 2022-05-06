; ModuleID = '/llk/IR/drivers/net/mdio/fwnode_mdio.c_pt.bc'
source_filename = "../drivers/net/mdio/fwnode_mdio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_mdiobus_phy_device_register\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_mdiobus_phy_device_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fwnode_mdiobus_register_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22fwnode_mdiobus_register_phy\22\09\09\09\09\09"
module asm "__kstrtabns_fwnode_mdiobus_register_phy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__UNIQUE_ID_author273 = internal constant [63 x i8] c"fwnode_mdio.author=Calvin Johnson <calvin.johnson@oss.nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file274 = internal constant [46 x i8] c"fwnode_mdio.file=drivers/net/mdio/fwnode_mdio\00", section ".modinfo", align 1
@__UNIQUE_ID_license275 = internal constant [24 x i8] c"fwnode_mdio.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"broken-turn-around\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"reset-assert-us\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"reset-deassert-us\00", align 1
@__kstrtab_fwnode_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_mdiobus_phy_device_register = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_mdiobus_phy_device_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_mdiobus_phy_device_register to i32), ptr @__kstrtab_fwnode_mdiobus_phy_device_register, ptr @__kstrtabns_fwnode_mdiobus_phy_device_register }, section "___ksymtab+fwnode_mdiobus_phy_device_register", align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ethernet-phy-ieee802.3-c45\00", align 1
@__kstrtab_fwnode_mdiobus_register_phy = external dso_local constant [0 x i8], align 1
@__kstrtabns_fwnode_mdiobus_register_phy = external dso_local constant [0 x i8], align 1
@__ksymtab_fwnode_mdiobus_register_phy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fwnode_mdiobus_register_phy to i32), ptr @__kstrtab_fwnode_mdiobus_register_phy, ptr @__kstrtabns_fwnode_mdiobus_register_phy }, section "___ksymtab+fwnode_mdiobus_register_phy", align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"timestamper\00", align 1
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author273, ptr @__UNIQUE_ID_file274, ptr @__UNIQUE_ID_license275, ptr @__ksymtab_fwnode_mdiobus_phy_device_register, ptr @__ksymtab_fwnode_mdiobus_register_phy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_mdiobus_phy_device_register(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = tail call i32 @fwnode_irq_get(ptr noundef %2, i32 noundef 0) #4
  %6 = icmp eq i32 %5, -517
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 21
  store i32 %5, ptr %10, align 4
  %11 = getelementptr %struct.mii_bus, ptr %0, i32 0, i32 15, i32 %3
  store i32 %5, ptr %11, align 4
  br label %16

12:                                               ; preds = %7
  %13 = getelementptr %struct.mii_bus, ptr %0, i32 0, i32 15, i32 %3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.phy_device, ptr %1, i32 0, i32 21
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %9
  %17 = tail call zeroext i1 @fwnode_property_present(ptr noundef %2, ptr noundef nonnull @.str) #4
  br i1 %17, label %18, label %23

18:                                               ; preds = %16
  %19 = shl nuw i32 1, %3
  %20 = getelementptr inbounds %struct.mii_bus, ptr %0, i32 0, i32 14
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %19
  store i32 %22, ptr %20, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 10
  %25 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %24, i32 noundef 1) #4
  %26 = getelementptr inbounds %struct.mdio_device, ptr %1, i32 0, i32 11
  %27 = tail call i32 @fwnode_property_read_u32_array(ptr noundef %2, ptr noundef nonnull @.str.2, ptr noundef %26, i32 noundef 1) #4
  %28 = tail call ptr @fwnode_handle_get(ptr noundef %2) #4
  tail call void @device_set_node(ptr noundef %1, ptr noundef %2) #4
  %29 = tail call i32 @phy_device_register(ptr noundef %1) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %23
  tail call void @fwnode_handle_put(ptr noundef %2) #4
  br label %32

32:                                               ; preds = %31, %23, %4
  %33 = phi i32 [ %29, %31 ], [ -517, %4 ], [ 0, %23 ]
  ret i32 %33
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_handle_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @fwnode_mdiobus_register_phy(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #4, !annotation !8
  %6 = icmp eq ptr %1, null
  %7 = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %8 = or i1 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, @of_fwnode_ops
  %13 = getelementptr i8, ptr %1, i32 -12
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %9, %3
  %16 = phi ptr [ null, %3 ], [ %14, %9 ]
  %17 = call i32 @__of_parse_phandle_with_args(ptr noundef %16, ptr noundef nonnull @.str.5, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %4) #4
  switch i32 %17, label %24 [
    i32 -2, label %23
    i32 0, label %18
  ]

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.of_phandle_args, ptr %4, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  br label %27

23:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  br label %30

24:                                               ; preds = %15
  %25 = inttoptr i32 %17 to ptr
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #4
  %26 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %22
  %28 = phi ptr [ inttoptr (i32 -22 to ptr), %22 ], [ %25, %24 ]
  %29 = ptrtoint ptr %28 to i32
  br label %60

30:                                               ; preds = %24, %23
  %31 = phi ptr [ null, %23 ], [ %25, %24 ]
  %32 = call i32 @fwnode_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #4
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = call i32 @fwnode_get_phy_id(ptr noundef %1, ptr noundef nonnull %5) #4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %34, %30
  %38 = call ptr @get_phy_device(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %33) #4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, ptr %5, align 4
  %41 = call ptr @phy_device_create(ptr noundef %0, i32 noundef %2, i32 noundef %40, i1 noundef zeroext false, ptr noundef null) #4
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %41, %39 ]
  %44 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = ptrtoint ptr %43 to i32
  br label %60

47:                                               ; preds = %42
  br i1 %8, label %56, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, @of_fwnode_ops
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = call i32 @fwnode_mdiobus_phy_device_register(ptr noundef %0, ptr noundef %43, ptr noundef nonnull %1, i32 noundef %2)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  call void @phy_device_free(ptr noundef %43) #4
  br label %60

56:                                               ; preds = %52, %48, %47
  %57 = icmp eq ptr %31, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.phy_device, ptr %43, i32 0, i32 33
  store ptr %31, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %56, %55, %45, %27
  %61 = phi i32 [ %29, %27 ], [ %46, %45 ], [ %53, %55 ], [ 0, %58 ], [ 0, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_get_phy_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_phy_device(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phy_device_create(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_device_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"auto-init"}
