; ModuleID = '/llk/IR/fs/proc/consoles.c_pt.bc'
source_filename = "../fs/proc/consoles.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.console = type { [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, ptr, ptr }
%struct.tty_driver = type { i32, %struct.kref, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, %struct.ktermios, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_proc__202_98_proc_consoles_init5 = internal global ptr @proc_consoles_init, section ".initcall5.init", align 4
@.str = private unnamed_addr constant [9 x i8] c"consoles\00", align 1
@consoles_op = internal constant %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @show_console_dev }, align 4
@console_drivers = external dso_local local_unnamed_addr global ptr, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%c%c%c (%s)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" %4d:%d\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_proc__202_98_proc_consoles_init5], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @proc_consoles_init() #0 section ".init.text" {
  %1 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @consoles_op, i32 noundef 0, ptr noundef null) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @c_start(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #2 {
  tail call void @console_lock() #5
  %3 = load ptr, ptr @console_drivers, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  br label %7

7:                                                ; preds = %11, %5
  %8 = phi ptr [ %3, %5 ], [ %14, %11 ]
  %9 = phi i64 [ 0, %5 ], [ %12, %11 ]
  %10 = icmp eq i64 %9, %6
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = add i64 %9, 1
  %13 = getelementptr inbounds %struct.console, ptr %8, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7

16:                                               ; preds = %11, %7, %2
  %17 = phi ptr [ null, %2 ], [ %8, %7 ], [ null, %11 ]
  ret ptr %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @c_stop(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1) #2 {
  tail call void @console_unlock() #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal ptr @c_next(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #3 {
  %4 = load i64, ptr %2, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %2, align 8
  %6 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @show_console_dev(ptr noundef %0, ptr noundef %1) #2 {
  %3 = alloca [7 x i8], align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %3) #5
  %5 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = call ptr %6(ptr noundef %1, ptr noundef nonnull %4) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = shl i32 %13, 20
  %15 = getelementptr inbounds %struct.tty_driver, ptr %9, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %14, %16
  %18 = load i32, ptr %4, align 4
  %19 = add i32 %17, %18
  br label %20

20:                                               ; preds = %11, %8
  %21 = phi i32 [ %19, %11 ], [ 0, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  br label %22

22:                                               ; preds = %20, %2
  %23 = phi i32 [ %21, %20 ], [ 0, %2 ]
  %24 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 8
  %25 = load i16, ptr %24, align 4
  %26 = and i16 %25, 4
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %27, i8 32, i8 69
  store i8 %28, ptr %3, align 1
  %29 = and i16 %25, 2
  %30 = icmp eq i16 %29, 0
  %31 = select i1 %30, i8 32, i8 67
  %32 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 1
  store i8 %31, ptr %32, align 1
  %33 = and i16 %25, 8
  %34 = icmp eq i16 %33, 0
  %35 = select i1 %34, i8 32, i8 66
  %36 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 2
  store i8 %35, ptr %36, align 1
  %37 = and i16 %25, 1
  %38 = icmp eq i16 %37, 0
  %39 = select i1 %38, i8 32, i8 112
  %40 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = and i16 %25, 32
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, i8 32, i8 98
  %44 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 4
  store i8 %43, ptr %44, align 1
  %45 = and i16 %25, 16
  %46 = icmp eq i16 %45, 0
  %47 = select i1 %46, i8 32, i8 97
  %48 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 5
  store i8 %47, ptr %48, align 1
  %49 = getelementptr inbounds [7 x i8], ptr %3, i32 0, i32 6
  store i8 0, ptr %49, align 1
  %50 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 20
  %53 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 4
  store i32 %52, ptr %53, align 8
  %54 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 9
  %55 = load i16, ptr %54, align 2
  %56 = sext i16 %55 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %56) #5
  call void @seq_pad(ptr noundef %0, i8 noundef zeroext 32) #5
  %57 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, i32 45, i32 82
  %61 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, i32 45, i32 87
  %65 = getelementptr inbounds %struct.console, ptr %1, i32 0, i32 4
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, i32 45, i32 85
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %60, i32 noundef %64, i32 noundef %68, ptr noundef nonnull %3) #5
  %69 = icmp eq i32 %23, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %22
  %71 = lshr i32 %23, 20
  %72 = and i32 %23, 1048575
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef %72) #5
  br label %73

73:                                               ; preds = %70, %22
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #5
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_lock() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @console_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_pad(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
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
