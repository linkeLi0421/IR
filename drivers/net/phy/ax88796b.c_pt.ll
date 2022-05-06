; ModuleID = '/llk/IR/drivers/net/phy/ax88796b.c_pt.bc'
source_filename = "../drivers/net/phy/ax88796b.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.phy_driver = type { %struct.mdio_driver_common, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_driver_common = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
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
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_description273 = internal constant [37 x i8] c"ax88796b.description=Asix PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author274 = internal constant [55 x i8] c"ax88796b.author=Michael Schmitz <schmitzmic@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file275 = internal constant [39 x i8] c"ax88796b.file=drivers/net/phy/ax88796b\00", section ".modinfo", align 1
@__UNIQUE_ID_license276 = internal constant [21 x i8] c"ax88796b.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ax88796b__277_120_phy_module_init6 = internal global ptr @phy_module_init, section ".initcall6.init", align 4
@asix_driver = internal global [3 x %struct.phy_driver] [%struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 3872865, ptr @.str, i32 -1, ptr null, i32 1, ptr null, ptr @asix_soft_reset, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr @asix_ax88772a_read_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @asix_ax88772a_link_change_notify, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 3872897, ptr @.str.1, i32 -1, ptr null, i32 1, ptr null, ptr @asix_soft_reset, ptr null, ptr null, ptr null, ptr @genphy_suspend, ptr @genphy_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.phy_driver { %struct.mdio_driver_common zeroinitializer, i32 3872833, ptr @.str.2, i32 -16, ptr null, i32 0, ptr null, ptr @asix_soft_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }], align 4
@__exitcall_phy_module_exit = internal global ptr @phy_module_exit, section ".exitcall.exit", align 4
@.str = private unnamed_addr constant [26 x i8] c"Asix Electronics AX88772A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Asix Electronics AX88772C\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Asix Electronics AX88796B\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description273, ptr @__UNIQUE_ID_file275, ptr @__UNIQUE_ID_license276, ptr @__exitcall_phy_module_exit, ptr @__initcall__kmod_ax88796b__277_120_phy_module_init6, ptr @phy_module_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @phy_module_init() #0 section ".init.text" {
  %1 = tail call i32 @phy_drivers_register(ptr noundef nonnull @asix_driver, i32 noundef 3, ptr noundef null) #3
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @phy_module_exit() #0 section ".exit.text" {
  tail call void @phy_drivers_unregister(ptr noundef nonnull @asix_driver, i32 noundef 3) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_drivers_unregister(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_drivers_register(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_soft_reset(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 8
  %6 = tail call i32 @mdiobus_write(ptr noundef %3, i32 noundef %5, i32 noundef 0, i16 noundef zeroext 0) #3
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 @genphy_soft_reset(ptr noundef %0) #3
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %6, %1 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @asix_ax88772a_read_status(ptr noundef %0) #2 {
  %2 = tail call i32 @genphy_update_link(ptr noundef %0) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 4
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8192
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.mdio_device, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 8
  %14 = tail call i32 @mdiobus_read(ptr noundef %11, i32 noundef %13, i32 noundef 0) #3
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %9
  %17 = and i32 %14, 8192
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 10, i32 100
  %20 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 8
  store i32 %19, ptr %20, align 8
  %21 = lshr i32 %14, 8
  %22 = and i32 %21, 1
  %23 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 9
  store i32 %22, ptr %23, align 4
  %24 = tail call i32 @genphy_read_lpa(ptr noundef %0) #3
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %16
  %27 = load i16, ptr %5, align 8
  %28 = and i16 %27, 20480
  %29 = icmp eq i16 %28, 20480
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @phy_resolve_aneg_linkmode(ptr noundef %0) #3
  br label %31

31:                                               ; preds = %30, %26, %16, %9, %4, %1
  %32 = phi i32 [ %2, %1 ], [ 0, %4 ], [ %14, %9 ], [ %24, %16 ], [ 0, %30 ], [ 0, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @asix_ax88772a_link_change_notify(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 5
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.phy_device, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.phy_driver, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = tail call i32 %9(ptr noundef %0) #3
  br label %13

13:                                               ; preds = %11, %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_soft_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_write(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_update_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_read_lpa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_resolve_aneg_linkmode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdiobus_read(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
