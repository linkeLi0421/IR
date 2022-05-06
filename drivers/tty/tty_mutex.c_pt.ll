; ModuleID = '/llk/IR/drivers/tty/tty_mutex.c_pt.bc'
source_filename = "../drivers/tty/tty_mutex.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_lock\22\09\09\09\09\09"
module asm "__kstrtabns_tty_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tty_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22tty_unlock\22\09\09\09\09\09"
module asm "__kstrtabns_tty_unlock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.62, %struct.anon.63, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.62 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.63 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@.str = private unnamed_addr constant [24 x i8] c"drivers/tty/tty_mutex.c\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"L Bad %p\0A\00", align 1
@__kstrtab_tty_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_lock to i32), ptr @__kstrtab_tty_lock, ptr @__kstrtabns_tty_lock }, section "___ksymtab+tty_lock", align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"U Bad %p\0A\00", align 1
@__kstrtab_tty_unlock = external dso_local constant [0 x i8], align 1
@__kstrtabns_tty_unlock = external dso_local constant [0 x i8], align 1
@__ksymtab_tty_unlock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tty_unlock to i32), ptr @__kstrtab_tty_unlock, ptr @__kstrtabns_tty_unlock }, section "___ksymtab+tty_unlock", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_tty_lock, ptr @__ksymtab_tty_unlock], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_lock(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 21505
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 17, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %0) #3
  br label %20

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #3, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #3, !srcloc !10
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #3
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %19) #3
  br label %20

20:                                               ; preds = %18, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tty_lock_interruptible(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 21505
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 28, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %0) #3
  br label %23

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %8) #3, !srcloc !9
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %8, ptr %8, i32 1, ptr elementtype(i32) %8) #3, !srcloc !10
  %10 = extractvalue { i32, i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !11

12:                                               ; preds = %7
  %13 = add i32 %10, 1
  %14 = or i32 %13, %10
  %15 = icmp sgt i32 %14, -1
  br i1 %15, label %18, label %16, !prof !8

16:                                               ; preds = %12, %7
  %17 = phi i32 [ 2, %7 ], [ 1, %12 ]
  tail call void @refcount_warn_saturate(ptr noundef %8, i32 noundef %17) #3
  br label %18

18:                                               ; preds = %16, %12, %5
  %19 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 9
  %20 = tail call i32 @mutex_lock_interruptible(ptr noundef %19) #3
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @tty_kref_put(ptr noundef %0) #3
  br label %23

23:                                               ; preds = %22, %18, %4
  %24 = phi i32 [ -5, %4 ], [ %20, %22 ], [ 0, %18 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kref_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unlock(ptr noundef %0) #0 {
  %2 = load i32, ptr %0, align 4
  %3 = icmp eq i32 %2, 21505
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %0) #3
  br label %7

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %6) #3
  tail call void @tty_kref_put(ptr noundef %0) #3
  br label %7

7:                                                ; preds = %5, %4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_lock_slave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %24, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 21505
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 17, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %0) #3
  br label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #3, !srcloc !9
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #3, !srcloc !10
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !11

16:                                               ; preds = %11
  %17 = add i32 %14, 1
  %18 = or i32 %17, %14
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %22, label %20, !prof !8

20:                                               ; preds = %16, %11
  %21 = phi i32 [ 2, %11 ], [ 1, %16 ]
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef %21) #3
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 9
  tail call void @mutex_lock(ptr noundef %23) #3
  br label %24

24:                                               ; preds = %22, %10, %3, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tty_unlock_slave(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 24
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 21505
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 39, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull %0) #3
  br label %13

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tty_struct, ptr %0, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %12) #3
  tail call void @tty_kref_put(ptr noundef nonnull %0) #3
  br label %13

13:                                               ; preds = %11, %10, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @tty_set_lock_subclass(ptr nocapture noundef %0) local_unnamed_addr #2 {
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!9 = !{i64 844900, i64 2148334871, i64 2148334897, i64 2148334944, i64 2148334966, i64 2148334994, i64 2148335014}
!10 = !{i64 2148347744, i64 2148347776, i64 2148347805, i64 2148347839, i64 2148347870, i64 2148347893}
!11 = !{!"branch_weights", i32 1, i32 2000}
