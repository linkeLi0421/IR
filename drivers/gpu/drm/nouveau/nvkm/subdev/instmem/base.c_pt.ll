; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/instmem/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.nvkm_instobj = type { %struct.nvkm_memory, %struct.list_head, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_instmem_func = type { ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }

@.str = private unnamed_addr constant [23 x i8] c"%s: OOM: %08x %08x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: new %08x %08x %d: %010llx %010llx\0A\00", align 1
@nvkm_instmem = internal constant %struct.nvkm_subdev_func { ptr @nvkm_instmem_dtor, ptr null, ptr @nvkm_instmem_oneinit, ptr null, ptr @nvkm_instmem_init, ptr @nvkm_instmem_fini, ptr null }, align 4
@nvkm_instmem_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"&imem->mutex\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_instobj_dtor(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.nvkm_instobj, ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.nvkm_instobj, ptr %1, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %6, ptr %8, align 4
  store volatile ptr %7, ptr %6, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %9 = load i16, ptr %3, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_instobj_ctor(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @nvkm_memory_ctor(ptr noundef %0, ptr noundef %2) #5
  %4 = getelementptr inbounds %struct.nvkm_instobj, ptr %2, i32 0, i32 2
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %5) #5
  %6 = getelementptr inbounds %struct.nvkm_instobj, ptr %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 3
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %1, i32 0, i32 3, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %6, ptr %8, align 4
  store ptr %7, ptr %6, align 4
  %10 = getelementptr inbounds %struct.nvkm_instobj, ptr %2, i32 0, i32 1, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %6, ptr %9, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %11 = load i16, ptr %5, align 4
  %12 = add i16 %11, 1
  store i16 %12, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_ctor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_instobj_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 %9(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef nonnull %6) #5
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 5
  %13 = load i32, ptr %12, align 4
  br i1 %11, label %22, label %14

14:                                               ; preds = %5
  %15 = icmp eq i32 %13, 0
  br i1 %15, label %72, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str, ptr noundef %21, i32 noundef %1, i32 noundef %2, i32 noundef %10) #6
  br label %72

22:                                               ; preds = %5
  %23 = icmp ugt i32 %13, 4
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 1, i32 4
  %30 = zext i1 %3 to i32
  %31 = load ptr, ptr %6, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_memory_func, ptr %32, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = call i64 %34(ptr noundef %31) #5
  %36 = load ptr, ptr %6, align 4
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nvkm_memory_func, ptr %37, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = call i64 %39(ptr noundef %36) #5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.1, ptr noundef %29, i32 noundef %1, i32 noundef %2, i32 noundef %30, i64 noundef %35, i64 noundef %40) #6
  br label %41

41:                                               ; preds = %24, %22
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 4, !range !12
  %45 = icmp eq i8 %44, 0
  %46 = and i1 %45, %3
  br i1 %46, label %47, label %73

47:                                               ; preds = %41
  %48 = load ptr, ptr %6, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory_func, ptr %49, i32 0, i32 7
  %51 = load ptr, ptr %50, align 4
  %52 = call ptr %51(ptr noundef %48) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %66, !prof !13

54:                                               ; preds = %47
  %55 = icmp eq i32 %1, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ %64, %56 ], [ 0, %54 ]
  %58 = load ptr, ptr %6, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = zext i32 %57 to i64
  call void %62(ptr noundef %58, i64 noundef %63, i32 noundef 0) #5
  %64 = add i32 %57, 4
  %65 = icmp ult i32 %64, %1
  br i1 %65, label %56, label %67

66:                                               ; preds = %47
  call void @mmioset(ptr noundef nonnull %52, i32 noundef 0, i32 noundef %1) #5
  br label %67

67:                                               ; preds = %66, %56, %54
  %68 = load ptr, ptr %6, align 4
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_memory_func, ptr %69, i32 0, i32 8
  %71 = load ptr, ptr %70, align 4
  call void %71(ptr noundef %68) #5
  br label %73

72:                                               ; preds = %16, %14
  call void @nvkm_memory_unref(ptr noundef nonnull %6) #5
  br label %73

73:                                               ; preds = %72, %67, %41
  %74 = load ptr, ptr %6, align 4
  store ptr %74, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  ret i32 %10
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_instmem_rd32(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef %1) #5
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_wr32(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, i32 noundef %1, i32 noundef %2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_boot(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %2) #5
  %3 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %0, i32 0, i32 4, i32 1
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi ptr [ %4, %6 ], [ %11, %9 ]
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %11, ptr %13, align 4
  %15 = load ptr, ptr %8, align 4
  store ptr %10, ptr %8, align 4
  store ptr %7, ptr %10, align 4
  store ptr %15, ptr %12, align 4
  store volatile ptr %10, ptr %15, align 4
  %16 = icmp eq ptr %11, %3
  br i1 %16, label %17, label %9

17:                                               ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %18 = load i16, ptr %2, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %2, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nvkm_instmem_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_instmem, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %6) #5
  store ptr %0, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 3
  store volatile ptr %8, ptr %8, align 4
  %9 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 3, i32 1
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 4
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 4, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nvkm_instmem, ptr %4, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %12, ptr noundef nonnull @.str.2, ptr noundef nonnull @nvkm_instmem_ctor.__key) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_instmem_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call ptr %4(ptr noundef %2) #5
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 %5(ptr noundef %2) #5
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_init(ptr noundef readonly %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 64
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %49, label %5

5:                                                ; preds = %46, %1
  %6 = phi ptr [ %47, %46 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -16
  %8 = getelementptr i8, ptr %6, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %46, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr inbounds %struct.nvkm_memory_func, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i64 %14(ptr noundef %7) #5
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr inbounds %struct.nvkm_memory_func, ptr %16, i32 0, i32 7
  %18 = load ptr, ptr %17, align 4
  %19 = tail call ptr %18(ptr noundef %7) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp eq i64 %15, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %21
  %24 = getelementptr i8, ptr %6, i32 -12
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %36, %25 ]
  %27 = trunc i64 %26 to i32
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = sdiv i32 %27, 4
  %33 = getelementptr i32, ptr %31, i32 %32
  %34 = load i32, ptr %33, align 4
  tail call void %30(ptr noundef %7, i64 noundef %26, i32 noundef %34) #5
  %35 = add i32 %27, 4
  %36 = sext i32 %35 to i64
  %37 = icmp ugt i64 %15, %36
  br i1 %37, label %25, label %41

38:                                               ; preds = %11
  %39 = load ptr, ptr %8, align 4
  %40 = trunc i64 %15 to i32
  tail call void @mmiocpy(ptr noundef nonnull %19, ptr noundef %39, i32 noundef %40) #5
  br label %41

41:                                               ; preds = %38, %25, %21
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_func, ptr %42, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef %7) #5
  %45 = load ptr, ptr %8, align 4
  tail call void @kvfree(ptr noundef %45) #5
  store ptr null, ptr %8, align 4
  br label %46

46:                                               ; preds = %41, %5
  %47 = load ptr, ptr %6, align 4
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %49, label %5

49:                                               ; preds = %46, %1
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @nvkm_bar_bar2_init(ptr noundef %51) #5
  %52 = getelementptr i8, ptr %0, i32 56
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %99, label %55

55:                                               ; preds = %96, %49
  %56 = phi ptr [ %97, %96 ], [ %53, %49 ]
  %57 = getelementptr i8, ptr %56, i32 -16
  %58 = getelementptr i8, ptr %56, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %96, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr inbounds %struct.nvkm_memory_func, ptr %62, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = tail call i64 %64(ptr noundef %57) #5
  %66 = load ptr, ptr %57, align 4
  %67 = getelementptr inbounds %struct.nvkm_memory_func, ptr %66, i32 0, i32 7
  %68 = load ptr, ptr %67, align 4
  %69 = tail call ptr %68(ptr noundef %57) #5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %88

71:                                               ; preds = %61
  %72 = icmp eq i64 %65, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %71
  %74 = getelementptr i8, ptr %56, i32 -12
  br label %75

75:                                               ; preds = %75, %73
  %76 = phi i64 [ 0, %73 ], [ %86, %75 ]
  %77 = trunc i64 %76 to i32
  %78 = load ptr, ptr %74, align 4
  %79 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %58, align 4
  %82 = sdiv i32 %77, 4
  %83 = getelementptr i32, ptr %81, i32 %82
  %84 = load i32, ptr %83, align 4
  tail call void %80(ptr noundef %57, i64 noundef %76, i32 noundef %84) #5
  %85 = add i32 %77, 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %65, %86
  br i1 %87, label %75, label %91

88:                                               ; preds = %61
  %89 = load ptr, ptr %58, align 4
  %90 = trunc i64 %65 to i32
  tail call void @mmiocpy(ptr noundef nonnull %69, ptr noundef %89, i32 noundef %90) #5
  br label %91

91:                                               ; preds = %88, %75, %71
  %92 = load ptr, ptr %57, align 4
  %93 = getelementptr inbounds %struct.nvkm_memory_func, ptr %92, i32 0, i32 8
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %57) #5
  %95 = load ptr, ptr %58, align 4
  tail call void @kvfree(ptr noundef %95) #5
  store ptr null, ptr %58, align 4
  br label %96

96:                                               ; preds = %91, %55
  %97 = load ptr, ptr %56, align 4
  %98 = icmp eq ptr %97, %52
  br i1 %98, label %99, label %55

99:                                               ; preds = %96, %49
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_instmem_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  br i1 %1, label %4, label %96

4:                                                ; preds = %2
  %5 = getelementptr i8, ptr %0, i32 56
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %49, label %8

8:                                                ; preds = %43, %4
  %9 = phi ptr [ %47, %43 ], [ %6, %4 ]
  %10 = getelementptr i8, ptr %9, i32 -16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_memory_func, ptr %11, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i64 %13(ptr noundef %10) #5
  %15 = trunc i64 %14 to i32
  %16 = tail call noalias ptr @kvmalloc_node(i32 noundef %15, i32 noundef 3264, i32 noundef -1) #7
  %17 = getelementptr i8, ptr %9, i32 8
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %102, label %19

19:                                               ; preds = %8
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.nvkm_memory_func, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call ptr %22(ptr noundef %10) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %19
  %26 = icmp eq i64 %14, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %9, i32 -12
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %39, %29 ]
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %28, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 %33(ptr noundef %10, i64 noundef %30) #5
  %35 = load ptr, ptr %17, align 4
  %36 = sdiv i32 %31, 4
  %37 = getelementptr i32, ptr %35, i32 %36
  store i32 %34, ptr %37, align 4
  %38 = add i32 %31, 4
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %14, %39
  br i1 %40, label %29, label %43

41:                                               ; preds = %19
  %42 = load ptr, ptr %17, align 4
  tail call void @mmiocpy(ptr noundef %42, ptr noundef nonnull %23, i32 noundef %15) #5
  br label %43

43:                                               ; preds = %41, %29, %25
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr inbounds %struct.nvkm_memory_func, ptr %44, i32 0, i32 8
  %46 = load ptr, ptr %45, align 4
  tail call void %46(ptr noundef %10) #5
  %47 = load ptr, ptr %9, align 4
  %48 = icmp eq ptr %47, %5
  br i1 %48, label %49, label %8

49:                                               ; preds = %43, %4
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  tail call void @nvkm_bar_bar2_fini(ptr noundef %51) #5
  %52 = getelementptr i8, ptr %0, i32 64
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %96, label %55

55:                                               ; preds = %90, %49
  %56 = phi ptr [ %94, %90 ], [ %53, %49 ]
  %57 = getelementptr i8, ptr %56, i32 -16
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nvkm_memory_func, ptr %58, i32 0, i32 5
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i64 %60(ptr noundef %57) #5
  %62 = trunc i64 %61 to i32
  %63 = tail call noalias ptr @kvmalloc_node(i32 noundef %62, i32 noundef 3264, i32 noundef -1) #7
  %64 = getelementptr i8, ptr %56, i32 8
  store ptr %63, ptr %64, align 4
  %65 = icmp eq ptr %63, null
  br i1 %65, label %102, label %66

66:                                               ; preds = %55
  %67 = load ptr, ptr %57, align 4
  %68 = getelementptr inbounds %struct.nvkm_memory_func, ptr %67, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = tail call ptr %69(ptr noundef %57) #5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = icmp eq i64 %61, 0
  br i1 %73, label %90, label %74

74:                                               ; preds = %72
  %75 = getelementptr i8, ptr %56, i32 -12
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %86, %76 ]
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %75, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 %80(ptr noundef %57, i64 noundef %77) #5
  %82 = load ptr, ptr %64, align 4
  %83 = sdiv i32 %78, 4
  %84 = getelementptr i32, ptr %82, i32 %83
  store i32 %81, ptr %84, align 4
  %85 = add i32 %78, 4
  %86 = sext i32 %85 to i64
  %87 = icmp ugt i64 %61, %86
  br i1 %87, label %76, label %90

88:                                               ; preds = %66
  %89 = load ptr, ptr %64, align 4
  tail call void @mmiocpy(ptr noundef %89, ptr noundef nonnull %70, i32 noundef %62) #5
  br label %90

90:                                               ; preds = %88, %76, %72
  %91 = load ptr, ptr %57, align 4
  %92 = getelementptr inbounds %struct.nvkm_memory_func, ptr %91, i32 0, i32 8
  %93 = load ptr, ptr %92, align 4
  tail call void %93(ptr noundef %57) #5
  %94 = load ptr, ptr %56, align 4
  %95 = icmp eq ptr %94, %52
  br i1 %95, label %96, label %55

96:                                               ; preds = %90, %49, %2
  %97 = load ptr, ptr %3, align 4
  %98 = getelementptr inbounds %struct.nvkm_instmem_func, ptr %97, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call void %99(ptr noundef %3) #5
  br label %102

102:                                              ; preds = %101, %96, %55, %8
  %103 = phi i32 [ 0, %101 ], [ 0, %96 ], [ -12, %55 ], [ -12, %8 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_bar_bar2_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!8 = !{i64 2148939814}
!9 = !{i64 2148935638}
!10 = !{i64 2148935713, i64 2148935740, i64 2148935787, i64 2148935809, i64 2148935837, i64 2148935857}
!11 = !{i64 2148962817}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
