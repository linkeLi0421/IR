; ModuleID = '/llk/IR/arch/arm/mm/pageattr.c_pt.bc'
source_filename = "../arch/arm/mm/pageattr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mm_struct = type { %struct.anon, [0 x i32] }
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.page_change_data = type { i32, i32 }

@change_memory_common.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [23 x i8] c"arch/arm/mm/pageattr.c\00", align 1
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_memory_ro(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @change_memory_common(i32 noundef %0, i32 noundef %1, i32 noundef 128, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @change_memory_common(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.page_change_data, align 8
  %6 = and i32 %0, -4096
  %7 = add i32 %0, 4095
  %8 = and i32 %7, -4096
  %9 = shl i32 %1, 12
  %10 = add i32 %8, %9
  %11 = sub i32 %10, %6
  %12 = icmp ne i32 %6, %0
  %13 = load i1, ptr @change_memory_common.__already_done, align 1
  %14 = xor i1 %13, true
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %4
  store i1 true, ptr @change_memory_common.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 61, i32 noundef 9, ptr noundef null) #3
  br label %17

17:                                               ; preds = %16, %4
  %18 = icmp eq i32 %10, %6
  br i1 %18, label %39, label %19

19:                                               ; preds = %17
  %20 = add i32 %6, 1090519040
  %21 = icmp ult i32 %20, 14680064
  %22 = sub nuw nsw i32 -1075838976, %6
  %23 = icmp uge i32 %22, %11
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %36, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr @high_memory, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = add i32 %27, 8388608
  %29 = and i32 %28, -8388608
  %30 = icmp uge i32 %6, %29
  %31 = icmp ult i32 %6, -8388608
  %32 = and i1 %31, %30
  %33 = sub nuw i32 -8388608, %6
  %34 = icmp uge i32 %33, %11
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %25, %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  store i32 %2, ptr %5, align 8
  %37 = getelementptr inbounds %struct.page_change_data, ptr %5, i32 0, i32 1
  store i32 %3, ptr %37, align 4
  %38 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %6, i32 noundef %11, ptr noundef nonnull @change_page_range, ptr noundef nonnull %5) #3
  call void @flush_tlb_kernel_range(i32 noundef %6, i32 noundef %10) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  br label %39

39:                                               ; preds = %36, %25, %17
  %40 = phi i32 [ %38, %36 ], [ 0, %17 ], [ -22, %25 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_memory_rw(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @change_memory_common(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 128)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_memory_nx(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @change_memory_common(i32 noundef %0, i32 noundef %1, i32 noundef 512, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_memory_x(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @change_memory_common(i32 noundef %0, i32 noundef %1, i32 noundef 0, i32 noundef 512)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @set_memory_valid(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.page_change_data, align 8
  %5 = alloca %struct.page_change_data, align 8
  %6 = icmp eq i32 %2, 0
  %7 = shl i32 %1, 12
  br i1 %6, label %12, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #3
  store i32 1, ptr %5, align 8
  %9 = getelementptr inbounds %struct.page_change_data, ptr %5, i32 0, i32 1
  store i32 0, ptr %9, align 4
  %10 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %0, i32 noundef %7, ptr noundef nonnull @change_page_range, ptr noundef nonnull %5) #3
  %11 = add i32 %7, %0
  call void @flush_tlb_kernel_range(i32 noundef %0, i32 noundef %11) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #3
  br label %16

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #3
  store i32 0, ptr %4, align 8
  %13 = getelementptr inbounds %struct.page_change_data, ptr %4, i32 0, i32 1
  store i32 1, ptr %13, align 4
  %14 = call i32 @apply_to_page_range(ptr noundef nonnull @init_mm, i32 noundef %0, i32 noundef %7, ptr noundef nonnull @change_page_range, ptr noundef nonnull %4) #3
  %15 = add i32 %7, %0
  call void @flush_tlb_kernel_range(i32 noundef %0, i32 noundef %15) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #3
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i32 [ %10, %8 ], [ %14, %12 ]
  ret i32 %17
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apply_to_page_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @change_page_range(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = load i32, ptr %0, align 4
  %5 = getelementptr inbounds %struct.page_change_data, ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = xor i32 %6, -1
  %8 = and i32 %4, %7
  %9 = load i32, ptr %2, align 4
  %10 = or i32 %9, %8
  %11 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 9), align 4
  tail call void %11(ptr noundef %0, i32 noundef %10, i32 noundef 0) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
