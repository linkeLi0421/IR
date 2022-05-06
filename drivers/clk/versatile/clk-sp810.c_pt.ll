; ModuleID = '/llk/IR/drivers/clk/versatile/clk-sp810.c_pt.bc'
source_filename = "../drivers/clk/versatile/clk-sp810.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_sp810 = type { ptr, ptr, %struct.spinlock, [4 x %struct.clk_sp810_timerclken] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.clk_sp810_timerclken = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_sp810 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,sp810\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_sp810_of_setup }, section "__clk_of_table", align 4
@clk_sp810_of_setup.instance = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"\014Failed to obtain parent clocks for SP810!\0A\00", align 1
@clk_sp810_timerclken_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sp810_timerclken_set_parent, ptr @clk_sp810_timerclken_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"assigned-clock-parents\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"sp810_%d_%d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"drivers/clk/versatile/clk-sp810.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__of_table_sp810], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @clk_sp810_of_setup(ptr noundef %0) #0 section ".init.text" {
  %2 = alloca [2 x ptr], align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca %struct.clk_init_data, align 4
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 108) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  %7 = getelementptr inbounds i8, ptr %4, i32 12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %7, i8 0, i32 12, i1 false), !annotation !8
  %8 = icmp eq ptr %6, null
  br i1 %8, label %49, label %9

9:                                                ; preds = %1
  %10 = call i32 @of_clk_parent_fill(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2) #9
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  call void @kfree(ptr noundef nonnull %6) #9
  br label %49

14:                                               ; preds = %9
  store ptr %0, ptr %6, align 8
  %15 = call ptr @of_iomap(ptr noundef %0, i32 noundef 0) #9
  %16 = getelementptr inbounds %struct.clk_sp810, ptr %6, i32 0, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.clk_sp810, ptr %6, i32 0, i32 2
  store i32 0, ptr %17, align 8
  store ptr %3, ptr %4, align 4
  %18 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 1
  store ptr @clk_sp810_timerclken_ops, ptr %18, align 4
  %19 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 6
  store i32 0, ptr %19, align 4
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 2
  store ptr %2, ptr %20, align 4
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %4, i32 0, i32 5
  store i8 2, ptr %21, align 4
  %22 = call ptr @of_find_property(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef null) #9
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %42, %14
  %25 = phi i32 [ 0, %14 ], [ %43, %42 ]
  %26 = load i32, ptr @clk_sp810_of_setup.instance, align 4
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef %26, i32 noundef %25)
  %28 = getelementptr %struct.clk_sp810, ptr %6, i32 0, i32 3, i32 %25
  %29 = getelementptr %struct.clk_sp810, ptr %6, i32 0, i32 3, i32 %25, i32 2
  store ptr %6, ptr %29, align 4
  %30 = getelementptr %struct.clk_sp810, ptr %6, i32 0, i32 3, i32 %25, i32 3
  store i32 %25, ptr %30, align 8
  %31 = getelementptr inbounds %struct.clk_hw, ptr %28, i32 0, i32 2
  store ptr %4, ptr %31, align 4
  br i1 %23, label %32, label %37

32:                                               ; preds = %24
  %33 = load ptr, ptr %18, align 4
  %34 = getelementptr inbounds %struct.clk_ops, ptr %33, i32 0, i32 13
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 %35(ptr noundef %28, i8 noundef zeroext 1) #9
  br label %37

37:                                               ; preds = %32, %24
  %38 = call ptr @clk_register(ptr noundef null, ptr noundef %28) #9
  %39 = getelementptr %struct.clk_sp810, ptr %6, i32 0, i32 3, i32 %25, i32 1
  store ptr %38, ptr %39, align 8
  %40 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %37
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 132, i32 noundef 9, ptr noundef null) #9
  br label %42

42:                                               ; preds = %41, %37
  %43 = add nuw nsw i32 %25, 1
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %24

45:                                               ; preds = %42
  %46 = call i32 @of_clk_add_provider(ptr noundef %0, ptr noundef nonnull @clk_sp810_timerclken_of_get, ptr noundef nonnull %6) #9
  %47 = load i32, ptr @clk_sp810_of_setup.instance, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr @clk_sp810_of_setup.instance, align 4
  br label %49

49:                                               ; preds = %45, %12, %1
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @clk_sp810_timerclken_of_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 76, i32 noundef 9, ptr noundef null) #9
  br label %14

11:                                               ; preds = %6
  %12 = getelementptr %struct.clk_sp810, ptr %1, i32 0, i32 3, i32 %8, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ null, %10 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_sp810_timerclken_set_parent(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) #6 {
  %3 = icmp ugt i8 %1, 1
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 50, i32 noundef 9, ptr noundef null) #9
  br label %24

5:                                                ; preds = %2
  %6 = zext i8 %1 to i32
  %7 = getelementptr inbounds %struct.clk_sp810_timerclken, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 1
  %10 = add i32 %9, 15
  %11 = getelementptr inbounds %struct.clk_sp810_timerclken, ptr %0, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.clk_sp810, ptr %12, i32 0, i32 2
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %13) #9
  %15 = getelementptr inbounds %struct.clk_sp810, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !11
  %18 = shl nuw i32 1, %10
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = shl nuw i32 %6, %10
  %22 = or i32 %20, %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !12
  tail call void @arm_heavy_mb() #9
  %23 = load ptr, ptr %15, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %22) #9, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %13, i32 noundef %14) #9
  br label %24

24:                                               ; preds = %5, %4
  %25 = phi i32 [ -22, %4 ], [ 0, %5 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i8 @clk_sp810_timerclken_get_parent(ptr nocapture noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.clk_sp810_timerclken, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.clk_sp810, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !14
  %7 = getelementptr inbounds %struct.clk_sp810_timerclken, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = shl i32 %8, 1
  %10 = add i32 %9, 15
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %6
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 364440}
!11 = !{i64 2150605124}
!12 = !{i64 2150605317}
!13 = !{i64 364022}
!14 = !{i64 2150602577}
