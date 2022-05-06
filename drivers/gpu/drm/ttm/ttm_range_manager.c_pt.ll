; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_range_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_range_manager.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_range_man_init_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_range_man_init_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_range_man_init_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_range_man_fini_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_range_man_fini_nocheck\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_range_man_fini_nocheck:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.ttm_resource_manager_func = type { ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_range_manager = type { %struct.ttm_resource_manager, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.67] }
%struct.anon.67 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.65, i64, i64, i32, %struct.kref, i32 }
%union.anon.65 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_range_mgr_node = type { %struct.ttm_resource, [0 x %struct.drm_mm_node] }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }

@ttm_range_manager_func = internal constant %struct.ttm_resource_manager_func { ptr @ttm_range_man_alloc, ptr @ttm_range_man_free, ptr @ttm_range_man_debug }, align 4
@__kstrtab_ttm_range_man_init_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_range_man_init_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_range_man_init_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_range_man_init_nocheck to i32), ptr @__kstrtab_ttm_range_man_init_nocheck, ptr @__kstrtabns_ttm_range_man_init_nocheck }, section "___ksymtab+ttm_range_man_init_nocheck", align 4
@__kstrtab_ttm_range_man_fini_nocheck = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_range_man_fini_nocheck = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_range_man_fini_nocheck = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_range_man_fini_nocheck to i32), ptr @__kstrtab_ttm_range_man_fini_nocheck, ptr @__kstrtabns_ttm_range_man_fini_nocheck }, section "___ksymtab+ttm_range_man_fini_nocheck", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_ttm_range_man_fini_nocheck, ptr @__ksymtab_ttm_range_man_init_nocheck], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_range_man_init_nocheck(ptr nocapture noundef writeonly %0, i32 noundef %1, i1 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 224) #3
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  %9 = zext i1 %2 to i8
  %10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %6, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr inbounds %struct.ttm_resource_manager, ptr %6, i32 0, i32 3
  store ptr @ttm_range_manager_func, ptr %11, align 8
  tail call void @ttm_resource_manager_init(ptr noundef nonnull %6, i32 noundef %3) #4
  %12 = getelementptr inbounds %struct.ttm_range_manager, ptr %6, i32 0, i32 1
  %13 = zext i32 %3 to i64
  tail call void @drm_mm_init(ptr noundef %12, i64 noundef 0, i64 noundef %13) #4
  %14 = getelementptr inbounds %struct.ttm_range_manager, ptr %6, i32 0, i32 2
  store i32 0, ptr %14, align 8
  %15 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 3, i32 %1
  store ptr %6, ptr %15, align 4
  %16 = getelementptr %struct.ttm_resource_manager, ptr %6, i32 0, i32 5, i32 0
  %17 = load volatile ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %20, label %19, !prof !8

19:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %20

20:                                               ; preds = %19, %8
  %21 = getelementptr %struct.ttm_resource_manager, ptr %6, i32 0, i32 5, i32 1
  %22 = load volatile ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %25, label %24, !prof !8

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %25

25:                                               ; preds = %24, %20
  %26 = getelementptr %struct.ttm_resource_manager, ptr %6, i32 0, i32 5, i32 2
  %27 = load volatile ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %30, label %29, !prof !8

29:                                               ; preds = %25
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %30

30:                                               ; preds = %29, %25
  %31 = getelementptr %struct.ttm_resource_manager, ptr %6, i32 0, i32 5, i32 3
  %32 = load volatile ptr, ptr %31, align 8
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %35, label %34, !prof !8

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %35

35:                                               ; preds = %34, %30
  store i8 1, ptr %6, align 8
  br label %36

36:                                               ; preds = %35, %4
  %37 = phi i32 [ 0, %35 ], [ -12, %4 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_manager_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_range_man_fini_nocheck(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr %struct.ttm_device, ptr %0, i32 0, i32 3, i32 %1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ttm_range_manager, ptr %4, i32 0, i32 1
  %6 = icmp eq ptr %4, null
  br i1 %6, label %49, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.ttm_resource_manager, ptr %4, i32 0, i32 5, i32 0
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %12

12:                                               ; preds = %11, %7
  %13 = getelementptr %struct.ttm_resource_manager, ptr %4, i32 0, i32 5, i32 1
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %17

17:                                               ; preds = %16, %12
  %18 = getelementptr %struct.ttm_resource_manager, ptr %4, i32 0, i32 5, i32 2
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %22, label %21, !prof !8

21:                                               ; preds = %17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.ttm_resource_manager, ptr %4, i32 0, i32 5, i32 3
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %27, label %26, !prof !8

26:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 229, i32 noundef 9, ptr noundef null) #4
  br label %27

27:                                               ; preds = %26, %22
  store i8 0, ptr %4, align 8
  %28 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %0, ptr noundef nonnull %4) #4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.ttm_range_manager, ptr %4, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %31) #4
  %32 = getelementptr inbounds %struct.ttm_range_manager, ptr %4, i32 0, i32 1, i32 2, i32 4
  %33 = load volatile ptr, ptr %32, align 4
  tail call void @drm_mm_takedown(ptr noundef %5) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %34 = load i16, ptr %31, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %31, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %36 = getelementptr inbounds %struct.ttm_resource_manager, ptr %4, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.dma_fence, ptr %37, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #4, !srcloc !14
  %41 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #4, !srcloc !15
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %44
  tail call void @refcount_warn_saturate(ptr noundef %40, i32 noundef 3) #4
  br label %48

47:                                               ; preds = %39
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !16
  tail call void @dma_fence_release(ptr noundef %40) #4
  br label %48

48:                                               ; preds = %47, %46, %44, %30
  store ptr null, ptr %36, align 8
  store ptr null, ptr %3, align 4
  tail call void @kfree(ptr noundef nonnull %4) #4
  br label %49

49:                                               ; preds = %48, %27, %2
  %50 = phi i32 [ 0, %48 ], [ 0, %2 ], [ %28, %27 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ttm_range_man_alloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = getelementptr inbounds %struct.ttm_range_manager, ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  br label %13

13:                                               ; preds = %9, %4
  %14 = phi i32 [ %7, %4 ], [ %12, %9 ]
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 144) #3
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, 2
  tail call void @ttm_resource_init(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %16) #4
  %22 = getelementptr inbounds %struct.ttm_range_manager, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %22) #4
  %23 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %16, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ttm_resource, ptr %16, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ttm_buffer_object, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 8
  %29 = zext i32 %28 to i64
  %30 = load i32, ptr %2, align 4
  %31 = zext i32 %30 to i64
  %32 = zext i32 %14 to i64
  %33 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %5, ptr noundef %23, i64 noundef %26, i64 noundef %29, i32 noundef 0, i64 noundef %31, i64 noundef %32, i32 noundef %21) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %34 = load i16, ptr %22, align 4
  %35 = add i16 %34, 1
  store i16 %35, ptr %22, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  %36 = icmp eq i32 %33, 0
  br i1 %36, label %38, label %37, !prof !8

37:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %16) #4
  br label %42

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %16, i32 1, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, ptr %16, align 8
  store ptr %16, ptr %3, align 4
  br label %42

42:                                               ; preds = %38, %37, %13
  %43 = phi i32 [ %33, %37 ], [ 0, %38 ], [ -12, %13 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_range_man_free(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_range_manager, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.ttm_range_mgr_node, ptr %1, i32 0, i32 1
  tail call void @drm_mm_remove_node(ptr noundef %4) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  tail call void @kfree(ptr noundef %1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @ttm_range_man_debug(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ttm_range_manager, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #4
  %4 = getelementptr inbounds %struct.ttm_range_manager, ptr %0, i32 0, i32 1
  tail call void @drm_mm_print(ptr noundef %4, ptr noundef %1) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %5 = load i16, ptr %3, align 4
  %6 = add i16 %5, 1
  store i16 %6, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind allocsize(2) }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148939998}
!10 = !{i64 2148935822}
!11 = !{i64 2148935897, i64 2148935924, i64 2148935971, i64 2148935993, i64 2148936021, i64 2148936041}
!12 = !{i64 2148963001}
!13 = !{i64 2148158227}
!14 = !{i64 555161, i64 2148045132, i64 2148045158, i64 2148045205, i64 2148045227, i64 2148045255, i64 2148045275}
!15 = !{i64 2148060362, i64 2148060394, i64 2148060423, i64 2148060457, i64 2148060488, i64 2148060511}
!16 = !{i64 2149279798}
