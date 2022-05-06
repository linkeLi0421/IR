; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nv40_instmem = type { %struct.nvkm_instmem, %struct.nvkm_mm, ptr }
%struct.nvkm_instmem = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.list_head, %struct.list_head, i32, %struct.mutex, ptr, ptr, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.124, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.124 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nv40_instobj = type { %struct.nvkm_instobj, ptr, ptr }
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }

@nv40_instmem = internal constant %struct.nvkm_instmem_func { ptr @nv40_instmem_dtor, ptr @nv40_instmem_oneinit, ptr null, ptr @nv40_instmem_rd32, ptr @nv40_instmem_wr32, ptr @nv40_instobj_new, i8 0 }, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s: unable to map PRAMIN BAR\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv40_instobj_func = internal constant %struct.nvkm_memory_func { ptr @nv40_instobj_dtor, ptr @nv40_instobj_target, ptr null, ptr null, ptr @nv40_instobj_addr, ptr @nv40_instobj_size, ptr null, ptr @nv40_instobj_acquire, ptr @nv40_instobj_release, ptr null }, align 4
@nv40_instobj_ptrs = internal constant %struct.nvkm_memory_ptrs { ptr @nv40_instobj_rd32, ptr @nv40_instobj_wr32 }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_instmem_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 144) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %4
  tail call void @nvkm_instmem_ctor(ptr noundef nonnull @nv40_instmem, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %6) #7
  store ptr %6, ptr %3, align 4
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.nvkm_device_func, ptr %9, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i32 noundef 2) #7
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 3, i32 2
  %15 = load ptr, ptr %0, align 8
  %16 = getelementptr inbounds %struct.nvkm_device_func, ptr %15, i32 0, i32 6
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 %17(ptr noundef %0, i32 noundef %14) #7
  %19 = load ptr, ptr %0, align 8
  %20 = getelementptr inbounds %struct.nvkm_device_func, ptr %19, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %0, i32 noundef %14) #7
  %23 = tail call ptr @ioremap_wc(i32 noundef %18, i32 noundef %22) #7
  %24 = getelementptr inbounds %struct.nv40_instmem, ptr %6, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %8
  %27 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nvkm_instmem, ptr %6, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str, ptr noundef %35) #8
  br label %36

36:                                               ; preds = %30, %26, %8, %4
  %37 = phi i32 [ -12, %4 ], [ -14, %30 ], [ -14, %26 ], [ 0, %8 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instmem_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv40_instmem_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 10
  tail call void @nvkm_memory_unref(ptr noundef %2) #7
  %3 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 9
  tail call void @nvkm_memory_unref(ptr noundef %3) #7
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 8
  tail call void @nvkm_ramht_del(ptr noundef %4) #7
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 7
  tail call void @nvkm_memory_unref(ptr noundef %5) #7
  %6 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 1
  %7 = tail call i32 @nvkm_mm_fini(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @iounmap(ptr noundef nonnull %9) #7
  br label %12

12:                                               ; preds = %11, %1
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_instmem_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5440
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %8 = lshr i32 %7, 8
  %9 = and i32 %8, 255
  %10 = tail call i32 @__sw_hweight8(i32 noundef %9) #7
  %11 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 64
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = icmp ult i32 %12, 67
  br i1 %15, label %25, label %16

16:                                               ; preds = %14
  %17 = and i32 %12, 240
  %18 = icmp ne i32 %17, 96
  %19 = and i32 %12, 15
  %20 = lshr i32 -2736, %19
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %18, i1 %22, i1 false
  %24 = select i1 %23, i32 19008, i32 18816
  br label %25

25:                                               ; preds = %16, %14, %1
  %26 = phi i32 [ 27296, %1 ], [ 20224, %14 ], [ %24, %16 ]
  %27 = mul i32 %10, %26
  %28 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 5
  %29 = shl i32 %27, 5
  %30 = add i32 %29, 1572863
  %31 = or i32 %30, 4095
  %32 = add i32 %31, 1
  store i32 %32, ptr %28, align 4
  %33 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 1
  %34 = tail call i32 @nvkm_mm_init(ptr noundef %33, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %32, i32 noundef 1) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 7
  %38 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 65536, i32 noundef 0, i1 noundef zeroext false, ptr noundef %37) #7
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 8
  %42 = tail call i32 @nvkm_ramht_new(ptr noundef %3, i32 noundef 32768, i32 noundef 0, ptr noundef null, ptr noundef %41) #7
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 9
  %46 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 32768, i32 noundef 0, i1 noundef zeroext false, ptr noundef %45) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 10
  %50 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 131072, i32 noundef 0, i1 noundef zeroext true, ptr noundef %49) #7
  br label %51

51:                                               ; preds = %48, %44, %40, %36, %25
  %52 = phi i32 [ %34, %25 ], [ %38, %36 ], [ %42, %40 ], [ %46, %44 ], [ %50, %48 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_instmem_rd32(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 %1
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_instmem_wr32(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %2) #7, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_instobj_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 36) #6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  tail call void @nvkm_instobj_ctor(ptr noundef nonnull @nv40_instobj_func, ptr noundef %0, ptr noundef nonnull %7) #7
  %10 = getelementptr inbounds %struct.nvkm_memory, ptr %7, i32 0, i32 1
  store ptr @nv40_instobj_ptrs, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nv40_instobj, ptr %7, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %12) #7
  %13 = getelementptr inbounds %struct.nv40_instmem, ptr %0, i32 0, i32 1
  %14 = icmp eq i32 %2, 0
  %15 = select i1 %14, i32 1, i32 %2
  %16 = getelementptr inbounds %struct.nv40_instobj, ptr %7, i32 0, i32 2
  %17 = tail call i32 @nvkm_mm_head(ptr noundef %13, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %1, i32 noundef %1, i32 noundef %15, ptr noundef %16) #7
  tail call void @mutex_unlock(ptr noundef %12) #7
  br label %18

18:                                               ; preds = %9, %5
  %19 = phi i32 [ %17, %9 ], [ -12, %5 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_ramht_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ramht_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv40_instobj_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #7
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr inbounds %struct.nv40_instmem, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  tail call void @nvkm_mm_free(ptr noundef %6, ptr noundef %7) #7
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.nvkm_instmem, ptr %8, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %9) #7
  %10 = load ptr, ptr %2, align 4
  tail call void @nvkm_instobj_dtor(ptr noundef %10, ptr noundef %0) #7
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @nv40_instobj_target(ptr nocapture noundef readnone %0) #4 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @nv40_instobj_addr(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i64 @nv40_instobj_size(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_mm_node, ptr %3, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nv40_instobj_acquire(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv40_instmem, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_mm_node, ptr %7, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i8, ptr %5, i32 %9
  ret ptr %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_instobj_release(ptr nocapture noundef readnone %0) #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_instobj_dtor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_instobj_rd32(ptr nocapture noundef readonly %0, i64 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nv40_instmem, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_mm_node, ptr %8, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %6, i32 %10
  %12 = trunc i64 %1 to i32
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_instobj_wr32(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv40_instmem, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv40_instobj, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_mm_node, ptr %9, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr i8, ptr %7, i32 %11
  %13 = trunc i64 %1 to i32
  %14 = getelementptr i8, ptr %12, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %2) #7, !srcloc !11
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind allocsize(2) }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{i64 3945491}
!9 = !{i64 2151484944}
!10 = !{i64 2151486166}
!11 = !{i64 3945073}
!12 = !{i64 2154773557}
