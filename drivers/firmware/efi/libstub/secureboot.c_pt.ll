; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/secureboot.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/secureboot.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.guid_t = type { [16 x i8] }
%struct.anon.0 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [55 x i8] c"\013ERROR: Could not determine UEFI Secure Boot status.\0A\00", align 1
@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@shim_MokSBState_name = internal constant [11 x i16] [i16 77, i16 111, i16 107, i16 83, i16 66, i16 83, i16 116, i16 97, i16 116, i16 101, i16 0], align 2
@shim_guid = internal constant %struct.guid_t { [16 x i8] c"P\AB]`F\E0\00C\AB\B6=\D8\10\DD\8B#" }, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"\016UEFI Secure Boot is enabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i16] [i16 83, i16 101, i16 99, i16 117, i16 114, i16 101, i16 66, i16 111, i16 111, i16 116, i16 0], align 2
@.str.3 = private unnamed_addr constant [10 x i16] [i16 83, i16 101, i16 116, i16 117, i16 112, i16 77, i16 111, i16 100, i16 101, i16 0], align 2

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_get_secureboot() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca %struct.guid_t, align 4
  %5 = alloca %struct.guid_t, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #3
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  store i8 0, ptr %8, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #3
  store i8 0, ptr %1, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #3
  store i8 0, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i32 1, ptr %3, align 4
  store i8 97, ptr %4, align 4
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 -33, ptr %9, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 -28, ptr %10, align 2
  %11 = getelementptr inbounds i8, ptr %4, i32 3
  store i8 -117, ptr %11, align 1
  %12 = getelementptr inbounds i8, ptr %4, i32 4
  store i8 -54, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %4, i32 5
  store i8 -109, ptr %13, align 1
  %14 = getelementptr inbounds i8, ptr %4, i32 6
  store i8 -46, ptr %14, align 2
  %15 = getelementptr inbounds i8, ptr %4, i32 7
  store i8 17, ptr %15, align 1
  %16 = getelementptr inbounds i8, ptr %4, i32 8
  store i8 -86, ptr %16, align 4
  %17 = getelementptr inbounds i8, ptr %4, i32 9
  store i8 13, ptr %17, align 1
  %18 = getelementptr inbounds i8, ptr %4, i32 10
  store i8 0, ptr %18, align 2
  %19 = getelementptr inbounds i8, ptr %4, i32 11
  store i8 -32, ptr %19, align 1
  %20 = getelementptr inbounds i8, ptr %4, i32 12
  store i8 -104, ptr %20, align 4
  %21 = getelementptr inbounds i8, ptr %4, i32 13
  store i8 3, ptr %21, align 1
  %22 = getelementptr inbounds i8, ptr %4, i32 14
  store i8 43, ptr %22, align 2
  %23 = getelementptr inbounds i8, ptr %4, i32 15
  store i8 -116, ptr %23, align 1
  %24 = load ptr, ptr @efi_system_table, align 4
  %25 = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 9
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 7
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 %28(ptr noundef nonnull @.str.2, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %1) #4
  switch i32 %29, label %58 [
    i32 -2147483634, label %57
    i32 0, label %30
  ]

30:                                               ; preds = %0
  store i32 1, ptr %3, align 4
  store i8 97, ptr %5, align 4
  %31 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 -33, ptr %31, align 1
  %32 = getelementptr inbounds i8, ptr %5, i32 2
  store i8 -28, ptr %32, align 2
  %33 = getelementptr inbounds i8, ptr %5, i32 3
  store i8 -117, ptr %33, align 1
  %34 = getelementptr inbounds i8, ptr %5, i32 4
  store i8 -54, ptr %34, align 4
  %35 = getelementptr inbounds i8, ptr %5, i32 5
  store i8 -109, ptr %35, align 1
  %36 = getelementptr inbounds i8, ptr %5, i32 6
  store i8 -46, ptr %36, align 2
  %37 = getelementptr inbounds i8, ptr %5, i32 7
  store i8 17, ptr %37, align 1
  %38 = getelementptr inbounds i8, ptr %5, i32 8
  store i8 -86, ptr %38, align 4
  %39 = getelementptr inbounds i8, ptr %5, i32 9
  store i8 13, ptr %39, align 1
  %40 = getelementptr inbounds i8, ptr %5, i32 10
  store i8 0, ptr %40, align 2
  %41 = getelementptr inbounds i8, ptr %5, i32 11
  store i8 -32, ptr %41, align 1
  %42 = getelementptr inbounds i8, ptr %5, i32 12
  store i8 -104, ptr %42, align 4
  %43 = getelementptr inbounds i8, ptr %5, i32 13
  store i8 3, ptr %43, align 1
  %44 = getelementptr inbounds i8, ptr %5, i32 14
  store i8 43, ptr %44, align 2
  %45 = getelementptr inbounds i8, ptr %5, i32 15
  store i8 -116, ptr %45, align 1
  %46 = load ptr, ptr @efi_system_table, align 4
  %47 = getelementptr inbounds %struct.anon.0, ptr %46, i32 0, i32 9
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.anon, ptr %48, i32 0, i32 7
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 %50(ptr noundef nonnull @.str.3, ptr noundef nonnull %5, ptr noundef null, ptr noundef nonnull %3, ptr noundef nonnull %2) #4
  %52 = load i8, ptr %1, align 1
  %53 = icmp eq i8 %52, 0
  %54 = load i8, ptr %2, align 1
  %55 = icmp eq i8 %54, 1
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %30, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  br label %77

58:                                               ; preds = %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  %59 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #4
  br label %77

60:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  store i32 1, ptr %7, align 4
  %61 = load ptr, ptr @efi_system_table, align 4
  %62 = getelementptr inbounds %struct.anon.0, ptr %61, i32 0, i32 9
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.anon, ptr %63, i32 0, i32 7
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 %65(ptr noundef nonnull @shim_MokSBState_name, ptr noundef nonnull @shim_guid, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load i32, ptr %6, align 4
  %70 = and i32 %69, 4
  %71 = icmp eq i32 %70, 0
  %72 = load i8, ptr %8, align 1
  %73 = icmp eq i8 %72, 1
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %68, %60
  %76 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str.1) #4
  br label %77

77:                                               ; preds = %75, %68, %58, %57
  %78 = phi i32 [ 1, %58 ], [ 3, %75 ], [ 2, %68 ], [ 2, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  ret i32 %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{!"auto-init"}
