; ModuleID = '/llk/IR/mm/swap_slots.c_pt.bc'
source_filename = "../mm/swap_slots.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.swap_slots_cache = type { i8, %struct.mutex, ptr, i32, i32, %struct.spinlock, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type {}
%struct.swp_entry_t = type { i32 }

@swap_slots_cache_enable_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 12), ptr getelementptr (i8, ptr @swap_slots_cache_enable_mutex, i64 12) } }, align 4
@swap_slot_cache_enabled = dso_local local_unnamed_addr global i8 0, align 1
@swap_slot_cache_initialized = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [17 x i8] c"swap_slots_cache\00", align 1
@enable_swap_slots_cache.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"mm/swap_slots.c\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"Cache allocation failed (%s), operating without swap slots cache.\0A\00", align 1
@__func__.enable_swap_slots_cache = private unnamed_addr constant [24 x i8] c"enable_swap_slots_cache\00", align 1
@swp_slots = internal global %struct.swap_slots_cache zeroinitializer, section ".data..percpu", align 4
@swap_slot_cache_active = internal unnamed_addr global i1 false, align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [16 x i32], align 4
@swap_slots_cache_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 12), ptr getelementptr (i8, ptr @swap_slots_cache_mutex, i64 12) } }, align 4
@alloc_swap_slot_cache.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"&cache->alloc_lock\00", align 1
@nr_swap_pages = external dso_local global %struct.atomic_t, align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @disable_swap_slots_cache_lock() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  store i8 0, ptr @swap_slot_cache_enabled, align 1
  %1 = load i1, ptr @swap_slot_cache_initialized, align 1
  br i1 %1, label %2, label %12

2:                                                ; preds = %0
  tail call void @cpus_read_lock() #5
  %3 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #6
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %8, %6 ], [ %3, %2 ]
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %7, i1 noundef zeroext false) #5
  %8 = tail call i32 @cpumask_next(i32 noundef %7, ptr noundef nonnull @__cpu_online_mask) #6
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %6, label %11

11:                                               ; preds = %6, %2
  tail call void @cpus_read_unlock() #5
  br label %12

12:                                               ; preds = %11, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpus_read_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @reenable_swap_slots_cache_unlock() local_unnamed_addr #0 {
  %1 = tail call zeroext i1 @has_usable_swap() #5
  %2 = zext i1 %1 to i8
  store i8 %2, ptr @swap_slot_cache_enabled, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @enable_swap_slots_cache() local_unnamed_addr #0 {
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  %1 = load i1, ptr @swap_slot_cache_initialized, align 1
  br i1 %1, label %11, label %2

2:                                                ; preds = %0
  %3 = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str, i1 noundef zeroext true, ptr noundef nonnull @alloc_swap_slot_cache, ptr noundef nonnull @free_slot_cache, i1 noundef zeroext false) #5
  %4 = icmp slt i32 %3, 0
  %5 = load i1, ptr @enable_swap_slots_cache.__already_done, align 1
  %6 = xor i1 %5, true
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %9, !prof !9

8:                                                ; preds = %2
  store i1 true, ptr @enable_swap_slots_cache.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.enable_swap_slots_cache) #5
  br label %9

9:                                                ; preds = %8, %2
  br i1 %4, label %14, label %10

10:                                               ; preds = %9
  store i1 true, ptr @swap_slot_cache_initialized, align 1
  br label %11

11:                                               ; preds = %10, %0
  %12 = tail call zeroext i1 @has_usable_swap() #5
  %13 = zext i1 %12 to i8
  store i8 %13, ptr @swap_slot_cache_enabled, align 1
  br label %14

14:                                               ; preds = %11, %9
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_enable_mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @alloc_swap_slot_cache(i32 noundef %0) #0 {
  %2 = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %31, label %4

4:                                                ; preds = %1
  %5 = tail call noalias ptr @kvmalloc_node(i32 noundef 256, i32 noundef 3520, i32 noundef -1) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @kvfree(ptr noundef nonnull %2) #5
  br label %31

8:                                                ; preds = %4
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  %9 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, ptrtoint (ptr @swp_slots to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16, %8
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  tail call void @kvfree(ptr noundef nonnull %2) #5
  tail call void @kvfree(ptr noundef nonnull %5) #5
  br label %31

21:                                               ; preds = %16
  %22 = load i8, ptr %12, align 4, !range !10
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %25, ptr noundef nonnull @.str.3, ptr noundef nonnull @alloc_swap_slot_cache.__key) #5
  %26 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 5
  store i32 0, ptr %26, align 4
  store i8 1, ptr %12, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 3
  store i32 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.swap_slots_cache, ptr %12, i32 0, i32 7
  store i32 0, ptr %30, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  store ptr %2, ptr %13, align 4
  store ptr %5, ptr %17, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  br label %31

31:                                               ; preds = %27, %20, %7, %1
  %32 = phi i32 [ 0, %20 ], [ 0, %27 ], [ -12, %7 ], [ -12, %1 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @free_slot_cache(i32 noundef %0) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %0, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @free_swap_slot([1 x i32] %0) local_unnamed_addr #0 {
  %2 = alloca %struct.swp_entry_t, align 4
  %3 = extractvalue [1 x i32] %0, 0
  store i32 %3, ptr %2, align 4
  %4 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %5) #4, !srcloc !12
  %7 = add i32 %6, ptrtoint (ptr @swp_slots to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i1, ptr @swap_slot_cache_active, align 1
  %10 = xor i1 %9, true
  %11 = load i8, ptr @swap_slot_cache_enabled, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %44, label %14, !prof !13

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.swap_slots_cache, ptr %8, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %44, label %18, !prof !9

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.swap_slots_cache, ptr %8, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %19) #5
  %20 = load i1, ptr @swap_slot_cache_active, align 1
  %21 = xor i1 %20, true
  %22 = load i8, ptr @swap_slot_cache_enabled, align 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %21, i1 true, i1 %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %29 = load i16, ptr %19, align 4
  %30 = add i16 %29, 1
  store i16 %30, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br label %44

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.swap_slots_cache, ptr %8, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = icmp sgt i32 %33, 63
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  tail call void @swapcache_free_entries(ptr noundef nonnull %26, i32 noundef %33) #5
  %36 = load ptr, ptr %15, align 4
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ 0, %35 ], [ %33, %31 ]
  %39 = phi ptr [ %36, %35 ], [ %26, %31 ]
  %40 = add nsw i32 %38, 1
  store i32 %40, ptr %32, align 4
  %41 = getelementptr %struct.swp_entry_t, ptr %39, i32 %38
  store i32 %3, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %42 = load i16, ptr %19, align 4
  %43 = add i16 %42, 1
  store i16 %43, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  br label %45

44:                                               ; preds = %28, %14, %1
  call void @swapcache_free_entries(ptr noundef nonnull %2, i32 noundef 1) #5
  br label %45

45:                                               ; preds = %44, %37
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @swapcache_free_entries(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @get_swap_page(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca %struct.swp_entry_t, align 4
  store i32 0, ptr %2, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !0) #5
  %4 = inttoptr i32 %3 to ptr
  %5 = tail call i32 asm "mrc p15, 0, $0, c13, c0, 4", "=r,*Q"(ptr elementtype(i32) %4) #4, !srcloc !12
  %6 = add i32 %5, ptrtoint (ptr @swp_slots to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr @swap_slot_cache_enabled, align 1, !range !10
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %69, label %10, !prof !19

10:                                               ; preds = %1
  %11 = load volatile i32, ptr @nr_swap_pages, align 4
  %12 = load i1, ptr @swap_slot_cache_active, align 1
  %13 = load volatile i32, ptr @__num_online_cpus, align 4
  br i1 %12, label %18, label %14

14:                                               ; preds = %10
  %15 = mul i32 %13, 320
  %16 = icmp ugt i32 %11, %15
  br i1 %16, label %17, label %69

17:                                               ; preds = %14
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  store i1 true, ptr @swap_slot_cache_active, align 1
  br label %30

18:                                               ; preds = %10
  %19 = shl i32 %13, 7
  %20 = icmp ult i32 %11, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  store i1 false, ptr @swap_slot_cache_active, align 1
  %22 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #6
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %25, %21
  %26 = phi i32 [ %27, %25 ], [ %22, %21 ]
  tail call fastcc void @drain_slots_cache_cpu(i32 noundef %26, i1 noundef zeroext false) #5
  %27 = tail call i32 @cpumask_next(i32 noundef %26, ptr noundef nonnull @__cpu_online_mask) #6
  %28 = load i32, ptr @nr_cpu_ids, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %25, label %30

30:                                               ; preds = %25, %21, %17
  tail call void @mutex_unlock(ptr noundef nonnull @swap_slots_cache_mutex) #5
  %31 = load i1, ptr @swap_slot_cache_active, align 1
  br i1 %31, label %32, label %69, !prof !20

32:                                               ; preds = %30, %18
  %33 = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %69, label %36, !prof !9

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %37) #5
  %38 = load ptr, ptr %33, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %58, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 3
  %42 = getelementptr inbounds %struct.swap_slots_cache, ptr %7, i32 0, i32 4
  %43 = load i32, ptr %41, align 4
  br label %44

44:                                               ; preds = %54, %40
  %45 = phi i32 [ %43, %40 ], [ %56, %54 ]
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load i1, ptr @swap_slot_cache_active, align 1
  %49 = xor i1 %48, true
  %50 = load i8, ptr @swap_slot_cache_enabled, align 1
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  store i32 0, ptr %42, align 4
  br i1 %48, label %54, label %58

54:                                               ; preds = %53
  %55 = load ptr, ptr %33, align 4
  %56 = tail call i32 @get_swap_pages(i32 noundef 64, ptr noundef %55, i32 noundef 1) #5
  store i32 %56, ptr %41, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %44

58:                                               ; preds = %54, %53, %47, %36
  tail call void @mutex_unlock(ptr noundef %37) #5
  br label %69

59:                                               ; preds = %44
  %60 = load ptr, ptr %33, align 4
  %61 = load i32, ptr %42, align 4
  %62 = getelementptr %struct.swp_entry_t, ptr %60, i32 %61
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %2, align 4
  %64 = add i32 %61, 1
  store i32 %64, ptr %42, align 4
  store i32 0, ptr %62, align 4
  %65 = load i32, ptr %41, align 4
  %66 = add i32 %65, -1
  store i32 %66, ptr %41, align 4
  %67 = load i32, ptr %2, align 4
  tail call void @mutex_unlock(ptr noundef %37) #5
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59, %58, %32, %30, %14, %1
  %70 = call i32 @get_swap_pages(i32 noundef 1, ptr noundef nonnull %2, i32 noundef 1) #5
  %71 = load i32, ptr %2, align 4
  br label %72

72:                                               ; preds = %69, %59
  %73 = phi i32 [ %67, %59 ], [ %71, %69 ]
  ret i32 %73
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_swap_pages(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @has_usable_swap() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drain_slots_cache_cpu(i32 noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr [16 x i32], ptr @__per_cpu_offset, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, ptrtoint (ptr @swp_slots to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.swp_entry_t, ptr %12, i32 %14
  %16 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void @swapcache_free_entries(ptr noundef %15, i32 noundef %17) #5
  store i32 0, ptr %13, align 4
  store i32 0, ptr %16, align 4
  br i1 %1, label %18, label %22

18:                                               ; preds = %10
  %19 = load ptr, ptr %7, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @kvfree(ptr noundef nonnull %19) #5
  store ptr null, ptr %7, align 4
  br label %22

22:                                               ; preds = %21, %18, %10
  tail call void @mutex_unlock(ptr noundef %11) #5
  br label %23

23:                                               ; preds = %22, %2
  %24 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_lock_irq(ptr noundef %28) #5
  %29 = load ptr, ptr %24, align 4
  %30 = getelementptr inbounds %struct.swap_slots_cache, ptr %6, i32 0, i32 7
  %31 = load i32, ptr %30, align 4
  tail call void @swapcache_free_entries(ptr noundef %29, i32 noundef %31) #5
  store i32 0, ptr %30, align 4
  br i1 %1, label %32, label %36

32:                                               ; preds = %27
  %33 = load ptr, ptr %24, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store ptr null, ptr %24, align 4
  br label %36

36:                                               ; preds = %35, %32, %27
  %37 = phi ptr [ %33, %35 ], [ null, %32 ], [ null, %27 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !14
  %38 = load i16, ptr %28, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %28, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !16
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #5, !srcloc !17
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !18
  tail call void @kvfree(ptr noundef %37) #5
  br label %40

40:                                               ; preds = %36, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i8 0, i8 2}
!11 = !{i64 2153349989}
!12 = !{i64 609361}
!13 = !{!"branch_weights", i32 4001, i32 4000000}
!14 = !{i64 2148853587}
!15 = !{i64 2148849411}
!16 = !{i64 2148849486, i64 2148849513, i64 2148849560, i64 2148849582, i64 2148849610, i64 2148849630}
!17 = !{i64 590906}
!18 = !{i64 2148877731}
!19 = !{!"branch_weights", i32 1073205, i32 2146410443}
!20 = !{!"branch_weights", i32 2000, i32 1}
