; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_bitfield = type { i32, ptr }
%struct.anon.138 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.137 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nv40_gr_chan = type { %struct.nvkm_object, ptr, ptr, i32, %struct.list_head }
%struct.nv40_gr = type { %struct.nvkm_gr, i32, %struct.list_head }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nvkm_gpuobj = type { %union.anon.1, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.1 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }

@nv40_gr_object = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_gr_object_bind, ptr null }, align 4
@nv40_gr_chan = internal constant %struct.nvkm_object_func { ptr @nv40_gr_chan_dtor, ptr null, ptr @nv40_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv40_gr_chan_bind, ptr null }, align 4
@nv10_gr_intr_name = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv10_gr_nstatus = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@.str = private unnamed_addr constant [111 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%08x %s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv40.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"%s: ctxprog timeout %08x\0A\00", align 1
@nv40_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.138, [17 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr @nv40_gr_init, ptr null, ptr @nv40_gr_intr, ptr @nv40_gr_tile, ptr null, ptr @nv40_gr_chan_new, ptr null, ptr @nv40_gr_units, ptr null, %struct.anon.138 zeroinitializer, [17 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12386, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12425, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 12446, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 16535, ptr @nv40_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i64 @nv40_gr_units(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 5440
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %8 = zext i32 %7 to i64
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_gr_object_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 20, i32 noundef %2, i1 noundef zeroext false, ptr noundef %1, ptr noundef %3) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #6
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  tail call void %19(ptr noundef %16, i32 noundef 0, i32 noundef %21) #6
  %22 = load ptr, ptr %3, align 4
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %22, i32 noundef 4, i32 noundef 0) #6
  %26 = load ptr, ptr %3, align 4
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef %26, i32 noundef 8, i32 noundef 0) #6
  %30 = load ptr, ptr %3, align 4
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  tail call void %33(ptr noundef %30, i32 noundef 12, i32 noundef 0) #6
  %34 = load ptr, ptr %3, align 4
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %34, i32 noundef 16, i32 noundef 0) #6
  %38 = load ptr, ptr %3, align 4
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef %38) #6
  br label %42

42:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_chan_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv40_gr_chan, ptr noundef %2, ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.nv40_gr_chan, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nv40_gr_chan, ptr %6, i32 0, i32 2
  store ptr %1, ptr %10, align 4
  store ptr %6, ptr %3, align 4
  %11 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 2
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #6
  %13 = getelementptr inbounds %struct.nv40_gr_chan, ptr %6, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nv40_gr, ptr %0, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  store ptr %15, ptr %13, align 4
  %17 = getelementptr inbounds %struct.nv40_gr_chan, ptr %6, i32 0, i32 4, i32 1
  store ptr %14, ptr %17, align 8
  store volatile ptr %13, ptr %14, align 4
  %18 = load ptr, ptr %9, align 8
  %19 = getelementptr inbounds %struct.nvkm_gr, ptr %18, i32 0, i32 1, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %19, i32 noundef %12) #6
  br label %20

20:                                               ; preds = %8, %4
  %21 = phi i32 [ 0, %8 ], [ -12, %4 ]
  ret i32 %21
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv40_gr_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 4194560
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %11 = load ptr, ptr %7, align 4
  %12 = getelementptr i8, ptr %11, i32 4194568
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %14 = load ptr, ptr %7, align 4
  %15 = getelementptr i8, ptr %14, i32 4194564
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 4195116
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %20 = and i32 %19, 1048575
  %21 = load ptr, ptr %7, align 4
  %22 = getelementptr i8, ptr %21, i32 4196100
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 7
  %26 = and i32 %23, 8188
  %27 = load ptr, ptr %7, align 4
  %28 = getelementptr i8, ptr %27, i32 4196104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %30 = load ptr, ptr %7, align 4
  %31 = shl nuw nsw i32 %25, 2
  %32 = or i32 %31, 4194656
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %35 = and i32 %34, 65535
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !10
  %36 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 2
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #6
  %38 = getelementptr inbounds %struct.nv40_gr, ptr %0, i32 0, i32 2
  br label %39

39:                                               ; preds = %43, %1
  %40 = phi ptr [ %38, %1 ], [ %41, %43 ]
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %38
  br i1 %42, label %56, label %43

43:                                               ; preds = %39
  %44 = getelementptr i8, ptr %41, i32 -4
  %45 = load i32, ptr %44, align 8
  %46 = lshr i32 %45, 4
  %47 = icmp eq i32 %46, %20
  br i1 %47, label %48, label %39

48:                                               ; preds = %43
  %49 = getelementptr i8, ptr %41, i32 -84
  %50 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %41, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  %54 = load ptr, ptr %38, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %41, ptr %55, align 4
  store ptr %54, ptr %41, align 4
  store ptr %38, ptr %50, align 4
  store volatile ptr %41, ptr %38, align 4
  br label %56

56:                                               ; preds = %48, %39
  %57 = phi ptr [ %49, %48 ], [ null, %39 ]
  %58 = and i32 %10, 1048576
  %59 = icmp eq i32 %58, 0
  %60 = and i32 %13, 65536
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 true, i1 %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %7, align 4
  %65 = getelementptr i8, ptr %64, i32 4202496
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %67 = load ptr, ptr %7, align 4
  %68 = getelementptr i8, ptr %67, i32 4202496
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #6, !srcloc !12
  br label %69

69:                                               ; preds = %63, %56
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr i8, ptr %70, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %10) #6, !srcloc !12
  %72 = load ptr, ptr %7, align 4
  %73 = getelementptr i8, ptr %72, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 1) #6, !srcloc !12
  %74 = icmp eq i32 %10, 0
  br i1 %74, label %98, label %75

75:                                               ; preds = %69
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %10) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %13) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %16) #6
  %76 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr inbounds %struct.nvkm_device, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8
  %83 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %84 = icmp eq ptr %57, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.nv40_gr_chan, ptr %57, i32 0, i32 2
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %87, i32 0, i32 5
  %89 = load i16, ptr %88, align 8
  %90 = zext i16 %89 to i32
  %91 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %87, i32 0, i32 3, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nvkm_client, ptr %92, i32 0, i32 1
  br label %94

94:                                               ; preds = %85, %79
  %95 = phi i32 [ %90, %85 ], [ -1, %79 ]
  %96 = phi ptr [ %93, %85 ], [ @.str.1, %79 ]
  %97 = shl nuw nsw i32 %20, 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str, ptr noundef %83, i32 noundef %10, ptr noundef nonnull %2, i32 noundef %13, ptr noundef nonnull %3, i32 noundef %16, ptr noundef nonnull %4, i32 noundef %95, i32 noundef %97, ptr noundef %96, i32 noundef %25, i32 noundef %35, i32 noundef %26, i32 noundef %29) #8
  br label %98

98:                                               ; preds = %94, %75, %69
  call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv40_gr, ptr %0, i32 0, i32 1
  %5 = tail call i32 @nv40_grctx_init(ptr noundef %3, ptr noundef %4) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %188

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 4195116
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 0) #6, !srcloc !12
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr i8, ptr %11, i32 4194560
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 -1) #6, !srcloc !12
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr i8, ptr %13, i32 4194620
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 -1) #6, !srcloc !12
  %15 = load ptr, ptr %8, align 4
  %16 = getelementptr i8, ptr %15, i32 4194432
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #6, !srcloc !12
  %17 = load ptr, ptr %8, align 4
  %18 = getelementptr i8, ptr %17, i32 4194432
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #6, !srcloc !12
  %19 = load ptr, ptr %8, align 4
  %20 = getelementptr i8, ptr %19, i32 4194436
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1074956224) #6, !srcloc !12
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr i8, ptr %21, i32 4194444
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -522289067) #6, !srcloc !12
  %23 = load ptr, ptr %8, align 4
  %24 = getelementptr i8, ptr %23, i32 4194448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 32768) #6, !srcloc !12
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr i8, ptr %25, i32 4195856
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 12467295) #6, !srcloc !12
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr i8, ptr %27, i32 4194628
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 268501248) #6, !srcloc !12
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr i8, ptr %29, i32 4196116
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #6, !srcloc !12
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr i8, ptr %31, i32 5440
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %7
  %37 = and i32 %33, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %39, %36
  %40 = phi i32 [ %42, %39 ], [ %34, %36 ]
  %41 = phi i32 [ %43, %39 ], [ 0, %36 ]
  %42 = lshr i32 %40, 1
  %43 = add i32 %41, 1
  %44 = and i32 %40, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %39, label %46

46:                                               ; preds = %39, %36
  %47 = phi i32 [ 0, %36 ], [ %43, %39 ]
  %48 = load ptr, ptr %8, align 4
  %49 = getelementptr i8, ptr %48, i32 4214784
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #6, !srcloc !12
  br label %50

50:                                               ; preds = %46, %7
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 16
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 64
  %54 = load ptr, ptr %8, align 4
  br i1 %53, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %54, i32 4196784
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 -2094526465) #6, !srcloc !12
  %57 = load ptr, ptr %8, align 4
  %58 = getelementptr i8, ptr %57, i32 4196788
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 160) #6, !srcloc !12
  br label %63

59:                                               ; preds = %50
  %60 = getelementptr i8, ptr %54, i32 4196384
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 -2094526721) #6, !srcloc !12
  %61 = load ptr, ptr %8, align 4
  %62 = getelementptr i8, ptr %61, i32 4196388
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 160) #6, !srcloc !12
  br label %63

63:                                               ; preds = %59, %55
  %64 = load i32, ptr %51, align 4
  switch i32 %64, label %90 [
    i32 64, label %65
    i32 69, label %65
    i32 65, label %70
    i32 66, label %70
    i32 67, label %75
    i32 68, label %80
    i32 70, label %80
    i32 74, label %80
    i32 76, label %80
    i32 78, label %80
    i32 71, label %85
    i32 73, label %85
    i32 75, label %85
  ]

65:                                               ; preds = %63, %63
  %66 = load ptr, ptr %8, align 4
  %67 = getelementptr i8, ptr %66, i32 4196792
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 7922534) #6, !srcloc !12
  %68 = load ptr, ptr %8, align 4
  %69 = getelementptr i8, ptr %68, i32 4196796
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 332) #6, !srcloc !12
  br label %90

70:                                               ; preds = %63, %63
  %71 = load ptr, ptr %8, align 4
  %72 = getelementptr i8, ptr %71, i32 4196392
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 7706367) #6, !srcloc !12
  %73 = load ptr, ptr %8, align 4
  %74 = getelementptr i8, ptr %73, i32 4196396
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 264) #6, !srcloc !12
  br label %90

75:                                               ; preds = %63
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr i8, ptr %76, i32 4196392
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 7523191) #6, !srcloc !12
  %78 = load ptr, ptr %8, align 4
  %79 = getelementptr i8, ptr %78, i32 4196396
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 264) #6, !srcloc !12
  br label %90

80:                                               ; preds = %63, %63, %63, %63, %63
  %81 = load ptr, ptr %8, align 4
  %82 = getelementptr i8, ptr %81, i32 4196448
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 0) #6, !srcloc !12
  %83 = load ptr, ptr %8, align 4
  %84 = getelementptr i8, ptr %83, i32 4196452
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 0) #6, !srcloc !12
  br label %90

85:                                               ; preds = %63, %63, %63
  %86 = load ptr, ptr %8, align 4
  %87 = getelementptr i8, ptr %86, i32 4196392
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 126027280) #6, !srcloc !12
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr i8, ptr %88, i32 4196396
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 362) #6, !srcloc !12
  br label %90

90:                                               ; preds = %85, %80, %75, %70, %65, %63
  %91 = load ptr, ptr %8, align 4
  %92 = getelementptr i8, ptr %91, i32 4197176
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 805304320) #6, !srcloc !12
  %93 = load ptr, ptr %8, align 4
  %94 = getelementptr i8, ptr %93, i32 4197180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 24576) #6, !srcloc !12
  %95 = load i32, ptr %51, align 4
  switch i32 %95, label %111 [
    i32 68, label %96
    i32 74, label %96
    i32 70, label %101
    i32 76, label %106
    i32 78, label %106
    i32 103, label %106
  ]

96:                                               ; preds = %90, %90
  %97 = load ptr, ptr %8, align 4
  %98 = getelementptr i8, ptr %97, i32 4197316
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 268687496) #6, !srcloc !12
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr i8, ptr %99, i32 4197308
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 -1213745920) #6, !srcloc !12
  br label %111

101:                                              ; preds = %90
  %102 = load ptr, ptr %8, align 4
  %103 = getelementptr i8, ptr %102, i32 4197316
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 57380) #6, !srcloc !12
  %104 = load ptr, ptr %8, align 4
  %105 = getelementptr i8, ptr %104, i32 4197308
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %105, i32 -1213745888) #6, !srcloc !12
  br label %111

106:                                              ; preds = %90, %90, %90
  %107 = load ptr, ptr %8, align 4
  %108 = getelementptr i8, ptr %107, i32 4197316
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 268687496) #6, !srcloc !12
  %109 = load ptr, ptr %8, align 4
  %110 = getelementptr i8, ptr %109, i32 4197308
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 -1213745856) #6, !srcloc !12
  br label %111

111:                                              ; preds = %106, %101, %96, %90
  %112 = load ptr, ptr %3, align 8
  %113 = getelementptr inbounds %struct.nvkm_device_func, ptr %112, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 %114(ptr noundef %3, i32 noundef 1) #6
  %116 = add i32 %115, -1
  %117 = load i32, ptr %51, align 4
  switch i32 %117, label %158 [
    i32 64, label %118
    i32 65, label %147
    i32 66, label %147
    i32 67, label %147
    i32 69, label %147
    i32 78, label %147
    i32 68, label %147
    i32 74, label %147
  ]

118:                                              ; preds = %111
  %119 = load ptr, ptr %8, align 4
  %120 = getelementptr i8, ptr %119, i32 1049088
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %120) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %122 = load ptr, ptr %8, align 4
  %123 = getelementptr i8, ptr %122, i32 4196772
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #6, !srcloc !12
  %124 = load ptr, ptr %8, align 4
  %125 = getelementptr i8, ptr %124, i32 1049092
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %127 = load ptr, ptr %8, align 4
  %128 = getelementptr i8, ptr %127, i32 4196776
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %126) #6, !srcloc !12
  %129 = load ptr, ptr %8, align 4
  %130 = getelementptr i8, ptr %129, i32 1049088
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %132 = load ptr, ptr %8, align 4
  %133 = getelementptr i8, ptr %132, i32 4221348
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %131) #6, !srcloc !12
  %134 = load ptr, ptr %8, align 4
  %135 = getelementptr i8, ptr %134, i32 1049092
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %135) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %137 = load ptr, ptr %8, align 4
  %138 = getelementptr i8, ptr %137, i32 4221352
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #6, !srcloc !12
  %139 = load ptr, ptr %8, align 4
  %140 = getelementptr i8, ptr %139, i32 4196384
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 0) #6, !srcloc !12
  %141 = load ptr, ptr %8, align 4
  %142 = getelementptr i8, ptr %141, i32 4196388
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 0) #6, !srcloc !12
  %143 = load ptr, ptr %8, align 4
  %144 = getelementptr i8, ptr %143, i32 4196452
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %116) #6, !srcloc !12
  %145 = load ptr, ptr %8, align 4
  %146 = getelementptr i8, ptr %145, i32 4196456
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %116) #6, !srcloc !12
  br label %188

147:                                              ; preds = %111, %111, %111, %111, %111, %111, %111
  %148 = load ptr, ptr %8, align 4
  %149 = getelementptr i8, ptr %148, i32 1049088
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %151 = load ptr, ptr %8, align 4
  %152 = getelementptr i8, ptr %151, i32 4196848
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %150) #6, !srcloc !12
  %153 = load ptr, ptr %8, align 4
  %154 = getelementptr i8, ptr %153, i32 1049092
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %156 = load ptr, ptr %8, align 4
  %157 = getelementptr i8, ptr %156, i32 4196852
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %155) #6, !srcloc !12
  br label %169

158:                                              ; preds = %111
  %159 = load ptr, ptr %8, align 4
  %160 = getelementptr i8, ptr %159, i32 1049088
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %160) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %162 = load ptr, ptr %8, align 4
  %163 = getelementptr i8, ptr %162, i32 4197872
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %163, i32 %161) #6, !srcloc !12
  %164 = load ptr, ptr %8, align 4
  %165 = getelementptr i8, ptr %164, i32 1049092
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %165) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %167 = load ptr, ptr %8, align 4
  %168 = getelementptr i8, ptr %167, i32 4197876
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #6, !srcloc !12
  br label %169

169:                                              ; preds = %158, %147
  %170 = load ptr, ptr %8, align 4
  %171 = getelementptr i8, ptr %170, i32 1049088
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %173 = load ptr, ptr %8, align 4
  %174 = getelementptr i8, ptr %173, i32 4221424
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 %172) #6, !srcloc !12
  %175 = load ptr, ptr %8, align 4
  %176 = getelementptr i8, ptr %175, i32 1049092
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %178 = load ptr, ptr %8, align 4
  %179 = getelementptr i8, ptr %178, i32 4221428
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #6, !srcloc !12
  %180 = load ptr, ptr %8, align 4
  %181 = getelementptr i8, ptr %180, i32 4196416
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 0) #6, !srcloc !12
  %182 = load ptr, ptr %8, align 4
  %183 = getelementptr i8, ptr %182, i32 4196420
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 0) #6, !srcloc !12
  %184 = load ptr, ptr %8, align 4
  %185 = getelementptr i8, ptr %184, i32 4196512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %185, i32 %116) #6, !srcloc !12
  %186 = load ptr, ptr %8, align 4
  %187 = getelementptr i8, ptr %186, i32 4196516
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %116) #6, !srcloc !12
  br label %188

188:                                              ; preds = %169, %118, %1
  %189 = phi i32 [ %5, %1 ], [ 0, %169 ], [ 0, %118 ]
  ret i32 %189
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_grctx_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 104) #7
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = getelementptr inbounds %struct.nv40_gr, ptr %7, i32 0, i32 2
  store volatile ptr %10, ptr %10, align 8
  %11 = getelementptr inbounds %struct.nv40_gr, ptr %7, i32 0, i32 2, i32 1
  store ptr %10, ptr %11, align 4
  %12 = tail call i32 @nvkm_gr_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %7) #6
  br label %13

13:                                               ; preds = %9, %5
  %14 = phi i32 [ %12, %9 ], [ -12, %5 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv40_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 104) #7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nv40_gr, ptr %6, i32 0, i32 2
  store volatile ptr %9, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nv40_gr, ptr %6, i32 0, i32 2, i32 1
  store ptr %9, ptr %10, align 4
  %11 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv40_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #6
  br label %12

12:                                               ; preds = %8, %4
  %13 = phi i32 [ %11, %8 ], [ -12, %4 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv40_gr_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvkm_gr, ptr %3, i32 0, i32 1, i32 2
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #6
  %6 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 4, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.nvkm_gr, ptr %11, i32 0, i32 1, i32 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %5) #6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_gr_chan_fini(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_gr, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 8
  %10 = lshr i32 %9, 4
  %11 = or i32 %10, 16777216
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 4196128
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %16 = and i32 %15, -2
  %17 = load ptr, ptr %12, align 4
  %18 = getelementptr i8, ptr %17, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #6, !srcloc !12
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 4195116
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = icmp eq i32 %21, %11
  br i1 %22, label %23, label %89

23:                                               ; preds = %2
  br i1 %1, label %24, label %81

24:                                               ; preds = %23
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !12
  %27 = load ptr, ptr %12, align 4
  %28 = getelementptr i8, ptr %27, i32 4196228
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %11) #6, !srcloc !12
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 4195088
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %32 = or i32 %31, 32
  %33 = load ptr, ptr %12, align 4
  %34 = getelementptr i8, ptr %33, i32 4195088
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #6, !srcloc !12
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 4195076
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %38 = or i32 %37, 1
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr i8, ptr %39, i32 4195076
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #6, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #6
  br label %41

41:                                               ; preds = %47, %24
  %42 = load ptr, ptr %12, align 4
  %43 = getelementptr i8, ptr %42, i32 4195072
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %41
  %48 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %49 = icmp sgt i64 %48, -1
  br i1 %49, label %41, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.nvkm_timer, ptr %51, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  %56 = call ptr @dev_driver_string(ptr noundef %55) #6
  %57 = load ptr, ptr %3, align 8
  %58 = getelementptr inbounds %struct.nvkm_timer, ptr %57, i32 0, i32 1, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %50
  %66 = load ptr, ptr %61, align 4
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi ptr [ %66, %65 ], [ %63, %50 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 112, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %56, ptr noundef %68) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %69 = load ptr, ptr %12, align 4
  %70 = getelementptr i8, ptr %69, i32 4195080
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %72 = getelementptr inbounds %struct.nvkm_gr, ptr %5, i32 0, i32 1, i32 1, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = icmp ugt i32 %73, 1
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load ptr, ptr %6, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvkm_gr, ptr %5, i32 0, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %78, ptr noundef nonnull @.str.4, ptr noundef %79, i32 noundef %71) #8
  br label %81

80:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %81

81:                                               ; preds = %80, %75, %67, %23
  %82 = phi i32 [ 0, %23 ], [ 0, %80 ], [ -16, %75 ], [ -16, %67 ]
  %83 = load ptr, ptr %12, align 4
  %84 = getelementptr i8, ptr %83, i32 4195116
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %86 = and i32 %85, -16777217
  %87 = load ptr, ptr %12, align 4
  %88 = getelementptr i8, ptr %87, i32 4195116
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #6, !srcloc !12
  br label %89

89:                                               ; preds = %81, %2
  %90 = phi i32 [ %82, %81 ], [ 0, %2 ]
  %91 = load ptr, ptr %12, align 4
  %92 = getelementptr i8, ptr %91, i32 4195120
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %94 = icmp eq i32 %93, %11
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load ptr, ptr %12, align 4
  %97 = getelementptr i8, ptr %96, i32 4195120
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %99 = and i32 %98, -16777217
  %100 = load ptr, ptr %12, align 4
  %101 = getelementptr i8, ptr %100, i32 4195120
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #6, !srcloc !12
  br label %102

102:                                              ; preds = %95, %89
  %103 = load ptr, ptr %12, align 4
  %104 = getelementptr i8, ptr %103, i32 4196128
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %106 = or i32 %105, 1
  %107 = load ptr, ptr %12, align 4
  %108 = getelementptr i8, ptr %107, i32 4196128
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 %106) #6, !srcloc !12
  ret i32 %90
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_gr_chan_bind(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_gr, ptr %6, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv40_gr, ptr %6, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef %10, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %4
  %14 = load ptr, ptr %3, align 4
  %15 = getelementptr inbounds %struct.nvkm_gpuobj, ptr %14, i32 0, i32 4
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = getelementptr inbounds %struct.nv40_gr_chan, ptr %0, i32 0, i32 3
  store i32 %17, ptr %18, align 8
  %19 = load ptr, ptr %3, align 4
  %20 = load ptr, ptr %19, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr %21(ptr noundef %19) #6
  %23 = load ptr, ptr %7, align 4
  %24 = load ptr, ptr %3, align 4
  tail call void @nv40_grctx_fill(ptr noundef %23, ptr noundef %24) #6
  %25 = load ptr, ptr %3, align 4
  %26 = load ptr, ptr %25, align 8
  %27 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %18, align 8
  %30 = lshr i32 %29, 4
  tail call void %28(ptr noundef %25, i32 noundef 0, i32 noundef %30) #6
  %31 = load ptr, ptr %3, align 4
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %31) #6
  br label %35

35:                                               ; preds = %13, %4
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv40_grctx_fill(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv40_gr_tile(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !10
  call void @nvkm_fifo_pause(ptr noundef %8, ptr noundef nonnull %4) #6
  %9 = call zeroext i1 @nv04_gr_idle(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 16
  %11 = load i32, ptr %10, align 4
  switch i32 %11, label %105 [
    i32 64, label %12
    i32 65, label %12
    i32 66, label %12
    i32 67, label %12
    i32 69, label %12
    i32 71, label %65
    i32 73, label %65
    i32 75, label %65
  ]

12:                                               ; preds = %3, %3, %3, %3, %3
  %13 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = shl i32 %1, 4
  %18 = add i32 %17, 4196616
  %19 = getelementptr i8, ptr %16, i32 %18
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %14) #6, !srcloc !12
  %20 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = load ptr, ptr %15, align 4
  %23 = add i32 %17, 4196612
  %24 = getelementptr i8, ptr %22, i32 %23
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #6, !srcloc !12
  %25 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %15, align 4
  %28 = add i32 %17, 4196608
  %29 = getelementptr i8, ptr %27, i32 %28
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #6, !srcloc !12
  %30 = load i32, ptr %13, align 4
  %31 = load ptr, ptr %15, align 4
  %32 = add i32 %17, 4221192
  %33 = getelementptr i8, ptr %31, i32 %32
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %30) #6, !srcloc !12
  %34 = load i32, ptr %20, align 4
  %35 = load ptr, ptr %15, align 4
  %36 = add i32 %17, 4221188
  %37 = getelementptr i8, ptr %35, i32 %36
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %34) #6, !srcloc !12
  %38 = load i32, ptr %25, align 4
  %39 = load ptr, ptr %15, align 4
  %40 = add i32 %17, 4221184
  %41 = getelementptr i8, ptr %39, i32 %40
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #6, !srcloc !12
  %42 = load i32, ptr %10, align 4
  switch i32 %42, label %106 [
    i32 64, label %43
    i32 69, label %43
    i32 65, label %54
    i32 66, label %54
    i32 67, label %54
  ]

43:                                               ; preds = %12, %12
  %44 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = load ptr, ptr %15, align 4
  %47 = shl i32 %1, 2
  %48 = add i32 %47, 4196736
  %49 = getelementptr i8, ptr %46, i32 %48
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %45) #6, !srcloc !12
  %50 = load i32, ptr %44, align 4
  %51 = load ptr, ptr %15, align 4
  %52 = add i32 %47, 4221312
  %53 = getelementptr i8, ptr %51, i32 %52
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %50) #6, !srcloc !12
  br label %106

54:                                               ; preds = %12, %12, %12
  %55 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 4
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %15, align 4
  %58 = shl i32 %1, 2
  %59 = add i32 %58, 4196800
  %60 = getelementptr i8, ptr %57, i32 %59
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %56) #6, !srcloc !12
  %61 = load i32, ptr %55, align 4
  %62 = load ptr, ptr %15, align 4
  %63 = add i32 %58, 4221376
  %64 = getelementptr i8, ptr %62, i32 %63
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #6, !srcloc !12
  br label %106

65:                                               ; preds = %3, %3, %3
  %66 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = shl i32 %1, 4
  %71 = add i32 %70, 4197640
  %72 = getelementptr i8, ptr %69, i32 %71
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %67) #6, !srcloc !12
  %73 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %68, align 4
  %76 = add i32 %70, 4197636
  %77 = getelementptr i8, ptr %75, i32 %76
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 %74) #6, !srcloc !12
  %78 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %68, align 4
  %81 = add i32 %70, 4197632
  %82 = getelementptr i8, ptr %80, i32 %81
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %79) #6, !srcloc !12
  %83 = load i32, ptr %66, align 4
  %84 = load ptr, ptr %68, align 4
  %85 = add i32 %70, 4221192
  %86 = getelementptr i8, ptr %84, i32 %85
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %83) #6, !srcloc !12
  %87 = load i32, ptr %73, align 4
  %88 = load ptr, ptr %68, align 4
  %89 = add i32 %70, 4221188
  %90 = getelementptr i8, ptr %88, i32 %89
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %90, i32 %87) #6, !srcloc !12
  %91 = load i32, ptr %78, align 4
  %92 = load ptr, ptr %68, align 4
  %93 = add i32 %70, 4221184
  %94 = getelementptr i8, ptr %92, i32 %93
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %91) #6, !srcloc !12
  %95 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 4
  %96 = load i32, ptr %95, align 4
  %97 = load ptr, ptr %68, align 4
  %98 = shl i32 %1, 2
  %99 = add i32 %98, 4197888
  %100 = getelementptr i8, ptr %97, i32 %99
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %96) #6, !srcloc !12
  %101 = load i32, ptr %95, align 4
  %102 = load ptr, ptr %68, align 4
  %103 = add i32 %98, 4221120
  %104 = getelementptr i8, ptr %102, i32 %103
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 %101) #6, !srcloc !12
  br label %106

105:                                              ; preds = %3
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 224, i32 noundef 9, ptr noundef null) #6
  br label %106

106:                                              ; preds = %105, %65, %54, %43, %12
  call void @nvkm_fifo_start(ptr noundef %8, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }
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
!8 = !{i64 3958585}
!9 = !{i64 2151498038}
!10 = !{!"auto-init"}
!11 = !{i64 2151499260}
!12 = !{i64 3958167}
