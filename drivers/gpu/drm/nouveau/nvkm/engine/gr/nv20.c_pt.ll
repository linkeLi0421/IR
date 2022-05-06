; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.138 = type { ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nv20_gr_chan = type { %struct.nvkm_object, ptr, i32, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv20_gr = type { %struct.nvkm_gr, ptr }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.137 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
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
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_fifo_chan = type { ptr, ptr, i32, %struct.nvkm_object, %struct.list_head, i16, ptr, ptr, ptr, ptr, i64, i32, [16 x %struct.nvkm_fifo_engn] }
%struct.nvkm_fifo_engn = type { ptr, i32, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/nv20.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@nv10_gr_intr_name = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv04_gr_nsource = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@nv10_gr_nstatus = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@.str.2 = private unnamed_addr constant [106 x i8] c"%s: intr %08x [%s] nsource %08x [%s] nstatus %08x [%s] ch %d [%s] subc %d class %04x mthd %04x data %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv04_gr_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv20_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.138, [16 x %struct.nvkm_sclass] } { ptr @nv20_gr_dtor, ptr @nv20_gr_oneinit, ptr @nv20_gr_init, ptr null, ptr @nv20_gr_intr, ptr @nv20_gr_tile, ptr null, ptr @nv20_gr_chan_new, ptr null, ptr null, ptr null, %struct.anon.138 zeroinitializer, [16 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 18, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 25, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 48, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 57, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 67, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 68, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 74, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 98, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 114, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 137, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 138, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 150, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 151, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 158, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 159, ptr @nv04_gr_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@nv20_gr_chan = internal constant %struct.nvkm_object_func { ptr @nv20_gr_chan_dtor, ptr @nv20_gr_chan_init, ptr @nv20_gr_chan_fini, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_chan_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_memory_func, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i64 %8(ptr noundef %5) #6
  %10 = trunc i64 %9 to i32
  %11 = getelementptr inbounds %struct.nv20_gr, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = tail call ptr %15(ptr noundef %12) #6
  %17 = load ptr, ptr %11, align 4
  %18 = getelementptr inbounds %struct.nvkm_memory, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = lshr i32 %10, 4
  tail call void %21(ptr noundef %17, i64 noundef %25, i32 noundef %26) #6
  %27 = load ptr, ptr %11, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_func, ptr %28, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %27) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_chan_fini(ptr nocapture noundef readonly %0, i1 zeroext %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_gr, ptr %5, i32 0, i32 1, i32 1, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i64 %12(ptr noundef %9) #6
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 11
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 4196128
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = and i32 %18, -2
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr i8, ptr %20, i32 4196128
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !11
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr i8, ptr %22, i32 4194628
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load ptr, ptr %15, align 4
  %29 = getelementptr i8, ptr %28, i32 4194632
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 31
  br label %33

33:                                               ; preds = %27, %2
  %34 = phi i32 [ %32, %27 ], [ -1, %2 ]
  %35 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %34
  br i1 %37, label %38, label %81

38:                                               ; preds = %33
  %39 = lshr i32 %14, 4
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr i8, ptr %40, i32 4196228
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #6, !srcloc !11
  %42 = load ptr, ptr %15, align 4
  %43 = getelementptr i8, ptr %42, i32 4196232
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 2) #6, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %7, i64 noundef 2000000000, ptr noundef nonnull %3) #6
  br label %44

44:                                               ; preds = %49, %38
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr i8, ptr %45, i32 4196096
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %44
  %50 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %51 = icmp sgt i64 %50, -1
  br i1 %51, label %44, label %52

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.nvkm_timer, ptr %53, i32 0, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = call ptr @dev_driver_string(ptr noundef %57) #6
  %59 = load ptr, ptr %3, align 8
  %60 = getelementptr inbounds %struct.nvkm_timer, ptr %59, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 2
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %52
  %68 = load ptr, ptr %63, align 4
  br label %69

69:                                               ; preds = %67, %52
  %70 = phi ptr [ %68, %67 ], [ %65, %52 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %58, ptr noundef %70) #6
  br label %71

71:                                               ; preds = %69, %44
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %72 = load ptr, ptr %15, align 4
  %73 = getelementptr i8, ptr %72, i32 4194628
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 268435456) #6, !srcloc !11
  %74 = load ptr, ptr %15, align 4
  %75 = getelementptr i8, ptr %74, i32 4194632
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %77 = and i32 %76, 16777215
  %78 = or i32 %77, 520093696
  %79 = load ptr, ptr %15, align 4
  %80 = getelementptr i8, ptr %79, i32 4194632
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %78) #6, !srcloc !11
  br label %81

81:                                               ; preds = %71, %33
  %82 = load ptr, ptr %15, align 4
  %83 = getelementptr i8, ptr %82, i32 4196128
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %83) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %85 = or i32 %84, 1
  %86 = load ptr, ptr %15, align 4
  %87 = getelementptr i8, ptr %86, i32 4196128
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %85) #6, !srcloc !11
  %88 = getelementptr inbounds %struct.nv20_gr, ptr %5, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory_func, ptr %90, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  %93 = call ptr %92(ptr noundef %89) #6
  %94 = load ptr, ptr %88, align 4
  %95 = getelementptr inbounds %struct.nvkm_memory, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %96, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = load i32, ptr %35, align 4
  %100 = shl i32 %99, 2
  %101 = sext i32 %100 to i64
  call void %98(ptr noundef %94, i64 noundef %101, i32 noundef 0) #6
  %102 = load ptr, ptr %88, align 4
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.nvkm_memory_func, ptr %103, i32 0, i32 8
  %105 = load ptr, ptr %104, align 4
  call void %105(ptr noundef %102) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv20_gr_chan_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv20_gr_chan, ptr %0, i32 0, i32 3
  tail call void @nvkm_memory_unref(ptr noundef %2) #6
  ret ptr %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv20_gr_tile(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 52
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !12
  call void @nvkm_fifo_pause(ptr noundef %8, ptr noundef nonnull %4) #6
  %9 = call zeroext i1 @nv04_gr_idle(ptr noundef %0) #6
  %10 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = shl i32 %1, 4
  %15 = add i32 %14, 4196612
  %16 = getelementptr i8, ptr %13, i32 %15
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %11) #6, !srcloc !11
  %17 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %12, align 4
  %20 = add i32 %14, 4196616
  %21 = getelementptr i8, ptr %19, i32 %20
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #6, !srcloc !11
  %22 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load ptr, ptr %12, align 4
  %25 = add i32 %14, 4196608
  %26 = getelementptr i8, ptr %24, i32 %25
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %23) #6, !srcloc !11
  %27 = shl i32 %1, 2
  %28 = add i32 %27, 15335472
  %29 = load ptr, ptr %12, align 4
  %30 = getelementptr i8, ptr %29, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !11
  %31 = load i32, ptr %10, align 4
  %32 = load ptr, ptr %12, align 4
  %33 = getelementptr i8, ptr %32, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #6, !srcloc !11
  %34 = add i32 %27, 15335504
  %35 = load ptr, ptr %12, align 4
  %36 = getelementptr i8, ptr %35, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #6, !srcloc !11
  %37 = load i32, ptr %17, align 4
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr i8, ptr %38, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #6, !srcloc !11
  %40 = add i32 %27, 15335440
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr i8, ptr %41, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #6, !srcloc !11
  %43 = load i32, ptr %22, align 4
  %44 = load ptr, ptr %12, align 4
  %45 = getelementptr i8, ptr %44, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !11
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 52
  br i1 %48, label %61, label %49

49:                                               ; preds = %3
  %50 = getelementptr inbounds %struct.nvkm_fb_tile, ptr %2, i32 0, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = load ptr, ptr %12, align 4
  %53 = add i32 %27, 4196736
  %54 = getelementptr i8, ptr %52, i32 %53
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %51) #6, !srcloc !11
  %55 = add i32 %27, 15335568
  %56 = load ptr, ptr %12, align 4
  %57 = getelementptr i8, ptr %56, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #6, !srcloc !11
  %58 = load i32, ptr %50, align 4
  %59 = load ptr, ptr %12, align 4
  %60 = getelementptr i8, ptr %59, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #6, !srcloc !11
  br label %61

61:                                               ; preds = %49, %3
  call void @nvkm_fifo_start(ptr noundef %8, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_pause(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv04_gr_idle(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv20_gr_intr(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca [128 x i8], align 1
  %4 = alloca [128 x i8], align 1
  %5 = alloca [128 x i8], align 1
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4194560
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 4194568
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 4194564
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 4196100
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %22 = lshr i32 %21, 20
  %23 = and i32 %22, 31
  %24 = lshr i32 %21, 16
  %25 = and i32 %24, 7
  %26 = and i32 %21, 8188
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 4196104
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %30 = load ptr, ptr %9, align 4
  %31 = shl nuw nsw i32 %25, 2
  %32 = or i32 %31, 4194656
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %35 = and i32 %34, 4095
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %3, i8 0, i32 128, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %5, i8 0, i32 128, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !12
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 52
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @nvkm_fifo_chan_chid(ptr noundef %37, i32 noundef %23, ptr noundef nonnull %6) #6
  store ptr %38, ptr %2, align 4
  %39 = load ptr, ptr %9, align 4
  %40 = getelementptr i8, ptr %39, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %12) #6, !srcloc !11
  %41 = load ptr, ptr %9, align 4
  %42 = getelementptr i8, ptr %41, i32 4196128
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1) #6, !srcloc !11
  %43 = icmp eq i32 %12, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %1
  call void @nvkm_snprintbf(ptr noundef nonnull %3, i32 noundef 128, ptr noundef nonnull @nv10_gr_intr_name, i32 noundef %12) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @nv04_gr_nsource, i32 noundef %15) #6
  call void @nvkm_snprintbf(ptr noundef nonnull %5, i32 noundef 128, ptr noundef nonnull @nv10_gr_nstatus, i32 noundef %18) #6
  %45 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 4
  %53 = icmp eq ptr %38, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %38, i32 0, i32 3, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_client, ptr %56, i32 0, i32 1
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi ptr [ %57, %54 ], [ @.str.3, %48 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.2, ptr noundef %52, i32 noundef %12, ptr noundef nonnull %3, i32 noundef %15, ptr noundef nonnull %4, i32 noundef %18, ptr noundef nonnull %5, i32 noundef %23, ptr noundef %59, i32 noundef %25, i32 noundef %35, i32 noundef %26, i32 noundef %29) #7
  br label %60

60:                                               ; preds = %58, %44, %1
  %61 = load ptr, ptr %36, align 8
  %62 = load i32, ptr %6, align 4
  call void @nvkm_fifo_chan_put(ptr noundef %61, i32 noundef %62, ptr noundef nonnull %2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_fifo_chan_chid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_fifo_chan_put(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nv20_gr, ptr %0, i32 0, i32 1
  %5 = tail call i32 @nvkm_memory_new(ptr noundef %3, i32 noundef 0, i64 noundef 128, i32 noundef 16, i1 noundef zeroext true, ptr noundef %4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_init(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nv20_gr, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_memory_func, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i64 %10(ptr noundef %7) #6
  %12 = lshr i64 %11, 4
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4196224
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #6, !srcloc !11
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 32
  %20 = load ptr, ptr %14, align 4
  %21 = getelementptr i8, ptr %20, i32 4196176
  tail call void asm sideeffect "dsb st", "~{memory}"() #6
  tail call void @arm_heavy_mb() #6
  br i1 %19, label %22, label %81

22:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 3997696) #6, !srcloc !11
  %23 = load ptr, ptr %14, align 4
  %24 = getelementptr i8, ptr %23, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 0) #6, !srcloc !11
  %25 = load ptr, ptr %14, align 4
  %26 = getelementptr i8, ptr %25, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 0) #6, !srcloc !11
  %27 = load ptr, ptr %14, align 4
  %28 = getelementptr i8, ptr %27, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 0) #6, !srcloc !11
  %29 = load ptr, ptr %14, align 4
  %30 = getelementptr i8, ptr %29, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #6, !srcloc !11
  %31 = load ptr, ptr %14, align 4
  %32 = getelementptr i8, ptr %31, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 0) #6, !srcloc !11
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr i8, ptr %33, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #6, !srcloc !11
  %35 = load ptr, ptr %14, align 4
  %36 = getelementptr i8, ptr %35, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #6, !srcloc !11
  %37 = load ptr, ptr %14, align 4
  %38 = getelementptr i8, ptr %37, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #6, !srcloc !11
  %39 = load ptr, ptr %14, align 4
  %40 = getelementptr i8, ptr %39, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #6, !srcloc !11
  %41 = load ptr, ptr %14, align 4
  %42 = getelementptr i8, ptr %41, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #6, !srcloc !11
  %43 = load ptr, ptr %14, align 4
  %44 = getelementptr i8, ptr %43, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #6, !srcloc !11
  %45 = load ptr, ptr %14, align 4
  %46 = getelementptr i8, ptr %45, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 0) #6, !srcloc !11
  %47 = load ptr, ptr %14, align 4
  %48 = getelementptr i8, ptr %47, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #6, !srcloc !11
  %49 = load ptr, ptr %14, align 4
  %50 = getelementptr i8, ptr %49, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #6, !srcloc !11
  %51 = load ptr, ptr %14, align 4
  %52 = getelementptr i8, ptr %51, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #6, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %53

53:                                               ; preds = %58, %22
  %54 = load ptr, ptr %14, align 4
  %55 = getelementptr i8, ptr %54, i32 4196096
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %53
  %59 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %60 = icmp sgt i64 %59, -1
  br i1 %60, label %53, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %2, align 8
  %63 = getelementptr inbounds %struct.nvkm_timer, ptr %62, i32 0, i32 1, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = call ptr @dev_driver_string(ptr noundef %66) #6
  %68 = load ptr, ptr %2, align 8
  %69 = getelementptr inbounds %struct.nvkm_timer, ptr %68, i32 0, i32 1, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.device, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load ptr, ptr %72, align 4
  br label %78

78:                                               ; preds = %76, %61
  %79 = phi ptr [ %77, %76 ], [ %74, %61 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 246, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %67, ptr noundef %79) #6
  br label %80

80:                                               ; preds = %78, %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %117

81:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 46661632) #6, !srcloc !11
  br label %82

82:                                               ; preds = %82, %81
  %83 = phi i32 [ 0, %81 ], [ %86, %82 ]
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr i8, ptr %84, i32 4196180
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 0) #6, !srcloc !11
  %86 = add nuw nsw i32 %83, 1
  %87 = icmp eq i32 %86, 32
  br i1 %87, label %88, label %82

88:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %5, i64 noundef 2000000000, ptr noundef nonnull %3) #6
  br label %89

89:                                               ; preds = %94, %88
  %90 = load ptr, ptr %14, align 4
  %91 = getelementptr i8, ptr %90, i32 4196096
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %116, label %94

94:                                               ; preds = %89
  %95 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %96 = icmp sgt i64 %95, -1
  br i1 %96, label %89, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.nvkm_timer, ptr %98, i32 0, i32 1, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = call ptr @dev_driver_string(ptr noundef %102) #6
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct.nvkm_timer, ptr %104, i32 0, i32 1, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 3
  %110 = load ptr, ptr %109, align 4
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %97
  %113 = load ptr, ptr %108, align 4
  br label %114

114:                                              ; preds = %112, %97
  %115 = phi ptr [ %113, %112 ], [ %110, %97 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 254, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %103, ptr noundef %115) #6
  br label %116

116:                                              ; preds = %114, %89
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  br label %117

117:                                              ; preds = %116, %80
  %118 = load ptr, ptr %14, align 4
  %119 = getelementptr i8, ptr %118, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 -1) #6, !srcloc !11
  %120 = load ptr, ptr %14, align 4
  %121 = getelementptr i8, ptr %120, i32 4194624
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 -1) #6, !srcloc !11
  %122 = load ptr, ptr %14, align 4
  %123 = getelementptr i8, ptr %122, i32 4194432
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 -1) #6, !srcloc !11
  %124 = load ptr, ptr %14, align 4
  %125 = getelementptr i8, ptr %124, i32 4194432
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %125, i32 0) #6, !srcloc !11
  %126 = load ptr, ptr %14, align 4
  %127 = getelementptr i8, ptr %126, i32 4194436
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 1148672) #6, !srcloc !11
  %128 = load ptr, ptr %14, align 4
  %129 = getelementptr i8, ptr %128, i32 4194444
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %129, i32 -204602251) #6, !srcloc !11
  %130 = load ptr, ptr %14, align 4
  %131 = getelementptr i8, ptr %130, i32 4194448
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 0) #6, !srcloc !11
  %132 = load ptr, ptr %14, align 4
  %133 = getelementptr i8, ptr %132, i32 4194460
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 64) #6, !srcloc !11
  %134 = load i32, ptr %17, align 4
  %135 = icmp ugt i32 %134, 36
  %136 = load ptr, ptr %14, align 4
  br i1 %135, label %137, label %149

137:                                              ; preds = %117
  %138 = getelementptr i8, ptr %136, i32 4196496
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 11063295) #6, !srcloc !11
  %139 = load ptr, ptr %14, align 4
  %140 = getelementptr i8, ptr %139, i32 4195856
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %140, i32 810229686) #6, !srcloc !11
  %141 = load ptr, ptr %14, align 4
  %142 = getelementptr i8, ptr %141, i32 4197248
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 482162819) #6, !srcloc !11
  %143 = load ptr, ptr %14, align 4
  %144 = getelementptr i8, ptr %143, i32 4197252
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 1140850688) #6, !srcloc !11
  %145 = load ptr, ptr %14, align 4
  %146 = getelementptr i8, ptr %145, i32 4194456
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 1073741952) #6, !srcloc !11
  %147 = load ptr, ptr %14, align 4
  %148 = getelementptr i8, ptr %147, i32 4197256
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 255) #6, !srcloc !11
  br label %167

149:                                              ; preds = %117
  %150 = getelementptr i8, ptr %136, i32 4196480
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 575455) #6, !srcloc !11
  %151 = load ptr, ptr %14, align 4
  %152 = getelementptr i8, ptr %151, i32 4194452
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 5) #6, !srcloc !11
  %153 = load ptr, ptr %14, align 4
  %154 = getelementptr i8, ptr %153, i32 4197248
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %154, i32 1173021198) #6, !srcloc !11
  %155 = load ptr, ptr %14, align 4
  %156 = getelementptr i8, ptr %155, i32 4197252
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 603979776) #6, !srcloc !11
  %157 = load ptr, ptr %14, align 4
  %158 = getelementptr i8, ptr %157, i32 4194456
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 64) #6, !srcloc !11
  %159 = load ptr, ptr %14, align 4
  %160 = getelementptr i8, ptr %159, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 14680120) #6, !srcloc !11
  %161 = load ptr, ptr %14, align 4
  %162 = getelementptr i8, ptr %161, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %162, i32 48) #6, !srcloc !11
  %163 = load ptr, ptr %14, align 4
  %164 = getelementptr i8, ptr %163, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %164, i32 14745656) #6, !srcloc !11
  %165 = load ptr, ptr %14, align 4
  %166 = getelementptr i8, ptr %165, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %166, i32 48) #6, !srcloc !11
  br label %167

167:                                              ; preds = %149, %137
  %168 = load ptr, ptr %14, align 4
  %169 = getelementptr i8, ptr %168, i32 1049380
  %170 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %169) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %171 = load ptr, ptr %14, align 4
  %172 = getelementptr i8, ptr %171, i32 4196768
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %172, i32 %170) #6, !srcloc !11
  %173 = load ptr, ptr %14, align 4
  %174 = getelementptr i8, ptr %173, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %174, i32 15335436) #6, !srcloc !11
  %175 = load ptr, ptr %14, align 4
  %176 = getelementptr i8, ptr %175, i32 1049380
  %177 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %176) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %178 = load ptr, ptr %14, align 4
  %179 = getelementptr i8, ptr %178, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %179, i32 %177) #6, !srcloc !11
  %180 = load ptr, ptr %14, align 4
  %181 = getelementptr i8, ptr %180, i32 4194628
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 268435712) #6, !srcloc !11
  %182 = load ptr, ptr %14, align 4
  %183 = getelementptr i8, ptr %182, i32 4196116
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 -1) #6, !srcloc !11
  %184 = load ptr, ptr %14, align 4
  %185 = getelementptr i8, ptr %184, i32 4196112
  %186 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %185) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %187 = and i32 %186, 524032
  %188 = load ptr, ptr %14, align 4
  %189 = getelementptr i8, ptr %188, i32 4196112
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %187) #6, !srcloc !11
  %190 = load ptr, ptr %14, align 4
  %191 = getelementptr i8, ptr %190, i32 4196112
  %192 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %193 = or i32 %192, 131328
  %194 = load ptr, ptr %14, align 4
  %195 = getelementptr i8, ptr %194, i32 4196112
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %193) #6, !srcloc !11
  %196 = load ptr, ptr %5, align 8
  %197 = getelementptr inbounds %struct.nvkm_device_func, ptr %196, i32 0, i32 7
  %198 = load ptr, ptr %197, align 4
  %199 = call i32 %198(ptr noundef %5, i32 noundef 1) #6
  %200 = load ptr, ptr %14, align 4
  %201 = getelementptr i8, ptr %200, i32 1049088
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %203 = load ptr, ptr %14, align 4
  %204 = getelementptr i8, ptr %203, i32 4196772
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %202) #6, !srcloc !11
  %205 = load ptr, ptr %14, align 4
  %206 = getelementptr i8, ptr %205, i32 1049092
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %208 = load ptr, ptr %14, align 4
  %209 = getelementptr i8, ptr %208, i32 4196776
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %209, i32 %207) #6, !srcloc !11
  %210 = load ptr, ptr %14, align 4
  %211 = getelementptr i8, ptr %210, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %211, i32 15335424) #6, !srcloc !11
  %212 = load ptr, ptr %14, align 4
  %213 = getelementptr i8, ptr %212, i32 1049088
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %213) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %215 = load ptr, ptr %14, align 4
  %216 = getelementptr i8, ptr %215, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 %214) #6, !srcloc !11
  %217 = load ptr, ptr %14, align 4
  %218 = getelementptr i8, ptr %217, i32 4196176
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %218, i32 15335428) #6, !srcloc !11
  %219 = load ptr, ptr %14, align 4
  %220 = getelementptr i8, ptr %219, i32 1049092
  %221 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %220) #6, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %222 = load ptr, ptr %14, align 4
  %223 = getelementptr i8, ptr %222, i32 4196180
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %223, i32 %221) #6, !srcloc !11
  %224 = load ptr, ptr %14, align 4
  %225 = getelementptr i8, ptr %224, i32 4196384
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 0) #6, !srcloc !11
  %226 = load ptr, ptr %14, align 4
  %227 = getelementptr i8, ptr %226, i32 4196388
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 0) #6, !srcloc !11
  %228 = add i32 %199, -2
  %229 = load ptr, ptr %14, align 4
  %230 = getelementptr i8, ptr %229, i32 4196452
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %228) #6, !srcloc !11
  %231 = load ptr, ptr %14, align 4
  %232 = getelementptr i8, ptr %231, i32 4196456
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %232, i32 %228) #6, !srcloc !11
  %233 = load ptr, ptr %14, align 4
  %234 = getelementptr i8, ptr %233, i32 4197152
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %234, i32 0) #6, !srcloc !11
  %235 = load ptr, ptr %14, align 4
  %236 = getelementptr i8, ptr %235, i32 4197124
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %236, i32 -1) #6, !srcloc !11
  %237 = load ptr, ptr %14, align 4
  %238 = getelementptr i8, ptr %237, i32 4195644
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 0) #6, !srcloc !11
  %239 = load ptr, ptr %14, align 4
  %240 = getelementptr i8, ptr %239, i32 4195648
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %240, i32 0) #6, !srcloc !11
  %241 = load ptr, ptr %14, align 4
  %242 = getelementptr i8, ptr %241, i32 4195652
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 32767) #6, !srcloc !11
  %243 = load ptr, ptr %14, align 4
  %244 = getelementptr i8, ptr %243, i32 4195656
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 32767) #6, !srcloc !11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv20_gr_dtor(ptr noundef returned %0) #0 {
  %2 = getelementptr inbounds %struct.nv20_gr, ptr %0, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %2) #6
  ret ptr %0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 96) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  store ptr %7, ptr %4, align 4
  %10 = tail call i32 @nvkm_gr_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext true, ptr noundef nonnull %7) #6
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ %10, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gr_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv20_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 96) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  store ptr %6, ptr %3, align 4
  %9 = tail call i32 @nvkm_gr_ctor(ptr noundef nonnull @nv20_gr, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef nonnull %6) #6
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi i32 [ %9, %8 ], [ -12, %4 ]
  ret i32 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv20_gr_chan_new(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %6 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 88) #8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %402, label %8

8:                                                ; preds = %4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv20_gr_chan, ptr noundef %2, ptr noundef nonnull %6) #6
  %9 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 1
  store ptr %0, ptr %9, align 8
  %10 = getelementptr inbounds %struct.nvkm_fifo_chan, ptr %1, i32 0, i32 5
  %11 = load i16, ptr %10, align 8
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 2
  store i32 %12, ptr %13, align 4
  store ptr %6, ptr %3, align 4
  %14 = getelementptr inbounds %struct.nvkm_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nv20_gr_chan, ptr %6, i32 0, i32 3
  %17 = tail call i32 @nvkm_memory_new(ptr noundef %15, i32 noundef 0, i64 noundef 14320, i32 noundef 16, i1 noundef zeroext true, ptr noundef %16) #6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %402

19:                                               ; preds = %8
  %20 = load ptr, ptr %16, align 8
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nvkm_memory_func, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = tail call ptr %23(ptr noundef %20) #6
  %25 = load ptr, ptr %16, align 8
  %26 = getelementptr inbounds %struct.nvkm_memory, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %13, align 4
  %31 = shl i32 %30, 24
  %32 = or i32 %31, 1
  tail call void %29(ptr noundef %25, i64 noundef 0, i32 noundef %32) #6
  %33 = load ptr, ptr %16, align 8
  %34 = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %33, i64 noundef 828, i32 noundef -65536) #6
  %38 = load ptr, ptr %16, align 8
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  tail call void %42(ptr noundef %38, i64 noundef 928, i32 noundef 268369920) #6
  %43 = load ptr, ptr %16, align 8
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  tail call void %47(ptr noundef %43, i64 noundef 932, i32 noundef 268369920) #6
  %48 = load ptr, ptr %16, align 8
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef %48, i64 noundef 1148, i32 noundef 257) #6
  %53 = load ptr, ptr %16, align 8
  %54 = getelementptr inbounds %struct.nvkm_memory, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  tail call void %57(ptr noundef %53, i64 noundef 1168, i32 noundef 273) #6
  %58 = load ptr, ptr %16, align 8
  %59 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  tail call void %62(ptr noundef %58, i64 noundef 1192, i32 noundef 1145044992) #6
  %63 = load ptr, ptr %16, align 8
  %64 = getelementptr inbounds %struct.nvkm_memory, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %63, i64 noundef 1236, i32 noundef 197379) #6
  %68 = load ptr, ptr %16, align 8
  %69 = getelementptr inbounds %struct.nvkm_memory, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  tail call void %72(ptr noundef %68, i64 noundef 1240, i32 noundef 197379) #6
  %73 = load ptr, ptr %16, align 8
  %74 = getelementptr inbounds %struct.nvkm_memory, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef %73, i64 noundef 1244, i32 noundef 197379) #6
  %78 = load ptr, ptr %16, align 8
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %80, i32 0, i32 1
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef %78, i64 noundef 1248, i32 noundef 197379) #6
  %83 = load ptr, ptr %16, align 8
  %84 = getelementptr inbounds %struct.nvkm_memory, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  tail call void %87(ptr noundef %83, i64 noundef 1268, i32 noundef 524288) #6
  %88 = load ptr, ptr %16, align 8
  %89 = getelementptr inbounds %struct.nvkm_memory, ptr %88, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %90, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  tail call void %92(ptr noundef %88, i64 noundef 1272, i32 noundef 524288) #6
  %93 = load ptr, ptr %16, align 8
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  tail call void %97(ptr noundef %93, i64 noundef 1276, i32 noundef 524288) #6
  %98 = load ptr, ptr %16, align 8
  %99 = getelementptr inbounds %struct.nvkm_memory, ptr %98, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %100, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef %98, i64 noundef 1280, i32 noundef 524288) #6
  %103 = load ptr, ptr %16, align 8
  %104 = getelementptr inbounds %struct.nvkm_memory, ptr %103, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  tail call void %107(ptr noundef %103, i64 noundef 1292, i32 noundef 16850944) #6
  %108 = load ptr, ptr %16, align 8
  %109 = getelementptr inbounds %struct.nvkm_memory, ptr %108, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  tail call void %112(ptr noundef %108, i64 noundef 1296, i32 noundef 16850944) #6
  %113 = load ptr, ptr %16, align 8
  %114 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef %113, i64 noundef 1300, i32 noundef 16850944) #6
  %118 = load ptr, ptr %16, align 8
  %119 = getelementptr inbounds %struct.nvkm_memory, ptr %118, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  tail call void %122(ptr noundef %118, i64 noundef 1304, i32 noundef 16850944) #6
  %123 = load ptr, ptr %16, align 8
  %124 = getelementptr inbounds %struct.nvkm_memory, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  tail call void %127(ptr noundef %123, i64 noundef 1308, i32 noundef 67000) #6
  %128 = load ptr, ptr %16, align 8
  %129 = getelementptr inbounds %struct.nvkm_memory, ptr %128, i32 0, i32 1
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  tail call void %132(ptr noundef %128, i64 noundef 1312, i32 noundef 67000) #6
  %133 = load ptr, ptr %16, align 8
  %134 = getelementptr inbounds %struct.nvkm_memory, ptr %133, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %135, i32 0, i32 1
  %137 = load ptr, ptr %136, align 4
  tail call void %137(ptr noundef %133, i64 noundef 1316, i32 noundef 67000) #6
  %138 = load ptr, ptr %16, align 8
  %139 = getelementptr inbounds %struct.nvkm_memory, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  tail call void %142(ptr noundef %138, i64 noundef 1320, i32 noundef 67000) #6
  %143 = load ptr, ptr %16, align 8
  %144 = getelementptr inbounds %struct.nvkm_memory, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  tail call void %147(ptr noundef %143, i64 noundef 1324, i32 noundef 524296) #6
  %148 = load ptr, ptr %16, align 8
  %149 = getelementptr inbounds %struct.nvkm_memory, ptr %148, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %150, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  tail call void %152(ptr noundef %148, i64 noundef 1328, i32 noundef 524296) #6
  %153 = load ptr, ptr %16, align 8
  %154 = getelementptr inbounds %struct.nvkm_memory, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %155, i32 0, i32 1
  %157 = load ptr, ptr %156, align 4
  tail call void %157(ptr noundef %153, i64 noundef 1332, i32 noundef 524296) #6
  %158 = load ptr, ptr %16, align 8
  %159 = getelementptr inbounds %struct.nvkm_memory, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %158, i64 noundef 1336, i32 noundef 524296) #6
  %163 = load ptr, ptr %16, align 8
  %164 = getelementptr inbounds %struct.nvkm_memory, ptr %163, i32 0, i32 1
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %165, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  tail call void %167(ptr noundef %163, i64 noundef 1372, i32 noundef 134152192) #6
  %168 = load ptr, ptr %16, align 8
  %169 = getelementptr inbounds %struct.nvkm_memory, ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %170, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  tail call void %172(ptr noundef %168, i64 noundef 1376, i32 noundef 134152192) #6
  %173 = load ptr, ptr %16, align 8
  %174 = getelementptr inbounds %struct.nvkm_memory, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %175, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  tail call void %177(ptr noundef %173, i64 noundef 1380, i32 noundef 134152192) #6
  %178 = load ptr, ptr %16, align 8
  %179 = getelementptr inbounds %struct.nvkm_memory, ptr %178, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %180, i32 0, i32 1
  %182 = load ptr, ptr %181, align 4
  tail call void %182(ptr noundef %178, i64 noundef 1384, i32 noundef 134152192) #6
  %183 = load ptr, ptr %16, align 8
  %184 = getelementptr inbounds %struct.nvkm_memory, ptr %183, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %185, i32 0, i32 1
  %187 = load ptr, ptr %186, align 4
  tail call void %187(ptr noundef %183, i64 noundef 1388, i32 noundef 134152192) #6
  %188 = load ptr, ptr %16, align 8
  %189 = getelementptr inbounds %struct.nvkm_memory, ptr %188, i32 0, i32 1
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %190, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  tail call void %192(ptr noundef %188, i64 noundef 1392, i32 noundef 134152192) #6
  %193 = load ptr, ptr %16, align 8
  %194 = getelementptr inbounds %struct.nvkm_memory, ptr %193, i32 0, i32 1
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %195, i32 0, i32 1
  %197 = load ptr, ptr %196, align 4
  tail call void %197(ptr noundef %193, i64 noundef 1396, i32 noundef 134152192) #6
  %198 = load ptr, ptr %16, align 8
  %199 = getelementptr inbounds %struct.nvkm_memory, ptr %198, i32 0, i32 1
  %200 = load ptr, ptr %199, align 4
  %201 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %200, i32 0, i32 1
  %202 = load ptr, ptr %201, align 4
  tail call void %202(ptr noundef %198, i64 noundef 1400, i32 noundef 134152192) #6
  %203 = load ptr, ptr %16, align 8
  %204 = getelementptr inbounds %struct.nvkm_memory, ptr %203, i32 0, i32 1
  %205 = load ptr, ptr %204, align 4
  %206 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %205, i32 0, i32 1
  %207 = load ptr, ptr %206, align 4
  tail call void %207(ptr noundef %203, i64 noundef 1404, i32 noundef 134152192) #6
  %208 = load ptr, ptr %16, align 8
  %209 = getelementptr inbounds %struct.nvkm_memory, ptr %208, i32 0, i32 1
  %210 = load ptr, ptr %209, align 4
  %211 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %210, i32 0, i32 1
  %212 = load ptr, ptr %211, align 4
  tail call void %212(ptr noundef %208, i64 noundef 1408, i32 noundef 134152192) #6
  %213 = load ptr, ptr %16, align 8
  %214 = getelementptr inbounds %struct.nvkm_memory, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  %216 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %215, i32 0, i32 1
  %217 = load ptr, ptr %216, align 4
  tail call void %217(ptr noundef %213, i64 noundef 1412, i32 noundef 134152192) #6
  %218 = load ptr, ptr %16, align 8
  %219 = getelementptr inbounds %struct.nvkm_memory, ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 4
  %221 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %220, i32 0, i32 1
  %222 = load ptr, ptr %221, align 4
  tail call void %222(ptr noundef %218, i64 noundef 1416, i32 noundef 134152192) #6
  %223 = load ptr, ptr %16, align 8
  %224 = getelementptr inbounds %struct.nvkm_memory, ptr %223, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %225, i32 0, i32 1
  %227 = load ptr, ptr %226, align 4
  tail call void %227(ptr noundef %223, i64 noundef 1420, i32 noundef 134152192) #6
  %228 = load ptr, ptr %16, align 8
  %229 = getelementptr inbounds %struct.nvkm_memory, ptr %228, i32 0, i32 1
  %230 = load ptr, ptr %229, align 4
  %231 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %230, i32 0, i32 1
  %232 = load ptr, ptr %231, align 4
  tail call void %232(ptr noundef %228, i64 noundef 1424, i32 noundef 134152192) #6
  %233 = load ptr, ptr %16, align 8
  %234 = getelementptr inbounds %struct.nvkm_memory, ptr %233, i32 0, i32 1
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  tail call void %237(ptr noundef %233, i64 noundef 1428, i32 noundef 134152192) #6
  %238 = load ptr, ptr %16, align 8
  %239 = getelementptr inbounds %struct.nvkm_memory, ptr %238, i32 0, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %240, i32 0, i32 1
  %242 = load ptr, ptr %241, align 4
  tail call void %242(ptr noundef %238, i64 noundef 1432, i32 noundef 134152192) #6
  %243 = load ptr, ptr %16, align 8
  %244 = getelementptr inbounds %struct.nvkm_memory, ptr %243, i32 0, i32 1
  %245 = load ptr, ptr %244, align 4
  %246 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %245, i32 0, i32 1
  %247 = load ptr, ptr %246, align 4
  tail call void %247(ptr noundef %243, i64 noundef 1444, i32 noundef 1266679807) #6
  %248 = load ptr, ptr %16, align 8
  %249 = getelementptr inbounds %struct.nvkm_memory, ptr %248, i32 0, i32 1
  %250 = load ptr, ptr %249, align 4
  %251 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %250, i32 0, i32 1
  %252 = load ptr, ptr %251, align 4
  tail call void %252(ptr noundef %248, i64 noundef 1532, i32 noundef 1) #6
  %253 = load ptr, ptr %16, align 8
  %254 = getelementptr inbounds %struct.nvkm_memory, ptr %253, i32 0, i32 1
  %255 = load ptr, ptr %254, align 4
  %256 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  tail call void %257(ptr noundef %253, i64 noundef 1540, i32 noundef 16384) #6
  %258 = load ptr, ptr %16, align 8
  %259 = getelementptr inbounds %struct.nvkm_memory, ptr %258, i32 0, i32 1
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %260, i32 0, i32 1
  %262 = load ptr, ptr %261, align 4
  tail call void %262(ptr noundef %258, i64 noundef 1552, i32 noundef 1) #6
  %263 = load ptr, ptr %16, align 8
  %264 = getelementptr inbounds %struct.nvkm_memory, ptr %263, i32 0, i32 1
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %265, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  tail call void %267(ptr noundef %263, i64 noundef 1560, i32 noundef 262144) #6
  %268 = load ptr, ptr %16, align 8
  %269 = getelementptr inbounds %struct.nvkm_memory, ptr %268, i32 0, i32 1
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %270, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  tail call void %272(ptr noundef %268, i64 noundef 1564, i32 noundef 65536) #6
  br label %273

273:                                              ; preds = %273, %19
  %274 = phi i32 [ 7196, %19 ], [ %295, %273 ]
  %275 = load ptr, ptr %16, align 8
  %276 = getelementptr inbounds %struct.nvkm_memory, ptr %275, i32 0, i32 1
  %277 = load ptr, ptr %276, align 4
  %278 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %277, i32 0, i32 1
  %279 = load ptr, ptr %278, align 4
  %280 = zext i32 %274 to i64
  tail call void %279(ptr noundef %275, i64 noundef %280, i32 noundef 275779577) #6
  %281 = load ptr, ptr %16, align 8
  %282 = getelementptr inbounds %struct.nvkm_memory, ptr %281, i32 0, i32 1
  %283 = load ptr, ptr %282, align 4
  %284 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %283, i32 0, i32 1
  %285 = load ptr, ptr %284, align 4
  %286 = add nuw nsw i32 %274, 4
  %287 = zext i32 %286 to i64
  tail call void %285(ptr noundef %281, i64 noundef %287, i32 noundef 70649964) #6
  %288 = load ptr, ptr %16, align 8
  %289 = getelementptr inbounds %struct.nvkm_memory, ptr %288, i32 0, i32 1
  %290 = load ptr, ptr %289, align 4
  %291 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %290, i32 0, i32 1
  %292 = load ptr, ptr %291, align 4
  %293 = add nuw nsw i32 %274, 8
  %294 = zext i32 %293 to i64
  tail call void %292(ptr noundef %288, i64 noundef %294, i32 noundef 786459) #6
  %295 = add nuw nsw i32 %274, 16
  %296 = icmp ult i32 %274, 9341
  br i1 %296, label %273, label %297

297:                                              ; preds = %273
  %298 = load ptr, ptr %16, align 8
  %299 = getelementptr inbounds %struct.nvkm_memory, ptr %298, i32 0, i32 1
  %300 = load ptr, ptr %299, align 4
  %301 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %300, i32 0, i32 1
  %302 = load ptr, ptr %301, align 4
  tail call void %302(ptr noundef %298, i64 noundef 10268, i32 noundef 1065353216) #6
  %303 = load ptr, ptr %16, align 8
  %304 = getelementptr inbounds %struct.nvkm_memory, ptr %303, i32 0, i32 1
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 4
  tail call void %307(ptr noundef %303, i64 noundef 10288, i32 noundef 1065353216) #6
  %308 = load ptr, ptr %16, align 8
  %309 = getelementptr inbounds %struct.nvkm_memory, ptr %308, i32 0, i32 1
  %310 = load ptr, ptr %309, align 4
  %311 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %310, i32 0, i32 1
  %312 = load ptr, ptr %311, align 4
  tail call void %312(ptr noundef %308, i64 noundef 10332, i32 noundef 1073741824) #6
  %313 = load ptr, ptr %16, align 8
  %314 = getelementptr inbounds %struct.nvkm_memory, ptr %313, i32 0, i32 1
  %315 = load ptr, ptr %314, align 4
  %316 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %315, i32 0, i32 1
  %317 = load ptr, ptr %316, align 4
  tail call void %317(ptr noundef %313, i64 noundef 10336, i32 noundef 1065353216) #6
  %318 = load ptr, ptr %16, align 8
  %319 = getelementptr inbounds %struct.nvkm_memory, ptr %318, i32 0, i32 1
  %320 = load ptr, ptr %319, align 4
  %321 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %320, i32 0, i32 1
  %322 = load ptr, ptr %321, align 4
  tail call void %322(ptr noundef %318, i64 noundef 10340, i32 noundef 1056964608) #6
  %323 = load ptr, ptr %16, align 8
  %324 = getelementptr inbounds %struct.nvkm_memory, ptr %323, i32 0, i32 1
  %325 = load ptr, ptr %324, align 4
  %326 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %325, i32 0, i32 1
  %327 = load ptr, ptr %326, align 4
  tail call void %327(ptr noundef %323, i64 noundef 10348, i32 noundef 1073741824) #6
  %328 = load ptr, ptr %16, align 8
  %329 = getelementptr inbounds %struct.nvkm_memory, ptr %328, i32 0, i32 1
  %330 = load ptr, ptr %329, align 4
  %331 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %330, i32 0, i32 1
  %332 = load ptr, ptr %331, align 4
  tail call void %332(ptr noundef %328, i64 noundef 10352, i32 noundef 1065353216) #6
  %333 = load ptr, ptr %16, align 8
  %334 = getelementptr inbounds %struct.nvkm_memory, ptr %333, i32 0, i32 1
  %335 = load ptr, ptr %334, align 4
  %336 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %335, i32 0, i32 1
  %337 = load ptr, ptr %336, align 4
  tail call void %337(ptr noundef %333, i64 noundef 10360, i32 noundef -1082130432) #6
  %338 = load ptr, ptr %16, align 8
  %339 = getelementptr inbounds %struct.nvkm_memory, ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %339, align 4
  %341 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %340, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  tail call void %342(ptr noundef %338, i64 noundef 10368, i32 noundef -1082130432) #6
  %343 = load ptr, ptr %16, align 8
  %344 = getelementptr inbounds %struct.nvkm_memory, ptr %343, i32 0, i32 1
  %345 = load ptr, ptr %344, align 4
  %346 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %345, i32 0, i32 1
  %347 = load ptr, ptr %346, align 4
  tail call void %347(ptr noundef %343, i64 noundef 13476, i32 noundef 1040384) #6
  %348 = load ptr, ptr %16, align 8
  %349 = getelementptr inbounds %struct.nvkm_memory, ptr %348, i32 0, i32 1
  %350 = load ptr, ptr %349, align 4
  %351 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %350, i32 0, i32 1
  %352 = load ptr, ptr %351, align 4
  tail call void %352(ptr noundef %348, i64 noundef 13616, i32 noundef 1016) #6
  %353 = load ptr, ptr %16, align 8
  %354 = getelementptr inbounds %struct.nvkm_memory, ptr %353, i32 0, i32 1
  %355 = load ptr, ptr %354, align 4
  %356 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %355, i32 0, i32 1
  %357 = load ptr, ptr %356, align 4
  tail call void %357(ptr noundef %353, i64 noundef 13632, i32 noundef 3137536) #6
  %358 = load ptr, ptr %16, align 8
  %359 = getelementptr inbounds %struct.nvkm_memory, ptr %358, i32 0, i32 1
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %360, i32 0, i32 1
  %362 = load ptr, ptr %361, align 4
  tail call void %362(ptr noundef %358, i64 noundef 13660, i32 noundef 1856124) #6
  %363 = load ptr, ptr %16, align 8
  %364 = getelementptr inbounds %struct.nvkm_memory, ptr %363, i32 0, i32 1
  %365 = load ptr, ptr %364, align 4
  %366 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %365, i32 0, i32 1
  %367 = load ptr, ptr %366, align 4
  tail call void %367(ptr noundef %363, i64 noundef 13664, i32 noundef 1856124) #6
  %368 = load ptr, ptr %16, align 8
  %369 = getelementptr inbounds %struct.nvkm_memory, ptr %368, i32 0, i32 1
  %370 = load ptr, ptr %369, align 4
  %371 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %370, i32 0, i32 1
  %372 = load ptr, ptr %371, align 4
  tail call void %372(ptr noundef %368, i64 noundef 13668, i32 noundef 1856124) #6
  %373 = load ptr, ptr %16, align 8
  %374 = getelementptr inbounds %struct.nvkm_memory, ptr %373, i32 0, i32 1
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %375, i32 0, i32 1
  %377 = load ptr, ptr %376, align 4
  tail call void %377(ptr noundef %373, i64 noundef 13672, i32 noundef 1856124) #6
  %378 = load ptr, ptr %16, align 8
  %379 = getelementptr inbounds %struct.nvkm_memory, ptr %378, i32 0, i32 1
  %380 = load ptr, ptr %379, align 4
  %381 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %380, i32 0, i32 1
  %382 = load ptr, ptr %381, align 4
  tail call void %382(ptr noundef %378, i64 noundef 13676, i32 noundef 1856124) #6
  %383 = load ptr, ptr %16, align 8
  %384 = getelementptr inbounds %struct.nvkm_memory, ptr %383, i32 0, i32 1
  %385 = load ptr, ptr %384, align 4
  %386 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %385, i32 0, i32 1
  %387 = load ptr, ptr %386, align 4
  tail call void %387(ptr noundef %383, i64 noundef 13680, i32 noundef 1856124) #6
  %388 = load ptr, ptr %16, align 8
  %389 = getelementptr inbounds %struct.nvkm_memory, ptr %388, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %390, i32 0, i32 1
  %392 = load ptr, ptr %391, align 4
  tail call void %392(ptr noundef %388, i64 noundef 13684, i32 noundef 1856124) #6
  %393 = load ptr, ptr %16, align 8
  %394 = getelementptr inbounds %struct.nvkm_memory, ptr %393, i32 0, i32 1
  %395 = load ptr, ptr %394, align 4
  %396 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %395, i32 0, i32 1
  %397 = load ptr, ptr %396, align 4
  tail call void %397(ptr noundef %393, i64 noundef 13688, i32 noundef 1856124) #6
  %398 = load ptr, ptr %16, align 8
  %399 = load ptr, ptr %398, align 4
  %400 = getelementptr inbounds %struct.nvkm_memory_func, ptr %399, i32 0, i32 8
  %401 = load ptr, ptr %400, align 4
  tail call void %401(ptr noundef %398) #6
  br label %402

402:                                              ; preds = %297, %8, %4
  %403 = phi i32 [ 0, %297 ], [ -12, %4 ], [ %17, %8 ]
  ret i32 %403
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

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
!8 = !{i64 3956413}
!9 = !{i64 2151495866}
!10 = !{i64 2151497088}
!11 = !{i64 3955995}
!12 = !{!"auto-init"}
