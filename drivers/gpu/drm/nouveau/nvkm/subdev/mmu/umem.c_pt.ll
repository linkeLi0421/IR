; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/umem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nvkm_umem = type { %struct.nvkm_object, ptr, i16, ptr, %struct.list_head, %union.anon.132 }
%union.anon.132 = type { ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_ummu = type { %struct.nvkm_object, ptr }
%struct.nvif_mem_v0 = type { i8, i8, i8, [5 x i8], i64, i64, [0 x i8] }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.123], i32, [16 x %struct.anon.124], ptr, %struct.anon.125, %struct.anon.125, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.123 = type { i8, i64 }
%struct.anon.124 = type { i8, i8 }
%struct.anon.125 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.1, %struct.anon.2, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.1 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.2 = type { %struct.nvkm_sclass, ptr, i8, i32 }

@nvkm_umem = internal constant %struct.nvkm_object_func { ptr @nvkm_umem_dtor, ptr null, ptr null, ptr null, ptr null, ptr @nvkm_umem_map, ptr @nvkm_umem_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvkm_umem_search(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @nvkm_object_search(ptr noundef %0, i64 noundef %1, ptr noundef nonnull @nvkm_umem) #4
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, %0
  br i1 %8, label %35, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %10) #4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %4, i32 0, i32 8
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %11, %9 ], [ %14, %16 ]
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %11
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %14, i32 -36
  %18 = load i64, ptr %17, align 8
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %20, label %12

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %14, i32 -4
  %22 = load ptr, ptr %21, align 8
  %23 = tail call ptr @nvkm_memory_ref(ptr noundef %22) #4
  br label %24

24:                                               ; preds = %20, %12
  %25 = phi ptr [ %23, %20 ], [ null, %12 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %26 = load i16, ptr %10, align 4
  %27 = add i16 %26, 1
  store i16 %27, ptr %10, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  br label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.nvkm_umem, ptr %5, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = tail call ptr @nvkm_memory_ref(ptr noundef %30) #4
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi ptr [ %25, %24 ], [ %31, %28 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %7
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi ptr [ inttoptr (i32 -2 to ptr), %35 ], [ %33, %32 ]
  ret ptr %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_object_search(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_memory_ref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_umem_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_ummu, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ugt i32 %2, 23
  br i1 %9, label %10, label %80

10:                                               ; preds = %4
  %11 = load i8, ptr %1, align 8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %80

13:                                               ; preds = %10
  %14 = getelementptr i8, ptr %1, i32 24
  %15 = add i32 %2, -24
  %16 = getelementptr inbounds %struct.nvif_mem_v0, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.nvif_mem_v0, ptr %1, i32 0, i32 2
  %20 = load i8, ptr %19, align 2
  %21 = getelementptr inbounds %struct.nvif_mem_v0, ptr %1, i32 0, i32 4
  %22 = load i64, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_mmu, ptr %8, i32 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = icmp sgt i32 %24, %18
  br i1 %25, label %26, label %80

26:                                               ; preds = %13
  %27 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %28 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 96) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %80, label %30

30:                                               ; preds = %26
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_umem, ptr noundef %0, ptr noundef nonnull %28) #4
  %31 = getelementptr inbounds %struct.nvkm_umem, ptr %28, i32 0, i32 1
  store ptr %8, ptr %31, align 8
  %32 = getelementptr %struct.nvkm_mmu, ptr %8, i32 0, i32 6, i32 %18
  %33 = load i8, ptr %32, align 2
  %34 = getelementptr inbounds %struct.nvkm_umem, ptr %28, i32 0, i32 2
  %35 = zext i8 %33 to i16
  %36 = load i16, ptr %34, align 4
  %37 = and i16 %36, -256
  %38 = or i16 %37, %35
  store i16 %38, ptr %34, align 4
  %39 = getelementptr inbounds %struct.nvkm_umem, ptr %28, i32 0, i32 4
  store volatile ptr %39, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nvkm_umem, ptr %28, i32 0, i32 4, i32 1
  store ptr %39, ptr %40, align 8
  store ptr %28, ptr %3, align 4
  %41 = load i8, ptr %32, align 2
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = tail call i8 @llvm.umax.i8(i8 %20, i8 12)
  %46 = or i16 %38, 256
  store i16 %46, ptr %34, align 4
  br label %47

47:                                               ; preds = %44, %30
  %48 = phi i8 [ %45, %44 ], [ %20, %30 ]
  %49 = getelementptr inbounds %struct.nvkm_umem, ptr %28, i32 0, i32 3
  %50 = tail call i32 @nvkm_mem_new_type(ptr noundef %8, i32 noundef %18, i8 noundef zeroext %48, i64 noundef %22, ptr noundef %14, i32 noundef %15, ptr noundef %49) #4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %80

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.nvkm_object, ptr %28, i32 0, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_client, ptr %54, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %55) #4
  %56 = load ptr, ptr %53, align 4
  %57 = getelementptr inbounds %struct.nvkm_client, ptr %56, i32 0, i32 8
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %39, ptr %59, align 4
  store ptr %58, ptr %39, align 4
  store ptr %57, ptr %40, align 8
  store volatile ptr %39, ptr %57, align 4
  %60 = load ptr, ptr %53, align 4
  %61 = getelementptr inbounds %struct.nvkm_client, ptr %60, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %62 = load i16, ptr %61, align 4
  %63 = add i16 %62, 1
  store i16 %63, ptr %61, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %64 = load ptr, ptr %49, align 8
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_memory_func, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = tail call zeroext i8 %67(ptr noundef %64) #4
  store i8 %68, ptr %19, align 2
  %69 = load ptr, ptr %49, align 8
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_memory_func, ptr %70, i32 0, i32 4
  %72 = load ptr, ptr %71, align 4
  %73 = tail call i64 %72(ptr noundef %69) #4
  %74 = getelementptr inbounds %struct.nvif_mem_v0, ptr %1, i32 0, i32 5
  store i64 %73, ptr %74, align 8
  %75 = load ptr, ptr %49, align 8
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_memory_func, ptr %76, i32 0, i32 5
  %78 = load ptr, ptr %77, align 4
  %79 = tail call i64 %78(ptr noundef %75) #4
  store i64 %79, ptr %21, align 8
  br label %80

80:                                               ; preds = %52, %47, %26, %13, %10, %4
  %81 = phi i32 [ 0, %52 ], [ -22, %13 ], [ -12, %26 ], [ %50, %47 ], [ -38, %10 ], [ -38, %4 ]
  ret i32 %81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mem_new_type(ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_umem_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 4
  %6 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 4, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %7, ptr %9, align 4
  store volatile ptr %8, ptr %7, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %6, align 4
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %10, i32 0, i32 9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !8
  %12 = load i16, ptr %11, align 4
  %13 = add i16 %12, 1
  store i16 %13, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !11
  %14 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %14) #4
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_umem_map(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 2
  %10 = load i16, ptr %9, align 4
  %11 = and i16 %10, 256
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %52, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = and i16 %10, 255
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  %22 = icmp ne i32 %2, 0
  %23 = or i1 %22, %21
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call i32 @nvkm_mem_map_host(ptr noundef %26, ptr noundef %14) #4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load ptr, ptr %14, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = zext i32 %31 to i64
  store i64 %32, ptr %4, align 8
  %33 = load ptr, ptr %25, align 8
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_func, ptr %34, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i64 %36(ptr noundef %33) #4
  store i64 %37, ptr %5, align 8
  store i32 1, ptr %3, align 4
  br label %52

38:                                               ; preds = %17
  %39 = and i32 %19, 17
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %8, align 8
  %43 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %42, i32 0, i32 3, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = tail call i32 %44(ptr noundef %8, ptr noundef %46, ptr noundef %1, i32 noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %14) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  store i32 0, ptr %3, align 4
  %50 = load i16, ptr %9, align 4
  %51 = or i16 %50, 512
  store i16 %51, ptr %9, align 4
  br label %52

52:                                               ; preds = %49, %41, %38, %29, %24, %13, %6
  %53 = phi i32 [ 0, %49 ], [ -22, %6 ], [ -17, %13 ], [ 0, %29 ], [ %27, %24 ], [ -22, %38 ], [ %47, %41 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_umem_unmap(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 2
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 512
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.nvkm_umem, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvkm_mmu, ptr %14, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @nvkm_bar_bar1_vmm(ptr noundef %16) #4
  tail call void @nvkm_vmm_put(ptr noundef %17, ptr noundef %2) #4
  br label %20

18:                                               ; preds = %10
  store ptr null, ptr %2, align 4
  br label %20

19:                                               ; preds = %5
  tail call void @vunmap(ptr noundef nonnull %3) #4
  store ptr null, ptr %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %12, %1
  %21 = phi i32 [ -17, %1 ], [ 0, %12 ], [ 0, %18 ], [ 0, %19 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mem_map_host(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_bar_bar1_vmm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{i64 2148932828}
!9 = !{i64 2148928652}
!10 = !{i64 2148928727, i64 2148928754, i64 2148928801, i64 2148928823, i64 2148928851, i64 2148928871}
!11 = !{i64 2148955831}
