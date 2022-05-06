; ModuleID = '/llk/IR/drivers/gpu/drm/ttm/ttm_execbuf_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/ttm/ttm_execbuf_util.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_backoff_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_backoff_reservation\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_backoff_reservation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_reserve_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_reserve_buffers\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_reserve_buffers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ttm_eu_fence_buffer_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22ttm_eu_fence_buffer_objects\22\09\09\09\09\09"
module asm "__kstrtabns_ttm_eu_fence_buffer_objects:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.ttm_validate_buffer = type { %struct.list_head, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.69] }
%struct.anon.69 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }

@__kstrtab_ttm_eu_backoff_reservation = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_backoff_reservation = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_backoff_reservation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_backoff_reservation to i32), ptr @__kstrtab_ttm_eu_backoff_reservation, ptr @__kstrtabns_ttm_eu_backoff_reservation }, section "___ksymtab+ttm_eu_backoff_reservation", align 4
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@__kstrtab_ttm_eu_reserve_buffers = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_reserve_buffers = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_reserve_buffers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_reserve_buffers to i32), ptr @__kstrtab_ttm_eu_reserve_buffers, ptr @__kstrtabns_ttm_eu_reserve_buffers }, section "___ksymtab+ttm_eu_reserve_buffers", align 4
@__kstrtab_ttm_eu_fence_buffer_objects = external dso_local constant [0 x i8], align 1
@__kstrtabns_ttm_eu_fence_buffer_objects = external dso_local constant [0 x i8], align 1
@__ksymtab_ttm_eu_fence_buffer_objects = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ttm_eu_fence_buffer_objects to i32), ptr @__kstrtab_ttm_eu_fence_buffer_objects, ptr @__kstrtabns_ttm_eu_fence_buffer_objects }, section "___ksymtab+ttm_eu_fence_buffer_objects", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_ttm_eu_backoff_reservation, ptr @__ksymtab_ttm_eu_fence_buffer_objects, ptr @__ksymtab_ttm_eu_reserve_buffers], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_eu_backoff_reservation(ptr noundef readnone %0, ptr noundef %1) #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %22, label %5

5:                                                ; preds = %5, %2
  %6 = phi ptr [ %20, %5 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.ttm_device, ptr %10, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %11) #3
  %12 = getelementptr inbounds %struct.ttm_buffer_object, ptr %8, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %8, ptr noundef %13, ptr noundef null) #3
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.ttm_device, ptr %14, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %16 = load i16, ptr %15, align 4
  %17 = add i16 %16, 1
  store i16 %17, ptr %15, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %18 = getelementptr inbounds %struct.drm_gem_object, ptr %8, i32 0, i32 9
  %19 = load ptr, ptr %18, align 8
  tail call void @ww_mutex_unlock(ptr noundef %19) #3
  %20 = load ptr, ptr %6, align 4
  %21 = icmp eq ptr %20, %1
  br i1 %21, label %22, label %5

22:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ttm_eu_reserve_buffers(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = load volatile ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %112, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %0, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @llvm.thread.pointer() #3
  store ptr %10, ptr %0, align 4
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull @reservation_ww_class) #3, !srcloc !12
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #3, !srcloc !13
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 1
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 2
  store i32 0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 3
  store i16 0, ptr %15, align 4
  %16 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %17 = trunc i32 %16 to i16
  %18 = getelementptr inbounds %struct.ww_acquire_ctx, ptr %0, i32 0, i32 4
  store i16 %17, ptr %18, align 2
  %19 = load ptr, ptr %1, align 4
  br label %20

20:                                               ; preds = %9, %7
  %21 = phi ptr [ %19, %9 ], [ %5, %7 ]
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %112, label %23

23:                                               ; preds = %20
  %24 = icmp ne ptr %3, null
  br label %25

25:                                               ; preds = %108, %23
  %26 = phi ptr [ %21, %23 ], [ %110, %108 ]
  %27 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_gem_object, ptr %28, i32 0, i32 9
  %30 = load ptr, ptr %29, align 8
  br i1 %8, label %31, label %34

31:                                               ; preds = %25
  %32 = tail call i32 @ww_mutex_trylock(ptr noundef %30, ptr noundef null) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %63, label %54

34:                                               ; preds = %25
  br i1 %2, label %35, label %37

35:                                               ; preds = %34
  %36 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %30, ptr noundef nonnull %0) #3
  br label %39

37:                                               ; preds = %34
  %38 = tail call i32 @ww_mutex_lock(ptr noundef %30, ptr noundef nonnull %0) #3
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  %41 = icmp eq i32 %40, -4
  %42 = select i1 %41, i32 -512, i32 %40
  %43 = icmp eq i32 %42, -114
  %44 = and i1 %24, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %26, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %47, ptr %49, align 4
  store volatile ptr %48, ptr %47, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %46, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %26, ptr %51, align 4
  store ptr %50, ptr %26, align 4
  store ptr %3, ptr %46, align 4
  br label %105

52:                                               ; preds = %39
  %53 = icmp eq i32 %42, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %52, %31
  %55 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %26, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %108, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.drm_gem_object, ptr %28, i32 0, i32 9
  %60 = load ptr, ptr %59, align 8
  %61 = tail call i32 @dma_resv_reserve_shared(ptr noundef %60, i32 noundef %56) #3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %108, label %63

63:                                               ; preds = %58, %52, %31
  %64 = phi i32 [ %42, %52 ], [ %61, %58 ], [ -16, %31 ]
  %65 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %1
  br i1 %67, label %77, label %68

68:                                               ; preds = %68, %63
  %69 = phi ptr [ %75, %68 ], [ %66, %63 ]
  %70 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %69, i32 0, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.drm_gem_object, ptr %71, i32 0, i32 9
  %73 = load ptr, ptr %72, align 8
  tail call void @ww_mutex_unlock(ptr noundef %73) #3
  %74 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, %1
  br i1 %76, label %77, label %68

77:                                               ; preds = %68, %63
  %78 = icmp eq i32 %64, -35
  br i1 %78, label %79, label %87

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.drm_gem_object, ptr %28, i32 0, i32 9
  %81 = load ptr, ptr %80, align 8
  br i1 %2, label %82, label %85

82:                                               ; preds = %79
  %83 = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %81, ptr noundef %0) #3
  %84 = icmp eq i32 %83, -4
  br i1 %84, label %112, label %87

85:                                               ; preds = %79
  %86 = tail call i32 @ww_mutex_lock(ptr noundef %81, ptr noundef %0) #3
  br label %90

87:                                               ; preds = %82, %77
  %88 = phi i32 [ %64, %77 ], [ %83, %82 ]
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %87, %85
  %91 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %26, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.drm_gem_object, ptr %28, i32 0, i32 9
  %96 = load ptr, ptr %95, align 8
  %97 = tail call i32 @dma_resv_reserve_shared(ptr noundef %96, i32 noundef %92) #3
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %112, !prof !14

99:                                               ; preds = %94, %90
  %100 = load ptr, ptr %65, align 4
  %101 = load ptr, ptr %26, align 4
  %102 = getelementptr inbounds %struct.list_head, ptr %101, i32 0, i32 1
  store ptr %100, ptr %102, align 4
  store volatile ptr %101, ptr %100, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %65, align 4
  %103 = load ptr, ptr %1, align 4
  %104 = getelementptr inbounds %struct.list_head, ptr %103, i32 0, i32 1
  store ptr %26, ptr %104, align 4
  store ptr %103, ptr %26, align 4
  store ptr %1, ptr %65, align 4
  br label %105

105:                                              ; preds = %99, %45
  %106 = phi ptr [ %3, %45 ], [ %1, %99 ]
  %107 = phi ptr [ %47, %45 ], [ %26, %99 ]
  store volatile ptr %26, ptr %106, align 4
  br label %108

108:                                              ; preds = %105, %58, %54
  %109 = phi ptr [ %26, %58 ], [ %26, %54 ], [ %107, %105 ]
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, %1
  br i1 %111, label %112, label %25

112:                                              ; preds = %108, %94, %87, %82, %20, %4
  %113 = phi i32 [ 0, %4 ], [ 0, %20 ], [ 0, %108 ], [ -512, %82 ], [ %88, %87 ], [ %97, %94 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_reserve_shared(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ttm_eu_fence_buffer_objects(ptr noundef readnone %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load volatile ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %31, label %6

6:                                                ; preds = %17, %3
  %7 = phi ptr [ %29, %17 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.ttm_validate_buffer, ptr %7, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 9
  %14 = load ptr, ptr %13, align 8
  br i1 %12, label %16, label %15

15:                                               ; preds = %6
  tail call void @dma_resv_add_shared_fence(ptr noundef %14, ptr noundef %2) #3
  br label %17

16:                                               ; preds = %6
  tail call void @dma_resv_add_excl_fence(ptr noundef %14, ptr noundef %2) #3
  br label %17

17:                                               ; preds = %16, %15
  %18 = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.ttm_device, ptr %19, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %20) #3
  %21 = getelementptr inbounds %struct.ttm_buffer_object, ptr %9, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %9, ptr noundef %22, ptr noundef null) #3
  %23 = load ptr, ptr %18, align 8
  %24 = getelementptr inbounds %struct.ttm_device, ptr %23, i32 0, i32 6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !8
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %24, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #3, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #3, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #3, !srcloc !11
  %27 = getelementptr inbounds %struct.drm_gem_object, ptr %9, i32 0, i32 9
  %28 = load ptr, ptr %27, align 8
  tail call void @ww_mutex_unlock(ptr noundef %28) #3
  %29 = load ptr, ptr %7, align 4
  %30 = icmp eq ptr %29, %1
  br i1 %30, label %31, label %6

31:                                               ; preds = %17, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_shared_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_add_excl_fence(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_trylock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone willreturn }
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
!8 = !{i64 2148862199}
!9 = !{i64 2148858023}
!10 = !{i64 2148858098, i64 2148858125, i64 2148858172, i64 2148858194, i64 2148858222, i64 2148858242}
!11 = !{i64 2148885202}
!12 = !{i64 693595, i64 2148183566, i64 2148183592, i64 2148183639, i64 2148183661, i64 2148183689, i64 2148183709}
!13 = !{i64 2148195665, i64 2148195697, i64 2148195726, i64 2148195760, i64 2148195791, i64 2148195814}
!14 = !{!"branch_weights", i32 2000, i32 1}
