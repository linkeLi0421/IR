; ModuleID = '/llk/IR/drivers/hwmon/raspberrypi-hwmon.c_pt.bc'
source_filename = "../drivers/hwmon/raspberrypi-hwmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.rpi_hwmon_data = type { ptr, ptr, i32, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }

@__UNIQUE_ID_author166 = internal constant [40 x i8] c"author=Stefan Wahren <wahrenst@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description167 = internal constant [47 x i8] c"description=Raspberry Pi voltage sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license168 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias169 = internal constant [33 x i8] c"alias=platform:raspberrypi-hwmon\00", section ".modinfo", align 1
@rpi_hwmon_driver = internal global %struct.platform_driver { ptr @rpi_hwmon_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [18 x i8] c"raspberrypi-hwmon\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"rpi_volt\00", align 1
@rpi_chip_info = internal constant %struct.hwmon_chip_info { ptr @rpi_hwmon_ops, ptr @rpi_info }, align 4
@rpi_hwmon_ops = internal constant %struct.hwmon_ops { ptr @rpi_is_visible, ptr @rpi_read, ptr null, ptr null }, align 4
@rpi_info = internal global [2 x ptr] [ptr @.compoundliteral.2, ptr null], align 4
@.compoundliteral = internal global [2 x i32] [i32 16384, i32 0], align 4
@.compoundliteral.2 = internal global %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, align 4
@rpi_firmware_get_throttled.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get throttled (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Undervoltage detected!\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Voltage normalised\0A\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias169, ptr @__UNIQUE_ID_author166, ptr @__UNIQUE_ID_description167, ptr @__UNIQUE_ID_license168], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_hwmon_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_hwmon_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rpi_hwmon_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 56, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %3, ptr noundef nonnull @rpi_chip_info, ptr noundef null) #8
  store ptr %11, ptr %3, align 4
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = ptrtoint ptr %11 to i32
  br label %27

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 3
  store i32 -32, ptr %16, align 4
  %17 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 3, i32 0, i32 1
  store volatile ptr %17, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 3, i32 0, i32 1, i32 1
  store ptr %17, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 3, i32 0, i32 2
  store ptr @get_values_poll, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %3, i32 0, i32 3, i32 1
  tail call void @init_timer_key(ptr noundef %20, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #8
  %21 = tail call i32 @devm_add_action(ptr noundef %2, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %16) #8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %24, align 8
  %25 = load ptr, ptr @system_wq, align 4
  %26 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %25, ptr noundef %16, i32 noundef 200) #8
  br label %27

27:                                               ; preds = %23, %15, %13, %1
  %28 = phi i32 [ %14, %13 ], [ 0, %23 ], [ -12, %1 ], [ %21, %15 ]
  ret i32 %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @get_values_poll(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 65535, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 -8
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @rpi_firmware_property(ptr noundef %5, i32 noundef 196678, ptr noundef nonnull %2, i32 noundef 4) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load i1, ptr @rpi_firmware_get_throttled.__print_once, align 1
  br i1 %9, label %27, label %10

10:                                               ; preds = %8
  store i1 true, ptr @rpi_firmware_get_throttled.__print_once, align 1
  %11 = load ptr, ptr %3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %6) #9
  br label %27

12:                                               ; preds = %1
  %13 = load i32, ptr %2, align 4
  %14 = and i32 %13, 65536
  %15 = getelementptr i8, ptr %0, i32 -4
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 65536
  store i32 %13, ptr %15, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  %21 = load ptr, ptr %3, align 4
  br i1 %20, label %23, label %22

22:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_crit(ptr noundef %21, ptr noundef nonnull @.str.4) #9
  br label %24

23:                                               ; preds = %19
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.5) #9
  br label %24

24:                                               ; preds = %23, %22
  %25 = load ptr, ptr %3, align 4
  %26 = call i32 @hwmon_notify_event(ptr noundef %25, i32 noundef 2, i32 noundef 14, i32 noundef 0) #8
  br label %27

27:                                               ; preds = %24, %12, %10, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %28 = load ptr, ptr @system_wq, align 4
  %29 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %28, ptr noundef %0, i32 noundef 200) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i16 @rpi_is_visible(ptr nocapture noundef readnone %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #4 {
  ret i16 292
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rpi_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #5 {
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.rpi_hwmon_data, ptr %7, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %9, 16
  %11 = and i32 %10, 1
  store i32 %11, ptr %4, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %0) #6 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmon_notify_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
