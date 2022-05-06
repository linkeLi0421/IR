; ModuleID = '/llk/IR/drivers/char/tpm/eventlog/efi.c_pt.bc'
source_filename = "../drivers/char/tpm/eventlog/efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.tpm_chip = type { %struct.device, %struct.device, %struct.cdev, %struct.cdev, %struct.rw_semaphore, ptr, %struct.tpm_bios_log, %struct.tpm_chip_seqops, %struct.tpm_chip_seqops, i32, i32, i32, [64 x i8], %struct.hwrng, %struct.mutex, i32, i32, i32, i32, i8, [4 x i32], i8, [3 x ptr], [8 x ptr], i32, i32, ptr, %struct.tpm_space, i32, i32, ptr, i32 }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tpm_bios_log = type { ptr, ptr }
%struct.tpm_chip_seqops = type { ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.tpm_space = type { [3 x i32], ptr, [3 x i32], ptr, i32 }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i8, [0 x i8] }
%struct.efi_tcg2_final_events_table = type { i64, i64, [0 x i8] }

@efi_tpm_final_log_size = external dso_local local_unnamed_addr global i32, align 4
@efi = external dso_local local_unnamed_addr global %struct.efi, align 4
@.str = private unnamed_addr constant [38 x i8] c"\013Could not map UEFI TPM log table !\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\014UEFI TPM log area empty\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\013Could not map UEFI TPM log table payload!\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"\013Could not map UEFI TPM final log\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tpm_read_log_efi(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @efi_tpm_final_log_size, align 4
  %3 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %70, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %70, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 6
  %12 = tail call ptr @memremap(i32 noundef %8, i32 noundef 12, i32 noundef 1) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %70

16:                                               ; preds = %10
  %17 = load i32, ptr %12, align 4
  tail call void @memunmap(ptr noundef nonnull %12) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %70

21:                                               ; preds = %16
  %22 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  %23 = add i32 %17, 12
  %24 = tail call ptr @memremap(i32 noundef %22, i32 noundef %23, i32 noundef 1) #5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #6
  br label %70

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %24, i32 0, i32 3
  %30 = tail call ptr @kmemdup(ptr noundef %29, i32 noundef %17, i32 noundef 3264) #5
  store ptr %30, ptr %11, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %67, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %30, i32 %17
  %34 = getelementptr inbounds %struct.tpm_chip, ptr %0, i32 0, i32 6, i32 1
  store ptr %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %24, i32 0, i32 2
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 4
  %39 = icmp eq i32 %38, -1
  %40 = icmp eq i32 %2, 0
  %41 = select i1 %39, i1 true, i1 %40
  %42 = icmp ne i8 %36, 2
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %67, label %44

44:                                               ; preds = %32
  %45 = add i32 %2, 16
  %46 = tail call ptr @memremap(i32 noundef %38, i32 noundef %45, i32 noundef 1) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #6
  %50 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %50) #5
  br label %67

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %24, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = sub i32 %2, %53
  %55 = load ptr, ptr %11, align 4
  %56 = add i32 %54, %17
  %57 = tail call noalias ptr @krealloc(ptr noundef %55, i32 noundef %56, i32 noundef 3264) #7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %60) #5
  br label %67

61:                                               ; preds = %51
  store ptr %57, ptr %11, align 4
  %62 = getelementptr i8, ptr %57, i32 %17
  %63 = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %46, i32 0, i32 2
  %64 = load i32, ptr %52, align 4
  %65 = getelementptr i8, ptr %63, i32 %64
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %62, ptr align 1 %65, i32 %54, i1 false)
  %66 = getelementptr i8, ptr %62, i32 %54
  store ptr %66, ptr %34, align 4
  br label %67

67:                                               ; preds = %61, %59, %48, %32, %28
  %68 = phi i32 [ %37, %32 ], [ 2, %61 ], [ -12, %59 ], [ -12, %48 ], [ -12, %28 ]
  %69 = phi ptr [ null, %32 ], [ %46, %61 ], [ %46, %59 ], [ null, %48 ], [ null, %28 ]
  tail call void @memunmap(ptr noundef %69) #5
  tail call void @memunmap(ptr noundef nonnull %24) #5
  br label %70

70:                                               ; preds = %67, %26, %19, %14, %7, %1
  %71 = phi i32 [ %68, %67 ], [ -12, %26 ], [ -5, %19 ], [ -12, %14 ], [ -19, %1 ], [ -19, %7 ]
  ret i32 %71
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memremap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @memunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(1) }

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
