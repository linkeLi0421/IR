; ModuleID = '/llk/IR/mm/mmu_gather.c_pt.bc'
source_filename = "../mm/mmu_gather.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mmu_gather = type { ptr, i32, i32, i16, i32, ptr, %struct.mmu_gather_batch, [8 x ptr] }
%struct.mmu_gather_batch = type { ptr, i32, i32, [0 x ptr] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { %struct.rb_node, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vm_userfaultfd_ctx = type {}
%struct.anon = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @__tlb_remove_page_size(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmu_gather_batch, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %6, align 4
  %9 = getelementptr %struct.mmu_gather_batch, ptr %5, i32 0, i32 3, i32 %7
  store ptr %1, ptr %9, align 4
  %10 = load i32, ptr %6, align 4
  %11 = getelementptr inbounds %struct.mmu_gather_batch, ptr %5, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load ptr, ptr %4, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @__get_free_pages(i32 noundef 10240, i32 noundef 0) #4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = inttoptr i32 %23 to ptr
  %27 = load i32, ptr %19, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %19, align 4
  store ptr null, ptr %26, align 4
  %29 = getelementptr inbounds %struct.mmu_gather_batch, ptr %26, i32 0, i32 1
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.mmu_gather_batch, ptr %26, i32 0, i32 2
  store i32 1021, ptr %30, align 4
  %31 = load ptr, ptr %4, align 4
  store ptr %26, ptr %31, align 4
  br label %32

32:                                               ; preds = %25, %14
  %33 = phi ptr [ %26, %25 ], [ %16, %14 ]
  store ptr %33, ptr %4, align 4
  br label %34

34:                                               ; preds = %32, %22, %18, %3
  %35 = phi i1 [ false, %32 ], [ false, %3 ], [ true, %18 ], [ true, %22 ]
  ret i1 %35
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tlb_flush_mmu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.vm_area_struct, align 4
  %3 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 124
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %39, label %7

7:                                                ; preds = %1
  %8 = and i16 %4, 3
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 4
  tail call void @flush_tlb_mm(ptr noundef %11) #4
  br label %29

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %2) #4
  %17 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(92) %2, i8 0, i64 92, i1 false) #4
  %18 = load ptr, ptr %0, align 4
  store ptr %18, ptr %17, align 4
  %19 = getelementptr inbounds %struct.vm_area_struct, ptr %2, i32 0, i32 8
  %20 = lshr i16 %4, 5
  %21 = and i16 %20, 4
  %22 = zext i16 %21 to i32
  %23 = and i16 %4, 256
  %24 = zext i16 %23 to i32
  %25 = shl nuw nsw i32 %24, 14
  %26 = or i32 %25, %22
  store i32 %26, ptr %19, align 4
  %27 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  call void @flush_tlb_range(ptr noundef nonnull %2, i32 noundef %28, i32 noundef %14) #4
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %2) #4
  br label %29

29:                                               ; preds = %16, %12, %10
  %30 = load i16, ptr %3, align 4
  %31 = and i16 %30, 1
  %32 = icmp eq i16 %31, 0
  %33 = select i1 %32, i32 -1090519040, i32 -1
  %34 = xor i1 %32, true
  %35 = sext i1 %34 to i32
  %36 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  store i32 %33, ptr %36, align 4
  %37 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  store i32 %35, ptr %37, align 4
  %38 = and i16 %30, -125
  store i16 %38, ptr %3, align 4
  br label %39

39:                                               ; preds = %29, %1
  %40 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6
  br label %41

41:                                               ; preds = %46, %39
  %42 = phi ptr [ %48, %46 ], [ %40, %39 ]
  %43 = getelementptr inbounds %struct.mmu_gather_batch, ptr %42, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.mmu_gather_batch, ptr %42, i32 0, i32 3
  call void @free_pages_and_swap_cache(ptr noundef %47, i32 noundef %44) #4
  store i32 0, ptr %43, align 4
  %48 = load ptr, ptr %42, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %41

50:                                               ; preds = %46, %41
  %51 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 5
  store ptr %40, ptr %51, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tlb_gather_mmu(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -128
  %6 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6, i32 2
  store i32 8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 5
  store ptr %6, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  store i32 -1090519040, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  store i32 0, ptr %12, align 4
  store i16 %5, ptr %3, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #4, !srcloc !8
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tlb_gather_mmu_fullmm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store ptr %1, ptr %0, align 4
  %3 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -128
  %6 = or i16 %5, 1
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6, i32 2
  store i32 8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 5
  store ptr %7, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 4
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  store i32 -1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  store i32 -1, ptr %13, align 4
  store i16 %6, ptr %3, align 4
  %14 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %14) #4, !srcloc !8
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %14, ptr %14, i32 1, ptr elementtype(i32) %14) #4, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @tlb_finish_mmu(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 48
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 3
  %8 = load i16, ptr %7, align 4
  %9 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 1
  store i32 -1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 2
  store i32 -1, ptr %10, align 4
  %11 = and i16 %8, -126
  %12 = or i16 %11, 5
  store i16 %12, ptr %7, align 4
  br label %13

13:                                               ; preds = %6, %1
  tail call void @tlb_flush_mmu(ptr noundef %0)
  %14 = getelementptr inbounds %struct.mmu_gather, ptr %0, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %17, %13
  %18 = phi ptr [ %19, %17 ], [ %15, %13 ]
  %19 = load ptr, ptr %18, align 4
  %20 = ptrtoint ptr %18 to i32
  tail call void @free_pages(i32 noundef %20, i32 noundef 0) #4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %13
  store ptr null, ptr %14, align 4
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 48
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %24) #4, !srcloc !8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %24, ptr %24, i32 1, ptr elementtype(i32) %24) #4, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__get_free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages_and_swap_cache(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{i64 738484, i64 2148228455, i64 2148228481, i64 2148228528, i64 2148228550, i64 2148228578, i64 2148228598}
!9 = !{i64 2148239870, i64 2148239896, i64 2148239925, i64 2148239959, i64 2148239990, i64 2148240013}
!10 = !{i64 2148242227, i64 2148242253, i64 2148242282, i64 2148242316, i64 2148242347, i64 2148242370}
