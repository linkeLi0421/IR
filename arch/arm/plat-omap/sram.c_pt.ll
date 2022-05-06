; ModuleID = '/llk/IR/arch/arm/plat-omap/sram.c_pt.bc'
source_filename = "../arch/arm/plat-omap/sram.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@omap_sram_base = internal unnamed_addr global ptr null, align 4
@omap_sram_size = internal unnamed_addr global i32 0, align 4
@omap_sram_ceil = internal unnamed_addr global ptr null, align 4
@omap_sram_skip = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"\013SRAM: Could not map\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"\013Not enough space in SRAM\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @omap_sram_push(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @omap_sram_ceil, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = load ptr, ptr @omap_sram_base, align 4
  %6 = load i32, ptr @omap_sram_skip, align 4
  %7 = getelementptr i8, ptr %5, i32 %6
  %8 = ptrtoint ptr %7 to i32
  %9 = sub i32 %4, %8
  %10 = icmp ult i32 %9, %1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #6
  br label %37

13:                                               ; preds = %2
  %14 = sub i32 %4, %1
  %15 = and i32 %14, -8
  %16 = inttoptr i32 %15 to ptr
  store ptr %16, ptr @omap_sram_ceil, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %13
  %19 = and i32 %14, -4096
  %20 = add i32 %1, 4095
  %21 = lshr i32 %20, 12
  %22 = tail call i32 @set_memory_rw(i32 noundef %19, i32 noundef %21) #7
  %23 = tail call i32 asm "", "=r,0"(ptr %0) #8, !srcloc !8
  %24 = and i32 %23, 6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !9

26:                                               ; preds = %18
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/plat-omap/sram.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #7, !srcloc !10
  unreachable

27:                                               ; preds = %18
  %28 = and i32 %23, -2
  %29 = inttoptr i32 %28 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 8 %16, ptr align 2 %29, i32 %1, i1 false)
  %30 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %31 = add i32 %15, %1
  tail call void %30(i32 noundef %15, i32 noundef %31) #7
  %32 = and i32 %23, 1
  %33 = or i32 %32, %15
  %34 = tail call ptr asm "", "=r,0"(i32 %33) #8, !srcloc !11
  %35 = tail call i32 @set_memory_ro(i32 noundef %19, i32 noundef %21) #7
  %36 = tail call i32 @set_memory_x(i32 noundef %19, i32 noundef %21) #7
  br label %37

37:                                               ; preds = %27, %13, %11
  %38 = phi ptr [ %34, %27 ], [ null, %13 ], [ null, %11 ]
  ret ptr %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_rw(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @omap_sram_reset() local_unnamed_addr #3 {
  %1 = load ptr, ptr @omap_sram_base, align 4
  %2 = load i32, ptr @omap_sram_size, align 4
  %3 = getelementptr i8, ptr %1, i32 %2
  store ptr %3, ptr @omap_sram_ceil, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @omap_map_sram(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 section ".init.text" {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = and i32 %0, -4096
  store i32 %1, ptr @omap_sram_size, align 4
  store i32 %2, ptr @omap_sram_skip, align 4
  %8 = icmp ne i32 %3, 0
  %9 = tail call ptr @__arm_ioremap_exec(i32 noundef %7, i32 noundef %1, i1 noundef zeroext %8) #7
  store ptr %9, ptr @omap_sram_base, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %26

13:                                               ; preds = %6
  %14 = load i32, ptr @omap_sram_size, align 4
  %15 = getelementptr i8, ptr %9, i32 %14
  store ptr %15, ptr @omap_sram_ceil, align 4
  %16 = load i32, ptr @omap_sram_skip, align 4
  %17 = getelementptr i8, ptr %9, i32 %16
  %18 = sub i32 %14, %16
  tail call void @mmioset(ptr noundef %17, i32 noundef 0, i32 noundef %18) #7
  %19 = load ptr, ptr @omap_sram_base, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = load i32, ptr @omap_sram_size, align 4
  %22 = add i32 %21, 4095
  %23 = lshr i32 %22, 12
  %24 = tail call i32 @set_memory_ro(i32 noundef %20, i32 noundef %23) #7
  %25 = tail call i32 @set_memory_x(i32 noundef %20, i32 noundef %23) #7
  br label %26

26:                                               ; preds = %13, %11, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 2153371889}
!9 = !{!"branch_weights", i32 2000, i32 1}
!10 = !{i64 2153372980, i64 2153373469, i64 2153373017, i64 2153373073, i64 2153373107, i64 2153373131, i64 2153373172, i64 2153373193, i64 2153373221, i64 2153373255}
!11 = !{i64 2153372384}
