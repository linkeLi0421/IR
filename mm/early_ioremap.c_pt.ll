; ModuleID = '/llk/IR/mm/early_ioremap.c_pt.bc'
source_filename = "../mm/early_ioremap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }

@__setup_str_early_ioremap_debug_setup = internal constant [20 x i8] c"early_ioremap_debug\00", section ".init.rodata", align 1
@__setup_early_ioremap_debug_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_early_ioremap_debug_setup, ptr @early_ioremap_debug_setup, i32 1 }, section ".init.setup", align 4
@after_paging_init = internal unnamed_addr global i1 false, section ".init.data", align 4
@prev_map = internal unnamed_addr global [7 x ptr] zeroinitializer, section ".init.data", align 4
@.str = private unnamed_addr constant [19 x i8] c"mm/early_ioremap.c\00", align 1
@slot_virt = internal unnamed_addr global [7 x i32] zeroinitializer, section ".init.data", align 4
@__initcall__kmod_early_ioremap__221_98_check_early_ioremap_leak7 = internal global ptr @check_early_ioremap_leak, section ".initcall7.init", align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s(%p, %08lx) not found slot\0A\00", align 1
@__func__.early_iounmap = private unnamed_addr constant [14 x i8] c"early_iounmap\00", align 1
@prev_size = internal unnamed_addr global [7 x i32] zeroinitializer, section ".init.data", align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"%s(%p, %08lx) [%d] size not consistent %08lx\0A\00", align 1
@early_ioremap_debug = internal unnamed_addr global i1 false, section ".init.data", align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"%s(%p, %08lx) [%d]\0A\00", align 1
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [118 x i8] c"\014Debug warning: early ioremap leak of %d areas detected.\0Aplease boot with early_ioremap_debug and report the dmesg.\0A\00", align 1
@system_state = external dso_local local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"%s(%pa, %08lx) not found slot\0A\00", align 1
@__func__.__early_ioremap = private unnamed_addr constant [16 x i8] c"__early_ioremap\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"%s(%pa, %08lx) [%d] => %08lx + %08lx\0A\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__initcall__kmod_early_ioremap__221_98_check_early_ioremap_leak7, ptr @__setup_early_ioremap_debug_setup], section "llvm.metadata"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define internal i32 @early_ioremap_debug_setup(ptr nocapture noundef readnone %0) #0 section ".init.text" {
  store i1 true, ptr @early_ioremap_debug, align 4
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define weak dso_local i32 @early_memremap_pgprot_adjust(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 section ".init.text" {
  ret i32 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync)
define dso_local void @early_ioremap_reset() local_unnamed_addr #0 section ".init.text" {
  store i1 true, ptr @after_paging_init, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_ioremap_setup() local_unnamed_addr #1 section ".init.text" {
  br label %4

1:                                                ; preds = %4
  %2 = add nuw nsw i32 %5, 1
  %3 = icmp eq i32 %2, 7
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %0
  %5 = phi i32 [ 0, %0 ], [ %2, %1 ]
  %6 = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %1, label %9, !prof !8

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 75, i32 noundef 9, ptr noundef null) #5
  br label %10

10:                                               ; preds = %9, %1
  br label %11

11:                                               ; preds = %11, %10
  %12 = phi i32 [ %16, %11 ], [ 0, %10 ]
  %13 = shl i32 %12, 17
  %14 = add nuw nsw i32 %13, -1970176
  %15 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %12
  store i32 %14, ptr %15, align 4
  %16 = add nuw nsw i32 %12, 1
  %17 = icmp eq i32 %16, 7
  br i1 %17, label %18, label %11

18:                                               ; preds = %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @check_early_ioremap_leak() #1 section ".init.text" {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ 0, %0 ], [ %9, %1 ]
  %3 = phi i32 [ 0, %0 ], [ %8, %1 ]
  %4 = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i32
  %8 = add i32 %3, %7
  %9 = add nuw nsw i32 %2, 1
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %1

11:                                               ; preds = %1
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %14, label %13, !prof !8

13:                                               ; preds = %11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 94, i32 noundef 9, ptr noundef nonnull @.str.4, i32 noundef %8) #5
  br label %14

14:                                               ; preds = %13, %11
  %15 = xor i1 %12, true
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_iounmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi i32 [ 0, %2 ], [ %9, %8 ]
  %5 = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = add nuw nsw i32 %4, 1
  %10 = icmp eq i32 %9, 7
  br i1 %10, label %11, label %3

11:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 180, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %0, i32 noundef %1) #5
  br label %43

12:                                               ; preds = %3
  %13 = getelementptr [7 x i32], ptr @prev_size, i32 0, i32 %4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, %1
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 185, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %0, i32 noundef %1, i32 noundef %4, i32 noundef %14) #5
  br label %43

17:                                               ; preds = %12
  %18 = load i1, ptr @early_ioremap_debug, align 4
  br i1 %18, label %19, label %20, !prof !9

19:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 189, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.early_iounmap, ptr noundef %0, i32 noundef %1, i32 noundef %4) #5
  br label %20

20:                                               ; preds = %19, %17
  %21 = icmp ult ptr %0, inttoptr (i32 -1970176 to ptr)
  br i1 %21, label %22, label %23, !prof !9

22:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 192, i32 noundef 9, ptr noundef null) #5
  br label %43

23:                                               ; preds = %20
  %24 = ptrtoint ptr %0 to i32
  %25 = and i32 %24, 4095
  %26 = add i32 %1, 4095
  %27 = add i32 %26, %25
  %28 = icmp ult i32 %27, 4096
  br i1 %28, label %42, label %29

29:                                               ; preds = %23
  %30 = mul nsw i32 %4, -32
  %31 = add nsw i32 %30, 224
  %32 = lshr i32 %27, 12
  br label %33

33:                                               ; preds = %38, %29
  %34 = phi i32 [ %40, %38 ], [ %32, %29 ]
  %35 = phi i32 [ %39, %38 ], [ %31, %29 ]
  %36 = load i1, ptr @after_paging_init, align 4
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/early_ioremap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 62, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

38:                                               ; preds = %33
  tail call void @__set_fixmap(i32 noundef %35, i32 noundef 0, i32 noundef 0) #5
  %39 = add i32 %35, -1
  %40 = add i32 %34, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %33

42:                                               ; preds = %38, %23
  store ptr null, ptr %5, align 4
  br label %43

43:                                               ; preds = %42, %22, %16, %11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__set_fixmap(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @early_ioremap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = tail call fastcc ptr @__early_ioremap(i32 noundef %0, i32 noundef %1, i32 noundef 1619) #6
  ret ptr %3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @__early_ioremap(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 section ".init.text" {
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  %5 = load i32, ptr @system_state, align 4
  %6 = icmp ugt i32 %5, 2
  br i1 %6, label %7, label %8, !prof !9

7:                                                ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 109, i32 noundef 9, ptr noundef null) #5
  br label %8

8:                                                ; preds = %7, %3
  br label %9

9:                                                ; preds = %14, %8
  %10 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %11 = getelementptr [7 x ptr], ptr @prev_map, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = add nuw nsw i32 %10, 1
  %16 = icmp eq i32 %15, 7
  br i1 %16, label %17, label %9

17:                                               ; preds = %14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.__early_ioremap, ptr noundef nonnull %4, i32 noundef %1) #5
  br label %62

18:                                               ; preds = %9
  %19 = icmp eq i32 %1, 0
  %20 = sub i32 0, %1
  %21 = icmp ult i32 %20, %0
  %22 = or i1 %19, %21
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 125, i32 noundef 9, ptr noundef null) #5
  br label %62

24:                                               ; preds = %18
  %25 = getelementptr [7 x i32], ptr @prev_size, i32 0, i32 %10
  store i32 %1, ptr %25, align 4
  %26 = and i32 %0, 4095
  %27 = and i32 %0, -4096
  %28 = add i32 %1, 4095
  %29 = add i32 %28, %0
  %30 = and i32 %29, -4096
  %31 = sub i32 %30, %27
  %32 = icmp ugt i32 %31, 131072
  br i1 %32, label %33, label %34, !prof !9

33:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 140, i32 noundef 9, ptr noundef null) #5
  br label %62

34:                                               ; preds = %24
  %35 = icmp eq i32 %30, %27
  br i1 %35, label %51, label %36

36:                                               ; preds = %34
  %37 = mul nsw i32 %10, -32
  %38 = add nsw i32 %37, 224
  %39 = lshr exact i32 %31, 12
  br label %40

40:                                               ; preds = %46, %36
  %41 = phi i32 [ %49, %46 ], [ %39, %36 ]
  %42 = phi i32 [ %48, %46 ], [ %38, %36 ]
  %43 = phi i32 [ %47, %46 ], [ %27, %36 ]
  %44 = load i1, ptr @after_paging_init, align 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/early_ioremap.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 55, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

46:                                               ; preds = %40
  tail call void @__set_fixmap(i32 noundef %42, i32 noundef %43, i32 noundef %2) #5
  %47 = add i32 %43, 4096
  %48 = add i32 %42, -1
  %49 = add i32 %41, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %40

51:                                               ; preds = %46, %34
  %52 = phi i32 [ %27, %34 ], [ %47, %46 ]
  store i32 %52, ptr %4, align 4
  %53 = load i1, ptr @early_ioremap_debug, align 4
  br i1 %53, label %54, label %57, !prof !9

54:                                               ; preds = %51
  %55 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %10
  %56 = load i32, ptr %55, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 157, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.__early_ioremap, ptr noundef nonnull %4, i32 noundef %31, i32 noundef %10, i32 noundef %26, i32 noundef %56) #5
  br label %57

57:                                               ; preds = %54, %51
  %58 = getelementptr [7 x i32], ptr @slot_virt, i32 0, i32 %10
  %59 = load i32, ptr %58, align 4
  %60 = add i32 %59, %26
  %61 = inttoptr i32 %60 to ptr
  store ptr %61, ptr %11, align 4
  br label %62

62:                                               ; preds = %57, %33, %23, %17
  %63 = phi ptr [ null, %17 ], [ null, %23 ], [ null, %33 ], [ %61, %57 ]
  ret ptr %63
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @early_memremap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = load i32, ptr @pgprot_kernel, align 4
  %4 = or i32 %3, 512
  %5 = tail call i32 @early_memremap_pgprot_adjust(i32 noundef %0, i32 noundef %1, i32 noundef %4) #6
  %6 = tail call fastcc ptr @__early_ioremap(i32 noundef %0, i32 noundef %1, i32 noundef %5) #6
  ret ptr %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local ptr @early_memremap_ro(i32 noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  %3 = load i32, ptr @pgprot_kernel, align 4
  %4 = or i32 %3, 640
  %5 = tail call i32 @early_memremap_pgprot_adjust(i32 noundef %0, i32 noundef %1, i32 noundef %4) #6
  %6 = tail call fastcc ptr @__early_ioremap(i32 noundef %0, i32 noundef %1, i32 noundef %5) #6
  ret ptr %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @copy_from_early_mem(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 section ".init.text" {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %18, %5 ], [ %2, %3 ]
  %7 = phi i32 [ %17, %5 ], [ %1, %3 ]
  %8 = phi ptr [ %16, %5 ], [ %0, %3 ]
  %9 = and i32 %7, 4095
  %10 = sub nuw nsw i32 131072, %9
  %11 = tail call i32 @llvm.umin.i32(i32 %6, i32 %10)
  %12 = and i32 %7, -4096
  %13 = add nuw nsw i32 %11, %9
  %14 = tail call ptr @early_memremap(i32 noundef %12, i32 noundef %13) #6
  %15 = getelementptr i8, ptr %14, i32 %9
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %8, ptr align 1 %15, i32 %11, i1 false)
  tail call void @early_iounmap(ptr noundef %14, i32 noundef %13) #7
  %16 = getelementptr i8, ptr %8, i32 %11
  %17 = add i32 %11, %7
  %18 = sub i32 %6, %11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %5

20:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_memunmap(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 section ".init.text" {
  tail call void @early_iounmap(ptr noundef %0, i32 noundef %1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152331726, i64 2152332208, i64 2152331763, i64 2152331819, i64 2152331853, i64 2152331877, i64 2152331918, i64 2152331939, i64 2152331967, i64 2152332001}
!11 = !{i64 2152330457, i64 2152330939, i64 2152330494, i64 2152330550, i64 2152330584, i64 2152330608, i64 2152330649, i64 2152330670, i64 2152330698, i64 2152330732}
