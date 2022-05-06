; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/relocate.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/relocate.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi_boot_memmap = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4
@.str = private unnamed_addr constant [55 x i8] c"\013ERROR: Failed to allocate usable memory for kernel.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_low_alloc_above(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 4
  %9 = alloca %struct.efi_boot_memmap, align 4
  %10 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #4
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  store i32 0, ptr %6, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  store i32 0, ptr %7, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  store ptr null, ptr %8, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #4
  store ptr %8, ptr %9, align 4
  %11 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 1
  store ptr %5, ptr %11, align 4
  %12 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 2
  store ptr %6, ptr %12, align 4
  %13 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 3
  store ptr null, ptr %13, align 4
  %14 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 4
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.efi_boot_memmap, ptr %9, i32 0, i32 5
  store ptr %7, ptr %15, align 4
  %16 = call i32 @efi_get_memory_map(ptr noundef nonnull %9) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %97

18:                                               ; preds = %4
  %19 = add i32 %0, -1
  %20 = or i32 %19, 4095
  %21 = add i32 %20, 1
  %22 = lshr exact i32 %21, 12
  %23 = load i32, ptr %5, align 4
  %24 = load i32, ptr %6, align 4
  %25 = icmp ugt i32 %24, %23
  br i1 %25, label %82, label %26

26:                                               ; preds = %18
  %27 = call i32 @llvm.umax.i32(i32 %1, i32 4096)
  %28 = zext i32 %22 to i64
  %29 = zext i32 %3 to i64
  %30 = add i32 %27, -1
  %31 = zext i32 %30 to i64
  %32 = zext i32 %21 to i64
  br label %33

33:                                               ; preds = %75, %26
  %34 = phi i32 [ %24, %26 ], [ %76, %75 ]
  %35 = phi i32 [ %23, %26 ], [ %77, %75 ]
  %36 = phi i32 [ 0, %26 ], [ %79, %75 ]
  %37 = phi i32 [ 0, %26 ], [ %78, %75 ]
  %38 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  store i64 0, ptr %10, align 8, !annotation !9
  %39 = mul i32 %34, %36
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = load i32, ptr %40, align 8
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %75

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %40, i32 0, i32 4
  %45 = load i64, ptr %44, align 8
  %46 = icmp ult i64 %45, %28
  br i1 %46, label %75, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %40, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  store i64 %49, ptr %10, align 8
  %50 = load i64, ptr %44, align 8
  %51 = shl i64 %50, 12
  %52 = add i64 %51, %49
  %53 = call i64 @llvm.umax.i64(i64 %49, i64 %29)
  %54 = add i64 %53, -1
  %55 = or i64 %54, %31
  %56 = add i64 %55, 1
  store i64 %56, ptr %10, align 8
  %57 = add i64 %56, %32
  %58 = icmp ugt i64 %57, %52
  br i1 %58, label %75, label %59

59:                                               ; preds = %47
  %60 = load ptr, ptr @efi_system_table, align 4
  %61 = getelementptr inbounds %struct.anon.1, ptr %60, i32 0, i32 10
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.anon, ptr %62, i32 0, i32 3
  %64 = load ptr, ptr %63, align 8
  %65 = call i32 %64(i32 noundef 2, i32 noundef 2, i32 noundef %22, ptr noundef nonnull %10) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, ptr %5, align 4
  %69 = load i32, ptr %6, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load i64, ptr %10, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %73 = load i32, ptr %5, align 4
  %74 = load i32, ptr %6, align 4
  br label %82

75:                                               ; preds = %67, %47, %43, %33
  %76 = phi i32 [ %69, %67 ], [ %34, %47 ], [ %34, %43 ], [ %34, %33 ]
  %77 = phi i32 [ %68, %67 ], [ %35, %47 ], [ %35, %43 ], [ %35, %33 ]
  %78 = phi i32 [ %65, %67 ], [ %37, %47 ], [ %37, %43 ], [ %37, %33 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %79 = add nuw i32 %36, 1
  %80 = udiv i32 %77, %76
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %33, label %82

82:                                               ; preds = %75, %70, %18
  %83 = phi i32 [ %74, %70 ], [ %24, %18 ], [ %76, %75 ]
  %84 = phi i32 [ %73, %70 ], [ %23, %18 ], [ %77, %75 ]
  %85 = phi i32 [ %36, %70 ], [ 0, %18 ], [ %79, %75 ]
  %86 = phi i32 [ 0, %70 ], [ 0, %18 ], [ %78, %75 ]
  %87 = udiv i32 %84, %83
  %88 = icmp eq i32 %85, %87
  %89 = select i1 %88, i32 -2147483634, i32 %86
  %90 = load ptr, ptr @efi_system_table, align 4
  %91 = getelementptr inbounds %struct.anon.1, ptr %90, i32 0, i32 10
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.anon, ptr %92, i32 0, i32 7
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %8, align 4
  %96 = call i32 %94(ptr noundef %95) #5
  br label %97

97:                                               ; preds = %82, %4
  %98 = phi i32 [ %16, %4 ], [ %89, %82 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %98
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_memory_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_relocate_kernel(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #4
  %9 = zext i32 %3 to i64
  store i64 %9, ptr %8, align 8
  %10 = icmp ne ptr %0, null
  %11 = icmp ne i32 %1, 0
  %12 = and i1 %10, %11
  %13 = icmp ne i32 %2, 0
  %14 = and i1 %12, %13
  %15 = icmp uge i32 %2, %1
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %44

17:                                               ; preds = %6
  %18 = load i32, ptr %0, align 4
  %19 = add i32 %2, -1
  %20 = or i32 %19, 4095
  %21 = add i32 %20, 1
  %22 = lshr exact i32 %21, 12
  %23 = load ptr, ptr @efi_system_table, align 4
  %24 = getelementptr inbounds %struct.anon.1, ptr %23, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = call i32 %27(i32 noundef 2, i32 noundef 2, i32 noundef %22, ptr noundef nonnull %8) #5
  %29 = load i64, ptr %8, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, ptr %7, align 4
  %31 = icmp eq i32 %28, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %17
  %33 = call i32 @efi_low_alloc_above(i32 noundef %2, i32 noundef %4, ptr noundef nonnull %7, i32 noundef %5) #6
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, ptr %7, align 4
  br label %39

37:                                               ; preds = %32
  %38 = call i32 (ptr, ...) @efi_printk(ptr noundef nonnull @.str) #5
  br label %44

39:                                               ; preds = %35, %17
  %40 = phi i32 [ %36, %35 ], [ %30, %17 ]
  %41 = inttoptr i32 %40 to ptr
  %42 = inttoptr i32 %18 to ptr
  %43 = call ptr @memcpy(ptr noundef %41, ptr noundef %42, i32 noundef %1) #5
  store i32 %40, ptr %0, align 4
  br label %44

44:                                               ; preds = %39, %37, %6
  %45 = phi i32 [ %33, %37 ], [ 0, %39 ], [ -2147483646, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  ret i32 %45
}

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid optsize
declare hidden ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #3

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind optsize "no-builtins" }
attributes #6 = { nobuiltin optsize "no-builtins" }

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
