; ModuleID = '/llk/IR/drivers/i2c/i2c-boardinfo.c_pt.bc'
source_filename = "../drivers/i2c/i2c-boardinfo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_board_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_board_lock\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_board_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_board_list:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_board_list\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_board_list:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___i2c_first_dynamic_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22__i2c_first_dynamic_bus_num\22\09\09\09\09\09"
module asm "__kstrtabns___i2c_first_dynamic_bus_num:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_devinfo = type { %struct.list_head, i32, %struct.i2c_board_info }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__i2c_board_lock = dso_local global %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @__i2c_board_lock, i64 16), ptr getelementptr (i8, ptr @__i2c_board_lock, i64 16) } }, align 4
@__kstrtab___i2c_board_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_board_lock = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_board_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_board_lock to i32), ptr @__kstrtab___i2c_board_lock, ptr @__kstrtabns___i2c_board_lock }, section "___ksymtab_gpl+__i2c_board_lock", align 4
@__i2c_board_list = dso_local global %struct.list_head { ptr @__i2c_board_list, ptr @__i2c_board_list }, align 4
@__kstrtab___i2c_board_list = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_board_list = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_board_list = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_board_list to i32), ptr @__kstrtab___i2c_board_list, ptr @__kstrtabns___i2c_board_list }, section "___ksymtab_gpl+__i2c_board_list", align 4
@__i2c_first_dynamic_bus_num = dso_local global i32 0, align 4
@__kstrtab___i2c_first_dynamic_bus_num = external dso_local constant [0 x i8], align 1
@__kstrtabns___i2c_first_dynamic_bus_num = external dso_local constant [0 x i8], align 1
@__ksymtab___i2c_first_dynamic_bus_num = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__i2c_first_dynamic_bus_num to i32), ptr @__kstrtab___i2c_first_dynamic_bus_num, ptr @__kstrtabns___i2c_first_dynamic_bus_num }, section "___ksymtab_gpl+__i2c_first_dynamic_bus_num", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab___i2c_board_list, ptr @__ksymtab___i2c_board_lock, ptr @__ksymtab___i2c_first_dynamic_bus_num], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @i2c_register_board_info(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call void @down_write(ptr noundef nonnull @__i2c_board_lock) #4
  %4 = load i32, ptr @__i2c_first_dynamic_bus_num, align 4
  %5 = icmp sgt i32 %4, %0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = add i32 %0, 1
  store i32 %7, ptr @__i2c_first_dynamic_bus_num, align 4
  br label %8

8:                                                ; preds = %6, %3
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %36, label %10

10:                                               ; preds = %30, %8
  %11 = phi ptr [ %34, %30 ], [ %1, %8 ]
  %12 = phi i32 [ %33, %30 ], [ %2, %8 ]
  %13 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 68) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.i2c_devinfo, ptr %14, i32 0, i32 1
  store i32 %0, ptr %17, align 8
  %18 = getelementptr inbounds %struct.i2c_devinfo, ptr %14, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(56) %18, ptr noundef align 4 dereferenceable(56) %11, i32 56, i1 false)
  %19 = getelementptr inbounds %struct.i2c_board_info, ptr %11, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.i2c_board_info, ptr %11, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = shl i32 %24, 5
  %26 = tail call ptr @kmemdup(ptr noundef nonnull %20, i32 noundef %25, i32 noundef 3264) #4
  %27 = getelementptr inbounds %struct.i2c_devinfo, ptr %14, i32 0, i32 2, i32 8
  store ptr %26, ptr %27, align 8
  %28 = icmp eq ptr %26, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  tail call void @kfree(ptr noundef nonnull %14) #4
  br label %36

30:                                               ; preds = %22, %16
  %31 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @__i2c_board_list, i32 0, i32 1), align 4
  store ptr %14, ptr getelementptr inbounds (%struct.list_head, ptr @__i2c_board_list, i32 0, i32 1), align 4
  store ptr @__i2c_board_list, ptr %14, align 8
  %32 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %14, ptr %31, align 4
  %33 = add i32 %12, -1
  %34 = getelementptr %struct.i2c_board_info, ptr %11, i32 1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %36, label %10

36:                                               ; preds = %30, %29, %10, %8
  %37 = phi i32 [ -12, %29 ], [ 0, %8 ], [ 0, %30 ], [ -12, %10 ]
  tail call void @up_write(ptr noundef nonnull @__i2c_board_lock) #4
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
