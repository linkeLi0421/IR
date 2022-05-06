; ModuleID = '/llk/IR/drivers/firmware/efi/tpm.c_pt.bc'
source_filename = "../drivers/firmware/efi/tpm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_efi_tpm_final_log_size:\09\09\09\09\09"
module asm "\09.asciz \09\22efi_tpm_final_log_size\22\09\09\09\09\09"
module asm "__kstrtabns_efi_tpm_final_log_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.efi = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.efi_memory_map, i32 }
%struct.efi_memory_map = type { i32, ptr, ptr, i32, i32, i32, i32 }
%struct.linux_efi_tpm_eventlog = type { i32, i32, i8, [0 x i8] }
%struct.efi_tcg2_final_events_table = type { i64, i64, [0 x i8] }
%struct.tcg_pcr_event = type { i32, i32, [20 x i8], i32, [0 x i8] }
%struct.tcg_pcr_event2_head = type { i32, i32, i32, [0 x %struct.tpm_digest] }
%struct.tpm_digest = type { i16, [64 x i8] }
%struct.tcg_efi_specid_event_algs = type { i16, i16 }

@efi_tpm_final_log_size = dso_local global i32 0, align 4
@__kstrtab_efi_tpm_final_log_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_efi_tpm_final_log_size = external dso_local constant [0 x i8], align 1
@__ksymtab_efi_tpm_final_log_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @efi_tpm_final_log_size to i32), ptr @__kstrtab_efi_tpm_final_log_size, ptr @__kstrtabns_efi_tpm_final_log_size }, section "___ksymtab+efi_tpm_final_log_size", align 4
@efi = external dso_local local_unnamed_addr global %struct.efi, align 4
@.str = private unnamed_addr constant [45 x i8] c"\013Failed to map TPM Event Log table @ 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\016TPM Final Events table not present\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"\014[Firmware Bug]: TPM Final Events table invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"\013Failed to map TPM Final Event Log table @ 0x%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"\013[Firmware Bug]: Failed to parse event in TPM Final Events Log\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Spec ID Event03\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_efi_tpm_final_log_size], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_tpm_eventlog_init() local_unnamed_addr #0 section ".init.text" {
  %1 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %53, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @early_memremap(i32 noundef %1, i32 noundef 12) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7) #7
  store i32 -1, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  br label %53

9:                                                ; preds = %3
  %10 = load i32, ptr %4, align 4
  %11 = add i32 %10, 12
  %12 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 8), align 4
  %13 = tail call i32 @memblock_reserve(i32 noundef %12, i32 noundef %11) #6
  %14 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %9
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %51

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %4, i32 0, i32 2
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 2
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %51

24:                                               ; preds = %18
  %25 = tail call ptr @early_memremap(i32 noundef %14, i32 noundef 16) #6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 4
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %28) #7
  store i32 -1, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 4
  br label %51

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.efi_tcg2_final_events_table, ptr %25, i32 0, i32 1
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr getelementptr inbounds (%struct.efi, ptr @efi, i32 0, i32 9), align 4
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr i8, ptr %36, i32 16
  %38 = trunc i64 %32 to i32
  %39 = getelementptr inbounds %struct.linux_efi_tpm_eventlog, ptr %4, i32 0, i32 3
  %40 = tail call fastcc i32 @tpm2_calc_event_log_size(ptr noundef %37, i32 noundef %38, ptr noundef %39) #8
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %49

44:                                               ; preds = %34, %30
  %45 = phi i32 [ %40, %34 ], [ 0, %30 ]
  %46 = ptrtoint ptr %25 to i32
  %47 = add nuw i32 %45, 16
  %48 = tail call i32 @memblock_reserve(i32 noundef %46, i32 noundef %47) #6
  store i32 %45, ptr @efi_tpm_final_log_size, align 4
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ -22, %42 ], [ 0, %44 ]
  tail call void @early_memunmap(ptr noundef nonnull %25, i32 noundef 16) #6
  br label %51

51:                                               ; preds = %49, %27, %22, %16
  %52 = phi i32 [ 0, %16 ], [ 0, %22 ], [ %50, %49 ], [ -12, %27 ]
  tail call void @early_memunmap(ptr noundef nonnull %4, i32 noundef 12) #6
  br label %53

53:                                               ; preds = %51, %6, %0
  %54 = phi i32 [ %52, %51 ], [ -12, %6 ], [ 0, %0 ]
  ret i32 %54
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @early_memremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @memblock_reserve(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @tpm2_calc_event_log_size(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 section ".init.text" {
  %4 = alloca [20 x i8], align 1
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %102

6:                                                ; preds = %3
  %7 = ptrtoint ptr %0 to i32
  %8 = getelementptr inbounds %struct.tcg_pcr_event, ptr %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tcg_pcr_event, ptr %2, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tcg_pcr_event, ptr %2, i32 0, i32 4
  %11 = getelementptr inbounds %struct.tcg_pcr_event, ptr %2, i32 1, i32 2, i32 16
  %12 = getelementptr inbounds %struct.tcg_pcr_event, ptr %2, i32 1, i32 3
  br label %13

13:                                               ; preds = %98, %6
  %14 = phi i32 [ 0, %6 ], [ %99, %98 ]
  %15 = phi i32 [ %1, %6 ], [ %100, %98 ]
  %16 = getelementptr i8, ptr %0, i32 %14
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(20) %4, i8 0, i32 20, i1 false) #6
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = ptrtoint ptr %16 to i32
  %19 = tail call ptr @early_memremap(i32 noundef %18, i32 noundef 12) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %93, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %19, i32 0, i32 2
  %23 = load volatile i32, ptr %22, align 1
  %24 = getelementptr inbounds %struct.tcg_pcr_event2_head, ptr %19, i32 0, i32 1
  %25 = load volatile i32, ptr %24, align 1
  %26 = load i32, ptr %2, align 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %93

28:                                               ; preds = %21
  %29 = load i32, ptr %8, align 1
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %93

31:                                               ; preds = %28
  %32 = call i32 @bcmp(ptr noundef dereferenceable(20) %9, ptr noundef nonnull dereferenceable(20) %4, i32 20) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %93

34:                                               ; preds = %31
  %35 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %10, ptr noundef nonnull dereferenceable(16) @.str.5, i32 16) #6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %34
  %38 = load i32, ptr %11, align 1
  %39 = icmp ne i32 %38, 0
  %40 = icmp eq i32 %23, %38
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %93

42:                                               ; preds = %37
  %43 = icmp eq i32 %23, 0
  br i1 %43, label %77, label %47

44:                                               ; preds = %73
  %45 = add nuw i32 %48, 1
  %46 = icmp eq i32 %45, %23
  br i1 %46, label %77, label %47

47:                                               ; preds = %44, %42
  %48 = phi i32 [ %45, %44 ], [ 0, %42 ]
  %49 = phi ptr [ %75, %44 ], [ %17, %42 ]
  %50 = phi i32 [ 2, %44 ], [ 12, %42 ]
  %51 = phi ptr [ %53, %44 ], [ %19, %42 ]
  tail call void @early_memunmap(ptr noundef nonnull %51, i32 noundef %50) #6
  %52 = ptrtoint ptr %49 to i32
  %53 = tail call ptr @early_memremap(i32 noundef %52, i32 noundef 2) #6
  %54 = icmp eq ptr %53, null
  br i1 %54, label %93, label %55

55:                                               ; preds = %47
  %56 = load i16, ptr %53, align 1
  %57 = getelementptr i8, ptr %49, i32 2
  %58 = load i32, ptr %11, align 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %70, %55
  %61 = phi i32 [ %71, %70 ], [ 0, %55 ]
  %62 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %12, i32 0, i32 %61
  %63 = load i16, ptr %62, align 1
  %64 = icmp eq i16 %56, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = getelementptr [0 x %struct.tcg_efi_specid_event_algs], ptr %12, i32 0, i32 %61, i32 1
  %67 = load i16, ptr %66, align 1
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %57, i32 %68
  br label %73

70:                                               ; preds = %60
  %71 = add nuw i32 %61, 1
  %72 = icmp eq i32 %71, %58
  br i1 %72, label %93, label %60

73:                                               ; preds = %65, %55
  %74 = phi i32 [ %61, %65 ], [ 0, %55 ]
  %75 = phi ptr [ %69, %65 ], [ %57, %55 ]
  %76 = icmp eq i32 %74, %58
  br i1 %76, label %93, label %44

77:                                               ; preds = %44, %42
  %78 = phi ptr [ %19, %42 ], [ %53, %44 ]
  %79 = phi i32 [ 12, %42 ], [ 2, %44 ]
  %80 = phi ptr [ %17, %42 ], [ %75, %44 ]
  tail call void @early_memunmap(ptr noundef nonnull %78, i32 noundef %79) #6
  %81 = add nuw nsw i32 %79, 4
  %82 = ptrtoint ptr %80 to i32
  %83 = tail call ptr @early_memremap(i32 noundef %82, i32 noundef %81) #6
  %84 = icmp eq ptr %83, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %77
  %86 = getelementptr i8, ptr %80, i32 4
  %87 = load i32, ptr %83, align 1
  %88 = getelementptr i8, ptr %86, i32 %87
  %89 = ptrtoint ptr %88 to i32
  %90 = icmp eq i32 %25, 0
  %91 = icmp eq i32 %87, 0
  %92 = select i1 %90, i1 %91, i1 false
  br i1 %92, label %93, label %96

93:                                               ; preds = %85, %77, %73, %70, %47, %37, %34, %31, %28, %21, %13
  %94 = phi ptr [ %53, %70 ], [ %53, %73 ], [ null, %47 ], [ %83, %85 ], [ null, %13 ], [ %19, %31 ], [ %19, %28 ], [ %19, %21 ], [ %19, %37 ], [ %19, %34 ], [ null, %77 ]
  %95 = phi i32 [ 2, %70 ], [ 2, %47 ], [ 2, %73 ], [ %81, %85 ], [ 12, %13 ], [ 12, %31 ], [ 12, %28 ], [ 12, %21 ], [ 12, %37 ], [ 12, %34 ], [ %81, %77 ]
  tail call void @early_memunmap(ptr noundef %94, i32 noundef %95) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  br label %102

96:                                               ; preds = %85
  tail call void @early_memunmap(ptr noundef nonnull %83, i32 noundef %81) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #6
  %97 = icmp eq ptr %88, %16
  br i1 %97, label %102, label %98

98:                                               ; preds = %96
  %99 = sub i32 %89, %7
  %100 = add nsw i32 %15, -1
  %101 = icmp sgt i32 %15, 1
  br i1 %101, label %13, label %102

102:                                              ; preds = %98, %96, %93, %3
  %103 = phi i32 [ -1, %93 ], [ 0, %3 ], [ -1, %96 ], [ %99, %98 ]
  ret i32 %103
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_memunmap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

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
