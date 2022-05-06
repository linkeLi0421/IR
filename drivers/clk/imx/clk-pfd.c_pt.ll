; ModuleID = '/llk/IR/drivers/clk/imx/clk-pfd.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-pfd.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_pfd = type { %struct.clk_hw, ptr, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_pfd_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clk_pfd_enable, ptr @clk_pfd_disable, ptr @clk_pfd_is_enabled, ptr null, ptr null, ptr null, ptr @clk_pfd_recalc_rate, ptr @clk_pfd_round_rate, ptr null, ptr null, ptr null, ptr @clk_pfd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_pfd(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca ptr, align 4
  %6 = alloca %struct.clk_init_data, align 4
  store ptr %1, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #7
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 20) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.clk_pfd, ptr %9, i32 0, i32 1
  store ptr %2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_pfd, ptr %9, i32 0, i32 2
  store i8 %3, ptr %13, align 8
  store ptr %0, ptr %6, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @clk_pfd_ops, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %18, align 8
  %19 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %9) #7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %11
  call void @kfree(ptr noundef nonnull %9) #7
  %22 = inttoptr i32 %19 to ptr
  br label %23

23:                                               ; preds = %21, %11, %4
  %24 = phi ptr [ %22, %21 ], [ %9, %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #7
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
define internal i32 @clk_pfd_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 3
  %6 = or i32 %5, 7
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @clk_pfd_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 2
  %3 = load i8, ptr %2, align 4
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 3
  %6 = or i32 %5, 7
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %7) #7, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfd_is_enabled(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !10
  %5 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 3
  %9 = or i32 %8, 7
  %10 = xor i32 %4, -1
  %11 = lshr i32 %10, %9
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfd_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !10
  %7 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 2
  %8 = load i8, ptr %7, align 4
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 3
  %11 = lshr i32 %6, %10
  %12 = and i32 %11, 63
  %13 = mul nuw nsw i64 %3, 18
  %14 = icmp ult i64 %13, 4294967296
  br i1 %14, label %15, label %18, !prof !11

15:                                               ; preds = %2
  %16 = trunc i64 %13 to i32
  %17 = udiv i32 %16, %12
  br label %22

18:                                               ; preds = %2
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %12, i64 %13) #9, !srcloc !12
  %20 = extractvalue { i64, i64 } %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i32 [ %17, %15 ], [ %21, %18 ]
  ret i32 %23
}

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal i32 @clk_pfd_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #5 {
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  %6 = mul nuw nsw i64 %5, 18
  %7 = lshr i32 %1, 1
  %8 = zext i32 %7 to i64
  %9 = add nuw nsw i64 %6, %8
  %10 = icmp ult i64 %9, 4294967296
  br i1 %10, label %11, label %14, !prof !11

11:                                               ; preds = %3
  %12 = trunc i64 %9 to i32
  %13 = udiv i32 %12, %1
  br label %18

14:                                               ; preds = %3
  %15 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %9) #9, !srcloc !12
  %16 = extractvalue { i64, i64 } %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i32 [ %13, %11 ], [ %17, %14 ]
  %20 = and i32 %19, 255
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 35)
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 12)
  %23 = icmp ult i64 %6, 4294967296
  br i1 %23, label %24, label %27, !prof !11

24:                                               ; preds = %18
  %25 = trunc i64 %6 to i32
  %26 = udiv i32 %25, %22
  br label %31

27:                                               ; preds = %18
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %22, i64 %6) #9, !srcloc !12
  %29 = extractvalue { i64, i64 } %28, 1
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %26, %24 ], [ %30, %27 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_pfd_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = zext i32 %2 to i64
  %5 = mul nuw nsw i64 %4, 18
  %6 = lshr i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = add nuw nsw i64 %5, %7
  %9 = icmp ult i64 %8, 4294967296
  br i1 %9, label %10, label %13, !prof !11

10:                                               ; preds = %3
  %11 = trunc i64 %8 to i32
  %12 = udiv i32 %11, %1
  br label %17

13:                                               ; preds = %3
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %1, i64 %8) #9, !srcloc !12
  %15 = extractvalue { i64, i64 } %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %16, %13 ]
  %19 = and i32 %18, 255
  %20 = tail call i32 @llvm.umin.i32(i32 %19, i32 35)
  %21 = tail call i32 @llvm.umax.i32(i32 %20, i32 12)
  %22 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 2
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 3
  %26 = shl i32 63, %25
  %27 = getelementptr inbounds %struct.clk_pfd, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #7, !srcloc !9
  %30 = load i8, ptr %22, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 3
  %33 = shl i32 %21, %32
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(2) }
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
!9 = !{i64 2843279}
!10 = !{i64 2843697}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148654367, i64 2148654647, i64 2148654981, i64 2148655315}
