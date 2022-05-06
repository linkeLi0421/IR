; ModuleID = '/llk/IR/drivers/power/reset/keystone-reset.c_pt.bc'
source_filename = "../drivers/power/reset/keystone-reset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
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

@__initcall__kmod_keystone_reset__162_168_rsctrl_driver_init6 = internal global ptr @rsctrl_driver_init, section ".initcall6.init", align 4
@rsctrl_driver = internal global %struct.platform_driver { ptr @rsctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rsctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rsctrl_driver_exit = internal global ptr @rsctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [63 x i8] c"keystone_reset.author=Ivan Khoronzhuk <ivan.khoronzhuk@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [67 x i8] c"keystone_reset.description=Texas Instruments keystone reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [55 x i8] c"keystone_reset.file=drivers/power/reset/keystone-reset\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [30 x i8] c"keystone_reset.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias167 = internal constant [45 x i8] c"keystone_reset.alias=platform:keystone_reset\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"keystone_reset\00", align 1
@rsctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"ti,syscon-pll\00", align 1
@pllctrl_regs = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"ti,syscon-dev\00", align 1
@rspll_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"couldn't read the reset pll offset!\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"couldn't read the rsmux offset!\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"ti,soft-reset\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ti,wdt-list\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"ti,wdt-list property has to contain atleast one entry\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"ti,wdt-list property can contain only numbers < 4\0A\00", align 1
@rsctrl_restart_nb = internal global %struct.notifier_block { ptr @rsctrl_restart_handler, ptr null, i32 128 }, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias167, ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_rsctrl_driver_exit, ptr @__initcall__kmod_keystone_reset__162_168_rsctrl_driver_init6, ptr @rsctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rsctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rsctrl_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rsctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rsctrl_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsctrl_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %100, label %8

8:                                                ; preds = %1
  %9 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #5
  store ptr %9, ptr @pllctrl_regs, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = ptrtoint ptr %9 to i32
  br label %100

13:                                               ; preds = %8
  %14 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef nonnull %6, ptr noundef nonnull @.str.2) #5
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = ptrtoint ptr %14 to i32
  br label %100

18:                                               ; preds = %13
  %19 = tail call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef nonnull @rspll_offset) #5
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  br label %100

22:                                               ; preds = %18
  %23 = call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %3) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #6
  br label %100

26:                                               ; preds = %22
  %27 = call ptr @of_find_property(ptr noundef nonnull %6, ptr noundef nonnull @.str.5, ptr noundef null) #5
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, i32 0, i32 12303
  store i32 %29, ptr %2, align 4
  %30 = load ptr, ptr @pllctrl_regs, align 4
  %31 = load i32, ptr @rspll_offset, align 4
  %32 = add i32 %31, 4
  %33 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef %32, i32 noundef 65535, i32 noundef 23145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %100

35:                                               ; preds = %26
  %36 = load ptr, ptr @pllctrl_regs, align 4
  %37 = load i32, ptr @rspll_offset, align 4
  %38 = add i32 %37, 8
  %39 = call i32 @regmap_write(ptr noundef %36, i32 noundef %38, i32 noundef %29) #5
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %100

41:                                               ; preds = %35
  %42 = load ptr, ptr @pllctrl_regs, align 4
  %43 = load i32, ptr @rspll_offset, align 4
  %44 = add i32 %43, 12
  %45 = call i32 @regmap_write(ptr noundef %42, i32 noundef %44, i32 noundef 0) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %100

47:                                               ; preds = %41
  %48 = call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i32 noundef 0, ptr noundef nonnull %2) #5
  switch i32 %48, label %96 [
    i32 -75, label %85
    i32 0, label %86
  ]

49:                                               ; preds = %90
  %50 = call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %2) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %96

52:                                               ; preds = %49
  %53 = load i32, ptr %2, align 4
  %54 = icmp ugt i32 %53, 3
  br i1 %54, label %89, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %3, align 4
  %57 = shl nuw nsw i32 %53, 2
  %58 = add i32 %56, %57
  %59 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %58, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %55
  %62 = call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i32 noundef 2, ptr noundef nonnull %2) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i32, ptr %2, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %89, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %3, align 4
  %69 = shl nuw nsw i32 %65, 2
  %70 = add i32 %68, %69
  %71 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %70, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %100

73:                                               ; preds = %67
  %74 = call i32 @of_property_read_u32_index(ptr noundef nonnull %6, ptr noundef nonnull @.str.6, i32 noundef 3, ptr noundef nonnull %2) #5
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load i32, ptr %2, align 4
  %78 = icmp ugt i32 %77, 3
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i32, ptr %3, align 4
  %81 = shl nuw nsw i32 %77, 2
  %82 = add i32 %80, %81
  %83 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %82, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %100

85:                                               ; preds = %47
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #6
  br label %100

86:                                               ; preds = %47
  %87 = load i32, ptr %2, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %76, %64, %52
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #6
  br label %100

90:                                               ; preds = %86
  %91 = load i32, ptr %3, align 4
  %92 = shl nuw nsw i32 %87, 2
  %93 = add i32 %91, %92
  %94 = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %93, i32 noundef 14, i32 noundef 11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %49, label %100

96:                                               ; preds = %79, %73, %61, %49, %47
  %97 = call i32 @register_restart_handler(ptr noundef nonnull @rsctrl_restart_nb) #5
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %97) #6
  br label %100

100:                                              ; preds = %99, %96, %90, %89, %85, %79, %67, %55, %41, %35, %26, %25, %21, %16, %11, %1
  %101 = phi i32 [ %12, %11 ], [ %17, %16 ], [ -22, %21 ], [ -22, %25 ], [ -22, %89 ], [ -22, %85 ], [ -19, %1 ], [ %33, %26 ], [ %39, %35 ], [ %45, %41 ], [ %97, %99 ], [ 0, %96 ], [ %94, %90 ], [ %59, %55 ], [ %71, %67 ], [ %83, %79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret i32 %101
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rsctrl_restart_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = load ptr, ptr @pllctrl_regs, align 4
  %5 = load i32, ptr @rspll_offset, align 4
  %6 = add i32 %5, 4
  %7 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef %6, i32 noundef 65535, i32 noundef 23145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %8 = load ptr, ptr @pllctrl_regs, align 4
  %9 = load i32, ptr @rspll_offset, align 4
  %10 = add i32 %9, 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %10, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 0
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
