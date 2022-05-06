; ModuleID = '/llk/IR/drivers/clk/imx/clk-pllv1.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pllv1.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pllv1 = type { %struct.clk_hw, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pllv1_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pllv1_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pllv1(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %2, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #6
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 20) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.clk_pllv1, ptr %9, i32 0, i32 1
  store ptr %3, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_pllv1, ptr %9, i32 0, i32 2
  store i32 %0, ptr %13, align 8
  store ptr %1, ptr %6, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @clk_pllv1_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %18, align 8
  %19 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %9) #6
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #6
  %22 = inttoptr i32 %19 to ptr
  br label %23

23:                                               ; preds = %21, %11, %4
  %24 = phi ptr [ %22, %21 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #6
  ret ptr %24
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pllv1_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_pllv1, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %6 = and i32 %5, 1023
  %7 = lshr i32 %5, 16
  %8 = and i32 %7, 1023
  %9 = lshr i32 %5, 26
  %10 = and i32 %9, 15
  %11 = getelementptr inbounds %struct.clk_pllv1, ptr %0, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, 1
  %14 = and i32 %5, 512
  %15 = icmp ne i32 %14, 0
  %16 = and i1 %15, %13
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = icmp eq i32 %12, 3
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = and i32 %5, 511
  br label %23

21:                                               ; preds = %17
  %22 = sub nuw nsw i32 1024, %6
  br label %23

23:                                               ; preds = %21, %19, %2
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ], [ %6, %2 ]
  %25 = shl i32 %1, 1
  %26 = add nuw nsw i32 %10, 1
  %27 = udiv i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = zext i32 %24 to i64
  %30 = mul nuw nsw i64 %28, %29
  %31 = add nuw nsw i32 %8, 1
  %32 = icmp ult i64 %30, 4294967296
  br i1 %32, label %33, label %36, !prof !11

33:                                               ; preds = %23
  %34 = trunc i64 %30 to i32
  %35 = udiv i32 %34, %31
  br label %40

36:                                               ; preds = %23
  %37 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %31, i64 %30) #8, !srcloc !12
  %38 = extractvalue { i64, i64 } %37, 1
  %39 = trunc i64 %38 to i32
  br label %40

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %35, %33 ], [ %39, %36 ]
  %42 = lshr i32 %5, 10
  %43 = and i32 %42, 15
  %44 = tail call i32 @llvm.umax.i32(i32 %43, i32 5)
  %45 = mul i32 %27, %44
  %46 = sub i32 0, %41
  %47 = select i1 %16, i32 %46, i32 %41
  %48 = add i32 %45, %47
  ret i32 %48
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{!"auto-init"}
!9 = !{i64 2843569}
!10 = !{i64 2150558551}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148654239, i64 2148654519, i64 2148654853, i64 2148655187}
