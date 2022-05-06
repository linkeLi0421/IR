; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/mem.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi_boot_memmap = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_get_memory_map(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #2
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #2
  store i32 0, ptr %4, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  store i32 40, ptr %6, align 4
  %7 = load ptr, ptr %5, align 4
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 5
  %10 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store i32 %9, ptr %11, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  store i32 %13, ptr %15, align 4
  %16 = load ptr, ptr @efi_system_table, align 4
  %17 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %10, align 4
  %22 = load i32, ptr %21, align 4
  %23 = call i32 %20(i32 noundef 2, i32 noundef %22, ptr noundef nonnull %2) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %95

25:                                               ; preds = %47, %1
  %26 = load ptr, ptr %5, align 4
  store i32 0, ptr %26, align 4
  store i32 0, ptr %3, align 4
  %27 = load ptr, ptr @efi_system_table, align 4
  %28 = getelementptr inbounds %struct.anon.1, ptr %27, i32 0, i32 10
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.anon, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %10, align 4
  %33 = load ptr, ptr %2, align 4
  %34 = load ptr, ptr %5, align 4
  %35 = call i32 %31(ptr noundef %32, ptr noundef %33, ptr noundef nonnull %3, ptr noundef %34, ptr noundef nonnull %4) #3
  %36 = icmp eq i32 %35, -2147483643
  br i1 %36, label %47, label %37

37:                                               ; preds = %25
  %38 = load ptr, ptr %14, align 4
  %39 = load i32, ptr %38, align 4
  %40 = load ptr, ptr %10, align 4
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = load i32, ptr %42, align 4
  %44 = sub i32 %39, %41
  %45 = udiv i32 %44, %43
  %46 = icmp ugt i32 %45, 7
  br i1 %46, label %73, label %47

47:                                               ; preds = %37, %25
  %48 = load ptr, ptr @efi_system_table, align 4
  %49 = getelementptr inbounds %struct.anon.1, ptr %48, i32 0, i32 10
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.anon, ptr %50, i32 0, i32 7
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %2, align 4
  %54 = call i32 %52(ptr noundef %53) #3
  %55 = load ptr, ptr %5, align 4
  %56 = load i32, ptr %55, align 4
  %57 = shl i32 %56, 3
  %58 = load ptr, ptr %10, align 4
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %57
  store i32 %60, ptr %58, align 4
  %61 = load ptr, ptr %10, align 4
  %62 = load i32, ptr %61, align 4
  %63 = load ptr, ptr %14, align 4
  store i32 %62, ptr %63, align 4
  %64 = load ptr, ptr @efi_system_table, align 4
  %65 = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 10
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.anon, ptr %66, i32 0, i32 6
  %68 = load ptr, ptr %67, align 4
  %69 = load ptr, ptr %10, align 4
  %70 = load i32, ptr %69, align 4
  %71 = call i32 %68(i32 noundef 2, i32 noundef %70, ptr noundef nonnull %2) #3
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %25, label %95

73:                                               ; preds = %37
  %74 = icmp eq i32 %35, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr %3, align 4
  store i32 %80, ptr %77, align 4
  br label %81

81:                                               ; preds = %79, %75
  %82 = getelementptr inbounds %struct.efi_boot_memmap, ptr %0, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %81
  %86 = load i32, ptr %4, align 4
  store i32 %86, ptr %83, align 4
  br label %95

87:                                               ; preds = %73
  %88 = load ptr, ptr @efi_system_table, align 4
  %89 = getelementptr inbounds %struct.anon.1, ptr %88, i32 0, i32 10
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 7
  %92 = load ptr, ptr %91, align 8
  %93 = load ptr, ptr %2, align 4
  %94 = call i32 %92(ptr noundef %93) #3
  br label %95

95:                                               ; preds = %87, %85, %81, %47, %1
  %96 = phi i32 [ 0, %85 ], [ 0, %81 ], [ %35, %87 ], [ %23, %1 ], [ %71, %47 ]
  %97 = load ptr, ptr %2, align 4
  %98 = load ptr, ptr %0, align 4
  store ptr %97, ptr %98, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #2
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_allocate_pages(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #2
  %5 = add i32 %2, 1
  %6 = and i32 %5, -4096
  %7 = add i32 %6, -1
  %8 = zext i32 %7 to i64
  store i64 %8, ptr %4, align 8
  %9 = load ptr, ptr @efi_system_table, align 4
  %10 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = add i32 %0, 4095
  %15 = lshr i32 %14, 12
  %16 = call i32 %13(i32 noundef 1, i32 noundef 2, i32 noundef %15, ptr noundef nonnull %4) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i64, ptr %4, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, ptr %1, align 4
  br label %21

21:                                               ; preds = %18, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #2
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden void @efi_free(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %16, label %4

4:                                                ; preds = %2
  %5 = add i32 %0, -1
  %6 = or i32 %5, 4095
  %7 = add i32 %6, 1
  %8 = lshr exact i32 %7, 12
  %9 = load ptr, ptr @efi_system_table, align 4
  %10 = getelementptr inbounds %struct.anon.1, ptr %9, i32 0, i32 10
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = zext i32 %1 to i64
  %15 = tail call i32 %13(i64 noundef %14, i32 noundef %8) #3
  br label %16

16:                                               ; preds = %4, %2
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind optsize "no-builtins" }

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
