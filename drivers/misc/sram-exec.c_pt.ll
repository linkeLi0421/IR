; ModuleID = '/llk/IR/drivers/misc/sram-exec.c_pt.bc'
source_filename = "../drivers/misc/sram-exec.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sram_exec_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22sram_exec_copy\22\09\09\09\09\09"
module asm "__kstrtabns_sram_exec_copy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sram_reserve = type { %struct.list_head, i32, i32, %struct.resource, i8, i8, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sram_dev = type { ptr, ptr, ptr, i8, ptr, ptr, ptr, i32 }
%struct.sram_partition = type { ptr, ptr, %struct.bin_attribute, %struct.mutex, %struct.list_head }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }

@.str = private unnamed_addr constant [83 x i8] c"SRAM pool marked with 'protect-exec' is not page aligned and will not be created.\0A\00", align 1
@exec_pool_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @exec_pool_list_mutex, i64 12), ptr getelementptr (i8, ptr @exec_pool_list_mutex, i64 12) } }, align 4
@exec_pool_list = internal global %struct.list_head { ptr @exec_pool_list, ptr @exec_pool_list }, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@__kstrtab_sram_exec_copy = external dso_local constant [0 x i8], align 1
@__kstrtabns_sram_exec_copy = external dso_local constant [0 x i8], align 1
@__ksymtab_sram_exec_copy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sram_exec_copy to i32), ptr @__kstrtab_sram_exec_copy, ptr @__kstrtabns_sram_exec_copy }, section "___ksymtab_gpl+sram_exec_copy", align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__ksymtab_sram_exec_copy], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sram_check_protect_exec(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = and i32 %5, 4095
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.sram_reserve, ptr %1, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %5
  %12 = and i32 %11, 4095
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %8, %3
  %15 = getelementptr inbounds %struct.sram_dev, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str) #4
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ -12, %14 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sram_add_protect_exec(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @exec_pool_list_mutex) #5
  %2 = getelementptr inbounds %struct.sram_partition, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @exec_pool_list, i32 0, i32 1), align 4
  store ptr %2, ptr getelementptr inbounds (%struct.list_head, ptr @exec_pool_list, i32 0, i32 1), align 4
  store ptr @exec_pool_list, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sram_partition, ptr %0, i32 0, i32 4, i32 1
  store ptr %3, ptr %4, align 4
  store volatile ptr %2, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @exec_pool_list_mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @sram_exec_copy(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @exec_pool_list_mutex) #5
  %5 = load ptr, ptr @exec_pool_list, align 4
  %6 = icmp eq ptr %5, @exec_pool_list
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @mutex_unlock(ptr noundef nonnull @exec_pool_list_mutex) #5
  br label %57

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %16, %8 ], [ %5, %4 ]
  %10 = phi ptr [ %15, %8 ], [ null, %4 ]
  %11 = getelementptr i8, ptr %9, i32 -60
  %12 = getelementptr i8, ptr %9, i32 -56
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, %0
  %15 = select i1 %14, ptr %11, ptr %10
  %16 = load ptr, ptr %9, align 4
  %17 = icmp eq ptr %16, @exec_pool_list
  br i1 %17, label %18, label %8

18:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef nonnull @exec_pool_list_mutex) #5
  %19 = icmp eq ptr %15, null
  br i1 %19, label %57, label %20

20:                                               ; preds = %18
  %21 = ptrtoint ptr %1 to i32
  %22 = tail call zeroext i1 @gen_pool_has_addr(ptr noundef %0, i32 noundef %21, i32 noundef %3) #5
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load ptr, ptr %15, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = add i32 %3, 4095
  %27 = lshr i32 %26, 12
  %28 = getelementptr inbounds %struct.sram_partition, ptr %15, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %28) #5
  %29 = tail call i32 @set_memory_nx(i32 noundef %25, i32 noundef %27) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = tail call i32 @set_memory_rw(i32 noundef %25, i32 noundef %27) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = tail call i32 asm "", "=r,0"(ptr %2) #6, !srcloc !8
  %36 = and i32 %21, 7
  %37 = icmp ne i32 %36, 0
  %38 = and i32 %35, 6
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39, !prof !9
  br i1 %40, label %41, label %42, !prof !9

41:                                               ; preds = %34
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/misc/sram-exec.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 115, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

42:                                               ; preds = %34
  %43 = and i32 %35, -2
  %44 = inttoptr i32 %43 to ptr
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 2 %44, i32 %3, i1 false)
  %45 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %46 = add i32 %21, %3
  tail call void %45(i32 noundef %21, i32 noundef %46) #5
  %47 = and i32 %35, 1
  %48 = or i32 %47, %21
  %49 = tail call ptr asm "", "=r,0"(i32 %48) #6, !srcloc !11
  %50 = tail call i32 @set_memory_ro(i32 noundef %25, i32 noundef %27) #5
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = tail call i32 @set_memory_x(i32 noundef %25, i32 noundef %27) #5
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  tail call void @mutex_unlock(ptr noundef %28) #5
  br label %57

56:                                               ; preds = %52, %42, %31, %23
  tail call void @mutex_unlock(ptr noundef %28) #5
  br label %57

57:                                               ; preds = %56, %55, %20, %18, %7
  %58 = phi ptr [ null, %56 ], [ %49, %55 ], [ null, %18 ], [ null, %20 ], [ null, %7 ]
  ret ptr %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gen_pool_has_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_nx(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_rw(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_x(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { cold nounwind }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }

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
!8 = !{i64 2152449731}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2152450811, i64 2152451300, i64 2152450848, i64 2152450904, i64 2152450938, i64 2152450962, i64 2152451003, i64 2152451024, i64 2152451052, i64 2152451086}
!11 = !{i64 2152450226}
