; ModuleID = '/llk/IR/drivers/power/reset/brcmstb-reboot.c_pt.bc'
source_filename = "../drivers/power/reset/brcmstb-reboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_reg_mask = type { i32, i32 }
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

@__initcall__kmod_brcmstb_reboot__166_156_brcmstb_reboot_init4 = internal global ptr @brcmstb_reboot_init, section ".initcall4.init", align 4
@brcmstb_reboot_driver = internal global %struct.platform_driver { ptr @brcmstb_reboot_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"brcmstb-reboot\00", align 1
@of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-reboot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_bits_40nm }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-reboot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @reset_bits_65nm }, %struct.of_device_id zeroinitializer], align 4
@reset_bits_40nm = internal constant %struct.reset_reg_mask { i32 1, i32 1 }, align 4
@reset_bits_65nm = internal constant %struct.reset_reg_mask { i32 8, i32 -2147483648 }, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013failed to look up compatible string\0A\00", align 1
@reset_masks = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@regmap = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"\013failed to get syscon phandle\0A\00", align 1
@rst_src_en = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"\013can't get rst_src_en offset (%d)\0A\00", align 1
@sw_mstr_rst = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"\013can't get sw_mstr_rst offset (%d)\0A\00", align 1
@brcmstb_restart_nb = internal global %struct.notifier_block { ptr @brcmstb_restart_handler, ptr null, i32 128 }, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"cannot register restart handler (err=%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\013failed to write rst_src_en (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"\013failed to read rst_src_en (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"\013failed to write sw_mstr_rst (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\013failed to read sw_mstr_rst (%d)\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_brcmstb_reboot__166_156_brcmstb_reboot_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @brcmstb_reboot_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @brcmstb_reboot_driver, ptr noundef nonnull @brcmstb_reboot_probe, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_reboot_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_match_node(ptr noundef nonnull @of_match, ptr noundef %4) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %30

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr @reset_masks, align 4
  %12 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef nonnull @.str.2) #5
  store ptr %12, ptr @regmap, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  br label %30

16:                                               ; preds = %9
  %17 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull @rst_src_en) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %17) #6
  br label %30

21:                                               ; preds = %16
  %22 = tail call i32 @of_property_read_u32_index(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 2, ptr noundef nonnull @sw_mstr_rst) #5
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %22) #6
  br label %30

26:                                               ; preds = %21
  %27 = tail call i32 @register_restart_handler(ptr noundef nonnull @brcmstb_restart_nb) #5
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.6, i32 noundef %27) #6
  br label %30

30:                                               ; preds = %29, %26, %24, %19, %14, %7
  %31 = phi i32 [ -22, %14 ], [ -22, %19 ], [ -22, %24 ], [ -22, %7 ], [ %27, %29 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @brcmstb_restart_handler(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr @regmap, align 4
  %6 = load i32, ptr @rst_src_en, align 4
  %7 = load ptr, ptr @reset_masks, align 4
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %6, i32 noundef %8) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %9) #6
  br label %38

13:                                               ; preds = %3
  %14 = load ptr, ptr @regmap, align 4
  %15 = load i32, ptr @rst_src_en, align 4
  %16 = call i32 @regmap_read(ptr noundef %14, i32 noundef %15, ptr noundef nonnull %4) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %16) #6
  br label %38

20:                                               ; preds = %13
  %21 = load ptr, ptr @regmap, align 4
  %22 = load i32, ptr @sw_mstr_rst, align 4
  %23 = load ptr, ptr @reset_masks, align 4
  %24 = getelementptr inbounds %struct.reset_reg_mask, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @regmap_write(ptr noundef %21, i32 noundef %22, i32 noundef %25) #5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %20
  %29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %26) #6
  br label %38

30:                                               ; preds = %20
  %31 = load ptr, ptr @regmap, align 4
  %32 = load i32, ptr @sw_mstr_rst, align 4
  %33 = call i32 @regmap_read(ptr noundef %31, i32 noundef %32, ptr noundef nonnull %4) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %30
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %33) #6
  br label %38

37:                                               ; preds = %37, %30
  br label %37

38:                                               ; preds = %35, %28, %18, %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
