; ModuleID = '/llk/IR/drivers/clk/bcm/clk-iproc-armpll.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-iproc-armpll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.iproc_arm_pll = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"drivers/clk/bcm/clk-iproc-armpll.c\00", align 1
@iproc_arm_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_arm_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @iproc_armpll_setup(ptr noundef %0) local_unnamed_addr #0 section ".init.text" {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store ptr null, ptr %3, align 4, !annotation !8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 20) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 252, i32 noundef 9, ptr noundef null) #6
  br label %35

8:                                                ; preds = %1
  %9 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #6
  %10 = getelementptr inbounds %struct.iproc_arm_pll, ptr %5, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %13, !prof !9

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #6
  br label %34

13:                                               ; preds = %8
  %14 = load ptr, ptr %0, align 4
  store ptr %14, ptr %2, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  store ptr @iproc_arm_pll_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  store i32 0, ptr %16, align 4
  %17 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef 0) #6
  store ptr %17, ptr %3, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr null, ptr %3
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ne ptr %17, null
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.clk_hw, ptr %5, i32 0, i32 2
  store ptr %2, ptr %24, align 8
  %25 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %5) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !10

27:                                               ; preds = %13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %32

28:                                               ; preds = %13
  %29 = call i32 @of_clk_add_hw_provider(ptr noundef %0, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef nonnull %5) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31, !prof !10

31:                                               ; preds = %28
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 272, i32 noundef 9, ptr noundef null) #6
  call void @clk_hw_unregister(ptr noundef nonnull %5) #6
  br label %32

32:                                               ; preds = %31, %27
  %33 = load ptr, ptr %10, align 4
  call void @iounmap(ptr noundef %33) #6
  br label %34

34:                                               ; preds = %32, %12
  call void @kfree(ptr noundef nonnull %5) #6
  br label %35

35:                                               ; preds = %34, %28, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iproc_arm_pll_recalc_rate(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = getelementptr inbounds %struct.iproc_arm_pll, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 3080
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.iproc_arm_pll, ptr %0, i32 0, i32 2
  store i32 %1, ptr %10, align 4
  br label %95

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = getelementptr i8, ptr %12, i32 3072
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !13
  %15 = and i32 %14, 268435456
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.iproc_arm_pll, ptr %0, i32 0, i32 2
  store i32 0, ptr %18, align 4
  br label %95

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 3108
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !14
  %23 = and i32 %22, 536870912
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = lshr i32 %22, 20
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 256, i32 %27
  br label %41

30:                                               ; preds = %19
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 3072
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !15
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 1023
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 1024, i32 %35
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr i8, ptr %38, i32 3076
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !16
  br label %41

41:                                               ; preds = %30, %25
  %42 = phi i32 [ %22, %25 ], [ %40, %30 ]
  %43 = phi i32 [ %29, %25 ], [ %37, %30 ]
  %44 = and i32 %42, 1048575
  %45 = shl nuw nsw i32 %43, 20
  %46 = or i32 %45, %44
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr i8, ptr %47, i32 3584
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !17
  %50 = and i32 %49, 16
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %49, 12
  %53 = icmp eq i32 %52, 0
  %54 = or i1 %51, %53
  br i1 %54, label %56, label %55, !prof !10

55:                                               ; preds = %41
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/bcm/clk-iproc-armpll.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 88, 0\0A.popsection", ""() #6, !srcloc !18
  unreachable

56:                                               ; preds = %41
  %57 = load ptr, ptr %3, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr i8, ptr %60, i32 3776
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %63 = lshr i32 %62, 12
  %64 = and i32 %63, 7
  switch i32 %64, label %79 [
    i32 0, label %81
    i32 2, label %81
    i32 6, label %65
    i32 7, label %72
  ]

65:                                               ; preds = %56
  %66 = load ptr, ptr %3, align 4
  %67 = getelementptr i8, ptr %66, i32 3080
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !21
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 256, i32 %69
  br label %81

72:                                               ; preds = %56
  %73 = load ptr, ptr %3, align 4
  %74 = getelementptr i8, ptr %73, i32 3104
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !22
  %76 = and i32 %75, 255
  %77 = icmp eq i32 %76, 0
  %78 = select i1 %77, i32 256, i32 %76
  br label %81

79:                                               ; preds = %56
  %80 = getelementptr inbounds %struct.iproc_arm_pll, ptr %0, i32 0, i32 2
  store i32 0, ptr %80, align 4
  br label %95

81:                                               ; preds = %72, %65, %56, %56
  %82 = phi i32 [ 1, %56 ], [ 1, %56 ], [ %78, %72 ], [ %71, %65 ]
  %83 = zext i32 %46 to i64
  %84 = lshr i32 %14, 24
  %85 = and i32 %84, 15
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 16, i32 %85
  %88 = zext i32 %1 to i64
  %89 = mul nuw i64 %83, %88
  %90 = lshr i64 %89, 20
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.iproc_arm_pll, ptr %0, i32 0, i32 2
  %93 = udiv i32 %91, %87
  %94 = udiv i32 %93, %82
  store i32 %94, ptr %92, align 4
  br label %95

95:                                               ; preds = %81, %79, %17, %9
  %96 = phi i32 [ %1, %9 ], [ 0, %79 ], [ %94, %81 ], [ 0, %17 ]
  ret i32 %96
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2994127}
!12 = !{i64 2151467171}
!13 = !{i64 2151467513}
!14 = !{i64 2151464921}
!15 = !{i64 2151465280}
!16 = !{i64 2151465628}
!17 = !{i64 2151460923}
!18 = !{i64 2151461268, i64 2151461766, i64 2151461305, i64 2151461361, i64 2151461395, i64 2151461419, i64 2151461460, i64 2151461481, i64 2151461509, i64 2151461543}
!19 = !{i64 2151462331}
!20 = !{i64 2151462677}
!21 = !{i64 2151464228}
!22 = !{i64 2151464573}
