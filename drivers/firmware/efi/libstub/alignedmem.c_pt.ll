; ModuleID = '/llk/IR/drivers/firmware/efi/libstub/alignedmem.c_pt.bc'
source_filename = "../drivers/firmware/efi/libstub/alignedmem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.1 = type { %struct.efi_table_hdr_t, i32, i32, i32, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.efi_table_hdr_t = type { i64, i32, i32, i32, i32 }
%struct.anon = type { %struct.efi_table_hdr_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@efi_system_table = external hidden local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @efi_allocate_pages_aligned(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  %6 = tail call i32 @llvm.umax.i32(i32 %3, i32 4096)
  %7 = add i32 %2, 1
  %8 = add i32 %6, -1
  %9 = sub i32 0, %6
  %10 = and i32 %7, %9
  %11 = add i32 %10, -1
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %5, align 8
  %13 = add i32 %0, -1
  %14 = or i32 %13, 4095
  %15 = add i32 %14, 1
  %16 = lshr i32 %6, 12
  %17 = add nsw i32 %16, -1
  %18 = load ptr, ptr @efi_system_table, align 4
  %19 = getelementptr inbounds %struct.anon.1, ptr %18, i32 0, i32 10
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = lshr exact i32 %15, 12
  %24 = add nuw nsw i32 %17, %23
  %25 = call i32 %22(i32 noundef 1, i32 noundef 2, i32 noundef %24, ptr noundef nonnull %5) #4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %4
  %28 = load i64, ptr %5, align 8
  %29 = trunc i64 %28 to i32
  %30 = add i32 %8, %29
  %31 = and i32 %30, %9
  store i32 %31, ptr %1, align 4
  %32 = icmp ugt i32 %6, 8191
  br i1 %32, label %33, label %61

33:                                               ; preds = %27
  %34 = zext i32 %8 to i64
  %35 = and i64 %28, %34
  %36 = lshr i64 %35, 12
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @efi_system_table, align 4
  %41 = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 10
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = sub nsw i32 %16, %37
  %46 = call i32 %44(i64 noundef %28, i32 noundef %45) #4
  %47 = add nsw i32 %37, -1
  br label %48

48:                                               ; preds = %39, %33
  %49 = phi i32 [ %47, %39 ], [ %17, %33 ]
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @efi_system_table, align 4
  %53 = getelementptr inbounds %struct.anon.1, ptr %52, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.anon, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = load i32, ptr %1, align 4
  %58 = add i32 %57, %15
  %59 = zext i32 %58 to i64
  %60 = call i32 %56(i64 noundef %59, i32 noundef %49) #4
  br label %61

61:                                               ; preds = %51, %48, %27, %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
