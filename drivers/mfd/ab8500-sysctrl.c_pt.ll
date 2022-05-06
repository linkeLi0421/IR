; ModuleID = '/llk/IR/drivers/mfd/ab8500-sysctrl.c_pt.bc'
source_filename = "../drivers/mfd/ab8500-sysctrl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ab8500_sysctrl_read:\09\09\09\09\09"
module asm "\09.asciz \09\22ab8500_sysctrl_read\22\09\09\09\09\09"
module asm "__kstrtabns_ab8500_sysctrl_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ab8500_sysctrl_write:\09\09\09\09\09"
module asm "\09.asciz \09\22ab8500_sysctrl_write\22\09\09\09\09\09"
module asm "__kstrtabns_ab8500_sysctrl_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.sigset_t = type { [2 x i32] }
%union.power_supply_propval = type { i32 }

@sysctrl_dev = internal unnamed_addr global ptr null, align 4
@__kstrtab_ab8500_sysctrl_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_ab8500_sysctrl_read = external dso_local constant [0 x i8], align 1
@__ksymtab_ab8500_sysctrl_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ab8500_sysctrl_read to i32), ptr @__kstrtab_ab8500_sysctrl_read, ptr @__kstrtabns_ab8500_sysctrl_read }, section "___ksymtab+ab8500_sysctrl_read", align 4
@.str = private unnamed_addr constant [16 x i8] c"\013invalid bank\0A\00", align 1
@__kstrtab_ab8500_sysctrl_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_ab8500_sysctrl_write = external dso_local constant [0 x i8], align 1
@__ksymtab_ab8500_sysctrl_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ab8500_sysctrl_write to i32), ptr @__kstrtab_ab8500_sysctrl_write, ptr @__kstrtabns_ab8500_sysctrl_write }, section "___ksymtab+ab8500_sysctrl_write", align 4
@__initcall__kmod_ab8500_sysctrl__247_171_ab8500_sysctrl_init3 = internal global ptr @ab8500_sysctrl_init, section ".initcall3.init", align 4
@ab8500_sysctrl_driver = internal global %struct.platform_driver { ptr @ab8500_sysctrl_probe, ptr @ab8500_sysctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ab8500_sysctrl_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"ab8500-sysctrl\00", align 1
@ab8500_sysctrl_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stericsson,ab8500-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ab8500_ac\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pm2301\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ab8500_usb\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"\013%s: sysctrl not initialized\0A\00", align 1
@__func__.ab8500_power_off = private unnamed_addr constant [17 x i8] c"ab8500_power_off\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"ab8500_btemp\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"\016Charger '%s' is connected with known battery\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\016 - Rebooting.\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_ab8500_sysctrl__247_171_ab8500_sysctrl_init3, ptr @__ksymtab_ab8500_sysctrl_read, ptr @__ksymtab_ab8500_sysctrl_write], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ab8500_sysctrl_read(i16 noundef zeroext %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr @sysctrl_dev, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = lshr i16 %0, 8
  %7 = trunc i16 %6 to i8
  %8 = add i8 %7, -1
  %9 = icmp ult i8 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = trunc i16 %0 to i8
  %12 = tail call i32 @abx500_get_register_interruptible(ptr noundef nonnull %3, i8 noundef zeroext %7, i8 noundef zeroext %11, ptr noundef %1) #6
  br label %13

13:                                               ; preds = %10, %5, %2
  %14 = phi i32 [ %12, %10 ], [ -517, %2 ], [ -22, %5 ]
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = load ptr, ptr @sysctrl_dev, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = lshr i16 %0, 8
  %8 = trunc i16 %7 to i8
  %9 = add i8 %8, -1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %16

13:                                               ; preds = %6
  %14 = trunc i16 %0 to i8
  %15 = tail call i32 @abx500_mask_and_set_register_interruptible(ptr noundef nonnull %4, i8 noundef zeroext %8, i8 noundef zeroext %14, i8 noundef zeroext %1, i8 noundef zeroext %2) #6
  br label %16

16:                                               ; preds = %13, %11, %3
  %17 = phi i32 [ %15, %13 ], [ -22, %11 ], [ -517, %3 ]
  ret i32 %17
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_mask_and_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ab8500_sysctrl_init() #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_sysctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_sysctrl_probe(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  store ptr %2, ptr @sysctrl_dev, align 4
  %3 = load ptr, ptr @pm_power_off, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store ptr @ab8500_power_off, ptr @pm_power_off, align 4
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @ab8500_sysctrl_remove(ptr nocapture noundef readnone %0) #5 {
  store ptr null, ptr @sysctrl_dev, align 4
  %2 = load ptr, ptr @pm_power_off, align 4
  %3 = icmp eq ptr %2, @ab8500_power_off
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @pm_power_off, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ab8500_power_off() #0 {
  %1 = alloca %struct.sigset_t, align 8
  %2 = alloca %struct.sigset_t, align 8
  %3 = alloca %union.power_supply_propval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #6
  store i64 0, ptr %1, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #6
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr @sysctrl_dev, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.2) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %11

9:                                                ; preds = %0
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.ab8500_power_off) #7
  br label %60

11:                                               ; preds = %6
  %12 = call i32 @power_supply_get_property(ptr noundef nonnull %7, i32 noundef 4, ptr noundef nonnull %3) #6
  call void @power_supply_put(ptr noundef nonnull %7) #6
  %13 = icmp eq i32 %12, 0
  %14 = load i32, ptr %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = select i1 %13, i1 %15, i1 false
  br i1 %16, label %35, label %17

17:                                               ; preds = %11, %6
  %18 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.3) #6
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = call i32 @power_supply_get_property(ptr noundef nonnull %18, i32 noundef 4, ptr noundef nonnull %3) #6
  call void @power_supply_put(ptr noundef nonnull %18) #6
  %22 = icmp eq i32 %21, 0
  %23 = load i32, ptr %3, align 4
  %24 = icmp ne i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %35, label %26

26:                                               ; preds = %20, %17
  %27 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.4) #6
  %28 = icmp eq ptr %27, null
  br i1 %28, label %49, label %29

29:                                               ; preds = %26
  %30 = call i32 @power_supply_get_property(ptr noundef nonnull %27, i32 noundef 4, ptr noundef nonnull %3) #6
  call void @power_supply_put(ptr noundef nonnull %27) #6
  %31 = icmp eq i32 %30, 0
  %32 = load i32, ptr %3, align 4
  %33 = icmp ne i32 %32, 0
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %49

35:                                               ; preds = %29, %20, %11
  %36 = phi ptr [ @.str.2, %11 ], [ @.str.3, %20 ], [ @.str.4, %29 ]
  %37 = call ptr @power_supply_get_by_name(ptr noundef nonnull @.str.6) #6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = call i32 @power_supply_get_property(ptr noundef nonnull %37, i32 noundef 6, ptr noundef nonnull %3) #6
  %41 = icmp eq i32 %40, 0
  %42 = load i32, ptr %3, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %36) #7
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #7
  call void @machine_restart(ptr noundef nonnull @.str.9) #6
  br label %48

48:                                               ; preds = %45, %39
  call void @power_supply_put(ptr noundef nonnull %37) #6
  br label %49

49:                                               ; preds = %48, %35, %29, %26
  %50 = getelementptr inbounds [2 x i32], ptr %2, i32 0, i32 1
  store i32 -1, ptr %50, align 4
  store i32 -1, ptr %2, align 8
  %51 = call i32 @sigprocmask(i32 noundef 0, ptr noundef nonnull %2, ptr noundef nonnull %1) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load ptr, ptr @sysctrl_dev, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %53
  %57 = call i32 @abx500_mask_and_set_register_interruptible(ptr noundef nonnull %54, i8 noundef zeroext 1, i8 noundef zeroext -128, i8 noundef zeroext 3, i8 noundef zeroext 3) #6
  br label %58

58:                                               ; preds = %56, %53
  %59 = call i32 @sigprocmask(i32 noundef 2, ptr noundef nonnull %1, ptr noundef null) #6
  br label %60

60:                                               ; preds = %58, %49, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_by_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @machine_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
