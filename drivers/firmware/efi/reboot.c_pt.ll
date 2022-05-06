; ModuleID = '/llk/IR/drivers/firmware/efi/reboot.c_pt.bc'
source_filename = "../drivers/firmware/efi/reboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }

@efi_reboot_quirk_mode = dso_local local_unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"platform\00", align 1
@__const.efi_reboot.str = private unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str.4 = private unnamed_addr constant [96 x i8] c"\012efi: %s reset requested but pending capsule update requires %s reset... Performing %s reset.\0A\00", align 1
@efi = external dso_local local_unnamed_addr global %struct.efi, align 4
@__initcall__kmod_reboot__210_77_efi_shutdown_init7 = internal global ptr @efi_shutdown_init, section ".initcall7.init", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@orig_pm_power_off = internal unnamed_addr global ptr null, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_reboot__210_77_efi_shutdown_init7], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @efi_reboot(i32 noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %5 = and i32 %4, 1024
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = add i32 %0, -1
  %9 = and i32 %8, -3
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, ptr @efi_reboot_quirk_mode, align 4
  %13 = icmp eq i32 %12, -1
  %14 = select i1 %13, i32 %11, i32 %12
  %15 = call zeroext i1 @efi_capsule_pending(ptr noundef nonnull %3) #5
  br i1 %15, label %16, label %26

16:                                               ; preds = %7
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = getelementptr [4 x ptr], ptr @__const.efi_reboot.str, i32 0, i32 %14
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr [4 x ptr], ptr @__const.efi_reboot.str, i32 0, i32 %17
  %23 = load ptr, ptr %22, align 4
  %24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %21, ptr noundef %23, ptr noundef %23) #6
  %25 = load i32, ptr %3, align 4
  br label %26

26:                                               ; preds = %19, %16, %7
  %27 = phi i32 [ %14, %7 ], [ %25, %19 ], [ %14, %16 ]
  %28 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 24), align 4
  call void %28(i32 noundef %27, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  br label %29

29:                                               ; preds = %26, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efi_capsule_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define weak dso_local zeroext i1 @efi_poweroff_required() local_unnamed_addr #0 {
  ret i1 false
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @efi_shutdown_init() #4 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 2), align 4
  %2 = and i32 %1, 1024
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %0
  %5 = tail call zeroext i1 @efi_poweroff_required()
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = load ptr, ptr @pm_power_off, align 4
  store ptr %7, ptr @orig_pm_power_off, align 4
  store ptr @efi_power_off, ptr @pm_power_off, align 4
  br label %8

8:                                                ; preds = %6, %4, %0
  %9 = phi i32 [ -19, %0 ], [ 0, %6 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @efi_power_off() #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 24), align 4
  tail call void %1(i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null) #5
  %2 = load ptr, ptr @orig_pm_power_off, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  tail call void %2() #5
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
