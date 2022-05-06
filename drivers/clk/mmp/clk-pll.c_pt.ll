; ModuleID = '/llk/IR/drivers/clk/mmp/clk-pll.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_param_pll_clk = type { i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.mmp_clk_pll = type { %struct.clk_hw, i32, ptr, i32, ptr, i8, i32, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"\013%s: failed to register clock %s\0A\00", align 1
@__func__.mmp_register_pll_clks = private unnamed_addr constant [22 x i8] c"mmp_register_pll_clks\00", align 1
@mmp_clk_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_pll_is_enabled, ptr null, ptr null, ptr null, ptr @mmp_clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@mmp_clk_pll_recalc_rate.postdivs = internal unnamed_addr constant [9 x i8] c"\02\03\04\05\06\08\0A\0C\10", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"\013bad refdiv: %d (0x%08x)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mmp_register_pll_clks(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.clk_init_data, align 4
  %6 = icmp sgt i32 %3, 0
  br i1 %6, label %7, label %70

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i32 12
  %9 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  %10 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  %11 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  %13 = getelementptr inbounds %struct.mmp_clk_unit, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %67, %7
  %15 = phi i32 [ 0, %7 ], [ %68, %67 ]
  %16 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15
  %17 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 6
  %28 = load i8, ptr %27, align 4
  %29 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 8
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.mmp_param_pll_clk, ptr %1, i32 %15, i32 9
  %34 = load i32, ptr %33, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false) #6, !annotation !8
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %36 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 44) #7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  br label %58

39:                                               ; preds = %14
  %40 = trunc i32 %34 to i8
  %41 = getelementptr i8, ptr %2, i32 %32
  %42 = getelementptr i8, ptr %2, i32 %24
  %43 = icmp eq i32 %18, 0
  %44 = getelementptr i8, ptr %2, i32 %18
  %45 = select i1 %43, ptr null, ptr %44
  store ptr %20, ptr %5, align 4
  store ptr @mmp_clk_pll_ops, ptr %9, align 4
  store i32 0, ptr %10, align 4
  store ptr null, ptr %11, align 4
  store i8 0, ptr %12, align 4
  %46 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 1
  store i32 %22, ptr %46, align 4
  %47 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 2
  store ptr %42, ptr %47, align 8
  %48 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 3
  store i32 %26, ptr %48, align 4
  %49 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 4
  store ptr %45, ptr %49, align 8
  %50 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 5
  store i8 %28, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 6
  store i32 %30, ptr %51, align 8
  %52 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 7
  store ptr %41, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mmp_clk_pll, ptr %36, i32 0, i32 8
  store i8 %40, ptr %53, align 8
  %54 = getelementptr inbounds %struct.clk_hw, ptr %36, i32 0, i32 2
  store ptr %5, ptr %54, align 8
  %55 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %36) #6
  %56 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  call void @kfree(ptr noundef nonnull %36) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  br label %58

58:                                               ; preds = %57, %38
  %59 = load ptr, ptr %19, align 4
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.mmp_register_pll_clks, ptr noundef %59) #8
  br label %67

61:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #6
  %62 = load i32, ptr %16, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %13, align 4
  %66 = getelementptr ptr, ptr %65, i32 %62
  store ptr %55, ptr %66, align 4
  br label %67

67:                                               ; preds = %64, %61, %58
  %68 = add nuw nsw i32 %15, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %14

70:                                               ; preds = %67, %4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_pll_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !9
  %5 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %4
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i32 [ 1, %1 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mmp_clk_pll_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  %6 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = icmp eq i32 %8, %7
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  br label %86

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %15) #6, !srcloc !9
  %19 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 5
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = lshr i32 %18, %21
  %23 = and i32 %22, 511
  %24 = add nuw nsw i32 %21, 9
  %25 = lshr i32 %18, %24
  %26 = and i32 %25, 31
  br label %27

27:                                               ; preds = %17, %13
  %28 = phi i32 [ %18, %17 ], [ %5, %13 ]
  %29 = phi i32 [ %26, %17 ], [ 1, %13 ]
  %30 = phi i32 [ %23, %17 ], [ 2, %13 ]
  %31 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %68, label %34

34:                                               ; preds = %27
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %32) #6, !srcloc !9
  %36 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 8
  %37 = load i8, ptr %36, align 4
  %38 = zext i8 %37 to i32
  %39 = lshr i32 %35, %38
  %40 = and i32 %39, 7
  %41 = getelementptr inbounds %struct.mmp_clk_pll, ptr %0, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = zext i32 %42 to i64
  %44 = shl nuw nsw i32 %30, 1
  %45 = zext i32 %44 to i64
  %46 = mul nuw nsw i64 %43, %45
  %47 = icmp ult i64 %46, 4294967296
  br i1 %47, label %48, label %52, !prof !10

48:                                               ; preds = %34
  %49 = trunc i64 %46 to i32
  %50 = udiv i32 %49, %29
  %51 = zext i32 %50 to i64
  br label %55

52:                                               ; preds = %34
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %46) #9, !srcloc !11
  %54 = extractvalue { i64, i64 } %53, 1
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i64 [ %51, %48 ], [ %54, %52 ]
  %57 = getelementptr [9 x i8], ptr @mmp_clk_pll_recalc_rate.postdivs, i32 0, i32 %40
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ult i64 %56, 4294967296
  br i1 %60, label %61, label %64, !prof !10

61:                                               ; preds = %55
  %62 = trunc i64 %56 to i32
  %63 = udiv i32 %62, %59
  br label %86

64:                                               ; preds = %55
  %65 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %59, i64 %56) #9, !srcloc !11
  %66 = extractvalue { i64, i64 } %65, 1
  %67 = trunc i64 %66 to i32
  br label %86

68:                                               ; preds = %27
  switch i32 %29, label %70 [
    i32 3, label %72
    i32 4, label %69
  ]

69:                                               ; preds = %68
  br label %72

70:                                               ; preds = %68
  %71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %29, i32 noundef %28) #8
  br label %86

72:                                               ; preds = %69, %68
  %73 = phi i64 [ 26000000, %69 ], [ 19200000, %68 ]
  %74 = add nuw nsw i32 %30, 2
  %75 = zext i32 %74 to i64
  %76 = mul nuw nsw i64 %73, %75
  %77 = add nuw nsw i32 %29, 2
  %78 = icmp ult i64 %76, 4294967296
  br i1 %78, label %79, label %82, !prof !10

79:                                               ; preds = %72
  %80 = trunc i64 %76 to i32
  %81 = udiv i32 %80, %77
  br label %86

82:                                               ; preds = %72
  %83 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %77, i64 %76) #9, !srcloc !11
  %84 = extractvalue { i64, i64 } %83, 1
  %85 = trunc i64 %84 to i32
  br label %86

86:                                               ; preds = %82, %79, %70, %64, %61, %10
  %87 = phi i32 [ %12, %10 ], [ 0, %70 ], [ %81, %79 ], [ %85, %82 ], [ %63, %61 ], [ %67, %64 ]
  ret i32 %87
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

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
!9 = !{i64 2990036}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148654867, i64 2148655147, i64 2148655481, i64 2148655815}
