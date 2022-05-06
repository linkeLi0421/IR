; ModuleID = '/llk/IR/drivers/clk/hisilicon/clk-hisi-phase.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hisi-phase.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_hisi_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_hisi_phase\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_hisi_phase:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_phase_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, i8 }
%struct.clk_hisi_phase = type { %struct.clk_hw, ptr, ptr, ptr, i8, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_phase_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hisi_clk_get_phase, ptr @hisi_clk_set_phase, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_clk_register_hisi_phase = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_hisi_phase = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_hisi_phase = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_hisi_phase to i32), ptr @__kstrtab_clk_register_hisi_phase, ptr @__kstrtabns_clk_register_hisi_phase }, section "___ksymtab_gpl+clk_register_hisi_phase", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_clk_register_hisi_phase], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @clk_register_hisi_phase(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca %struct.clk_init_data, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #4
  %6 = getelementptr inbounds i8, ptr %5, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 12, i1 false), !annotation !8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 40, i32 noundef 3520) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %5, align 4
  %12 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 1
  store ptr @clk_phase_ops, ptr %12, align 4
  %13 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 6
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  %19 = select i1 %18, ptr null, ptr %16
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ne ptr %17, null
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %5, i32 0, i32 5
  store i8 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %2, i32 %25
  %27 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 1
  store ptr %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 5
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 6
  store i8 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = zext i8 %29 to i32
  %37 = shl i32 %35, %36
  %38 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 5
  store i32 %37, ptr %38, align 4
  %39 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 8
  store ptr %3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 7
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 2
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 3
  store ptr %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.hisi_phase_clock, ptr %1, i32 0, i32 9
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.clk_hisi_phase, ptr %7, i32 0, i32 4
  store i8 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.clk_hw, ptr %7, i32 0, i32 2
  store ptr %5, ptr %49, align 4
  %50 = call ptr @devm_clk_register(ptr noundef %0, ptr noundef nonnull %7) #4
  br label %51

51:                                               ; preds = %9, %4
  %52 = phi ptr [ %50, %9 ], [ inttoptr (i32 -12 to ptr), %4 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #4
  ret ptr %52
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_clk_get_phase(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  %5 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, %4
  %8 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 6
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = lshr i32 %7, %10
  %12 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = icmp eq i8 %13, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %29, %16
  %20 = phi i32 [ 0, %16 ], [ %30, %29 ]
  %21 = getelementptr i32, ptr %18, i32 %20
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %11
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i32, ptr %26, i32 %20
  %28 = load i32, ptr %27, align 4
  br label %32

29:                                               ; preds = %19
  %30 = add nuw nsw i32 %20, 1
  %31 = icmp eq i32 %30, %14
  br i1 %31, label %32, label %19

32:                                               ; preds = %29, %24, %1
  %33 = phi i32 [ %28, %24 ], [ -22, %1 ], [ -22, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hisi_clk_set_phase(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 4
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = icmp eq i8 %4, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %15, %7
  %11 = phi i32 [ 0, %7 ], [ %16, %15 ]
  %12 = getelementptr i32, ptr %9, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i32 %11, 1
  %17 = icmp eq i32 %16, %5
  br i1 %17, label %42, label %10

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i32, ptr %20, i32 %11
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 8
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #4
  %28 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !11
  %31 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = getelementptr inbounds %struct.clk_hisi_phase, ptr %0, i32 0, i32 6
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = shl i32 %22, %37
  %39 = or i32 %38, %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !12
  tail call void @arm_heavy_mb() #4
  %40 = load ptr, ptr %28, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %39) #4, !srcloc !13
  %41 = load ptr, ptr %25, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %27) #4
  br label %42

42:                                               ; preds = %24, %18, %15, %2
  %43 = phi i32 [ 0, %24 ], [ %22, %18 ], [ -22, %2 ], [ -22, %15 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }

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
!9 = !{i64 362226}
!10 = !{i64 2151466131}
!11 = !{i64 2151468004}
!12 = !{i64 2151468182}
!13 = !{i64 361808}
