; ModuleID = '/llk/IR/drivers/clk/at91/pmc.c_pt.bc'
source_filename = "../drivers/clk/at91/pmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_at91_get_clk_range:\09\09\09\09\09"
module asm "\09.asciz \09\22of_at91_get_clk_range\22\09\09\09\09\09"
module asm "__kstrtabns_of_at91_get_clk_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_range = type { i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pmc_data = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, [0 x ptr] }

@__kstrtab_of_at91_get_clk_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_at91_get_clk_range = external dso_local constant [0 x i8], align 1
@__ksymtab_of_at91_get_clk_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_at91_get_clk_range to i32), ptr @__kstrtab_of_at91_get_clk_range, ptr @__kstrtabns_of_at91_get_clk_range }, section "___ksymtab_gpl+of_at91_get_clk_range", align 4
@.str = private unnamed_addr constant [39 x i8] c"\013%s: invalid type (%u) or index (%u)\0A\00", align 1
@__func__.of_clk_hw_pmc_get = private unnamed_addr constant [18 x i8] c"of_clk_hw_pmc_get\00", align 1
@__initcall__kmod_pmc__166_192_pmc_register_ops2 = internal global ptr @pmc_register_ops, section ".initcall2.init", align 4
@pmc_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"atmel,sama5d2-securam\00", align 1
@at91_pmc_backup_suspend = internal unnamed_addr global ptr null, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"\014%s(): unable to map securam\0A\00", align 1
@__func__.pmc_register_ops = private unnamed_addr constant [17 x i8] c"pmc_register_ops\00", align 1
@pmc_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @at91_pmc_suspend, ptr @at91_pmc_resume, ptr null }, align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_pmc__166_192_pmc_register_ops2, ptr @__ksymtab_of_at91_get_clk_range], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_at91_get_clk_range(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %3
  %9 = call i32 @of_property_read_u32_index(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %5) #7
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = icmp eq ptr %2, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = load i32, ptr %4, align 4
  store i32 %14, ptr %2, align 4
  %15 = load i32, ptr %5, align 4
  %16 = getelementptr inbounds %struct.clk_range, ptr %2, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  br label %17

17:                                               ; preds = %13, %11, %8, %3
  %18 = phi i32 [ %6, %3 ], [ %9, %8 ], [ 0, %13 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_clk_hw_pmc_get(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %6 = load i32, ptr %5, align 4
  switch i32 %4, label %51 [
    i32 0, label %7
    i32 1, label %15
    i32 2, label %24
    i32 3, label %33
    i32 4, label %42
  ]

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr ptr, ptr %12, i32 %6
  %14 = load ptr, ptr %13, align 4
  br label %53

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ult i32 %6, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr ptr, ptr %21, i32 %6
  %23 = load ptr, ptr %22, align 4
  br label %53

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp ult i32 %6, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr ptr, ptr %30, i32 %6
  %32 = load ptr, ptr %31, align 4
  br label %53

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp ult i32 %6, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 7
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr ptr, ptr %39, i32 %6
  %41 = load ptr, ptr %40, align 4
  br label %53

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 8
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %6, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.pmc_data, ptr %1, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr ptr, ptr %48, i32 %6
  %50 = load ptr, ptr %49, align 4
  br label %53

51:                                               ; preds = %42, %33, %24, %15, %7, %2
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.of_clk_hw_pmc_get, i32 noundef %4, i32 noundef %6) #8
  br label %53

53:                                               ; preds = %51, %46, %37, %28, %19, %10
  %54 = phi ptr [ inttoptr (i32 -22 to ptr), %51 ], [ %50, %46 ], [ %41, %37 ], [ %32, %28 ], [ %23, %19 ], [ %14, %10 ]
  ret ptr %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pmc_data_allocate(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = add i32 %1, %0
  %7 = add i32 %6, %2
  %8 = add i32 %7, %3
  %9 = add i32 %8, %4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %9, i32 4) #7
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %13 = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 40) #7
  %14 = select i1 %11, i32 -1, i32 %13
  %15 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %5
  store i32 %0, ptr %15, align 64
  %18 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 10
  %19 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 1
  store ptr %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 2
  store i32 %1, ptr %20, align 8
  %21 = getelementptr ptr, ptr %18, i32 %0
  %22 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 4
  store i32 %2, ptr %23, align 16
  %24 = getelementptr ptr, ptr %21, i32 %1
  %25 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 6
  store i32 %3, ptr %26, align 8
  %27 = getelementptr ptr, ptr %24, i32 %2
  %28 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 7
  store ptr %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 8
  store i32 %4, ptr %29, align 32
  %30 = getelementptr ptr, ptr %27, i32 %3
  %31 = getelementptr inbounds %struct.pmc_data, ptr %15, i32 0, i32 9
  store ptr %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %17, %5
  ret ptr %15
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pmc_register_ops() #4 section ".init.text" {
  %1 = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_dt_ids, ptr noundef null) #7
  %2 = icmp eq ptr %1, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %0
  %4 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %1) #7
  tail call void @of_node_put(ptr noundef nonnull %1) #7
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %5
  %9 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %6) #7
  tail call void @of_node_put(ptr noundef nonnull %6) #7
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = tail call ptr @of_iomap(ptr noundef nonnull %6, i32 noundef 0) #7
  store ptr %11, ptr @at91_pmc_backup_suspend, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.pmc_register_ops) #8
  br label %16

15:                                               ; preds = %10
  tail call void @register_syscore_ops(ptr noundef nonnull @pmc_syscore_ops) #7
  br label %16

16:                                               ; preds = %15, %13, %8, %5, %3, %0
  %17 = phi i32 [ 0, %15 ], [ -12, %13 ], [ -19, %0 ], [ -19, %5 ], [ -19, %3 ], [ -19, %8 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at91_pmc_suspend() #0 {
  %1 = load ptr, ptr @at91_pmc_backup_suspend, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #7, !srcloc !9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @clk_save_context() #7
  br label %8

8:                                                ; preds = %6, %3, %0
  %9 = phi i32 [ %7, %6 ], [ 0, %0 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at91_pmc_resume() #0 {
  %1 = load ptr, ptr @at91_pmc_backup_suspend, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %1) #7, !srcloc !9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @clk_restore_context() #7
  br label %7

7:                                                ; preds = %6, %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_save_context() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_restore_context() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!9 = !{i64 3065380}
