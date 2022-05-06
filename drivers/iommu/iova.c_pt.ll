; ModuleID = '/llk/IR/drivers/iommu/iova.c_pt.bc'
source_filename = "../drivers/iommu/iova.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_init_iova_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22init_iova_domain\22\09\09\09\09\09"
module asm "__kstrtabns_init_iova_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iova_cache_get:\09\09\09\09\09"
module asm "\09.asciz \09\22iova_cache_get\22\09\09\09\09\09"
module asm "__kstrtabns_iova_cache_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iova_cache_put:\09\09\09\09\09"
module asm "\09.asciz \09\22iova_cache_put\22\09\09\09\09\09"
module asm "__kstrtabns_iova_cache_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_iova\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_find_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22find_iova\22\09\09\09\09\09"
module asm "__kstrtabns_find_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___free_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22__free_iova\22\09\09\09\09\09"
module asm "__kstrtabns___free_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22free_iova\22\09\09\09\09\09"
module asm "__kstrtabns_free_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_iova_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_iova_fast\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_iova_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_iova_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22free_iova_fast\22\09\09\09\09\09"
module asm "__kstrtabns_free_iova_fast:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_put_iova_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22put_iova_domain\22\09\09\09\09\09"
module asm "__kstrtabns_put_iova_domain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_reserve_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22reserve_iova\22\09\09\09\09\09"
module asm "__kstrtabns_reserve_iova:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.iova_cpu_rcache = type { %struct.spinlock, ptr, ptr }
%struct.iova_magazine = type { i32, [128 x i32] }

@__kstrtab_init_iova_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_init_iova_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_init_iova_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @init_iova_domain to i32), ptr @__kstrtab_init_iova_domain, ptr @__kstrtabns_init_iova_domain }, section "___ksymtab_gpl+init_iova_domain", align 4
@iova_cache_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @iova_cache_mutex, i64 12), ptr getelementptr (i8, ptr @iova_cache_mutex, i64 12) } }, align 4
@iova_cache_users = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"iommu/iova:dead\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\013Couldn't register cpuhp handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"iommu_iova\00", align 1
@iova_cache = internal unnamed_addr global ptr null, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"\013Couldn't create iova cache\0A\00", align 1
@__kstrtab_iova_cache_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_iova_cache_get = external dso_local constant [0 x i8], align 1
@__ksymtab_iova_cache_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iova_cache_get to i32), ptr @__kstrtab_iova_cache_get, ptr @__kstrtabns_iova_cache_get }, section "___ksymtab_gpl+iova_cache_get", align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"drivers/iommu/iova.c\00", align 1
@__kstrtab_iova_cache_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_iova_cache_put = external dso_local constant [0 x i8], align 1
@__ksymtab_iova_cache_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iova_cache_put to i32), ptr @__kstrtab_iova_cache_put, ptr @__kstrtabns_iova_cache_put }, section "___ksymtab_gpl+iova_cache_put", align 4
@__kstrtab_alloc_iova = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_iova = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_iova = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_iova to i32), ptr @__kstrtab_alloc_iova, ptr @__kstrtabns_alloc_iova }, section "___ksymtab_gpl+alloc_iova", align 4
@__kstrtab_find_iova = external dso_local constant [0 x i8], align 1
@__kstrtabns_find_iova = external dso_local constant [0 x i8], align 1
@__ksymtab_find_iova = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @find_iova to i32), ptr @__kstrtab_find_iova, ptr @__kstrtabns_find_iova }, section "___ksymtab_gpl+find_iova", align 4
@__kstrtab___free_iova = external dso_local constant [0 x i8], align 1
@__kstrtabns___free_iova = external dso_local constant [0 x i8], align 1
@__ksymtab___free_iova = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__free_iova to i32), ptr @__kstrtab___free_iova, ptr @__kstrtabns___free_iova }, section "___ksymtab_gpl+__free_iova", align 4
@__kstrtab_free_iova = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_iova = external dso_local constant [0 x i8], align 1
@__ksymtab_free_iova = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_iova to i32), ptr @__kstrtab_free_iova, ptr @__kstrtabns_free_iova }, section "___ksymtab_gpl+free_iova", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_alloc_iova_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_iova_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_iova_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_iova_fast to i32), ptr @__kstrtab_alloc_iova_fast, ptr @__kstrtabns_alloc_iova_fast }, section "___ksymtab_gpl+alloc_iova_fast", align 4
@__kstrtab_free_iova_fast = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_iova_fast = external dso_local constant [0 x i8], align 1
@__ksymtab_free_iova_fast = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_iova_fast to i32), ptr @__kstrtab_free_iova_fast, ptr @__kstrtabns_free_iova_fast }, section "___ksymtab_gpl+free_iova_fast", align 4
@__kstrtab_put_iova_domain = external dso_local constant [0 x i8], align 1
@__kstrtabns_put_iova_domain = external dso_local constant [0 x i8], align 1
@__ksymtab_put_iova_domain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @put_iova_domain to i32), ptr @__kstrtab_put_iova_domain, ptr @__kstrtabns_put_iova_domain }, section "___ksymtab_gpl+put_iova_domain", align 4
@__kstrtab_reserve_iova = external dso_local constant [0 x i8], align 1
@__kstrtabns_reserve_iova = external dso_local constant [0 x i8], align 1
@__ksymtab_reserve_iova = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @reserve_iova to i32), ptr @__kstrtab_reserve_iova, ptr @__kstrtabns_reserve_iova }, section "___ksymtab_gpl+reserve_iova", align 4
@__UNIQUE_ID_author224 = internal constant [66 x i8] c"iova.author=Anil S Keshavamurthy <anil.s.keshavamurthy@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [29 x i8] c"iova.file=drivers/iommu/iova\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [17 x i8] c"iova.license=GPL\00", section ".modinfo", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__ksymtab___free_iova, ptr @__ksymtab_alloc_iova, ptr @__ksymtab_alloc_iova_fast, ptr @__ksymtab_find_iova, ptr @__ksymtab_free_iova, ptr @__ksymtab_free_iova_fast, ptr @__ksymtab_init_iova_domain, ptr @__ksymtab_iova_cache_get, ptr @__ksymtab_iova_cache_put, ptr @__ksymtab_put_iova_domain, ptr @__ksymtab_reserve_iova], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @init_iova_domain(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = add i32 %1, -4097
  %5 = icmp ult i32 %4, -4096
  %6 = tail call i32 @llvm.ctpop.i32(i32 %1) #9, !range !9
  %7 = icmp ugt i32 %6, 1
  %8 = or i1 %5, %7
  br i1 %8, label %9, label %10, !prof !10

9:                                                ; preds = %3
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !11
  unreachable

10:                                               ; preds = %3
  store i32 0, ptr %0, align 4
  %11 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8
  %13 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 2
  store ptr %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 3
  store ptr %12, ptr %14, align 4
  %15 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 4
  store i32 %1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 5
  store i32 %2, ptr %16, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %1, i1 false) #9, !range !9
  %18 = sub nuw nsw i32 32, %17
  %19 = shl nuw i32 1, %18
  %20 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 7
  store i32 %19, ptr %21, align 4
  %22 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8, i32 1
  store i32 -1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8, i32 2
  store i32 -1, ptr %23, align 4
  store i32 0, ptr %12, align 4
  %24 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8, i32 0, i32 1
  store ptr null, ptr %24, align 4
  %25 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8, i32 0, i32 2
  store ptr null, ptr %25, align 4
  store ptr %12, ptr %11, align 4
  tail call void @rb_insert_color(ptr noundef %12, ptr noundef %11) #9
  %26 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 10
  %27 = tail call i32 @__cpuhp_state_add_instance(i32 noundef 36, ptr noundef %26, i1 noundef zeroext false) #9
  br label %28

28:                                               ; preds = %59, %10
  %29 = phi i32 [ 0, %10 ], [ %60, %59 ]
  %30 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %29
  store i32 0, ptr %30, align 4
  %31 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %29, i32 1
  store i32 0, ptr %31, align 4
  %32 = tail call noalias ptr @__alloc_percpu(i32 noundef 12, i32 noundef 64) #10
  %33 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %29, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp eq ptr %32, null
  br i1 %34, label %39, label %35, !prof !12

35:                                               ; preds = %28
  %36 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %40, label %59

39:                                               ; preds = %28
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 708, i32 noundef 9, ptr noundef null) #9
  br label %59

40:                                               ; preds = %57, %35
  %41 = phi ptr [ %58, %57 ], [ %32, %35 ]
  %42 = phi i32 [ %54, %57 ], [ %36, %35 ]
  %43 = ptrtoint ptr %41 to i32
  %44 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, %43
  %47 = inttoptr i32 %46 to ptr
  store i32 0, ptr %47, align 4
  %48 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 516) #12
  %50 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %47, i32 0, i32 1
  store ptr %49, ptr %50, align 4
  %51 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %52 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %51, i32 noundef 3520, i32 noundef 516) #12
  %53 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %47, i32 0, i32 2
  store ptr %52, ptr %53, align 4
  %54 = tail call i32 @cpumask_next(i32 noundef %42, ptr noundef nonnull @__cpu_possible_mask) #11
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %40
  %58 = load ptr, ptr %33, align 4
  br label %40

59:                                               ; preds = %40, %39, %35
  %60 = add nuw nsw i32 %29, 1
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %28

62:                                               ; preds = %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @iova_cache_get() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iova_cache_mutex) #9
  %1 = load i32, ptr @iova_cache_users, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %15

3:                                                ; preds = %0
  %4 = tail call i32 @__cpuhp_setup_state(i32 noundef 36, ptr noundef nonnull @.str, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @iova_cpuhp_dead, i1 noundef zeroext true) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  tail call void @mutex_unlock(ptr noundef nonnull @iova_cache_mutex) #9
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %18

8:                                                ; preds = %3
  %9 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.2, i32 noundef 20, i32 noundef 0, i32 noundef 8192, ptr noundef null) #9
  store ptr %9, ptr @iova_cache, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr @iova_cache_users, align 4
  br label %15

13:                                               ; preds = %8
  tail call void @__cpuhp_remove_state(i32 noundef 36, i1 noundef zeroext false) #9
  tail call void @mutex_unlock(ptr noundef nonnull @iova_cache_mutex) #9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %18

15:                                               ; preds = %11, %0
  %16 = phi i32 [ %12, %11 ], [ %1, %0 ]
  %17 = add i32 %16, 1
  store i32 %17, ptr @iova_cache_users, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @iova_cache_mutex) #9
  br label %18

18:                                               ; preds = %15, %13, %6
  %19 = phi i32 [ 0, %15 ], [ -12, %13 ], [ %4, %6 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @iova_cpuhp_dead(i32 noundef %0, ptr noundef %1) #0 {
  %3 = icmp eq ptr %1, null
  %4 = getelementptr i8, ptr %1, i32 -892
  %5 = select i1 %3, ptr null, ptr %4
  tail call fastcc void @free_cpu_cached_iovas(i32 noundef %0, ptr noundef %5)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @iova_cache_put() #0 {
  tail call void @mutex_lock(ptr noundef nonnull @iova_cache_mutex) #9
  %1 = load i32, ptr @iova_cache_users, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !12

3:                                                ; preds = %0
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 284, i32 noundef 9, ptr noundef null) #9
  br label %9

4:                                                ; preds = %0
  %5 = add i32 %1, -1
  store i32 %5, ptr @iova_cache_users, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  tail call void @__cpuhp_remove_state(i32 noundef 36, i1 noundef zeroext false) #9
  %8 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_destroy(ptr noundef %8) #9
  br label %9

9:                                                ; preds = %7, %4, %3
  tail call void @mutex_unlock(ptr noundef nonnull @iova_cache_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @alloc_iova(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = alloca ptr, align 4
  %6 = load ptr, ptr @iova_cache, align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 11040) #9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %146, label %9

9:                                                ; preds = %4
  %10 = add i32 %2, 1
  %11 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  br i1 %3, label %13, label %20

13:                                               ; preds = %9
  %14 = add i32 %1, -1
  %15 = icmp eq i32 %14, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 false) #9, !range !9
  %17 = sub nuw nsw i32 32, %16
  %18 = shl nsw i32 -1, %17
  %19 = select i1 %15, i32 -1, i32 %18
  br label %20

20:                                               ; preds = %13, %9
  %21 = phi i32 [ %19, %13 ], [ -1, %9 ]
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %23 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %10
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 7
  %28 = load i32, ptr %27, align 4
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %140

30:                                               ; preds = %26, %20
  %31 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 2
  %33 = select i1 %25, ptr %32, ptr %31
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.iova, ptr %34, i32 0, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  %38 = icmp ult i32 %37, %10
  %39 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %40 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 8
  br label %41

41:                                               ; preds = %71, %30
  %42 = phi i32 [ %12, %30 ], [ %37, %71 ]
  %43 = phi ptr [ %34, %30 ], [ %72, %71 ]
  br label %44

44:                                               ; preds = %54, %41
  %45 = phi i32 [ %10, %41 ], [ %49, %54 ]
  %46 = phi ptr [ %43, %41 ], [ %52, %54 ]
  %47 = getelementptr inbounds %struct.iova, ptr %46, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %45, i32 %48) #9
  %50 = sub i32 %49, %1
  %51 = and i32 %50, %21
  %52 = tail call ptr @rb_prev(ptr noundef %46) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.iova, ptr %52, i32 0, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = icmp ugt i32 %51, %56
  %58 = icmp ult i32 %51, %42
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %60, label %44

60:                                               ; preds = %54, %44
  %61 = icmp ult i32 %49, %1
  %62 = icmp ult i32 %51, %42
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %64, label %102

64:                                               ; preds = %60
  %65 = load i32, ptr %11, align 4
  %66 = icmp eq i32 %42, %65
  %67 = select i1 %66, i1 %38, i1 false
  br i1 %67, label %68, label %100

68:                                               ; preds = %64
  %69 = load i32, ptr %23, align 4
  %70 = icmp ult i32 %69, %10
  br i1 %70, label %71, label %73

71:                                               ; preds = %91, %80, %68
  %72 = phi ptr [ %40, %68 ], [ %81, %91 ], [ %81, %80 ]
  br label %41

73:                                               ; preds = %73, %68
  %74 = phi ptr [ %79, %73 ], [ %39, %68 ]
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.iova, ptr %75, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %77, %10
  %79 = getelementptr inbounds %struct.rb_node, ptr %75, i32 0, i32 1
  br i1 %78, label %73, label %80

80:                                               ; preds = %89, %73
  %81 = phi ptr [ %90, %89 ], [ %75, %73 ]
  %82 = getelementptr inbounds %struct.rb_node, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %71, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.iova, ptr %83, i32 0, i32 2
  %87 = load i32, ptr %86, align 4
  %88 = icmp ult i32 %87, %10
  br i1 %88, label %91, label %89

89:                                               ; preds = %96, %85
  %90 = phi ptr [ %83, %85 ], [ %94, %96 ]
  br label %80

91:                                               ; preds = %96, %85
  %92 = phi ptr [ %94, %96 ], [ %83, %85 ]
  %93 = getelementptr inbounds %struct.rb_node, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = icmp eq ptr %94, null
  br i1 %95, label %71, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.iova, ptr %94, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = icmp ult i32 %98, %10
  br i1 %99, label %91, label %89

100:                                              ; preds = %64
  %101 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 7
  store i32 %1, ptr %101, align 4
  br label %140

102:                                              ; preds = %60
  %103 = getelementptr inbounds %struct.iova, ptr %7, i32 0, i32 2
  store i32 %51, ptr %103, align 8
  %104 = add i32 %1, -1
  %105 = add i32 %104, %51
  %106 = getelementptr inbounds %struct.iova, ptr %7, i32 0, i32 1
  store i32 %105, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store ptr %46, ptr %5, align 4
  %107 = icmp eq ptr %46, null
  %108 = select i1 %107, ptr %39, ptr %5
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %129, label %111

111:                                              ; preds = %123, %102
  %112 = phi ptr [ %125, %123 ], [ %109, %102 ]
  %113 = getelementptr inbounds %struct.iova, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %51, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.rb_node, ptr %112, i32 0, i32 2
  br label %123

118:                                              ; preds = %111
  %119 = icmp ugt i32 %51, %114
  br i1 %119, label %120, label %122

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.rb_node, ptr %112, i32 0, i32 1
  br label %123

122:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 164, i32 noundef 9, ptr noundef null) #9
  br label %135

123:                                              ; preds = %120, %116
  %124 = phi ptr [ %117, %116 ], [ %121, %120 ]
  %125 = load ptr, ptr %124, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %111

127:                                              ; preds = %123
  %128 = ptrtoint ptr %112 to i32
  br label %129

129:                                              ; preds = %127, %102
  %130 = phi i32 [ %128, %127 ], [ 0, %102 ]
  %131 = phi ptr [ %124, %127 ], [ %108, %102 ]
  store i32 %130, ptr %7, align 8
  %132 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  store ptr null, ptr %132, align 4
  %133 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  store ptr null, ptr %133, align 8
  store ptr %7, ptr %131, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %7, ptr noundef %39) #9
  %134 = load i32, ptr %106, align 4
  br label %135

135:                                              ; preds = %129, %122
  %136 = phi i32 [ %105, %122 ], [ %134, %129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  %137 = load i32, ptr %23, align 4
  %138 = icmp ult i32 %136, %137
  %139 = select i1 %138, ptr %31, ptr %32
  store ptr %7, ptr %139, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %22) #9
  br label %146

140:                                              ; preds = %100, %26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %22) #9
  %141 = getelementptr inbounds %struct.iova, ptr %7, i32 0, i32 2
  %142 = load i32, ptr %141, align 8
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %146, label %144

144:                                              ; preds = %140
  %145 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %145, ptr noundef nonnull %7) #9
  br label %146

146:                                              ; preds = %144, %140, %135, %4
  %147 = phi ptr [ null, %4 ], [ %7, %135 ], [ null, %140 ], [ null, %144 ]
  ret ptr %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @find_iova(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %7 = load volatile i32, ptr %0, align 4
  store volatile i32 %7, ptr %3, align 4
  %8 = lshr i32 %7, 16
  %9 = and i32 %7, 65535
  %10 = icmp eq i32 %9, %8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %10, label %13, label %11, !prof !12

11:                                               ; preds = %2
  %12 = icmp eq ptr %6, null
  br i1 %12, label %31, label %14

13:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

14:                                               ; preds = %27, %11
  %15 = phi ptr [ %29, %27 ], [ %6, %11 ]
  %16 = getelementptr inbounds %struct.iova, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 2
  br label %27

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.iova, ptr %15, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %1
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.rb_node, ptr %15, i32 0, i32 1
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %20, %19 ], [ %26, %25 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %14

31:                                               ; preds = %27, %21, %11
  %32 = phi ptr [ null, %11 ], [ null, %27 ], [ %15, %21 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #9
  ret ptr %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @__free_iova(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %5 = load volatile i32, ptr %0, align 4
  store volatile i32 %5, ptr %3, align 4
  %6 = lshr i32 %5, 16
  %7 = and i32 %5, 65535
  %8 = icmp eq i32 %7, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %8, label %9, label %10, !prof !12

9:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.iova, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.iova, ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.iova, ptr %12, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %10
  %27 = tail call ptr @rb_next(ptr noundef %1) #9
  store ptr %27, ptr %11, align 4
  %28 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %26, %20, %14
  %32 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.iova, ptr %1, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.iova, ptr %33, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = tail call ptr @rb_next(ptr noundef %1) #9
  store ptr %40, ptr %32, align 4
  br label %41

41:                                               ; preds = %39, %31
  %42 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  tail call void @rb_erase(ptr noundef %1, ptr noundef %42) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %4) #9
  %43 = load i32, ptr %34, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %46, ptr noundef %1) #9
  br label %47

47:                                               ; preds = %45, %41
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_iova(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %8 = load volatile i32, ptr %0, align 4
  store volatile i32 %8, ptr %4, align 4
  %9 = lshr i32 %8, 16
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %11, label %14, label %12, !prof !12

12:                                               ; preds = %2
  %13 = icmp eq ptr %7, null
  br i1 %13, label %32, label %15

14:                                               ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

15:                                               ; preds = %28, %12
  %16 = phi ptr [ %30, %28 ], [ %7, %12 ]
  %17 = getelementptr inbounds %struct.iova, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, %1
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 2
  br label %28

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.iova, ptr %16, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp ult i32 %24, %1
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.rb_node, ptr %16, i32 0, i32 1
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi ptr [ %21, %20 ], [ %27, %26 ]
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15

32:                                               ; preds = %28, %12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #9
  br label %72

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.iova, ptr %16, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %35 = load volatile i32, ptr %0, align 4
  store volatile i32 %35, ptr %3, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %35, 65535
  %38 = icmp eq i32 %37, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %38, label %39, label %40, !prof !12

39:                                               ; preds = %33
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %16
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = icmp ult i32 %24, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.iova, ptr %42, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp ult i32 %18, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %48, %40
  %53 = tail call ptr @rb_next(ptr noundef nonnull %16) #9
  store ptr %53, ptr %41, align 4
  %54 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 7
  store i32 %55, ptr %56, align 4
  %57 = load i32, ptr %34, align 4
  br label %58

58:                                               ; preds = %52, %48, %44
  %59 = phi i32 [ %57, %52 ], [ %18, %48 ], [ %18, %44 ]
  %60 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.iova, ptr %61, i32 0, i32 2
  %63 = load i32, ptr %62, align 4
  %64 = icmp ult i32 %59, %63
  br i1 %64, label %67, label %65

65:                                               ; preds = %58
  %66 = tail call ptr @rb_next(ptr noundef nonnull %16) #9
  store ptr %66, ptr %60, align 4
  br label %67

67:                                               ; preds = %65, %58
  tail call void @rb_erase(ptr noundef nonnull %16, ptr noundef %6) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %5) #9
  %68 = load i32, ptr %34, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %71, ptr noundef nonnull %16) #9
  br label %72

72:                                               ; preds = %70, %67, %32
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @alloc_iova_fast(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = icmp ult i32 %1, 32
  br i1 %5, label %6, label %13

6:                                                ; preds = %4
  %7 = add nsw i32 %1, -1
  %8 = icmp eq i32 %7, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %7, i1 false) #9, !range !9
  %10 = sub nuw nsw i32 32, %9
  %11 = shl nuw i32 1, %10
  %12 = select i1 %8, i32 1, i32 %11
  br label %13

13:                                               ; preds = %6, %4
  %14 = phi i32 [ %1, %4 ], [ %12, %6 ]
  %15 = add i32 %2, 1
  %16 = icmp ugt i32 %14, 1
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = add i32 %14, -1
  %19 = tail call i32 @llvm.ctlz.i32(i32 %18, i1 false) #9, !range !9
  %20 = sub nuw nsw i32 32, %19
  %21 = icmp ugt i32 %18, 31
  br i1 %21, label %88, label %22

22:                                               ; preds = %17, %13
  %23 = phi i32 [ %20, %17 ], [ 0, %13 ]
  %24 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %23
  %25 = sub i32 %15, %14
  %26 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %23, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %30 = inttoptr i32 %29 to ptr
  %31 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %30) #8, !srcloc !15
  %32 = add i32 %31, %28
  %33 = inttoptr i32 %32 to ptr
  %34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %33) #9
  %35 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %33, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %22
  %39 = load i32, ptr %36, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %38, %22
  %42 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %33, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, ptr %43, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store ptr %36, ptr %42, align 4
  store ptr %43, ptr %35, align 4
  br label %63

49:                                               ; preds = %45, %41
  tail call void @_raw_spin_lock(ptr noundef %24) #9
  %50 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %23, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %35, align 4
  tail call void @kfree(ptr noundef %54) #9
  %55 = load i32, ptr %50, align 4
  %56 = add i32 %55, -1
  store i32 %56, ptr %50, align 4
  %57 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %23, i32 2, i32 %56
  %58 = load ptr, ptr %57, align 4
  store ptr %58, ptr %35, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %59 = load i16, ptr %24, align 4
  %60 = add i16 %59, 1
  store i16 %60, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  %61 = load ptr, ptr %35, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63, !prof !20

63:                                               ; preds = %53, %48
  %64 = phi ptr [ %43, %48 ], [ %61, %53 ]
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %70, label %67, !prof !12

67:                                               ; preds = %63, %38
  %68 = phi ptr [ %64, %63 ], [ %36, %38 ]
  %69 = phi i32 [ %65, %63 ], [ %39, %38 ]
  br label %71

70:                                               ; preds = %63, %53
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 675, 0\0A.popsection", ""() #9, !srcloc !21
  unreachable

71:                                               ; preds = %77, %67
  %72 = phi i32 [ %73, %77 ], [ %69, %67 ]
  %73 = add i32 %72, -1
  %74 = getelementptr %struct.iova_magazine, ptr %68, i32 0, i32 1, i32 %73
  %75 = load i32, ptr %74, align 4
  %76 = icmp ugt i32 %75, %25
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = icmp eq i32 %73, 0
  br i1 %78, label %82, label %71

79:                                               ; preds = %49
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %80 = load i16, ptr %24, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %82

82:                                               ; preds = %79, %77
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #9
  br label %88

83:                                               ; preds = %71
  %84 = add i32 %69, -1
  store i32 %84, ptr %68, align 4
  %85 = getelementptr %struct.iova_magazine, ptr %68, i32 0, i32 1, i32 %84
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %74, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %33, i32 noundef %34) #9
  %87 = icmp eq i32 %75, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %83, %82, %17
  %89 = tail call ptr @alloc_iova(ptr noundef %0, i32 noundef %14, i32 noundef %2, i1 noundef zeroext true)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %94, label %123

91:                                               ; preds = %120
  %92 = tail call ptr @alloc_iova(ptr noundef %0, i32 noundef %14, i32 noundef %2, i1 noundef zeroext true)
  %93 = icmp eq ptr %92, null
  br i1 %93, label %127, label %123

94:                                               ; preds = %88
  br i1 %3, label %95, label %127

95:                                               ; preds = %94
  %96 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  %97 = load i32, ptr @nr_cpu_ids, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %99, %95
  %100 = phi i32 [ %101, %99 ], [ %96, %95 ]
  tail call fastcc void @free_cpu_cached_iovas(i32 noundef %100, ptr noundef %0)
  %101 = tail call i32 @cpumask_next(i32 noundef %100, ptr noundef nonnull @__cpu_online_mask) #11
  %102 = load i32, ptr @nr_cpu_ids, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %99, label %104

104:                                              ; preds = %99, %95
  br label %105

105:                                              ; preds = %120, %104
  %106 = phi i32 [ %121, %120 ], [ 0, %104 ]
  %107 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %106
  %108 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %107) #9
  %109 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %106, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %112, %105
  %113 = phi i32 [ %117, %112 ], [ 0, %105 ]
  %114 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %106, i32 2, i32 %113
  %115 = load ptr, ptr %114, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %115, ptr noundef %0) #9
  %116 = load ptr, ptr %114, align 4
  tail call void @kfree(ptr noundef %116) #9
  %117 = add nuw i32 %113, 1
  %118 = load i32, ptr %109, align 4
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %112, label %120

120:                                              ; preds = %112, %105
  store i32 0, ptr %109, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %107, i32 noundef %108) #9
  %121 = add nuw nsw i32 %106, 1
  %122 = icmp eq i32 %121, 6
  br i1 %122, label %91, label %105

123:                                              ; preds = %91, %88
  %124 = phi ptr [ %89, %88 ], [ %92, %91 ]
  %125 = getelementptr inbounds %struct.iova, ptr %124, i32 0, i32 2
  %126 = load i32, ptr %125, align 4
  br label %127

127:                                              ; preds = %123, %94, %91, %83
  %128 = phi i32 [ %126, %123 ], [ %75, %83 ], [ 0, %91 ], [ 0, %94 ]
  ret i32 %128
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @free_cpu_cached_iovas(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, %6
  %9 = inttoptr i32 %8 to ptr
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %9, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %12, ptr noundef %1)
  %13 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %9, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %14, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %10) #9
  %15 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 1, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = load i32, ptr %3, align 4
  %19 = add i32 %18, %17
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %23, ptr noundef %1)
  %24 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %25, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  %26 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 2, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = ptrtoint ptr %27 to i32
  %29 = load i32, ptr %3, align 4
  %30 = add i32 %29, %28
  %31 = inttoptr i32 %30 to ptr
  %32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %31) #9
  %33 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %34, ptr noundef %1)
  %35 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %31, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %36, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %31, i32 noundef %32) #9
  %37 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 3, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = load i32, ptr %3, align 4
  %41 = add i32 %40, %39
  %42 = inttoptr i32 %41 to ptr
  %43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %42) #9
  %44 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %42, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %45, ptr noundef %1)
  %46 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %42, i32 0, i32 2
  %47 = load ptr, ptr %46, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %47, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %42, i32 noundef %43) #9
  %48 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 4, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = ptrtoint ptr %49 to i32
  %51 = load i32, ptr %3, align 4
  %52 = add i32 %51, %50
  %53 = inttoptr i32 %52 to ptr
  %54 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %53) #9
  %55 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %53, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %56, ptr noundef %1)
  %57 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %53, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %58, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %53, i32 noundef %54) #9
  %59 = getelementptr %struct.iova_domain, ptr %1, i32 0, i32 9, i32 5, i32 3
  %60 = load ptr, ptr %59, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = load i32, ptr %3, align 4
  %63 = add i32 %62, %61
  %64 = inttoptr i32 %63 to ptr
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %64) #9
  %66 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %64, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %67, ptr noundef %1)
  %68 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %64, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef %69, ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %64, i32 noundef %65) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @free_iova_fast(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %3
  %6 = add i32 %2, -1
  %7 = tail call i32 @llvm.ctlz.i32(i32 %6, i1 false) #9, !range !9
  %8 = sub nuw nsw i32 32, %7
  %9 = icmp ugt i32 %6, 31
  br i1 %9, label %70, label %10

10:                                               ; preds = %5, %3
  %11 = phi i32 [ %8, %5 ], [ 0, %3 ]
  %12 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %11
  %13 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %11, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !0) #9
  %17 = inttoptr i32 %16 to ptr
  %18 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %17) #8, !srcloc !15
  %19 = add i32 %18, %15
  %20 = inttoptr i32 %19 to ptr
  %21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %22 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %10
  %26 = load i32, ptr %23, align 4
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %20, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store ptr %23, ptr %29, align 4
  store ptr null, ptr %22, align 4
  br label %54

33:                                               ; preds = %28
  %34 = load i32, ptr %30, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %53

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %38 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 2848, i32 noundef 516) #12
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  br label %70

41:                                               ; preds = %36
  tail call void @_raw_spin_lock(ptr noundef %12) #9
  %42 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %11, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = icmp ult i32 %43, 32
  %45 = load ptr, ptr %22, align 4
  br i1 %44, label %46, label %49

46:                                               ; preds = %41
  %47 = add nuw nsw i32 %43, 1
  store i32 %47, ptr %42, align 4
  %48 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %11, i32 2, i32 %43
  store ptr %45, ptr %48, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = phi ptr [ null, %46 ], [ %45, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !16
  %51 = load i16, ptr %12, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !19
  br label %56

53:                                               ; preds = %33
  store ptr %23, ptr %29, align 4
  br label %56

54:                                               ; preds = %32, %10
  %55 = load i32, ptr null, align 2147483648
  br label %62

56:                                               ; preds = %53, %49
  %57 = phi ptr [ %30, %53 ], [ %38, %49 ]
  %58 = phi ptr [ null, %53 ], [ %50, %49 ]
  store ptr %57, ptr %22, align 4
  %59 = load i32, ptr %57, align 4
  %60 = icmp eq i32 %59, 128
  br i1 %60, label %61, label %62, !prof !12

61:                                               ; preds = %56
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 691, 0\0A.popsection", ""() #9, !srcloc !22
  unreachable

62:                                               ; preds = %56, %54, %25
  %63 = phi ptr [ null, %54 ], [ %58, %56 ], [ null, %25 ]
  %64 = phi ptr [ null, %54 ], [ %57, %56 ], [ %23, %25 ]
  %65 = phi i32 [ %55, %54 ], [ %59, %56 ], [ %26, %25 ]
  %66 = add i32 %65, 1
  store i32 %66, ptr %64, align 4
  %67 = getelementptr %struct.iova_magazine, ptr %64, i32 0, i32 1, i32 %65
  store i32 %1, ptr %67, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %21) #9
  %68 = icmp eq ptr %63, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  tail call fastcc void @iova_magazine_free_pfns(ptr noundef nonnull %63, ptr noundef %0) #9
  tail call void @kfree(ptr noundef nonnull %63) #9
  br label %71

70:                                               ; preds = %40, %5
  tail call void @free_iova(ptr noundef %0, i32 noundef %1)
  br label %71

71:                                               ; preds = %70, %69, %62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @put_iova_domain(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 10
  %3 = tail call i32 @__cpuhp_state_remove_instance(i32 noundef 36, ptr noundef %2, i1 noundef zeroext false) #9
  br label %4

4:                                                ; preds = %39, %1
  %5 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #11
  %7 = load i32, ptr @nr_cpu_ids, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %5, i32 3
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %6, %9 ], [ %23, %11 ]
  %13 = load ptr, ptr %10, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %18, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call void @kfree(ptr noundef %20) #9
  %21 = getelementptr inbounds %struct.iova_cpu_rcache, ptr %18, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call void @kfree(ptr noundef %22) #9
  %23 = tail call i32 @cpumask_next(i32 noundef %12, ptr noundef nonnull @__cpu_possible_mask) #11
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %11, label %26

26:                                               ; preds = %11, %4
  %27 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %5, i32 3
  %28 = load ptr, ptr %27, align 4
  tail call void @free_percpu(ptr noundef %28) #9
  %29 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %5, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %32, %26
  %33 = phi i32 [ %36, %32 ], [ 0, %26 ]
  %34 = getelementptr %struct.iova_domain, ptr %0, i32 0, i32 9, i32 %5, i32 2, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call void @kfree(ptr noundef %35) #9
  %36 = add nuw i32 %33, 1
  %37 = load i32, ptr %29, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %32, label %39

39:                                               ; preds = %32, %26
  %40 = add nuw nsw i32 %5, 1
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %4

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %44 = tail call ptr @rb_first_postorder(ptr noundef %43) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %56, label %46

46:                                               ; preds = %54, %42
  %47 = phi ptr [ %48, %54 ], [ %44, %42 ]
  %48 = tail call ptr @rb_next_postorder(ptr noundef nonnull %47) #9
  %49 = getelementptr inbounds %struct.iova, ptr %47, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %53, ptr noundef nonnull %47) #9
  br label %54

54:                                               ; preds = %52, %46
  %55 = icmp eq ptr %48, null
  br i1 %55, label %56, label %46

56:                                               ; preds = %54, %42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next_postorder(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @reserve_iova(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = or i32 %2, %1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @llvm.cttz.i32(i32 %7, i1 false) #9, !range !9
  %9 = zext i32 %8 to i64
  %10 = lshr i64 -1, %9
  %11 = icmp ult i64 %10, %5
  br i1 %11, label %12, label %13, !prof !12

12:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 574, i32 noundef 9, ptr noundef null) #9
  br label %81

13:                                               ; preds = %3
  %14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %0) #9
  %15 = getelementptr inbounds %struct.iova_domain, ptr %0, i32 0, i32 1
  %16 = tail call ptr @rb_first(ptr noundef %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %46, label %18

18:                                               ; preds = %41, %13
  %19 = phi ptr [ %44, %41 ], [ %16, %13 ]
  %20 = phi i32 [ %43, %41 ], [ 0, %13 ]
  %21 = phi i32 [ %42, %41 ], [ %1, %13 ]
  %22 = getelementptr inbounds %struct.iova, ptr %19, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp ult i32 %23, %21
  br i1 %24, label %39, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.iova, ptr %19, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  %28 = icmp ugt i32 %27, %2
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = icmp ult i32 %21, %27
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i32 %21, ptr %26, align 4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %21, %31 ], [ %27, %29 ]
  %34 = icmp ult i32 %23, %2
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = add nuw i32 %23, 1
  br label %41

37:                                               ; preds = %32
  %38 = icmp ult i32 %21, %33
  br i1 %38, label %41, label %79

39:                                               ; preds = %25, %18
  %40 = icmp eq i32 %20, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %39, %37, %35
  %42 = phi i32 [ %21, %39 ], [ %21, %37 ], [ %36, %35 ]
  %43 = phi i32 [ 0, %39 ], [ 1, %37 ], [ 1, %35 ]
  %44 = tail call ptr @rb_next(ptr noundef nonnull %19) #9
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %18

46:                                               ; preds = %41, %39, %13
  %47 = phi i32 [ %1, %13 ], [ %21, %39 ], [ %42, %41 ]
  %48 = load ptr, ptr @iova_cache, align 4
  %49 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %48, i32 noundef 11040) #9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %79, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.iova, ptr %49, i32 0, i32 2
  store i32 %47, ptr %52, align 8
  %53 = getelementptr inbounds %struct.iova, ptr %49, i32 0, i32 1
  store i32 %2, ptr %53, align 4
  %54 = load ptr, ptr %15, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %74, label %56

56:                                               ; preds = %68, %51
  %57 = phi ptr [ %70, %68 ], [ %54, %51 ]
  %58 = getelementptr inbounds %struct.iova, ptr %57, i32 0, i32 2
  %59 = load i32, ptr %58, align 4
  %60 = icmp ugt i32 %59, %47
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 2
  br label %68

63:                                               ; preds = %56
  %64 = icmp ult i32 %59, %47
  br i1 %64, label %65, label %67

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.rb_node, ptr %57, i32 0, i32 1
  br label %68

67:                                               ; preds = %63
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 164, i32 noundef 9, ptr noundef null) #9
  br label %79

68:                                               ; preds = %65, %61
  %69 = phi ptr [ %62, %61 ], [ %66, %65 ]
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %56

72:                                               ; preds = %68
  %73 = ptrtoint ptr %57 to i32
  br label %74

74:                                               ; preds = %72, %51
  %75 = phi i32 [ %73, %72 ], [ 0, %51 ]
  %76 = phi ptr [ %69, %72 ], [ %15, %51 ]
  store i32 %75, ptr %49, align 8
  %77 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 1
  store ptr null, ptr %77, align 4
  %78 = getelementptr inbounds %struct.rb_node, ptr %49, i32 0, i32 2
  store ptr null, ptr %78, align 8
  store ptr %49, ptr %76, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %49, ptr noundef %15) #9
  br label %79

79:                                               ; preds = %74, %67, %46, %37
  %80 = phi ptr [ null, %46 ], [ %49, %67 ], [ %49, %74 ], [ %19, %37 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %0, i32 noundef %14) #9
  br label %81

81:                                               ; preds = %79, %12
  %82 = phi ptr [ null, %12 ], [ %80, %79 ]
  ret ptr %82
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_first(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_add_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cpuhp_remove_state(i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rb_prev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_state_remove_instance(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @iova_magazine_free_pfns(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %85, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %8 = load i32, ptr %0, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %84, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 3
  %13 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 6
  %14 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 7
  %15 = getelementptr inbounds %struct.iova_domain, ptr %1, i32 0, i32 2
  br label %16

16:                                               ; preds = %80, %10
  %17 = phi i32 [ 0, %10 ], [ %81, %80 ]
  %18 = getelementptr %struct.iova_magazine, ptr %0, i32 0, i32 1, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %21 = load volatile i32, ptr %1, align 4
  store volatile i32 %21, ptr %4, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %21, 65535
  %24 = icmp eq i32 %23, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  br i1 %24, label %27, label %25, !prof !12

25:                                               ; preds = %16
  %26 = icmp eq ptr %20, null
  br i1 %26, label %45, label %28

27:                                               ; preds = %16
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 337, 0\0A.popsection", ""() #9, !srcloc !13
  unreachable

28:                                               ; preds = %41, %25
  %29 = phi ptr [ %43, %41 ], [ %20, %25 ]
  %30 = getelementptr inbounds %struct.iova, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = icmp ugt i32 %31, %19
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 2
  br label %41

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.iova, ptr %29, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %37, %19
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.rb_node, ptr %29, i32 0, i32 1
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %34, %33 ], [ %40, %39 ]
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %28

45:                                               ; preds = %41, %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 647, i32 noundef 9, ptr noundef null) #9
  br label %80

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.iova, ptr %29, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  %48 = load volatile i32, ptr %1, align 4
  store volatile i32 %48, ptr %3, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %48, 65535
  %51 = icmp eq i32 %50, %49
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br i1 %51, label %52, label %53, !prof !12

52:                                               ; preds = %46
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/iommu/iova.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 355, 0\0A.popsection", ""() #9, !srcloc !14
  unreachable

53:                                               ; preds = %46
  %54 = load ptr, ptr %12, align 4
  %55 = icmp eq ptr %54, %29
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %13, align 4
  %58 = icmp ult i32 %37, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.iova, ptr %54, i32 0, i32 2
  %61 = load i32, ptr %60, align 4
  %62 = icmp ult i32 %31, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %53
  %64 = tail call ptr @rb_next(ptr noundef nonnull %29) #9
  store ptr %64, ptr %12, align 4
  %65 = load i32, ptr %13, align 4
  store i32 %65, ptr %14, align 4
  %66 = load i32, ptr %47, align 4
  br label %67

67:                                               ; preds = %63, %59, %56
  %68 = phi i32 [ %66, %63 ], [ %31, %59 ], [ %31, %56 ]
  %69 = load ptr, ptr %15, align 4
  %70 = getelementptr inbounds %struct.iova, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = tail call ptr @rb_next(ptr noundef nonnull %29) #9
  store ptr %74, ptr %15, align 4
  br label %75

75:                                               ; preds = %73, %67
  tail call void @rb_erase(ptr noundef nonnull %29, ptr noundef %11) #9
  %76 = load i32, ptr %47, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @iova_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %79, ptr noundef nonnull %29) #9
  br label %80

80:                                               ; preds = %78, %75, %45
  %81 = add nuw i32 %17, 1
  %82 = load i32, ptr %0, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %16, label %84

84:                                               ; preds = %80, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %7) #9
  store i32 0, ptr %0, align 4
  br label %85

85:                                               ; preds = %84, %2
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind readonly willreturn }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.named.register.sp = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{!"sp"}
!1 = !{i32 1, !"wchar_size", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{i32 8, !"branch-target-enforcement", i32 0}
!4 = !{i32 8, !"sign-return-address", i32 0}
!5 = !{i32 8, !"sign-return-address-all", i32 0}
!6 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!9 = !{i32 0, i32 33}
!10 = !{!"branch_weights", i32 4008002, i32 4000000}
!11 = !{i64 2152637401, i64 2152637885, i64 2152637438, i64 2152637494, i64 2152637528, i64 2152637552, i64 2152637593, i64 2152637614, i64 2152637642, i64 2152637676}
!12 = !{!"branch_weights", i32 1, i32 2000}
!13 = !{i64 2152648883, i64 2152649368, i64 2152648920, i64 2152648976, i64 2152649010, i64 2152649034, i64 2152649075, i64 2152649096, i64 2152649124, i64 2152649158}
!14 = !{i64 2152650246, i64 2152650731, i64 2152650283, i64 2152650339, i64 2152650373, i64 2152650397, i64 2152650438, i64 2152650459, i64 2152650487, i64 2152650521}
!15 = !{i64 350520}
!16 = !{i64 2149275707}
!17 = !{i64 2149271531}
!18 = !{i64 2149271606, i64 2149271633, i64 2149271680, i64 2149271702, i64 2149271730, i64 2149271750}
!19 = !{i64 2149298710}
!20 = !{!"branch_weights", i32 1073205, i32 2146410443}
!21 = !{i64 2152666324, i64 2152666809, i64 2152666361, i64 2152666417, i64 2152666451, i64 2152666475, i64 2152666516, i64 2152666537, i64 2152666565, i64 2152666599}
!22 = !{i64 2152667365, i64 2152667850, i64 2152667402, i64 2152667458, i64 2152667492, i64 2152667516, i64 2152667557, i64 2152667578, i64 2152667606, i64 2152667640}
