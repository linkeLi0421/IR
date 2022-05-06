; ModuleID = '/llk/IR/lib/show_mem.c_pt.bc'
source_filename = "../lib/show_mem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [8 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [26 x i8], %struct.zone_padding, [10 x %struct.atomic_t], [0 x %struct.atomic_t], [24 x i8] }
%struct.atomic_t = type { i32 }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.zone_padding = type { [0 x i8] }

@.str = private unnamed_addr constant [11 x i8] c"Mem-Info:\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%lu pages RAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%lu pages HighMem/MovableOnly\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%lu pages reserved\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"%lu pages cma reserved\0A\00", align 1
@totalcma_pages = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @show_mem(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #3
  tail call void @show_free_areas(i32 noundef %0, ptr noundef %1) #4
  %4 = tail call ptr @first_online_pgdat() #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6

6:                                                ; preds = %62, %2
  %7 = phi ptr [ %66, %62 ], [ %4, %2 ]
  %8 = phi i32 [ %65, %62 ], [ 0, %2 ]
  %9 = phi i32 [ %64, %62 ], [ 0, %2 ]
  %10 = phi i32 [ %63, %62 ], [ 0, %2 ]
  %11 = load i32, ptr @movable_zone, align 4
  %12 = icmp eq i32 %11, 2
  %13 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 0, i32 13
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %6
  %17 = add i32 %14, %8
  %18 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 0, i32 11
  %19 = load volatile i32, ptr %18, align 4
  %20 = sub i32 %14, %19
  %21 = add i32 %20, %9
  br label %22

22:                                               ; preds = %16, %6
  %23 = phi i32 [ %9, %6 ], [ %21, %16 ]
  %24 = phi i32 [ %8, %6 ], [ %17, %16 ]
  %25 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 1, i32 13
  %26 = load i32, ptr %25, align 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = add i32 %26, %24
  %30 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 1, i32 11
  %31 = load volatile i32, ptr %30, align 4
  %32 = sub i32 %26, %31
  %33 = add i32 %32, %23
  br label %34

34:                                               ; preds = %28, %22
  %35 = phi i32 [ %23, %22 ], [ %33, %28 ]
  %36 = phi i32 [ %24, %22 ], [ %29, %28 ]
  %37 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 2, i32 13
  %38 = load i32, ptr %37, align 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = add i32 %38, %36
  %42 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 2, i32 11
  %43 = load volatile i32, ptr %42, align 4
  %44 = sub i32 %38, %43
  %45 = add i32 %44, %35
  %46 = add i32 %10, %38
  br label %47

47:                                               ; preds = %40, %34
  %48 = phi i32 [ %10, %34 ], [ %46, %40 ]
  %49 = phi i32 [ %35, %34 ], [ %45, %40 ]
  %50 = phi i32 [ %36, %34 ], [ %41, %40 ]
  %51 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 3, i32 13
  %52 = load i32, ptr %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = add i32 %52, %50
  %56 = getelementptr [4 x %struct.zone], ptr %7, i32 0, i32 3, i32 11
  %57 = load volatile i32, ptr %56, align 4
  %58 = sub i32 %52, %57
  %59 = add i32 %58, %49
  %60 = select i1 %12, i32 %52, i32 0
  %61 = add i32 %48, %60
  br label %62

62:                                               ; preds = %54, %47
  %63 = phi i32 [ %48, %47 ], [ %61, %54 ]
  %64 = phi i32 [ %49, %47 ], [ %59, %54 ]
  %65 = phi i32 [ %50, %47 ], [ %55, %54 ]
  %66 = tail call ptr @next_online_pgdat(ptr noundef nonnull %7) #4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %6

68:                                               ; preds = %62, %2
  %69 = phi i32 [ 0, %2 ], [ %63, %62 ]
  %70 = phi i32 [ 0, %2 ], [ %64, %62 ]
  %71 = phi i32 [ 0, %2 ], [ %65, %62 ]
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %71) #3
  %73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %69) #3
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %70) #3
  %75 = load i32, ptr @totalcma_pages, align 4
  %76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %75) #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @show_free_areas(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @first_online_pgdat() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @next_online_pgdat(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
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
