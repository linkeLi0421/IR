; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv50.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.123 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.123 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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

@nv50_mpeg_cclass = dso_local constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_mpeg_cclass_bind, ptr null }, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/mpeg/nv50.c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%s: timeout %08x\0A\00", align 1
@nv31_mpeg_object = external dso_local constant %struct.nvkm_object_func, align 4
@nv50_mpeg = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.122, ptr, [2 x %struct.nvkm_sclass] } { ptr null, ptr null, ptr null, ptr null, ptr @nv50_mpeg_init, ptr null, ptr @nv50_mpeg_intr, ptr null, ptr null, %struct.anon zeroinitializer, %struct.anon.122 zeroinitializer, ptr @nv50_mpeg_cclass, [2 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 12660, ptr @nv31_mpeg_object, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_mpeg_cclass_bind(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_engine, ptr %6, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_gpuobj_new(ptr noundef %8, i32 noundef 512, i32 noundef %2, i1 noundef zeroext true, ptr noundef %1, ptr noundef %3) #5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call ptr %14(ptr noundef %12) #5
  %16 = load ptr, ptr %3, align 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  tail call void %19(ptr noundef %16, i32 noundef 112, i32 noundef 8396481) #5
  %20 = load ptr, ptr %3, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void %23(ptr noundef %20, i32 noundef 124, i32 noundef 892) #5
  %24 = load ptr, ptr %3, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %24) #5
  br label %28

28:                                               ; preds = %11, %4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_mpeg_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 45312
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 45616
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 45620
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 45624
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %17 = and i32 %7, 16777216
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = icmp eq i32 %10, 32
  %21 = icmp eq i32 %13, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 45832
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 256) #5, !srcloc !11
  %26 = and i32 %7, -16777217
  br label %27

27:                                               ; preds = %23, %1
  %28 = phi i32 [ %26, %23 ], [ %7, %1 ]
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27, %19
  %31 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = icmp ugt i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load ptr, ptr %2, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef %38, i32 noundef %7, i32 noundef %10, i32 noundef %13, i32 noundef %16) #6
  br label %39

39:                                               ; preds = %34, %30, %27
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr i8, ptr %40, i32 45312
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %7) #5, !srcloc !11
  %42 = load ptr, ptr %4, align 4
  %43 = getelementptr i8, ptr %42, i32 45616
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 1) #5, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mpeg_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #5, !srcloc !11
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 45844
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 256) #5, !srcloc !11
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 45280
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 26) #5, !srcloc !11
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr i8, ptr %12, i32 45600
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 68) #5, !srcloc !11
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 45824
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 8396481) #5, !srcloc !11
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr i8, ptr %16, i32 45968
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 0) #5, !srcloc !11
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 45972
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #5, !srcloc !11
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr i8, ptr %20, i32 45976
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #5, !srcloc !11
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 45868
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #5, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %25 = or i32 %24, 1
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 45868
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #5, !srcloc !11
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i8, ptr %28, i32 45312
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #5, !srcloc !11
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 45376
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 -1) #5, !srcloc !11
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #5
  br label %32

32:                                               ; preds = %38, %1
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i8, ptr %33, i32 45568
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %71, label %38

38:                                               ; preds = %32
  %39 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #5
  %40 = icmp sgt i64 %39, -1
  br i1 %40, label %32, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %2, align 8
  %43 = getelementptr inbounds %struct.nvkm_timer, ptr %42, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nvkm_device, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8
  %47 = call ptr @dev_driver_string(ptr noundef %46) #5
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.nvkm_timer, ptr %48, i32 0, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load ptr, ptr %52, align 4
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi ptr [ %57, %56 ], [ %54, %41 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef %47, ptr noundef %59) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  %60 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %58
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr inbounds %struct.nvkm_engine, ptr %0, i32 0, i32 1, i32 4
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr i8, ptr %68, i32 45568
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #5, !srcloc !8
  call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.3, ptr noundef %67, i32 noundef %70) #6
  br label %72

71:                                               ; preds = %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #5
  br label %72

72:                                               ; preds = %71, %63, %58
  %73 = phi i32 [ 0, %71 ], [ -16, %63 ], [ -16, %58 ]
  ret i32 %73
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mpeg_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_engine_new_(ptr noundef nonnull @nv50_mpeg, ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext true, ptr noundef %3) #5
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_engine_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 3942755}
!9 = !{i64 2151482208}
!10 = !{i64 2151483430}
!11 = !{i64 3942337}
!12 = !{!"auto-init"}
