; ModuleID = '/llk/IR/lib/logic_pio.c_pt.bc'
source_filename = "../lib/logic_pio.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.logic_pio_hwaddr = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }

@io_range_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @io_range_mutex, i64 12), ptr getelementptr (i8, ptr @io_range_mutex, i64 12) } }, align 4
@io_range_list = internal global %struct.list_head { ptr @io_range_list, ptr @io_range_list }, align 4
@.str = private unnamed_addr constant [62 x i8] c"\014LOGIC PIO: Requested IO range too big, new size set to 64K\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: IO range not found or invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\013LOGIC PIO: resource size %pa cannot fit in IO range size %pa\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"\013LOGIC PIO: addr %pa not registered in io_range_list\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"\013LOGIC PIO: PIO entry token 0x%lx invalid\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @logic_pio_register_range(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %91, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %91, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %91, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %91, label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %9
  tail call void @mutex_lock(ptr noundef nonnull @io_range_mutex) #3
  %23 = load ptr, ptr @io_range_list, align 4
  %24 = icmp eq ptr %23, @io_range_list
  br i1 %24, label %65, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %4, align 4
  br label %27

27:                                               ; preds = %60, %25
  %28 = phi ptr [ %23, %25 ], [ %63, %60 ]
  %29 = phi i32 [ 0, %25 ], [ %62, %60 ]
  %30 = phi i32 [ 1048575, %25 ], [ %61, %60 ]
  %31 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %26
  br i1 %33, label %89, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 5
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %60 [
    i32 1, label %37
    i32 0, label %53
  ]

37:                                               ; preds = %34
  %38 = load i32, ptr %12, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %42
  %46 = icmp uge i32 %21, %45
  %47 = icmp ult i32 %22, %42
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, %44
  br label %60

53:                                               ; preds = %34
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %28, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %30
  br label %60

60:                                               ; preds = %56, %53, %49, %37, %34
  %61 = phi i32 [ %30, %49 ], [ %59, %56 ], [ %30, %53 ], [ %30, %37 ], [ %30, %34 ]
  %62 = phi i32 [ %52, %49 ], [ %29, %56 ], [ %29, %53 ], [ %29, %37 ], [ %29, %34 ]
  %63 = load ptr, ptr %28, align 4
  %64 = icmp eq ptr %63, @io_range_list
  br i1 %64, label %65, label %27

65:                                               ; preds = %60, %19
  %66 = phi i32 [ 1048575, %19 ], [ %61, %60 ]
  %67 = phi i32 [ 0, %19 ], [ %62, %60 ]
  %68 = load i32, ptr %12, align 4
  switch i32 %68, label %89 [
    i32 1, label %69
    i32 0, label %79
  ]

69:                                               ; preds = %65
  %70 = load i32, ptr %8, align 4
  %71 = add i32 %67, -1048577
  %72 = add i32 %71, %70
  %73 = icmp ult i32 %72, -1048576
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = add i32 %67, -983041
  %76 = icmp ult i32 %75, -1048576
  br i1 %76, label %89, label %77

77:                                               ; preds = %74
  store i32 65536, ptr %8, align 4
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #4
  br label %84

79:                                               ; preds = %65
  %80 = load i32, ptr %8, align 4
  %81 = add i32 %66, -1048577
  %82 = add i32 %81, %80
  %83 = icmp ult i32 %82, -1048576
  br i1 %83, label %89, label %84

84:                                               ; preds = %79, %77, %69
  %85 = phi i32 [ %67, %77 ], [ %67, %69 ], [ %66, %79 ]
  %86 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %0, i32 0, i32 3
  store i32 %85, ptr %86, align 4
  %87 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @io_range_list, i32 0, i32 1), align 4
  store ptr @io_range_list, ptr %0, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  store ptr %87, ptr %88, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  store volatile ptr %0, ptr %87, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.list_head, ptr @io_range_list, i32 0, i32 1), align 4
  br label %89

89:                                               ; preds = %84, %79, %74, %65, %40, %27
  %90 = phi i32 [ 0, %84 ], [ -7, %74 ], [ -7, %79 ], [ -22, %65 ], [ -14, %40 ], [ -17, %27 ]
  tail call void @mutex_unlock(ptr noundef nonnull @io_range_mutex) #3
  br label %91

91:                                               ; preds = %89, %15, %7, %3, %1
  %92 = phi i32 [ %90, %89 ], [ -22, %15 ], [ -22, %7 ], [ -22, %3 ], [ -22, %1 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @logic_pio_unregister_range(ptr nocapture noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @io_range_mutex) #3
  %2 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  store volatile ptr %4, ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @io_range_mutex) #3
  tail call void @synchronize_rcu() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_io_range_by_fwnode(ptr noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @io_range_list, %1 ], [ %4, %6 ]
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @io_range_list
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %10, label %2

10:                                               ; preds = %6, %2
  %11 = phi ptr [ null, %2 ], [ %4, %6 ]
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  ret ptr %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @logic_pio_to_hwaddr(i32 noundef %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %2 = load volatile ptr, ptr @io_range_list, align 4
  %3 = icmp eq ptr %2, @io_range_list
  br i1 %3, label %4, label %5

4:                                                ; preds = %15, %1
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  br label %20

5:                                                ; preds = %15, %1
  %6 = phi ptr [ %16, %15 ], [ %2, %1 ]
  %7 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = icmp ugt i32 %8, %0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %8
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %5
  %16 = load volatile ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, @io_range_list
  br i1 %17, label %4, label %5

18:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  %19 = icmp eq ptr %6, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %18, %4
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %0) #4
  br label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 3
  %24 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, %0
  %27 = load i32, ptr %23, align 4
  %28 = sub i32 %26, %27
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi i32 [ %28, %22 ], [ -1, %20 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @logic_pio_trans_hwaddr(ptr noundef readnone %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %2, ptr %4, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ @io_range_list, %3 ], [ %7, %10 ]
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @io_range_list
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  br label %20

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %5

14:                                               ; preds = %10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  %15 = icmp eq ptr %7, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %14, %9
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #4
  br label %35

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %2
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %4, ptr noundef %23) #4
  br label %35

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %1, %30
  %32 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %7, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %33
  br label %35

35:                                               ; preds = %28, %26, %20
  %36 = phi i32 [ -1, %20 ], [ -1, %26 ], [ %34, %28 ]
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @logic_pio_trans_cpuaddr(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !9
  %3 = load volatile ptr, ptr @io_range_list, align 4
  %4 = icmp eq ptr %3, @io_range_list
  br i1 %4, label %27, label %5

5:                                                ; preds = %24, %1
  %6 = phi ptr [ %25, %24 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %12, %0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %12
  %18 = icmp ugt i32 %17, %0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = sub i32 %0, %12
  %21 = getelementptr inbounds %struct.logic_pio_hwaddr, ptr %6, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %20, %22
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  br label %29

24:                                               ; preds = %14, %10, %5
  %25 = load volatile ptr, ptr %6, align 4
  %26 = icmp eq ptr %25, @io_range_list
  br i1 %26, label %27, label %5

27:                                               ; preds = %24, %1
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !10
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #4
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ %23, %19 ], [ -1, %27 ]
  ret i32 %30
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2150726711}
!9 = !{i64 2149421532}
!10 = !{i64 2149421749}
