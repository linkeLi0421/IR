; ModuleID = '/llk/IR/arch/arm/mm/idmap.c_pt.bc'
source_filename = "../arch/arm/mm/idmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.processor = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cpu_tlb_fns = type { ptr, ptr, i32 }

@__initcall__kmod_idmap__234_120_init_static_idmapearly = internal global ptr @init_static_idmap, section ".initcallearly.init", align 4
@processor = external dso_local local_unnamed_addr global %struct.processor, align 4
@idmap_pgd = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@arch_phys_to_idmap_offset = dso_local local_unnamed_addr global i64 0, section ".data..ro_after_init", align 8
@__idmap_text_start = external dso_local global [0 x i8], align 1
@__idmap_text_end = external dso_local global [0 x i8], align 1
@elf_hwcap = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@.str = private unnamed_addr constant [52 x i8] c"\016Setting up static identity map for 0x%lx - 0x%lx\0A\00", align 1
@cpu_tlb = external dso_local local_unnamed_addr global %struct.cpu_tlb_fns, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_idmap__234_120_init_static_idmapearly], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @init_static_idmap() #0 section ".init.text" {
  %1 = tail call ptr @pgd_alloc(ptr noundef nonnull @init_mm) #5
  store ptr %1, ptr @idmap_pgd, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %0
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__idmap_text_start to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %5 = load i64, ptr @arch_phys_to_idmap_offset, align 8
  %6 = trunc i64 %5 to i32
  %7 = add i32 %4, %6
  %8 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 ptrtoint (ptr @__idmap_text_end to i32), i32 -2130706432, i32 8454144) #6, !srcloc !8
  %9 = add i32 %8, %6
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %9) #7
  %11 = tail call i32 @cpu_architecture() #8
  %12 = icmp slt i32 %11, 8
  %13 = select i1 %12, i32 1042, i32 1026
  %14 = lshr i32 %7, 21
  %15 = getelementptr [2 x i32], ptr %1, i32 %14
  %16 = add i32 %9, -1
  br label %17

17:                                               ; preds = %17, %3
  %18 = phi i32 [ %7, %3 ], [ %24, %17 ]
  %19 = phi ptr [ %15, %3 ], [ %30, %17 ]
  %20 = add i32 %18, 2097152
  %21 = and i32 %20, -2097152
  %22 = add i32 %21, -1
  %23 = icmp ult i32 %22, %16
  %24 = select i1 %23, i32 %21, i32 %9
  %25 = and i32 %18, -2097152
  %26 = or i32 %25, %13
  store i32 %26, ptr %19, align 4
  %27 = or i32 %26, 1048576
  %28 = getelementptr i32, ptr %19, i32 1
  store i32 %27, ptr %28, align 4
  %29 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c7, c10, 1\09@ flush_pmd", "r,r,Ir,~{cc}"(ptr %19, i32 %29, i32 1073741824) #5, !srcloc !9
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !10
  %30 = getelementptr [2 x i32], ptr %19, i32 1
  %31 = icmp eq i32 %24, %9
  br i1 %31, label %32, label %17

32:                                               ; preds = %17
  %33 = load i32, ptr @elf_hwcap, align 4
  %34 = and i32 %33, 1048576
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 2), align 4
  tail call void %37() #5
  br label %38

38:                                               ; preds = %36, %32, %0
  %39 = phi i32 [ -12, %0 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @setup_mm_for_reboot() local_unnamed_addr #1 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.processor, ptr @processor, i32 0, i32 8), align 4
  %2 = load ptr, ptr @idmap_pgd, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %3, i32 -2130706432, i32 8454144) #6, !srcloc !8
  tail call void %1(i32 noundef %4, ptr noundef nonnull @init_mm) #5
  %5 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  %6 = and i32 %5, 524288
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !11
  br label %9

9:                                                ; preds = %8, %0
  %10 = and i32 %5, 8388608
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 6", "r"(i32 0) #5, !srcloc !12
  br label %13

13:                                               ; preds = %12, %9
  %14 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "dsb nshst", "~{memory}"() #5, !srcloc !13
  %15 = load i32, ptr getelementptr inbounds (%struct.cpu_tlb_fns, ptr @cpu_tlb, i32 0, i32 2), align 4
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %15, i32 4608) #5, !srcloc !14
  tail call void asm sideeffect "tst $1, $2\0A\09mcrne p15, 0, $0, c8, c7, 0", "r,r,Ir,~{cc}"(i32 0, i32 %14, i32 2097152) #5, !srcloc !15
  tail call void asm sideeffect "dsb nsh", "~{memory}"() #5, !srcloc !16
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pgd_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpu_architecture() local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readonly willreturn }

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
!8 = !{i64 2148783984, i64 2148784007, i64 2148784039, i64 2148784071, i64 2148784109, i64 2148784139}
!9 = !{i64 2151147575, i64 2151147588}
!10 = !{i64 2151152076}
!11 = !{i64 3082504}
!12 = !{i64 3082731}
!13 = !{i64 2151069342}
!14 = !{i64 2151062909, i64 2151062922}
!15 = !{i64 2151069614, i64 2151069627}
!16 = !{i64 2151072375}
!17 = !{i64 2151072434}
