; ModuleID = '/llk/IR/arch/arm/mach-mvebu/pm-board.c_pt.bc'
source_filename = "../arch/arm/mach-mvebu/pm-board.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pm_board__206_157_mvebu_armada_pm_init6s = internal global ptr @mvebu_armada_pm_init, section ".initcall6s.init", align 4
@.str = private unnamed_addr constant [15 x i8] c"marvell,axp-gp\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pm_pic\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ctrl-gpios\00", align 1
@pic_gpios = internal unnamed_addr global [3 x i32] zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"pic-pin%d\00", align 1
@pic_raw_gpios = internal unnamed_addr global [3 x i32] zeroinitializer, align 4
@gpio_ctrl = internal unnamed_addr global ptr null, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_pm_board__206_157_mvebu_armada_pm_init6s], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mvebu_armada_pm_init() #0 section ".init.text" {
  %1 = alloca %struct.of_phandle_args, align 4
  %2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %54, label %4

4:                                                ; preds = %0
  %5 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.1) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  br label %9

9:                                                ; preds = %40, %7
  %10 = phi i32 [ 0, %7 ], [ %44, %40 ]
  %11 = phi ptr [ null, %7 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false), !annotation !8
  %12 = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, i32 noundef %10, ptr noundef null) #5
  %13 = getelementptr [3 x i32], ptr @pic_gpios, i32 0, i32 %10
  store i32 %12, ptr %13, align 4
  %14 = icmp slt i32 %12, 0
  br i1 %14, label %38, label %15

15:                                               ; preds = %9
  %16 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %10) #5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %38, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %13, align 4
  %20 = call i32 @gpio_request(i32 noundef %19, ptr noundef nonnull %16) #5
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %13, align 4
  %24 = call ptr @gpio_to_desc(i32 noundef %23) #5
  %25 = call i32 @gpiod_direction_output_raw(ptr noundef %24, i32 noundef 0) #5
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %5, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 2, i32 noundef %10, ptr noundef nonnull %1) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = icmp eq ptr %11, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %30
  call void @of_node_put(ptr noundef nonnull %11) #5
  br label %40

33:                                               ; preds = %27, %22
  %34 = phi i32 [ %25, %22 ], [ %28, %27 ]
  %35 = load i32, ptr %13, align 4
  call void @gpio_free(i32 noundef %35) #5
  br label %36

36:                                               ; preds = %33, %18
  %37 = phi i32 [ %34, %33 ], [ %20, %18 ]
  call void @kfree(ptr noundef nonnull %16) #5
  br label %38

38:                                               ; preds = %36, %15, %9
  %39 = phi i32 [ %37, %36 ], [ -12, %15 ], [ -19, %9 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #5
  br label %51

40:                                               ; preds = %32, %30
  %41 = load ptr, ptr %1, align 4
  %42 = load i32, ptr %8, align 4
  %43 = getelementptr [3 x i32], ptr @pic_raw_gpios, i32 0, i32 %10
  store i32 %42, ptr %43, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #5
  %44 = add nuw nsw i32 %10, 1
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %9

46:                                               ; preds = %40
  %47 = call ptr @of_iomap(ptr noundef %41, i32 noundef 0) #5
  store ptr %47, ptr @gpio_ctrl, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @mvebu_pm_suspend_init(ptr noundef nonnull @mvebu_armada_pm_enter) #5
  br label %51

51:                                               ; preds = %49, %46, %38
  %52 = phi ptr [ %41, %49 ], [ %41, %46 ], [ %11, %38 ]
  %53 = phi i32 [ %28, %49 ], [ -12, %46 ], [ %39, %38 ]
  call void @of_node_put(ptr noundef nonnull %5) #5
  call void @of_node_put(ptr noundef %52) #5
  br label %54

54:                                               ; preds = %51, %4, %0
  %55 = phi i32 [ %53, %51 ], [ -19, %0 ], [ -19, %4 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mvebu_pm_suspend_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mvebu_armada_pm_enter(ptr noundef %0, i32 noundef %1) #4 {
  %3 = load ptr, ptr @gpio_ctrl, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !10
  %5 = load i32, ptr @pic_raw_gpios, align 4
  %6 = shl nuw i32 1, %5
  %7 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 1), align 4
  %8 = shl nuw i32 1, %7
  %9 = or i32 %6, %8
  %10 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 2), align 4
  %11 = shl nuw i32 1, %10
  %12 = or i32 %9, %11
  %13 = xor i32 %12, -1
  %14 = and i32 %4, %13
  %15 = or i32 %6, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %16 = load ptr, ptr @gpio_ctrl, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %15) #5, !srcloc !12
  %17 = load ptr, ptr @gpio_ctrl, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %19 = load i32, ptr @pic_raw_gpios, align 4
  %20 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 1), align 4
  %21 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @pic_raw_gpios, i32 0, i32 2), align 4
  br label %22

22:                                               ; preds = %22, %2
  %23 = phi i32 [ 3000, %2 ], [ %24, %22 ]
  %24 = add nsw i32 %23, -1
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #5
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %22

27:                                               ; preds = %22
  %28 = shl nuw i32 1, %21
  %29 = shl nuw i32 1, %20
  %30 = shl nuw i32 1, %19
  %31 = or i32 %30, %18
  %32 = or i32 %29, %31
  %33 = or i32 %28, %32
  %34 = load ptr, ptr @gpio_ctrl, align 4
  tail call void asm sideeffect ".balign 32\0A\09str $0, [$1]\0A\09mov r1, #50\0A\091: subs r1, r1, #1\0A\09bne 1b\0A\09str $2, [$3]\0A\09b .\0A\09", "r,r,r,r,~{r1}"(i32 %1, ptr %0, i32 %33, ptr %34) #5, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }

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
!9 = !{i64 3695027}
!10 = !{i64 2152350759}
!11 = !{i64 2152351118}
!12 = !{i64 3694609}
!13 = !{i64 2152351549}
!14 = !{i64 1374, i64 1387, i64 1452, i64 1577, i64 1604, i64 1619, i64 1688, i64 1728}
