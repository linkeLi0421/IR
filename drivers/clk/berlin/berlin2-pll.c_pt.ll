; ModuleID = '/llk/IR/drivers/clk/berlin/berlin2-pll.c_pt.bc'
source_filename = "../drivers/clk/berlin/berlin2-pll.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.berlin2_pll = type { %struct.clk_hw, ptr, %struct.berlin2_pll_map }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.berlin2_pll_map = type { [16 x i8], i8, i8, i8, i8 }

@berlin2_pll_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @berlin2_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [21 x i8] c"\014%s has zero rfdiv\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\014%s has zero vcodiv (index %d)\0A\00", align 1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @berlin2_pll_register(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 section ".init.text" {
  %6 = alloca ptr, align 4
  %7 = alloca %struct.clk_init_data, align 4
  store ptr %3, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %7) #8
  %8 = getelementptr inbounds i8, ptr %7, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %8, i8 0, i32 12, i1 false), !annotation !8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 36) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.berlin2_pll, ptr %10, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(20) %13, ptr noundef align 1 dereferenceable(20) %0, i32 20, i1 false)
  %14 = getelementptr inbounds %struct.berlin2_pll, ptr %10, i32 0, i32 1
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_hw, ptr %10, i32 0, i32 2
  store ptr %7, ptr %15, align 8
  store ptr %2, ptr %7, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 1
  store ptr @berlin2_pll_ops, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 2
  store ptr %6, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 5
  store i8 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %7, i32 0, i32 6
  store i32 %4, ptr %19, align 4
  %20 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %10) #8
  br label %21

21:                                               ; preds = %12, %5
  %22 = phi i32 [ %20, %12 ], [ -12, %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %7) #8
  ret i32 %22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_pll_recalc_rate(ptr noundef %0, i32 noundef %1) #6 {
  %3 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 2
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  %8 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 2, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %7, %10
  %12 = and i32 %11, 511
  %13 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 2, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = lshr i32 %7, %15
  %17 = and i32 %16, 31
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %20) #10
  br label %22

22:                                               ; preds = %19, %2
  %23 = phi i32 [ 1, %19 ], [ %17, %2 ]
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #8, !srcloc !9
  %27 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 2, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = lshr i32 %26, %29
  %31 = and i32 %30, 15
  %32 = getelementptr [16 x i8], ptr %3, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i8 %33, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %22
  %37 = tail call ptr @clk_hw_get_name(ptr noundef %0) #8
  %38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %37, i32 noundef %31) #10
  br label %39

39:                                               ; preds = %36, %22
  %40 = phi i32 [ 1, %36 ], [ %34, %22 ]
  %41 = getelementptr inbounds %struct.berlin2_pll, ptr %0, i32 0, i32 2, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %12, %43
  %45 = zext i32 %44 to i64
  %46 = mul nuw nsw i64 %45, %4
  %47 = mul nuw nsw i32 %40, %23
  %48 = icmp ult i64 %46, 4294967296
  br i1 %48, label %49, label %52, !prof !10

49:                                               ; preds = %39
  %50 = trunc i64 %46 to i32
  %51 = udiv i32 %50, %47
  br label %56

52:                                               ; preds = %39
  %53 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %47, i64 %46) #11, !srcloc !11
  %54 = extractvalue { i64, i64 } %53, 1
  %55 = trunc i64 %54 to i32
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i32 [ %51, %49 ], [ %55, %52 ]
  ret i32 %57
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

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
!9 = !{i64 2843009}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 2148653679, i64 2148653959, i64 2148654293, i64 2148654627}
