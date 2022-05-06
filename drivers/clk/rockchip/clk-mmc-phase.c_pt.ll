; ModuleID = '/llk/IR/drivers/clk/rockchip/clk-mmc-phase.c_pt.bc'
source_filename = "../drivers/clk/rockchip/clk-mmc-phase.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.rockchip_mmc_clock = type { %struct.clk_hw, ptr, i32, i32, i32, %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }

@rockchip_mmc_clk_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mmc_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mmc_get_phase, ptr @rockchip_mmc_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [24 x i8] c"\013%s: invalid clk rate\0A\00", align 1
@__func__.rockchip_mmc_set_phase = private unnamed_addr constant [23 x i8] c"rockchip_mmc_set_phase\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @rockchip_clk_register_mmc(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #8
  %7 = getelementptr inbounds i8, ptr %6, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 40) #9
  %10 = icmp eq ptr %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %5
  store ptr %0, ptr %6, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 6
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 5
  store i8 %2, ptr %13, align 4
  %14 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 2
  store ptr %1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %6, i32 0, i32 1
  store ptr @rockchip_mmc_clk_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.clk_hw, ptr %9, i32 0, i32 2
  store ptr %6, ptr %16, align 8
  %17 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %9, i32 0, i32 1
  store ptr %3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %9, i32 0, i32 3
  store i32 %4, ptr %18, align 4
  %19 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %9) #8
  %20 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %20, label %21, label %23

21:                                               ; preds = %11
  %22 = ptrtoint ptr %19 to i32
  br label %28

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %9, i32 0, i32 5
  store ptr @rockchip_mmc_clk_rate_notify, ptr %24, align 4
  %25 = call i32 @clk_notifier_register(ptr noundef %19, ptr noundef %24) #8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  call void @clk_unregister(ptr noundef %19) #8
  br label %28

28:                                               ; preds = %27, %21
  %29 = phi i32 [ %22, %21 ], [ %25, %27 ]
  call void @kfree(ptr noundef nonnull %9) #8
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %28, %23, %5
  %32 = phi ptr [ %30, %28 ], [ %19, %23 ], [ inttoptr (i32 -12 to ptr), %5 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #8
  ret ptr %32
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_clk_rate_notify(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -28
  %5 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.clk_notifier_data, ptr %2, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %82

10:                                               ; preds = %3
  %11 = icmp eq i32 %1, 1
  br i1 %11, label %12, label %44

12:                                               ; preds = %10
  %13 = tail call i32 @clk_hw_get_rate(ptr noundef %4) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -16
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %19 = getelementptr i8, ptr %0, i32 -8
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %18, %20
  %22 = trunc i32 %21 to i16
  %23 = and i16 %22, 3
  %24 = mul nuw nsw i16 %23, 90
  %25 = and i32 %21, 1024
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %15
  %28 = udiv i32 %13, 10000
  %29 = mul nuw nsw i32 %28, 216
  %30 = lshr i32 %21, 2
  %31 = and i32 %30, 255
  %32 = mul i32 %29, %31
  %33 = add i32 %32, 500000
  %34 = udiv i32 %33, 1000000
  %35 = trunc i32 %34 to i16
  %36 = add nuw nsw i16 %24, %35
  br label %37

37:                                               ; preds = %27, %15
  %38 = phi i16 [ %36, %27 ], [ %24, %15 ]
  %39 = urem i16 %38, 360
  %40 = zext i16 %39 to i32
  br label %41

41:                                               ; preds = %37, %12
  %42 = phi i32 [ %40, %37 ], [ 0, %12 ]
  %43 = getelementptr i8, ptr %0, i32 -4
  store i32 %42, ptr %43, align 4
  br label %82

44:                                               ; preds = %10
  %45 = getelementptr i8, ptr %0, i32 -4
  %46 = load i32, ptr %45, align 4
  %47 = icmp ne i32 %46, -22
  %48 = icmp eq i32 %1, 2
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %82

50:                                               ; preds = %44
  %51 = tail call i32 @clk_hw_get_rate(ptr noundef %4) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_mmc_set_phase) #10
  br label %82

55:                                               ; preds = %50
  %56 = freeze i32 %46
  %57 = sdiv i32 %56, 90
  %58 = mul i32 %57, 90
  %59 = sub i32 %56, %58
  %60 = and i32 %59, 255
  %61 = mul nuw i32 %60, 10000000
  %62 = udiv i32 %51, 1000
  %63 = mul nuw nsw i32 %62, 216
  %64 = mul nuw nsw i32 %62, 108
  %65 = add nuw i32 %64, %61
  %66 = udiv i32 %65, %63
  %67 = tail call i32 @llvm.umin.i32(i32 %66, i32 255) #8
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 0, i32 1024
  %70 = shl nuw nsw i32 %67, 2
  %71 = or i32 %69, %70
  %72 = and i32 %57, 255
  %73 = or i32 %71, %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %74 = getelementptr i8, ptr %0, i32 -8
  %75 = load i32, ptr %74, align 4
  %76 = shl i32 %73, %75
  %77 = add i32 %75, 16
  %78 = shl i32 2047, %77
  %79 = or i32 %76, %78
  %80 = getelementptr i8, ptr %0, i32 -16
  %81 = load ptr, ptr %80, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #8, !srcloc !12
  br label %82

82:                                               ; preds = %55, %53, %44, %41, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_mmc_recalc(ptr nocapture noundef readnone %0, i32 noundef %1) #5 {
  %3 = lshr i32 %1, 1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_get_phase(ptr noundef %0) #0 {
  %2 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #8
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !10
  %8 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = lshr i32 %7, %9
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, 3
  %13 = mul nuw nsw i16 %12, 90
  %14 = and i32 %10, 1024
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %4
  %17 = udiv i32 %2, 10000
  %18 = mul nuw nsw i32 %17, 216
  %19 = lshr i32 %10, 2
  %20 = and i32 %19, 255
  %21 = mul i32 %18, %20
  %22 = add i32 %21, 500000
  %23 = udiv i32 %22, 1000000
  %24 = trunc i32 %23 to i16
  %25 = add nuw nsw i16 %13, %24
  br label %26

26:                                               ; preds = %16, %4
  %27 = phi i16 [ %25, %16 ], [ %13, %4 ]
  %28 = urem i16 %27, 360
  %29 = zext i16 %28 to i32
  br label %30

30:                                               ; preds = %26, %1
  %31 = phi i32 [ %29, %26 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_mmc_set_phase(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call i32 @clk_hw_get_rate(ptr noundef %0) #8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rockchip_mmc_set_phase) #10
  br label %33

7:                                                ; preds = %2
  %8 = sdiv i32 %1, 90
  %9 = mul i32 %8, 90
  %10 = sub i32 %1, %9
  %11 = and i32 %10, 255
  %12 = mul nuw i32 %11, 10000000
  %13 = udiv i32 %3, 1000
  %14 = mul nuw nsw i32 %13, 216
  %15 = mul nuw nsw i32 %13, 108
  %16 = add nuw i32 %15, %12
  %17 = udiv i32 %16, %14
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 255)
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 0, i32 1024
  %21 = shl nuw nsw i32 %18, 2
  %22 = or i32 %20, %21
  %23 = and i32 %8, 255
  %24 = or i32 %22, %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !11
  tail call void @arm_heavy_mb() #8
  %25 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %0, i32 0, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = shl i32 %24, %26
  %28 = add i32 %26, 16
  %29 = shl i32 2047, %28
  %30 = or i32 %27, %29
  %31 = getelementptr inbounds %struct.rockchip_mmc_clock, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #8, !srcloc !12
  br label %33

33:                                               ; preds = %7, %5
  %34 = phi i32 [ 0, %7 ], [ -22, %5 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 3024754}
!10 = !{i64 2150601429}
!11 = !{i64 2150605970}
!12 = !{i64 3024336}
