; ModuleID = '/llk/IR/lib/bug.c_pt.bc'
source_filename = "../lib/bug.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.list_head = type { ptr, ptr }
%struct.bug_entry = type { i32, ptr, i16, i16 }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.elf32_hdr = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%struct.elf32_shdr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"__bug_table\00", align 1
@module_bug_list = internal global %struct.list_head { ptr @module_bug_list, ptr @module_bug_list }, align 4
@__start___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@__stop___bug_table = external dso_local global [0 x %struct.bug_entry], align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"------------[ cut here ]------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\012kernel BUG at %s:%u!\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"\012Kernel BUG at %pB [verbose debug info unavailable]\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @module_bug_finalize(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 29
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 27
  store i32 0, ptr %5, align 8
  %6 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 13
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = getelementptr %struct.elf32_shdr, ptr %1, i32 %8, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %0, i32 %10
  %12 = getelementptr inbounds %struct.elf32_hdr, ptr %0, i32 0, i32 12
  %13 = load i16, ptr %12, align 4
  %14 = zext i16 %13 to i32
  %15 = icmp ugt i16 %13, 1
  br i1 %15, label %16, label %33

16:                                               ; preds = %30, %3
  %17 = phi i32 [ %31, %30 ], [ 1, %3 ]
  %18 = getelementptr %struct.elf32_shdr, ptr %1, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr i8, ptr %11, i32 %19
  %21 = tail call i32 @strcmp(ptr noundef %20, ptr noundef nonnull dereferenceable(12) @.str)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = getelementptr %struct.elf32_shdr, ptr %1, i32 %17, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = inttoptr i32 %25 to ptr
  store ptr %26, ptr %4, align 4
  %27 = getelementptr %struct.elf32_shdr, ptr %1, i32 %17, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = udiv i32 %28, 12
  store i32 %29, ptr %5, align 8
  br label %33

30:                                               ; preds = %16
  %31 = add nuw nsw i32 %17, 1
  %32 = icmp eq i32 %31, %14
  br i1 %32, label %33, label %16

33:                                               ; preds = %30, %23, %3
  %34 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 28
  %35 = load ptr, ptr @module_bug_list, align 4
  store ptr %35, ptr %34, align 4
  %36 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 28, i32 1
  store ptr @module_bug_list, ptr %36, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !8
  store volatile ptr %34, ptr @module_bug_list, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @module_bug_cleanup(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 28
  %3 = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 28, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  store ptr %4, ptr %6, align 4
  store volatile ptr %5, ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @bug_get_file_line(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.bug_entry, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  store ptr %5, ptr %1, align 4
  %6 = getelementptr inbounds %struct.bug_entry, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  store i32 %8, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_bug(i32 noundef %0) local_unnamed_addr #0 {
  br i1 icmp ult (ptr @__start___bug_table, ptr @__stop___bug_table), label %2, label %9

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %7, %6 ], [ @__start___bug_table, %1 ]
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, %0
  br i1 %5, label %34, label %6

6:                                                ; preds = %2
  %7 = getelementptr %struct.bug_entry, ptr %3, i32 1
  %8 = icmp ult ptr %7, @__stop___bug_table
  br i1 %8, label %2, label %9

9:                                                ; preds = %6, %1
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %10 = load volatile ptr, ptr @module_bug_list, align 4
  %11 = icmp eq ptr %10, @module_bug_list
  br i1 %11, label %32, label %15

12:                                               ; preds = %28, %15
  %13 = load volatile ptr, ptr %16, align 4
  %14 = icmp eq ptr %13, @module_bug_list
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %9
  %16 = phi ptr [ %13, %12 ], [ %10, %9 ]
  %17 = getelementptr i8, ptr %16, i32 -4
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %12, label %20

20:                                               ; preds = %15
  %21 = getelementptr i8, ptr %16, i32 8
  %22 = load ptr, ptr %21, align 4
  br label %23

23:                                               ; preds = %28, %20
  %24 = phi ptr [ %30, %28 ], [ %22, %20 ]
  %25 = phi i32 [ %29, %28 ], [ 0, %20 ]
  %26 = load i32, ptr %24, align 4
  %27 = icmp eq i32 %26, %0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = add nuw i32 %25, 1
  %30 = getelementptr %struct.bug_entry, ptr %24, i32 1
  %31 = icmp eq i32 %29, %18
  br i1 %31, label %12, label %23

32:                                               ; preds = %23, %12, %9
  %33 = phi ptr [ null, %9 ], [ %24, %23 ], [ null, %12 ]
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %34

34:                                               ; preds = %32, %2
  %35 = phi ptr [ %33, %32 ], [ %3, %2 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @report_bug(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @is_valid_bugaddr(i32 noundef %0) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %78, label %5

5:                                                ; preds = %2
  br i1 icmp ult (ptr @__start___bug_table, ptr @__stop___bug_table), label %6, label %13

6:                                                ; preds = %10, %5
  %7 = phi ptr [ %11, %10 ], [ @__start___bug_table, %5 ]
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, %0
  br i1 %9, label %38, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.bug_entry, ptr %7, i32 1
  %12 = icmp ult ptr %11, @__stop___bug_table
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %5
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %14 = load volatile ptr, ptr @module_bug_list, align 4
  %15 = icmp eq ptr %14, @module_bug_list
  br i1 %15, label %36, label %19

16:                                               ; preds = %32, %19
  %17 = load volatile ptr, ptr %20, align 4
  %18 = icmp eq ptr %17, @module_bug_list
  br i1 %18, label %36, label %19

19:                                               ; preds = %16, %13
  %20 = phi ptr [ %17, %16 ], [ %14, %13 ]
  %21 = getelementptr i8, ptr %20, i32 -4
  %22 = load i32, ptr %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %24

24:                                               ; preds = %19
  %25 = getelementptr i8, ptr %20, i32 8
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %32, %24
  %28 = phi ptr [ %34, %32 ], [ %26, %24 ]
  %29 = phi i32 [ %33, %32 ], [ 0, %24 ]
  %30 = load i32, ptr %28, align 4
  %31 = icmp eq i32 %30, %0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = add nuw i32 %29, 1
  %34 = getelementptr %struct.bug_entry, ptr %28, i32 1
  %35 = icmp eq i32 %33, %22
  br i1 %35, label %16, label %27

36:                                               ; preds = %27, %16, %13
  %37 = phi ptr [ null, %13 ], [ %28, %27 ], [ null, %16 ]
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br label %38

38:                                               ; preds = %36, %6
  %39 = phi ptr [ %37, %36 ], [ %7, %6 ]
  %40 = icmp eq ptr %39, null
  br i1 %40, label %78, label %41

41:                                               ; preds = %38
  tail call void @disable_trace_on_warning() #6
  %42 = getelementptr inbounds %struct.bug_entry, ptr %39, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.bug_entry, ptr %39, i32 0, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = zext i16 %45 to i32
  %47 = getelementptr inbounds %struct.bug_entry, ptr %39, i32 0, i32 3
  %48 = load i16, ptr %47, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  %52 = and i32 %49, 3
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = and i32 %49, 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = or i16 %48, 4
  store i16 %58, ptr %47, align 2
  br label %59

59:                                               ; preds = %57, %41
  %60 = phi i16 [ %58, %57 ], [ %48, %41 ]
  %61 = and i16 %60, 8
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #7
  br label %65

65:                                               ; preds = %63, %59
  br i1 %51, label %71, label %66

66:                                               ; preds = %65
  %67 = inttoptr i32 %0 to ptr
  %68 = load i16, ptr %47, align 2
  %69 = lshr i16 %68, 8
  %70 = zext i16 %69 to i32
  tail call void @__warn(ptr noundef %43, i32 noundef %46, ptr noundef %67, i32 noundef %70, ptr noundef %1, ptr noundef null) #6
  br label %78

71:                                               ; preds = %65
  %72 = icmp eq ptr %43, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %43, i32 noundef %46) #7
  br label %78

75:                                               ; preds = %71
  %76 = inttoptr i32 %0 to ptr
  %77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %76) #7
  br label %78

78:                                               ; preds = %75, %73, %66, %54, %38, %2
  %79 = phi i32 [ 1, %66 ], [ 0, %2 ], [ 0, %38 ], [ 1, %54 ], [ 2, %75 ], [ 2, %73 ]
  ret i32 %79
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @is_valid_bugaddr(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_trace_on_warning() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__warn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @generic_bug_clear_once() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !9
  %1 = load volatile ptr, ptr @module_bug_list, align 4
  %2 = icmp eq ptr %1, @module_bug_list
  br i1 %2, label %21, label %3

3:                                                ; preds = %18, %0
  %4 = phi ptr [ %19, %18 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 -4
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.bug_entry, ptr %6, i32 %8
  %10 = icmp ult ptr %6, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %11, %3
  %12 = phi ptr [ %16, %11 ], [ %6, %3 ]
  %13 = getelementptr inbounds %struct.bug_entry, ptr %12, i32 0, i32 3
  %14 = load i16, ptr %13, align 2
  %15 = and i16 %14, -5
  store i16 %15, ptr %13, align 2
  %16 = getelementptr %struct.bug_entry, ptr %12, i32 1
  %17 = icmp ult ptr %16, %9
  br i1 %17, label %11, label %18

18:                                               ; preds = %11, %3
  %19 = load volatile ptr, ptr %4, align 4
  %20 = icmp eq ptr %19, @module_bug_list
  br i1 %20, label %21, label %3

21:                                               ; preds = %18, %0
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !10
  br i1 icmp ult (ptr @__start___bug_table, ptr @__stop___bug_table), label %22, label %29

22:                                               ; preds = %22, %21
  %23 = phi ptr [ %27, %22 ], [ @__start___bug_table, %21 ]
  %24 = getelementptr inbounds %struct.bug_entry, ptr %23, i32 0, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = and i16 %25, -5
  store i16 %26, ptr %24, align 2
  %27 = getelementptr %struct.bug_entry, ptr %23, i32 1
  %28 = icmp ult ptr %27, @__stop___bug_table
  br i1 %28, label %22, label %29

29:                                               ; preds = %22, %21
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
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
!8 = !{i64 2150475603}
!9 = !{i64 2149057233}
!10 = !{i64 2149057855}
