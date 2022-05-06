; ModuleID = '/llk/IR/drivers/gpu/drm/drm_vma_manager.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_vma_manager.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_offset_manager_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_offset_manager_init\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_offset_manager_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_offset_manager_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_offset_manager_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_offset_manager_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_offset_lookup_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_offset_lookup_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_offset_lookup_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_offset_add:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_offset_add\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_offset_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_offset_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_offset_remove\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_offset_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_node_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_node_allow\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_node_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_node_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_node_revoke\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_node_revoke:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_vma_node_is_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_vma_node_is_allowed\22\09\09\09\09\09"
module asm "__kstrtabns_drm_vma_node_is_allowed:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.drm_vma_offset_file = type { %struct.rb_node, ptr, i32 }

@__kstrtab_drm_vma_offset_manager_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_offset_manager_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_offset_manager_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_offset_manager_init to i32), ptr @__kstrtab_drm_vma_offset_manager_init, ptr @__kstrtabns_drm_vma_offset_manager_init }, section "___ksymtab+drm_vma_offset_manager_init", align 4
@__kstrtab_drm_vma_offset_manager_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_offset_manager_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_offset_manager_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_offset_manager_destroy to i32), ptr @__kstrtab_drm_vma_offset_manager_destroy, ptr @__kstrtabns_drm_vma_offset_manager_destroy }, section "___ksymtab+drm_vma_offset_manager_destroy", align 4
@__kstrtab_drm_vma_offset_lookup_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_offset_lookup_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_offset_lookup_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_offset_lookup_locked to i32), ptr @__kstrtab_drm_vma_offset_lookup_locked, ptr @__kstrtabns_drm_vma_offset_lookup_locked }, section "___ksymtab+drm_vma_offset_lookup_locked", align 4
@__kstrtab_drm_vma_offset_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_offset_add = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_offset_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_offset_add to i32), ptr @__kstrtab_drm_vma_offset_add, ptr @__kstrtabns_drm_vma_offset_add }, section "___ksymtab+drm_vma_offset_add", align 4
@__kstrtab_drm_vma_offset_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_offset_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_offset_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_offset_remove to i32), ptr @__kstrtab_drm_vma_offset_remove, ptr @__kstrtabns_drm_vma_offset_remove }, section "___ksymtab+drm_vma_offset_remove", align 4
@__kstrtab_drm_vma_node_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_node_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_node_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_node_allow to i32), ptr @__kstrtab_drm_vma_node_allow, ptr @__kstrtabns_drm_vma_node_allow }, section "___ksymtab+drm_vma_node_allow", align 4
@__kstrtab_drm_vma_node_revoke = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_node_revoke = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_node_revoke = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_node_revoke to i32), ptr @__kstrtab_drm_vma_node_revoke, ptr @__kstrtabns_drm_vma_node_revoke }, section "___ksymtab+drm_vma_node_revoke", align 4
@__kstrtab_drm_vma_node_is_allowed = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_vma_node_is_allowed = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_vma_node_is_allowed = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_vma_node_is_allowed to i32), ptr @__kstrtab_drm_vma_node_is_allowed, ptr @__kstrtabns_drm_vma_node_is_allowed }, section "___ksymtab+drm_vma_node_is_allowed", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_drm_vma_node_allow, ptr @__ksymtab_drm_vma_node_is_allowed, ptr @__ksymtab_drm_vma_node_revoke, ptr @__ksymtab_drm_vma_offset_add, ptr @__ksymtab_drm_vma_offset_lookup_locked, ptr @__ksymtab_drm_vma_offset_manager_destroy, ptr @__ksymtab_drm_vma_offset_manager_init, ptr @__ksymtab_drm_vma_offset_remove], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vma_offset_manager_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  store i32 0, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1
  %5 = zext i32 %1 to i64
  %6 = zext i32 %2 to i64
  tail call void @drm_mm_init(ptr noundef %4, i64 noundef %5, i64 noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vma_offset_manager_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1
  tail call void @drm_mm_takedown(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @drm_vma_offset_lookup_locked(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7, !prof !8

7:                                                ; preds = %20, %3
  %8 = phi ptr [ %23, %20 ], [ %5, %3 ]
  %9 = phi ptr [ %22, %20 ], [ null, %3 ]
  %10 = getelementptr i8, ptr %8, i32 -36
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp ugt i32 %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %8, i32 -44
  %16 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 1
  %17 = icmp eq i32 %12, %1
  br i1 %17, label %25, label %20

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.rb_node, ptr %8, i32 0, i32 2
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi ptr [ %16, %14 ], [ %19, %18 ]
  %22 = phi ptr [ %15, %14 ], [ %9, %18 ]
  %23 = load ptr, ptr %21, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !prof !8

25:                                               ; preds = %20, %14
  %26 = phi ptr [ %22, %20 ], [ %15, %14 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.drm_mm_node, ptr %26, i32 0, i32 1
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, ptr %26, i32 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  %34 = trunc i64 %33 to i32
  %35 = add i32 %2, %1
  %36 = icmp ugt i32 %35, %34
  %37 = select i1 %36, ptr null, ptr %26
  br label %38

38:                                               ; preds = %28, %25, %3
  %39 = phi ptr [ null, %25 ], [ %37, %28 ], [ null, %3 ]
  %40 = icmp eq ptr %39, null
  %41 = getelementptr i8, ptr %39, i32 -8
  %42 = select i1 %40, ptr null, ptr %41
  ret ptr %42
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_vma_offset_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @_raw_write_lock(ptr noundef %0) #5
  %4 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1, i32 12
  %5 = load volatile i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %0, i32 0, i32 1
  %11 = zext i32 %2 to i64
  %12 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %10, ptr noundef %9, i64 noundef %11, i64 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef -1, i32 noundef 0) #5
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %8 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vma_offset_remove(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @_raw_write_lock(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1, i32 12
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %1, i32 0, i32 1
  tail call void @drm_mm_remove_node(ptr noundef %8) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(112) %8, i8 0, i32 112, i1 false)
  br label %9

9:                                                ; preds = %7, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_vma_node_allow(ptr noundef %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 20) #6
  tail call void @_raw_write_lock(ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8, !prof !8

8:                                                ; preds = %17, %2
  %9 = phi ptr [ %22, %17 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %9, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 4
  br label %35

17:                                               ; preds = %8
  %18 = icmp ult ptr %11, %1
  %19 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rb_node, ptr %9, i32 0, i32 2
  %21 = select i1 %18, ptr %19, ptr %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %8, !prof !8

24:                                               ; preds = %17
  %25 = ptrtoint ptr %9 to i32
  br label %26

26:                                               ; preds = %24, %2
  %27 = phi i32 [ %25, %24 ], [ 0, %2 ]
  %28 = phi ptr [ %21, %24 ], [ %5, %2 ]
  %29 = icmp eq ptr %4, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %4, i32 0, i32 1
  store ptr %1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %4, i32 0, i32 2
  store i32 1, ptr %32, align 8
  store i32 %27, ptr %4, align 8
  %33 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 1
  store ptr null, ptr %33, align 4
  %34 = getelementptr inbounds %struct.rb_node, ptr %4, i32 0, i32 2
  store ptr null, ptr %34, align 8
  store ptr %4, ptr %28, align 4
  tail call void @rb_insert_color(ptr noundef nonnull %4, ptr noundef %5) #5
  br label %35

35:                                               ; preds = %30, %26, %13
  %36 = phi ptr [ %4, %13 ], [ null, %30 ], [ null, %26 ]
  %37 = phi i32 [ 0, %13 ], [ 0, %30 ], [ -12, %26 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  tail call void @kfree(ptr noundef %36) #5
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_insert_color(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_vma_node_revoke(ptr noundef %0, ptr noundef readnone %1) #0 {
  tail call void @_raw_write_lock(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6, !prof !8

6:                                                ; preds = %17, %2
  %7 = phi ptr [ %22, %17 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %7, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  store i32 %14, ptr %12, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  tail call void @rb_erase(ptr noundef nonnull %7, ptr noundef %3) #5
  tail call void @kfree(ptr noundef nonnull %7) #5
  br label %24

17:                                               ; preds = %6
  %18 = icmp ult ptr %9, %1
  %19 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %21 = select i1 %18, ptr %19, ptr %20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %6, !prof !8

24:                                               ; preds = %17, %16, %11, %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "str\09$1, [$0]\0A", "r,r,~{cc}"(ptr %0, i32 0) #5, !srcloc !10
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rb_erase(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_vma_node_is_allowed(ptr noundef %0, ptr noundef readnone %1) #0 {
  tail call void @_raw_read_lock(ptr noundef %0) #5
  %3 = getelementptr inbounds %struct.drm_vma_offset_node, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6, !prof !8

6:                                                ; preds = %11, %2
  %7 = phi ptr [ %16, %11 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.drm_vma_offset_file, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %18, label %11

11:                                               ; preds = %6
  %12 = icmp ult ptr %9, %1
  %13 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 1
  %14 = getelementptr inbounds %struct.rb_node, ptr %7, i32 0, i32 2
  %15 = select i1 %12, ptr %13, ptr %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !prof !8

18:                                               ; preds = %11, %6, %2
  %19 = phi i1 [ false, %2 ], [ %10, %6 ], [ %10, %11 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #5, !srcloc !15
  %20 = tail call { i32, i32 } asm sideeffect "1:\09ldrex\09$0, [$2]\0A\09sub\09$0, $0, #1\0A\09strex\09$1, $0, [$2]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,~{cc}"(ptr %0) #5, !srcloc !16
  %21 = extractvalue { i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !12
  br label %24

24:                                               ; preds = %23, %18
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !17
  ret i1 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 2149025237}
!10 = !{i64 1528451}
!11 = !{i64 2149013984}
!12 = !{i64 2149014059, i64 2149014086, i64 2149014133, i64 2149014155, i64 2149014183, i64 2149014203}
!13 = !{i64 2149063206}
!14 = !{i64 2149026042}
!15 = !{i64 851094, i64 2148341065, i64 2148341091, i64 2148341138, i64 2148341160, i64 2148341188, i64 2148341208}
!16 = !{i64 1529466, i64 1529489, i64 1529509, i64 1529533, i64 1529549}
!17 = !{i64 2149063645}
