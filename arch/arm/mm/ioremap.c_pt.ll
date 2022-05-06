; ModuleID = '/llk/IR/arch/arm/mm/ioremap.c_pt.bc'
source_filename = "../arch/arm/mm/ioremap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioremap_page:\09\09\09\09\09"
module asm "\09.asciz \09\22ioremap_page\22\09\09\09\09\09"
module asm "__kstrtabns_ioremap_page:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___arm_ioremap_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22__arm_ioremap_pfn\22\09\09\09\09\09"
module asm "__kstrtabns___arm_ioremap_pfn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22ioremap\22\09\09\09\09\09"
module asm "__kstrtabns_ioremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioremap_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22ioremap_cache\22\09\09\09\09\09"
module asm "__kstrtabns_ioremap_cache:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22ioremap_wc\22\09\09\09\09\09"
module asm "__kstrtabns_ioremap_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22iounmap\22\09\09\09\09\09"
module asm "__kstrtabns_iounmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remap_iospace\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remap_iospace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_remap_cfgspace:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_remap_cfgspace\22\09\09\09\09\09"
module asm "__kstrtabns_pci_remap_cfgspace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mm_struct = type { %struct.anon.7, [0 x i32] }
%struct.anon.7 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32 }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.static_vm = type { %struct.vm_struct, %struct.list_head }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@static_vmlist = dso_local global %struct.list_head { ptr @static_vmlist, ptr @static_vmlist }, align 4
@__kstrtab_ioremap_page = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioremap_page = external dso_local constant [0 x i8], align 1
@__ksymtab_ioremap_page = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioremap_page to i32), ptr @__kstrtab_ioremap_page, ptr @__kstrtabns_ioremap_page }, section "___ksymtab+ioremap_page", align 4
@init_mm = external dso_local local_unnamed_addr global %struct.mm_struct, align 8
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab___arm_ioremap_pfn = external dso_local constant [0 x i8], align 1
@__kstrtabns___arm_ioremap_pfn = external dso_local constant [0 x i8], align 1
@__ksymtab___arm_ioremap_pfn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__arm_ioremap_pfn to i32), ptr @__kstrtab___arm_ioremap_pfn, ptr @__kstrtabns___arm_ioremap_pfn }, section "___ksymtab+__arm_ioremap_pfn", align 4
@arch_ioremap_caller = dso_local local_unnamed_addr global ptr @__arm_ioremap_caller, align 4
@__kstrtab_ioremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioremap = external dso_local constant [0 x i8], align 1
@__ksymtab_ioremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioremap to i32), ptr @__kstrtab_ioremap, ptr @__kstrtabns_ioremap }, section "___ksymtab+ioremap", align 4
@__kstrtab_ioremap_cache = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioremap_cache = external dso_local constant [0 x i8], align 1
@__ksymtab_ioremap_cache = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioremap_cache to i32), ptr @__kstrtab_ioremap_cache, ptr @__kstrtabns_ioremap_cache }, section "___ksymtab+ioremap_cache", align 4
@__kstrtab_ioremap_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_ioremap_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_ioremap_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ioremap_wc to i32), ptr @__kstrtab_ioremap_wc, ptr @__kstrtabns_ioremap_wc }, section "___ksymtab+ioremap_wc", align 4
@arch_iounmap = dso_local local_unnamed_addr global ptr @__iounmap, align 4
@__kstrtab_iounmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_iounmap = external dso_local constant [0 x i8], align 1
@__ksymtab_iounmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iounmap to i32), ptr @__kstrtab_iounmap, ptr @__kstrtabns_iounmap }, section "___ksymtab+iounmap", align 4
@pci_ioremap_mem_type = internal unnamed_addr global i32 0, align 4
@__kstrtab_pci_remap_iospace = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remap_iospace = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remap_iospace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remap_iospace to i32), ptr @__kstrtab_pci_remap_iospace, ptr @__kstrtabns_pci_remap_iospace }, section "___ksymtab+pci_remap_iospace", align 4
@__kstrtab_pci_remap_cfgspace = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_remap_cfgspace = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_remap_cfgspace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_remap_cfgspace to i32), ptr @__kstrtab_pci_remap_cfgspace, ptr @__kstrtabns_pci_remap_cfgspace }, section "___ksymtab_gpl+pci_remap_cfgspace", align 4
@.str = private unnamed_addr constant [22 x i8] c"arch/arm/mm/ioremap.c\00", align 1
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab___arm_ioremap_pfn, ptr @__ksymtab_ioremap, ptr @__ksymtab_ioremap_cache, ptr @__ksymtab_ioremap_page, ptr @__ksymtab_ioremap_wc, ptr @__ksymtab_iounmap, ptr @__ksymtab_pci_remap_cfgspace, ptr @__ksymtab_pci_remap_iospace], section "llvm.metadata"

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_static_vm_vaddr(ptr noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ @static_vmlist, %1 ], [ %4, %10 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @static_vmlist
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -28
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ugt ptr %8, %0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %4, i32 -24
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %8, i32 %12
  %14 = icmp ugt ptr %13, %0
  br i1 %14, label %15, label %2

15:                                               ; preds = %10
  %16 = getelementptr i8, ptr %4, i32 -32
  br label %17

17:                                               ; preds = %15, %6, %2
  %18 = phi ptr [ %16, %15 ], [ null, %2 ], [ null, %6 ]
  ret ptr %18
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @add_static_vm_early(ptr noundef %0) local_unnamed_addr #1 section ".init.text" {
  tail call void @vm_area_add_early(ptr noundef %0) #9
  %2 = getelementptr inbounds %struct.vm_struct, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = phi ptr [ @static_vmlist, %1 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @static_vmlist
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -28
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, %3
  br i1 %11, label %12, label %4

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %struct.static_vm, ptr %0, i32 0, i32 1
  %14 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %13, ptr %14, align 4
  store ptr %6, ptr %13, align 4
  %16 = getelementptr inbounds %struct.static_vm, ptr %0, i32 0, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %13, ptr %15, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @vm_area_add_early(ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ioremap_page(i32 noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #3 {
  %4 = add i32 %0, 4096
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @ioremap_page_range(i32 noundef %0, i32 noundef %4, i32 noundef %1, i32 noundef %5) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ioremap_page_range(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__check_vmalloc_seq(ptr nocapture noundef %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 42, i32 1
  %4 = load i32, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 42, i32 1), align 8
  br label %5

5:                                                ; preds = %5, %1
  %6 = phi i32 [ %19, %5 ], [ %4, %1 ]
  %7 = load ptr, ptr %2, align 4
  %8 = load ptr, ptr @high_memory, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 8388608
  %11 = lshr i32 %10, 21
  %12 = and i32 %11, 2044
  %13 = getelementptr [2 x i32], ptr %7, i32 %12
  %14 = load ptr, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 8), align 4
  %15 = getelementptr [2 x i32], ptr %14, i32 %12
  %16 = lshr i32 %10, 18
  %17 = and i32 %16, 16352
  %18 = xor i32 %17, 16352
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 4 %13, ptr align 4 %15, i32 %18, i1 false)
  store i32 %6, ptr %3, align 8
  %19 = load i32, ptr getelementptr inbounds (%struct.mm_struct, ptr @init_mm, i32 0, i32 0, i32 42, i32 1), align 8
  %20 = icmp eq i32 %6, %19
  br i1 %20, label %21, label %5

21:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__arm_ioremap_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #3 {
  %5 = icmp eq i32 %1, 0
  %6 = sub i32 0, %1
  %7 = icmp ult i32 %6, %0
  %8 = or i1 %5, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = lshr i32 %0, 12
  %11 = and i32 %0, 4095
  %12 = tail call fastcc ptr @__arm_ioremap_pfn_caller(i32 noundef %10, i32 noundef %11, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi ptr [ %12, %9 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @__arm_ioremap_pfn_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 {
  %6 = shl i32 %0, 12
  %7 = icmp ugt i32 %0, 1048575
  %8 = and i32 %0, 4095
  %9 = icmp ne i32 %8, 0
  %10 = and i1 %7, %9
  br i1 %10, label %88, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @get_mem_type(i32 noundef %3) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %88, label %14

14:                                               ; preds = %11
  %15 = add i32 %1, 4095
  %16 = add i32 %15, %2
  %17 = and i32 %16, -4096
  %18 = icmp eq i32 %17, 0
  %19 = or i1 %7, %18
  br i1 %19, label %60, label %20

20:                                               ; preds = %14
  %21 = add i32 %6, -1
  %22 = add i32 %21, %17
  %23 = load ptr, ptr @static_vmlist, align 4
  %24 = icmp eq ptr %23, @static_vmlist
  br i1 %24, label %60, label %25

25:                                               ; preds = %20
  %26 = shl i32 %3, 20
  br label %27

27:                                               ; preds = %46, %25
  %28 = phi ptr [ %23, %25 ], [ %47, %46 ]
  %29 = getelementptr i8, ptr %28, i32 -20
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1073741824
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 32505856
  %34 = icmp eq i32 %33, %26
  %35 = and i1 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %27
  %37 = getelementptr i8, ptr %28, i32 -8
  %38 = load i32, ptr %37, align 4
  %39 = icmp ugt i32 %38, %6
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr i8, ptr %28, i32 -24
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %38, -1
  %44 = add i32 %43, %42
  %45 = icmp ugt i32 %22, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %36, %27
  %47 = load ptr, ptr %28, align 4
  %48 = icmp eq ptr %47, @static_vmlist
  br i1 %48, label %60, label %27

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %28, i32 -32
  %51 = icmp eq ptr %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %28, i32 -28
  %54 = load ptr, ptr %53, align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = add i32 %6, %1
  %57 = sub i32 %56, %38
  %58 = add i32 %57, %55
  %59 = inttoptr i32 %58 to ptr
  br label %88

60:                                               ; preds = %49, %46, %20, %14
  %61 = tail call zeroext i1 @memblock_is_map_memory(i32 noundef %6) #10
  %62 = icmp ne i32 %3, 10
  %63 = and i1 %62, %61
  br i1 %63, label %64, label %65, !prof !8

64:                                               ; preds = %60
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 290, i32 noundef 9, ptr noundef null) #10
  br label %88

65:                                               ; preds = %60
  %66 = tail call ptr @get_vm_area_caller(i32 noundef %17, i32 noundef 1, ptr noundef %4) #10
  %67 = icmp eq ptr %66, null
  br i1 %67, label %88, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.vm_struct, ptr %66, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = getelementptr inbounds %struct.vm_struct, ptr %66, i32 0, i32 6
  store i32 %6, ptr %72, align 4
  %73 = add i32 %17, %71
  %74 = load i32, ptr %12, align 4
  %75 = tail call i32 @ioremap_page_range(i32 noundef %71, i32 noundef %73, i32 noundef %6, i32 noundef %74) #10
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  tail call void @vunmap(ptr noundef %70) #10
  br label %88

78:                                               ; preds = %68
  %79 = load i32, ptr @cacheid, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %83() #10
  br label %85

84:                                               ; preds = %78
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #10, !srcloc !9
  br label %85

85:                                               ; preds = %84, %82
  %86 = add i32 %71, %1
  %87 = inttoptr i32 %86 to ptr
  br label %88

88:                                               ; preds = %85, %77, %65, %64, %52, %11, %5
  %89 = phi ptr [ null, %64 ], [ null, %77 ], [ %87, %85 ], [ %59, %52 ], [ null, %5 ], [ null, %11 ], [ null, %65 ]
  ret ptr %89
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__arm_ioremap_pfn(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #3 {
  %5 = tail call ptr @llvm.returnaddress(i32 0)
  %6 = tail call fastcc ptr @__arm_ioremap_pfn_caller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %5)
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ioremap(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @arch_ioremap_caller, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = tail call ptr %3(i32 noundef %0, i32 noundef %1, i32 noundef 0, ptr noundef %4) #10
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ioremap_cache(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @arch_ioremap_caller, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = tail call ptr %3(i32 noundef %0, i32 noundef %1, i32 noundef 2, ptr noundef %4) #10
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ioremap_wc(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @arch_ioremap_caller, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = tail call ptr %3(i32 noundef %0, i32 noundef %1, i32 noundef 3, ptr noundef %4) #10
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @__arm_ioremap_exec(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
  %4 = icmp eq i32 %1, 0
  %5 = sub i32 0, %1
  %6 = icmp ult i32 %5, %0
  %7 = or i1 %4, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @llvm.returnaddress(i32 0)
  %10 = select i1 %2, i32 9, i32 12
  %11 = lshr i32 %0, 12
  %12 = and i32 %0, 4095
  %13 = tail call fastcc ptr @__arm_ioremap_pfn_caller(i32 noundef %11, i32 noundef %12, i32 noundef %1, i32 noundef %10, ptr noundef %9) #10
  br label %14

14:                                               ; preds = %8, %3
  %15 = phi ptr [ %13, %8 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__arm_iomem_set_ro(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = ptrtoint ptr %0 to i32
  %4 = add i32 %1, 4095
  %5 = lshr i32 %4, 12
  %6 = tail call i32 @set_memory_ro(i32 noundef %3, i32 noundef %5) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_memory_ro(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @arch_memremap_wb(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = load ptr, ptr @arch_ioremap_caller, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = tail call ptr %3(i32 noundef %0, i32 noundef %1, i32 noundef 10, ptr noundef %4) #10
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__iounmap(ptr noundef %0) #3 {
  %2 = ptrtoint ptr %0 to i32
  %3 = and i32 %2, -4096
  %4 = inttoptr i32 %3 to ptr
  br label %5

5:                                                ; preds = %13, %1
  %6 = phi ptr [ @static_vmlist, %1 ], [ %7, %13 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @static_vmlist
  br i1 %8, label %21, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp ugt ptr %11, %4
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr i8, ptr %7, i32 -24
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr i8, ptr %11, i32 %15
  %17 = icmp ugt ptr %16, %4
  br i1 %17, label %18, label %5

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %7, i32 -32
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %9, %5
  tail call void @vunmap(ptr noundef %4) #10
  br label %22

22:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iounmap(ptr noundef %0) #3 {
  %2 = load ptr, ptr @arch_iounmap, align 4
  tail call void %2(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @pci_ioremap_set_mem_type(i32 noundef %0) local_unnamed_addr #8 {
  store i32 %0, ptr @pci_ioremap_mem_type, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pci_remap_iospace(ptr nocapture noundef readonly %0, i32 noundef %1) #3 {
  %3 = load i32, ptr %0, align 4
  %4 = add i32 %3, -18874368
  %5 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 256
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.resource, ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 1048575
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = add nuw nsw i32 %11, -18874367
  %15 = load i32, ptr @pci_ioremap_mem_type, align 4
  %16 = tail call ptr @get_mem_type(i32 noundef %15) #10
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @ioremap_page_range(i32 noundef %4, i32 noundef %14, i32 noundef %1, i32 noundef %17) #10
  br label %19

19:                                               ; preds = %13, %9, %2
  %20 = phi i32 [ %18, %13 ], [ -22, %2 ], [ -22, %9 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mem_type(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @pci_remap_cfgspace(i32 noundef %0, i32 noundef %1) #3 {
  %3 = load ptr, ptr @arch_ioremap_caller, align 4
  %4 = tail call ptr @llvm.returnaddress(i32 0)
  %5 = tail call ptr %3(i32 noundef %0, i32 noundef %1, i32 noundef 4, ptr noundef %4) #10
  ret ptr %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @early_ioremap_init() local_unnamed_addr #1 section ".init.text" {
  tail call void @early_ioremap_setup() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @early_ioremap_setup() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_map_memory(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_vm_area_caller(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
!9 = !{i64 2152360481}
