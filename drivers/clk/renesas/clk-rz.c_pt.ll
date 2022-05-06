; ModuleID = '/llk/IR/drivers/clk/renesas/clk-rz.c_pt.bc'
source_filename = "../drivers/clk/renesas/clk-rz.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.rz_cpg = type { %struct.clk_onecell_data, ptr }

@__of_table_rz_cpg_clks = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rz-cpg-clocks\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rz_cpg_clocks_init }, section "__clk_of_table", align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"drivers/clk/renesas/clk-rz.c\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"can't count CPG clocks\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"\013%s: failed to register %pOFn %s clock (%ld)\0A\00", align 1
@__func__.rz_cpg_clocks_init = private unnamed_addr constant [19 x i8] c"rz_cpg_clocks_init\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rz_cpg_register_clock.frqcr_tab = internal unnamed_addr constant [4 x i32] [i32 3, i32 2, i32 0, i32 1], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pll\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_rz_cpg_clks], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rz_cpg_clocks_init(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca ptr, align 4
  %3 = tail call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %5, label %6, !prof !8

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.2) #8
  br label %40

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #9
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #8
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %17, label %11, !prof !8

11:                                               ; preds = %6
  %12 = extractvalue { i32, i1 } %9, 0
  %13 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #10
  %14 = icmp eq ptr %8, null
  %15 = icmp eq ptr %13, null
  %16 = select i1 %14, i1 true, i1 %15, !prof !8
  br i1 %16, label %17, label %18, !prof !8

17:                                               ; preds = %11, %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-rz.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 99, 0\0A.popsection", ""() #8, !srcloc !9
  unreachable

18:                                               ; preds = %11
  store ptr %13, ptr %8, align 8
  %19 = getelementptr inbounds %struct.clk_onecell_data, ptr %8, i32 0, i32 1
  store i32 %3, ptr %19, align 4
  %20 = tail call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #8
  %21 = getelementptr inbounds %struct.rz_cpg, ptr %8, i32 0, i32 1
  store ptr %20, ptr %21, align 8
  br label %22

22:                                               ; preds = %35, %18
  %23 = phi i32 [ %36, %35 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store ptr null, ptr %2, align 4, !annotation !10
  %24 = call i32 @of_property_read_string_helper(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %23) #8
  %25 = load ptr, ptr %2, align 4
  %26 = call fastcc ptr @rz_cpg_register_clock(ptr noundef %0, ptr noundef %8, ptr noundef %25) #11
  %27 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 4
  %30 = ptrtoint ptr %26 to i32
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.rz_cpg_clocks_init, ptr noundef %0, ptr noundef %29, i32 noundef %30) #12
  br label %35

32:                                               ; preds = %22
  %33 = load ptr, ptr %8, align 8
  %34 = getelementptr ptr, ptr %33, i32 %23
  store ptr %26, ptr %34, align 4
  br label %35

35:                                               ; preds = %32, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  %36 = add nuw i32 %23, 1
  %37 = icmp eq i32 %36, %3
  br i1 %37, label %38, label %22

38:                                               ; preds = %35
  %39 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %8) #8
  call void @cpg_mstp_add_clk_domain(ptr noundef %0) #8
  br label %40

40:                                               ; preds = %38, %5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @rz_cpg_register_clock(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 section ".init.text" {
  %4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(4) @.str.4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i16 @rz_cpg_read_mode_pins() #11
  %8 = lshr i16 %7, 2
  %9 = and i16 %8, 1
  %10 = zext i16 %9 to i32
  %11 = tail call ptr @of_clk_get_parent_name(ptr noundef %0, i32 noundef %10) #8
  %12 = icmp eq i16 %9, 0
  %13 = select i1 %12, i32 30, i32 8
  %14 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %2, ptr noundef %11, i32 noundef 0, i32 noundef %13, i32 noundef 1) #8
  br label %38

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.rz_cpg, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(2) @.str.5)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %17, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  %25 = lshr i32 %24, 8
  br label %32

26:                                               ; preds = %19
  %27 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(2) @.str.6)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = getelementptr i8, ptr %17, i32 20
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %25, %22 ], [ %31, %29 ]
  %34 = and i32 %33, 3
  %35 = getelementptr [4 x i32], ptr @rz_cpg_register_clock.frqcr_tab, i32 0, i32 %34
  %36 = load i32, ptr %35, align 4
  %37 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %2, ptr noundef nonnull @.str.4, i32 noundef 0, i32 noundef %36, i32 noundef 3) #8
  br label %38

38:                                               ; preds = %32, %26, %15, %6
  %39 = phi ptr [ %14, %6 ], [ %37, %32 ], [ inttoptr (i32 -6 to ptr), %15 ], [ inttoptr (i32 -22 to ptr), %26 ]
  ret ptr %39
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpg_mstp_add_clk_domain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rz_cpg_read_mode_pins() unnamed_addr #0 section ".init.text" {
  %1 = tail call ptr @ioremap(i32 noundef -50449920, i32 noundef 2) #8
  %2 = tail call ptr @ioremap(i32 noundef -50434048, i32 noundef 2) #8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq ptr %2, null
  %5 = select i1 %3, i1 true, i1 %4, !prof !8
  br i1 %5, label %6, label %7, !prof !8

6:                                                ; preds = %0
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/clk/renesas/clk-rz.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 42, 0\0A.popsection", ""() #8, !srcloc !14
  unreachable

7:                                                ; preds = %0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %2, i16 4) #8, !srcloc !16
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %1) #8, !srcloc !17
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !18
  tail call void @iounmap(ptr noundef nonnull %1) #8
  tail call void @iounmap(ptr noundef nonnull %2) #8
  ret i16 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold }
attributes #12 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2150571365, i64 2150571857, i64 2150571402, i64 2150571458, i64 2150571492, i64 2150571516, i64 2150571557, i64 2150571578, i64 2150571606, i64 2150571640}
!10 = !{!"auto-init"}
!11 = !{i64 2844683}
!12 = !{i64 2150569615}
!13 = !{i64 2150569948}
!14 = !{i64 2150568285, i64 2150568777, i64 2150568322, i64 2150568378, i64 2150568412, i64 2150568436, i64 2150568477, i64 2150568498, i64 2150568526, i64 2150568560}
!15 = !{i64 2150377395}
!16 = !{i64 2843645}
!17 = !{i64 2843845}
!18 = !{i64 2150376173}
