; ModuleID = '/llk/IR/drivers/gpu/drm/msm/msm_gem_vma.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/msm_gem_vma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_gem_address_space = type { ptr, %struct.drm_mm, %struct.spinlock, ptr, %struct.kref, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.msm_mmu_funcs = type { ptr, ptr, ptr, ptr, ptr }
%struct.msm_gem_vma = type { %struct.drm_mm_node, i64, ptr, %struct.list_head, i8, i32 }

@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/msm/msm_gem_vma.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_address_space_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #3, !srcloc !9
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #3, !srcloc !10
  %6 = extractvalue { i32, i32, i32 } %5, 0
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %6, 0
  br i1 %9, label %23, label %10, !prof !11

10:                                               ; preds = %8
  tail call void @refcount_warn_saturate(ptr noundef %4, i32 noundef 3) #3
  br label %23

11:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  %12 = getelementptr %struct.msm_gem_address_space, ptr %0, i32 0, i32 1
  tail call void @drm_mm_takedown(ptr noundef %12) #3
  %13 = getelementptr %struct.msm_gem_address_space, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef nonnull %14) #3
  br label %20

20:                                               ; preds = %16, %11
  %21 = getelementptr %struct.msm_gem_address_space, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  tail call void @put_pid(ptr noundef %22) #3
  tail call void @kfree(ptr noundef nonnull %0) #3
  br label %23

23:                                               ; preds = %20, %10, %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_address_space_get(ptr noundef returned %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %16, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #3, !srcloc !9
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #3, !srcloc !13
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !14

10:                                               ; preds = %5
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %10, %5
  %15 = phi i32 [ 2, %5 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef %6, i32 noundef %15) #3
  br label %16

16:                                               ; preds = %14, %10, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_purge_vma(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_mm_node, ptr %1, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i32
  %6 = shl i32 %5, 12
  %7 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef null) #3
  br label %27

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 4, !range !15
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 1
  %24 = load i64, ptr %23, align 8
  %25 = tail call i32 %22(ptr noundef nonnull %17, i64 noundef %24, i32 noundef %6) #3
  br label %26

26:                                               ; preds = %19, %15
  store i8 0, ptr %12, align 4
  br label %27

27:                                               ; preds = %26, %11, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_unmap_vma(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 1
  %4 = load i64, ptr %3, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7, !prof !14

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 64, i32 noundef 9, ptr noundef null) #3
  br label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = add i32 %9, -1
  store i32 %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %7, %6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_map_vma(ptr noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %4, 12
  %7 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11, !prof !14

10:                                               ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 76, i32 noundef 9, ptr noundef null) #3
  br label %33

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 4
  %16 = load i8, ptr %15, align 4, !range !15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %11
  store i8 1, ptr %15, align 4
  %19 = icmp eq ptr %0, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %22, align 4
  %26 = getelementptr inbounds %struct.msm_mmu_funcs, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = tail call i32 %27(ptr noundef nonnull %22, i64 noundef %8, ptr noundef %3, i32 noundef %6, i32 noundef %2) #3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  store i8 0, ptr %15, align 4
  %31 = load i32, ptr %12, align 8
  %32 = add i32 %31, -1
  store i32 %32, ptr %12, align 8
  br label %33

33:                                               ; preds = %30, %24, %20, %18, %11, %10
  %34 = phi i32 [ -22, %10 ], [ 0, %11 ], [ %28, %30 ], [ 0, %24 ], [ 0, %20 ], [ 0, %18 ]
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_gem_close_vma(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 4
  %8 = load i8, ptr %7, align 4, !range !15
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !11

10:                                               ; preds = %6, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 103, i32 noundef 9, ptr noundef null) #3
  br label %20

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %12) #3
  %13 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 1
  %14 = load i64, ptr %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @drm_mm_remove_node(ptr noundef %1) #3
  br label %17

17:                                               ; preds = %16, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !16
  %18 = load i16, ptr %12, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  store i64 0, ptr %13, align 8
  tail call void @msm_gem_address_space_put(ptr noundef %0)
  br label %20

20:                                               ; preds = %17, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_remove_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_gem_init_vma(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 1
  %7 = load i64, ptr %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %10, label %9, !prof !11

9:                                                ; preds = %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 123, i32 noundef 9, ptr noundef null) #3
  br label %33

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 1
  %13 = sext i32 %2 to i64
  %14 = tail call i32 @drm_mm_insert_node_in_range(ptr noundef %12, ptr noundef %1, i64 noundef %13, i64 noundef 0, i32 noundef 0, i64 noundef %3, i64 noundef %4, i32 noundef 0) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !16
  %15 = load i16, ptr %11, align 4
  %16 = add i16 %15, 1
  store i16 %16, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !19
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.drm_mm_node, ptr %1, i32 0, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = shl i64 %20, 12
  store i64 %21, ptr %6, align 8
  %22 = getelementptr inbounds %struct.msm_gem_vma, ptr %1, i32 0, i32 4
  store i8 0, ptr %22, align 4
  %23 = getelementptr inbounds %struct.msm_gem_address_space, ptr %0, i32 0, i32 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %23) #3, !srcloc !9
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %23, ptr %23, i32 1, ptr elementtype(i32) %23) #3, !srcloc !13
  %25 = extractvalue { i32, i32, i32 } %24, 0
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27, !prof !14

27:                                               ; preds = %18
  %28 = add i32 %25, 1
  %29 = or i32 %28, %25
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %33, label %31, !prof !11

31:                                               ; preds = %27, %18
  %32 = phi i32 [ 2, %18 ], [ 1, %27 ]
  tail call void @refcount_warn_saturate(ptr noundef %23, i32 noundef %32) #3
  br label %33

33:                                               ; preds = %31, %27, %10, %9
  %34 = phi i32 [ -16, %9 ], [ %14, %10 ], [ 0, %27 ], [ 0, %31 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mm_insert_node_in_range(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @msm_gem_address_space_create(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %17, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 176) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.msm_gem_address_space, ptr %8, i32 0, i32 2
  store i32 0, ptr %11, align 8
  store ptr %1, ptr %8, align 8
  %12 = getelementptr inbounds %struct.msm_gem_address_space, ptr %8, i32 0, i32 3
  store ptr %0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.msm_gem_address_space, ptr %8, i32 0, i32 1
  %14 = lshr i64 %2, 12
  %15 = lshr i64 %3, 12
  tail call void @drm_mm_init(ptr noundef %13, i64 noundef %14, i64 noundef %15) #3
  %16 = getelementptr inbounds %struct.msm_gem_address_space, ptr %8, i32 0, i32 4
  store volatile i32 1, ptr %16, align 8
  br label %17

17:                                               ; preds = %10, %6, %4
  %18 = phi ptr [ %8, %10 ], [ %0, %4 ], [ inttoptr (i32 -12 to ptr), %6 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_init(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i64 2148032713}
!9 = !{i64 428874, i64 2147918845, i64 2147918871, i64 2147918918, i64 2147918940, i64 2147918968, i64 2147918988}
!10 = !{i64 2147934872, i64 2147934904, i64 2147934933, i64 2147934967, i64 2147934998, i64 2147935021}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2149570037}
!13 = !{i64 2147932515, i64 2147932547, i64 2147932576, i64 2147932610, i64 2147932641, i64 2147932664}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i8 0, i8 2}
!16 = !{i64 2148897340}
!17 = !{i64 2148893164}
!18 = !{i64 2148893239, i64 2148893266, i64 2148893313, i64 2148893335, i64 2148893363, i64 2148893383}
!19 = !{i64 2148920343}
