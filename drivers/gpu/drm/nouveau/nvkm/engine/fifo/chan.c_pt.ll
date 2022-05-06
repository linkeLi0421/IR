; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/fifo/chan.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_oproxy_func = type { [2 x ptr], [2 x ptr], [2 x ptr] }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_fifo = type { ptr, %struct.nvkm_engine, [128 x i32], i32, %struct.list_head, %struct.spinlock, %struct.mutex, %struct.nvkm_event, %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_dmaobj = type { ptr, ptr, %struct.nvkm_object, i32, i32, i64, i64 }
%struct.nvkm_vmm = type { ptr, ptr, ptr, i32, %struct.kref, %struct.mutex, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_root, %struct.rb_root, i8, [51 x %struct.atomic_t], i32, ptr, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.rb_root = type { ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_fifo_chan_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_fifo_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [0 x ptr] }
%struct.nvkm_engine_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.125, ptr, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.nvkm_fifo_chan_object = type { %struct.nvkm_oproxy, ptr, i32 }
%struct.nvkm_oproxy = type { ptr, %struct.nvkm_object, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }

@nvkm_fifo_chan_func = internal constant %struct.nvkm_object_func { ptr @nvkm_fifo_chan_dtor, ptr @nvkm_fifo_chan_init, ptr @nvkm_fifo_chan_fini, ptr null, ptr @nvkm_fifo_chan_ntfy, ptr @nvkm_fifo_chan_map, ptr null, ptr null, ptr null, ptr @nvkm_fifo_chan_rd32, ptr null, ptr null, ptr @nvkm_fifo_chan_wr32, ptr null, ptr @nvkm_fifo_chan_child_get }, align 4
@nvkm_fifo_chan_child_func = internal constant %struct.nvkm_oproxy_func { [2 x ptr] [ptr @nvkm_fifo_chan_child_del, ptr null], [2 x ptr] [ptr @nvkm_fifo_chan_child_init, ptr null], [2 x ptr] [ptr @nvkm_fifo_chan_child_fini, ptr null] }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [47 x i8] c"\013nouveau: %s:%08x:%08x: attach %s failed, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\016nouveau: %s:%08x:%08x: attached %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\013nouveau: %s:%08x:%08x: detach %s failed, %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\016nouveau: %s:%08x:%08x: detached %s\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_fifo_chan_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i64 noundef %5, i64 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
  %14 = getelementptr inbounds %struct.nvkm_oclass, ptr %11, i32 0, i32 8
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 1, i32 1, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 3
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_fifo_chan_func, ptr noundef %11, ptr noundef %18) #9
  store ptr %0, ptr %12, align 8
  %19 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 1
  store ptr %1, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 2
  store i32 %7, ptr %20, align 8
  %21 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 4
  store volatile ptr %21, ptr %21, align 4
  %22 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 4, i32 1
  store ptr %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 6
  %24 = tail call i32 @nvkm_gpuobj_new(ptr noundef %17, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef null, ptr noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %13
  %27 = icmp eq i64 %6, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %26
  %29 = tail call ptr @nvkm_dmaobj_search(ptr noundef %15, i64 noundef %6) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = ptrtoint ptr %29 to i32
  br label %95

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.nvkm_dmaobj, ptr %29, i32 0, i32 2
  %35 = load ptr, ptr %23, align 4
  %36 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 7
  %37 = tail call i32 @nvkm_object_bind(ptr noundef %34, ptr noundef %35, i32 noundef -16, ptr noundef %36) #9
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %95

39:                                               ; preds = %33, %26
  %40 = icmp eq i64 %5, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %39
  %42 = tail call ptr @nvkm_uvmm_search(ptr noundef %15, i64 noundef %5) #9
  %43 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = ptrtoint ptr %42 to i32
  br label %95

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvkm_vmm, ptr %42, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 35
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %46
  %53 = load ptr, ptr %23, align 4
  %54 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = tail call i32 @nvkm_vmm_join(ptr noundef %42, ptr noundef %55) #9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = tail call ptr @nvkm_vmm_ref(ptr noundef %42) #9
  %60 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 8
  store ptr %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %39
  %62 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 5
  %63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %62) #9
  %64 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 2
  %65 = tail call i32 @_find_first_zero_bit_le(ptr noundef %64, i32 noundef 4096) #9
  %66 = trunc i32 %65 to i16
  %67 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 5
  store i16 %66, ptr %67, align 8
  %68 = and i32 %65, 61440
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %63) #9
  br label %95

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.nvkm_fifo, ptr %1, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %21, ptr %74, align 4
  store ptr %73, ptr %21, align 4
  store ptr %72, ptr %22, align 4
  store volatile ptr %21, ptr %72, align 4
  %75 = load i16, ptr %67, align 8
  %76 = zext i16 %75 to i32
  %77 = and i32 %76, 31
  %78 = shl nuw i32 1, %77
  %79 = lshr i32 %76, 5
  %80 = getelementptr i32, ptr %64, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = or i32 %78, %81
  store i32 %82, ptr %80, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %62, i32 noundef %63) #9
  %83 = load ptr, ptr %17, align 8
  %84 = getelementptr inbounds %struct.nvkm_device_func, ptr %83, i32 0, i32 6
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef %17, i32 noundef %8) #9
  %87 = add i32 %86, %9
  %88 = load i16, ptr %67, align 8
  %89 = zext i16 %88 to i32
  %90 = mul i32 %89, %10
  %91 = add i32 %87, %90
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 10
  store i64 %92, ptr %93, align 8
  %94 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %12, i32 0, i32 11
  store i32 %10, ptr %94, align 8
  tail call void @nvkm_fifo_cevent(ptr noundef %1) #9
  br label %95

95:                                               ; preds = %71, %70, %52, %46, %44, %33, %31, %13
  %96 = phi i32 [ %32, %31 ], [ -28, %70 ], [ 0, %71 ], [ %24, %13 ], [ %37, %33 ], [ %56, %52 ], [ -22, %46 ], [ %45, %44 ]
  ret i32 %96
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_dmaobj_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_bind(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_uvmm_search(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_join(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_vmm_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_cevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_fifo_chan_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = getelementptr i8, ptr %0, i32 -12
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %2, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = tail call ptr %6(ptr noundef %2) #9
  %8 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 5
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #9
  %10 = getelementptr i8, ptr %0, i32 72
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 80
  %15 = load i16, ptr %14, align 8
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.nvkm_fifo, ptr %4, i32 0, i32 2
  %18 = and i32 %16, 31
  %19 = shl nuw i32 1, %18
  %20 = lshr i32 %16, 5
  %21 = getelementptr i32, ptr %17, i32 %20
  %22 = xor i32 %19, -1
  %23 = load i32, ptr %21, align 4
  %24 = and i32 %23, %22
  store i32 %24, ptr %21, align 4
  %25 = getelementptr i8, ptr %0, i32 76
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %10, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  br label %29

29:                                               ; preds = %13, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #9
  %30 = getelementptr i8, ptr %0, i32 96
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @iounmap(ptr noundef nonnull %31) #9
  br label %34

34:                                               ; preds = %33, %29
  %35 = getelementptr i8, ptr %0, i32 92
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = getelementptr i8, ptr %0, i32 84
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  tail call void @nvkm_vmm_part(ptr noundef nonnull %36, ptr noundef %42) #9
  tail call void @nvkm_vmm_unref(ptr noundef %35) #9
  br label %43

43:                                               ; preds = %38, %34
  %44 = getelementptr i8, ptr %0, i32 88
  tail call void @nvkm_gpuobj_del(ptr noundef %44) #9
  %45 = getelementptr i8, ptr %0, i32 84
  tail call void @nvkm_gpuobj_del(ptr noundef %45) #9
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -16
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %2) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_ntfy(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -16
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call i32 %7(ptr noundef %4, i32 noundef %1, ptr noundef %2) #9
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi i32 [ %10, %9 ], [ -19, %3 ]
  ret i32 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @nvkm_fifo_chan_map(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #3 {
  store i32 0, ptr %3, align 4
  %7 = getelementptr i8, ptr %0, i32 104
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %4, align 8
  %9 = getelementptr i8, ptr %0, i32 112
  %10 = load i32, ptr %9, align 8
  %11 = zext i32 %10 to i64
  store i64 %11, ptr %5, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_rd32(ptr nocapture noundef %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 96
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 104
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr i8, ptr %0, i32 112
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %12) #9
  store ptr %13, ptr %4, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %7, %3
  %16 = phi ptr [ %13, %7 ], [ %5, %3 ]
  %17 = add i64 %1, 4
  %18 = getelementptr i8, ptr %0, i32 112
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %26, label %22, !prof !8

22:                                               ; preds = %15
  %23 = trunc i64 %1 to i32
  %24 = getelementptr i8, ptr %16, i32 %23
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !10
  store i32 %25, ptr %2, align 4
  br label %26

26:                                               ; preds = %22, %15, %7
  %27 = phi i32 [ 0, %22 ], [ -12, %7 ], [ -22, %15 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_wr32(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 96
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !8

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %0, i32 104
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = getelementptr i8, ptr %0, i32 112
  %12 = load i32, ptr %11, align 8
  %13 = tail call ptr @ioremap(i32 noundef %10, i32 noundef %12) #9
  store ptr %13, ptr %4, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %7, %3
  %16 = phi ptr [ %13, %7 ], [ %5, %3 ]
  %17 = add i64 %1, 4
  %18 = getelementptr i8, ptr %0, i32 112
  %19 = load i32, ptr %18, align 8
  %20 = zext i32 %19 to i64
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %25, label %22, !prof !8

22:                                               ; preds = %15
  %23 = trunc i64 %1 to i32
  %24 = getelementptr i8, ptr %16, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !11
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %2) #9, !srcloc !12
  br label %25

25:                                               ; preds = %22, %15, %7
  %26 = phi i32 [ 0, %22 ], [ -12, %7 ], [ -22, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_get(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -12
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 -8
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %65, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @llvm.cttz.i32(i32 %7, i1 true) #9, !range !13
  %11 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 10
  %12 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 2
  br label %13

13:                                               ; preds = %53, %9
  %14 = phi i32 [ %10, %9 ], [ %60, %53 ]
  %15 = phi i32 [ %7, %9 ], [ %59, %53 ]
  %16 = phi i32 [ %1, %9 ], [ %54, %53 ]
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %17, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = tail call ptr %19(ptr noundef %5, i32 noundef %14) #9
  %21 = icmp eq ptr %20, null
  br i1 %21, label %53, label %22

22:                                               ; preds = %13
  store ptr %20, ptr %11, align 8
  store i32 0, ptr %12, align 4
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.nvkm_engine_func, ptr %23, i32 0, i32 10, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = tail call i32 %25(ptr noundef %2, i32 noundef %16) #9
  %29 = load i32, ptr %12, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %64

35:                                               ; preds = %27
  %36 = sub i32 %16, %28
  br label %53

37:                                               ; preds = %42, %22
  %38 = phi i32 [ %43, %42 ], [ 0, %22 ]
  %39 = getelementptr %struct.nvkm_engine_func, ptr %23, i32 0, i32 12, i32 %38, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = add i32 %38, 1
  %44 = icmp eq i32 %16, %38
  br i1 %44, label %45, label %37

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1
  %47 = getelementptr %struct.nvkm_engine_func, ptr %23, i32 0, i32 12, i32 %16
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %46, ptr noundef align 4 dereferenceable(20) %47, i32 20, i1 false)
  %48 = getelementptr inbounds %struct.nvkm_oclass, ptr %2, i32 0, i32 1, i32 4
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %62, label %64

51:                                               ; preds = %37
  %52 = sub i32 %16, %38
  br label %53

53:                                               ; preds = %51, %35, %13
  %54 = phi i32 [ %36, %35 ], [ %52, %51 ], [ %16, %13 ]
  %55 = zext i32 %14 to i64
  %56 = shl nuw i64 1, %55
  %57 = trunc i64 %56 to i32
  %58 = xor i32 %57, -1
  %59 = and i32 %15, %58
  %60 = tail call i32 @llvm.cttz.i32(i32 %59, i1 false) #9, !range !13
  %61 = icmp eq i32 %59, 0
  br i1 %61, label %65, label %13

62:                                               ; preds = %45, %31
  %63 = phi ptr [ %32, %31 ], [ %48, %45 ]
  store ptr @nvkm_object_new, ptr %63, align 4
  br label %64

64:                                               ; preds = %62, %45, %31
  store ptr @nvkm_fifo_chan_child_new, ptr %2, align 8
  br label %65

65:                                               ; preds = %64, %53, %3
  %66 = phi i32 [ -22, %3 ], [ 0, %64 ], [ -22, %53 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_part(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_new(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca %struct.nvkm_oclass, align 8
  %6 = alloca %struct.nvkm_oclass, align 8
  %7 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 9
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 -16
  %12 = getelementptr i8, ptr %10, i32 -12
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %14, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %13, ptr noundef %8) #9
  %18 = icmp sgt i32 %17, -1
  %19 = getelementptr %struct.nvkm_fifo_chan, ptr %11, i32 0, i32 12, i32 %17
  %20 = select i1 %18, ptr %19, ptr null
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 96) #10
  %23 = icmp eq ptr %22, null
  br i1 %23, label %116, label %24

24:                                               ; preds = %4
  tail call void @nvkm_oproxy_ctor(ptr noundef nonnull @nvkm_fifo_chan_child_func, ptr noundef %0, ptr noundef nonnull %22) #9
  %25 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %22, i32 0, i32 1
  store ptr %11, ptr %25, align 8
  %26 = getelementptr inbounds %struct.nvkm_oproxy, ptr %22, i32 0, i32 1
  store ptr %26, ptr %3, align 4
  %27 = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %20, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %74

31:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #9
  %32 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 8
  %33 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %5, i8 0, i64 72, i1 false)
  %34 = load ptr, ptr %33, align 8
  store ptr %34, ptr %32, align 8
  %35 = getelementptr inbounds %struct.nvkm_oclass, ptr %5, i32 0, i32 10
  %36 = load ptr, ptr %7, align 8
  store ptr %36, ptr %35, align 8
  %37 = getelementptr i8, ptr %10, i32 92
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.nvkm_engine, ptr %8, i32 0, i32 1, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.nvkm_vmm, ptr %38, i32 0, i32 14, i32 %42
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %43) #9, !srcloc !14
  %44 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %43, ptr %43, i32 1, ptr elementtype(i32) %43) #9, !srcloc !15
  br label %45

45:                                               ; preds = %40, %31
  %46 = load ptr, ptr %8, align 4
  %47 = getelementptr inbounds %struct.nvkm_engine_func, ptr %46, i32 0, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 %48(ptr noundef %11, ptr noundef nonnull %5, ptr noundef %20) #9
  br label %58

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.nvkm_engine_func, ptr %46, i32 0, i32 11
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = call i32 @nvkm_object_new_(ptr noundef nonnull %54, ptr noundef nonnull %5, ptr noundef null, i32 noundef 0, ptr noundef %20) #9
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi i32 [ %51, %50 ], [ %57, %56 ]
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58, %52
  %62 = load ptr, ptr %11, align 8
  %63 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %62, i32 0, i32 4
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %7, align 8
  %68 = load ptr, ptr %20, align 4
  %69 = call i32 %64(ptr noundef %11, ptr noundef %67, ptr noundef %68) #9
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66, %58
  %72 = phi i32 [ %69, %66 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  br label %116

73:                                               ; preds = %66, %61
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #9
  br label %74

74:                                               ; preds = %73, %24
  %75 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1
  %76 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 1, i32 4
  %77 = load ptr, ptr %76, align 4
  store ptr null, ptr %6, align 8
  %78 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 1
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %78, ptr noundef align 4 dereferenceable(20) %75, i32 20, i1 false)
  %79 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 2
  store ptr null, ptr %79, align 8
  %80 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 3
  %81 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  store ptr %82, ptr %80, align 4
  %83 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 4
  %84 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 4
  %85 = load i32, ptr %84, align 8
  store i32 %85, ptr %83, align 8
  %86 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 5
  store i8 0, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 6
  store i64 0, ptr %87, align 8
  %88 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 7
  %89 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 7
  %90 = load i64, ptr %89, align 8
  store i64 %90, ptr %88, align 8
  %91 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 8
  %92 = getelementptr inbounds %struct.nvkm_oclass, ptr %0, i32 0, i32 8
  %93 = load ptr, ptr %92, align 8
  store ptr %93, ptr %91, align 8
  %94 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 9
  %95 = load ptr, ptr %20, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %74
  %98 = load ptr, ptr %9, align 4
  br label %99

99:                                               ; preds = %97, %74
  %100 = phi ptr [ %98, %97 ], [ %95, %74 ]
  store ptr %100, ptr %94, align 4
  %101 = getelementptr inbounds %struct.nvkm_oclass, ptr %6, i32 0, i32 10
  store ptr %8, ptr %101, align 8
  %102 = getelementptr inbounds %struct.nvkm_oproxy, ptr %22, i32 0, i32 2
  %103 = call i32 %77(ptr noundef nonnull %6, ptr noundef %1, i32 noundef %2, ptr noundef %102) #9
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %99
  %106 = load ptr, ptr %11, align 8
  %107 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %106, i32 0, i32 8
  %108 = load ptr, ptr %107, align 4
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = load ptr, ptr %102, align 8
  %112 = call i32 %108(ptr noundef %11, ptr noundef %111) #9
  %113 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %22, i32 0, i32 2
  store i32 %112, ptr %113, align 4
  %114 = icmp slt i32 %112, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %110, %99, %71, %4
  %117 = phi i32 [ 0, %115 ], [ -12, %4 ], [ %103, %99 ], [ %112, %110 ], [ %72, %71 ]
  ret i32 %117
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_oproxy_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_fifo_chan_child_del(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_oproxy, ptr %0, i32 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %7, ptr noundef %3) #9
  %12 = icmp sgt i32 %11, -1
  %13 = getelementptr %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 12, i32 %11
  %14 = select i1 %12, ptr %13, ptr null
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %15, i32 0, i32 9
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %0, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  tail call void %17(ptr noundef %5, i32 noundef %21) #9
  br label %22

22:                                               ; preds = %19, %1
  %23 = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %14, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, ptr %23, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void %30(ptr noundef %5, ptr noundef %3) #9
  br label %33

33:                                               ; preds = %32, %27
  tail call void @nvkm_object_del(ptr noundef %14) #9
  %34 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %5, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nvkm_engine, ptr %3, i32 0, i32 1, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.nvkm_vmm, ptr %35, i32 0, i32 14, i32 %39
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %40) #9, !srcloc !14
  %41 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %40, ptr %40, i32 1, ptr elementtype(i32) %40) #9, !srcloc !16
  br label %42

42:                                               ; preds = %37, %33, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_oproxy, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_object, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %10, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %9, ptr noundef %5) #9
  %14 = icmp sgt i32 %13, -1
  %15 = getelementptr %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 12, i32 %13
  %16 = select i1 %14, ptr %15, ptr null
  %17 = getelementptr inbounds %struct.nvkm_engine, ptr %5, i32 0, i32 1, i32 4
  %18 = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %16, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, 1
  store i32 %20, ptr %18, align 4
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %1
  %23 = load ptr, ptr %16, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @nvkm_object_init(ptr noundef nonnull %23) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %25, %22
  %29 = load ptr, ptr %7, align 8
  %30 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = tail call i32 %31(ptr noundef %7, ptr noundef %5) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_client, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %62, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.nvkm_client, ptr %38, i32 0, i32 1
  %44 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %43, i32 noundef %45, i32 noundef %47, ptr noundef %17, i32 noundef %34) #11
  br label %62

49:                                               ; preds = %33, %28
  %50 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nvkm_client, ptr %51, i32 0, i32 3
  %53 = load i32, ptr %52, align 8
  %54 = icmp ugt i32 %53, 4
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.nvkm_client, ptr %51, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 4
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %7, i32 0, i32 3, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %56, i32 noundef %58, i32 noundef %60, ptr noundef %17) #11
  br label %62

62:                                               ; preds = %55, %49, %42, %36, %25, %1
  %63 = phi i32 [ 0, %1 ], [ %26, %25 ], [ %34, %42 ], [ %34, %36 ], [ 0, %55 ], [ 0, %49 ]
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_fifo_chan_child_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_oproxy, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_fifo_chan_object, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_fifo_func, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 %13(ptr noundef %10, ptr noundef %6) #9
  %15 = icmp sgt i32 %14, -1
  %16 = getelementptr %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 12, i32 %14
  %17 = select i1 %15, ptr %16, ptr null
  %18 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 4
  %19 = getelementptr inbounds %struct.nvkm_fifo_engn, ptr %17, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -1
  store i32 %21, ptr %19, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %2
  %24 = load ptr, ptr %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_fifo_chan_func, ptr %24, i32 0, i32 7
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %44, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %8, ptr noundef %6, i1 noundef zeroext %1) #9
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_client, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.nvkm_client, ptr %33, i32 0, i32 1
  %39 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 4
  %40 = load i32, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %38, i32 noundef %40, i32 noundef %42, ptr noundef %18, i32 noundef %29) #11
  br label %65

44:                                               ; preds = %28, %23
  %45 = load ptr, ptr %17, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @nvkm_object_fini(ptr noundef nonnull %45, i1 noundef zeroext %1) #9
  %49 = icmp ne i32 %48, 0
  %50 = and i1 %49, %1
  br i1 %50, label %65, label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %48, %47 ], [ 0, %44 ]
  %53 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nvkm_client, ptr %54, i32 0, i32 3
  %56 = load i32, ptr %55, align 8
  %57 = icmp ugt i32 %56, 4
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.nvkm_client, ptr %54, i32 0, i32 1
  %60 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %8, i32 0, i32 3, i32 3
  %63 = load i32, ptr %62, align 4
  %64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %59, i32 noundef %61, i32 noundef %63, ptr noundef %18) #11
  br label %65

65:                                               ; preds = %58, %51, %47, %37, %31, %2
  %66 = phi i32 [ 0, %2 ], [ %29, %37 ], [ %29, %31 ], [ %48, %47 ], [ %52, %58 ], [ %52, %51 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_object_fini(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3955472}
!10 = !{i64 2151494925}
!11 = !{i64 2151496147}
!12 = !{i64 3955054}
!13 = !{i32 0, i32 33}
!14 = !{i64 782416, i64 2148272387, i64 2148272413, i64 2148272460, i64 2148272482, i64 2148272510, i64 2148272530}
!15 = !{i64 2148283802, i64 2148283828, i64 2148283857, i64 2148283891, i64 2148283922, i64 2148283945}
!16 = !{i64 2148286159, i64 2148286185, i64 2148286214, i64 2148286248, i64 2148286279, i64 2148286302}
