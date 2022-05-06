; ModuleID = '/llk/IR/arch/arm/kernel/efi.c_pt.bc'
source_filename = "../arch/arm/kernel/efi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.efi_memory_desc_t = type { i32, i32, i64, i64, i64, i64 }
%struct.map_desc = type { i32, i32, i32, i32 }

@processor = external dso_local local_unnamed_addr global %struct.processor, align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_set_mapping_permissions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 3
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 4
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = shl i32 %8, 12
  %10 = add i32 %9, %5
  %11 = and i32 %10, -1048576
  %12 = add i32 %5, -1
  %13 = or i32 %12, 1048575
  %14 = add i32 %13, 1048577
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = tail call i32 @apply_to_page_range(ptr noundef %0, i32 noundef %5, i32 noundef %9, ptr noundef nonnull @set_permissions, ptr noundef %1) #3
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i32 [ %17, %16 ], [ 0, %2 ]
  ret i32 %19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @set_permissions(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 section ".init.text" {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %2, i32 0, i32 5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = lshr i32 %7, 10
  %9 = and i32 %8, 128
  %10 = or i32 %9, %4
  %11 = lshr i32 %7, 5
  %12 = and i32 %11, 512
  %13 = or i32 %10, %12
  %14 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %14(ptr noundef %0, i32 noundef %13, i32 noundef 2048) #3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @efi_create_mapping(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 section ".init.text" {
  %3 = alloca %struct.map_desc, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  %4 = getelementptr inbounds i8, ptr %3, i32 12
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %3, align 4
  %8 = getelementptr inbounds %struct.map_desc, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = lshr i64 %10, 12
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %8, align 4
  %13 = getelementptr inbounds %struct.map_desc, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = shl i32 %16, 12
  store i32 %17, ptr %13, align 4
  %18 = getelementptr inbounds %struct.map_desc, ptr %3, i32 0, i32 3
  %19 = getelementptr inbounds %struct.efi_memory_desc_t, ptr %1, i32 0, i32 5
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = and i64 %20, 4
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = and i64 %20, 2
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %23, %2
  %30 = phi i32 [ 9, %2 ], [ 12, %23 ], [ 3, %26 ]
  store i32 %30, ptr %18, align 4
  br label %31

31:                                               ; preds = %29, %26
  call void @create_mapping_late(ptr noundef %0, ptr noundef nonnull %3, i1 noundef zeroext true) #3
  %32 = load i64, ptr %19, align 8
  %33 = and i64 %32, 147456
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = call i32 @efi_set_mapping_permissions(ptr noundef %0, ptr noundef %1) #4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @create_mapping_late(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold }

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
