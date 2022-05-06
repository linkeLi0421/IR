; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/randomalloc.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/randomalloc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.efi_boot_memmap = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_random_alloc(i32 noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3) local_unnamed_addr #0 {
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
  br i1 %17, label %18, label %123

18:                                               ; preds = %4
  %19 = call i32 @llvm.umax.i32(i32 %1, i32 4096)
  %20 = add i32 %0, -1
  %21 = or i32 %20, 4095
  %22 = add i32 %21, 1
  %23 = load i32, ptr %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %114, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %8, align 4
  %27 = call i32 @llvm.ctlz.i32(i32 %19, i1 false), !range !10
  %28 = zext i32 %22 to i64
  %29 = sub nsw i64 1, %28
  %30 = load i32, ptr %6, align 4
  %31 = sub nsw i32 31, %27
  %32 = shl nsw i32 -1, %31
  %33 = xor i32 %32, -1
  %34 = zext i32 %33 to i64
  %35 = xor i64 %34, -1
  br label %36

36:                                               ; preds = %63, %25
  %37 = phi i32 [ 0, %25 ], [ %68, %63 ]
  %38 = phi i32 [ 0, %25 ], [ %67, %63 ]
  %39 = getelementptr i8, ptr %26, i32 %37
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %42, label %63

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %39, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %39, i32 0, i32 4
  %46 = load i64, ptr %45, align 8
  %47 = shl i64 %46, 12
  %48 = add i64 %44, -1
  %49 = add i64 %47, %48
  %50 = call i64 @llvm.umin.i64(i64 %49, i64 4294967295) #4
  %51 = icmp ult i64 %50, %28
  br i1 %51, label %63, label %52

52:                                               ; preds = %42
  %53 = or i64 %48, %34
  %54 = add i64 %53, 1
  %55 = add nsw i64 %29, %50
  %56 = and i64 %55, %35
  %57 = icmp ult i64 %56, %54
  br i1 %57, label %63, label %58

58:                                               ; preds = %52
  %59 = sub i64 %56, %54
  %60 = trunc i64 %59 to i32
  %61 = lshr i32 %60, %31
  %62 = add i32 %61, 1
  br label %63

63:                                               ; preds = %58, %52, %42, %36
  %64 = phi i32 [ %62, %58 ], [ 0, %36 ], [ 0, %42 ], [ 0, %52 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %39, i32 0, i32 3
  store i64 %65, ptr %66, align 8
  %67 = add i32 %64, %38
  %68 = add i32 %30, %37
  %69 = icmp ult i32 %68, %23
  br i1 %69, label %36, label %70

70:                                               ; preds = %63
  %71 = zext i32 %67 to i64
  %72 = zext i32 %3 to i64
  %73 = mul nuw i64 %71, %72
  %74 = lshr i64 %73, 32
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %8, align 4
  %77 = load i32, ptr %6, align 4
  br label %78

78:                                               ; preds = %109, %70
  %79 = phi i32 [ 0, %70 ], [ %112, %109 ]
  %80 = phi i32 [ %75, %70 ], [ %111, %109 ]
  %81 = getelementptr i8, ptr %76, i32 %79
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #4
  %82 = zext i32 %80 to i64
  %83 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %81, i32 0, i32 3
  %84 = load i64, ptr %83, align 8
  %85 = icmp ugt i64 %84, %82
  br i1 %85, label %86, label %109

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %81, i32 0, i32 2
  %88 = load i64, ptr %87, align 8
  %89 = add i64 %88, -1
  %90 = add i32 %19, -1
  %91 = zext i32 %90 to i64
  %92 = or i64 %89, %91
  %93 = mul i32 %80, %19
  %94 = zext i32 %93 to i64
  %95 = add nuw nsw i64 %94, 1
  %96 = add i64 %95, %92
  store i64 %96, ptr %10, align 8
  %97 = lshr exact i32 %22, 12
  %98 = load ptr, ptr @efi_system_table, align 4
  %99 = getelementptr inbounds %struct.anon.1, ptr %98, i32 0, i32 10
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.anon, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = call i32 %102(i32 noundef 2, i32 noundef 2, i32 noundef %97, ptr noundef nonnull %10) #5
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %86
  %106 = load i64, ptr %10, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, ptr %2, align 4
  br label %108

108:                                              ; preds = %105, %86
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  br label %114

109:                                              ; preds = %78
  %110 = trunc i64 %84 to i32
  %111 = sub i32 %80, %110
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #4
  %112 = add i32 %77, %79
  %113 = icmp ult i32 %112, %23
  br i1 %113, label %78, label %114

114:                                              ; preds = %109, %108, %18
  %115 = phi i32 [ %103, %108 ], [ 0, %18 ], [ 0, %109 ]
  %116 = load ptr, ptr @efi_system_table, align 4
  %117 = getelementptr inbounds %struct.anon.1, ptr %116, i32 0, i32 10
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.anon, ptr %118, i32 0, i32 7
  %120 = load ptr, ptr %119, align 8
  %121 = load ptr, ptr %8, align 4
  %122 = call i32 %120(ptr noundef %121) #5
  br label %123

123:                                              ; preds = %114, %4
  %124 = phi i32 [ %115, %114 ], [ %16, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #4
  ret i32 %124
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @efi_get_memory_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind optsize "no-builtins" }

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
!10 = !{i32 0, i32 33}
