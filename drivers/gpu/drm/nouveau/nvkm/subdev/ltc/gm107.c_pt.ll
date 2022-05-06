; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gm107.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gm107.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_bitfield = type { i32, ptr }
%struct.nvkm_ltc_func = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_ltc = type { ptr, %struct.nvkm_subdev, i32, i32, %struct.mutex, i32, i32, ptr, i32, i32, [16 x [4 x i32]], [16 x i32], [16 x i32] }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gm107.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gf100_ltc_lts_intr_name = external dso_local constant [0 x %struct.nvkm_bitfield], align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: LTC%d_LTS%d: %08x [%s]\0A\00", align 1
@gm107_ltc = internal constant %struct.nvkm_ltc_func { ptr @gm107_ltc_oneinit, ptr @gm107_ltc_init, ptr @gm107_ltc_intr, ptr @gm107_ltc_cbc_clear, ptr @gm107_ltc_cbc_wait, i32 16, ptr @gm107_ltc_zbc_clear_color, ptr @gm107_ltc_zbc_clear_depth, ptr null, ptr @gf100_ltc_invalidate, ptr @gf100_ltc_flush }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_ltc_cbc_clear(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1565296
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #6, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 1565300
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #6, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 1565292
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = or i32 %13, 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 1565292
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_ltc_cbc_wait(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %11 = load i32, ptr %9, align 4
  br label %12

12:                                               ; preds = %58, %8
  %13 = phi i32 [ %6, %8 ], [ %59, %58 ]
  %14 = phi i32 [ %11, %8 ], [ %60, %58 ]
  %15 = phi i32 [ 0, %8 ], [ %61, %58 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %58, label %17

17:                                               ; preds = %12
  %18 = shl i32 %15, 13
  %19 = add i32 %18, 1311852
  br label %20

20:                                               ; preds = %52, %17
  %21 = phi i32 [ 0, %17 ], [ %53, %52 ]
  %22 = shl i32 %21, 9
  %23 = add i32 %19, %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !12
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %24

24:                                               ; preds = %30, %20
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %28 = and i32 %27, 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %24
  %31 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %32 = icmp sgt i64 %31, -1
  br i1 %32, label %24, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.nvkm_timer, ptr %34, i32 0, i32 1, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = call ptr @dev_driver_string(ptr noundef %38) #6
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.nvkm_timer, ptr %40, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %33
  %49 = load ptr, ptr %44, align 4
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi ptr [ %49, %48 ], [ %46, %33 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 47, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %39, ptr noundef %51) #6
  br label %52

52:                                               ; preds = %50, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %53 = add nuw i32 %21, 1
  %54 = load i32, ptr %9, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %20, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %5, align 4
  br label %58

58:                                               ; preds = %56, %12
  %59 = phi i32 [ %57, %56 ], [ %13, %12 ]
  %60 = phi i32 [ %54, %56 ], [ 0, %12 ]
  %61 = add nuw i32 %15, 1
  %62 = icmp ult i32 %61, %59
  br i1 %62, label %12, label %63

63:                                               ; preds = %58, %1
  ret void
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
define dso_local void @gm107_ltc_zbc_clear_color(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1565496
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %10 = and i32 %9, -16
  %11 = or i32 %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1565496
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = load i32, ptr %2, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 1565500
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !9
  %17 = getelementptr i32, ptr %2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 1565504
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !9
  %21 = getelementptr i32, ptr %2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i8, ptr %23, i32 1565508
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  %25 = getelementptr i32, ptr %2, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 1565512
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_ltc_zbc_clear_depth(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1565496
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %10 = and i32 %9, -16
  %11 = or i32 %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1565496
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 1565516
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %2) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_ltc_intr_lts(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [128 x i8], align 1
  %5 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = shl i32 %1, 13
  %8 = shl i32 %2, 9
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = add i32 %7, 1311756
  %12 = add i32 %11, %8
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %15 = trunc i32 %14 to i16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !12
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = and i32 %14, 65535
  call void @nvkm_snprintbf(ptr noundef nonnull %4, i32 noundef 128, ptr noundef nonnull @gf100_ltc_lts_intr_name, i32 noundef %18) #6
  %19 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %5, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.2, ptr noundef %26, i32 noundef %1, i32 noundef %2, i32 noundef %14, ptr noundef nonnull %4) #7
  br label %27

27:                                               ; preds = %22, %17, %3
  %28 = load ptr, ptr %9, align 4
  %29 = getelementptr i8, ptr %28, i32 %12
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %14) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm107_ltc_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 5
  %13 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 4
  %14 = load i32, ptr %11, align 4
  br label %15

15:                                               ; preds = %48, %10
  %16 = phi i32 [ %14, %10 ], [ %49, %48 ]
  %17 = phi i32 [ %8, %10 ], [ %52, %48 ]
  %18 = call i32 @llvm.cttz.i32(i32 %17, i1 true) #6, !range !13
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = shl nuw nsw i32 %18, 13
  %22 = or i32 %21, 1311756
  br label %23

23:                                               ; preds = %42, %20
  %24 = phi i32 [ 0, %20 ], [ %45, %42 ]
  %25 = load ptr, ptr %3, align 4
  %26 = shl i32 %24, 9
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = add i32 %22, %26
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %32 = trunc i32 %31 to i16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #6, !annotation !12
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %23
  %35 = and i32 %31, 65535
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @gf100_ltc_lts_intr_name, i32 noundef %35) #6
  %36 = load i32, ptr %12, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.2, ptr noundef %13, i32 noundef %18, i32 noundef %24, i32 noundef %31, ptr noundef nonnull %2) #7
  br label %42

42:                                               ; preds = %38, %34, %23
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr i8, ptr %43, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %31) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  %45 = add nuw i32 %24, 1
  %46 = load i32, ptr %11, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %23, label %48

48:                                               ; preds = %42, %15
  %49 = phi i32 [ 0, %15 ], [ %46, %42 ]
  %50 = shl nuw i32 1, %18
  %51 = xor i32 %50, -1
  %52 = and i32 %17, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %15

54:                                               ; preds = %48, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm107_ltc_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_ltc_new_(ptr noundef nonnull @gm107_ltc, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm107_ltc_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 140344
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 138260
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 1565312
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %14 = icmp eq i32 %7, 0
  br i1 %14, label %28, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  br label %17

17:                                               ; preds = %25, %15
  %18 = phi i32 [ 0, %15 ], [ %26, %25 ]
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %10
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, ptr %16, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %16, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = add nuw i32 %18, 1
  %27 = icmp eq i32 %26, %7
  br i1 %27, label %28, label %17

28:                                               ; preds = %25, %1
  %29 = lshr i32 %13, 28
  %30 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 3
  store i32 %29, ptr %30, align 4
  %31 = tail call i32 @gf100_ltc_oneinit_tag_ram(ptr noundef %0) #6
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gm107_ltc_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051776
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = load ptr, ptr %4, align 4
  %11 = getelementptr i8, ptr %10, i32 1565308
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !9
  %12 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i8, ptr %14, i32 1565304
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !9
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 1565284
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %19 = and i32 %18, -3
  %20 = shl i32 %7, 1
  %21 = and i32 %20, 2
  %22 = or i32 %19, %21
  %23 = xor i32 %22, 2
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr i8, ptr %24, i32 1565284
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_ltc_invalidate(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_ltc_flush(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_ltc_oneinit_tag_ram(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{i64 2151484332}
!9 = !{i64 3943239}
!10 = !{i64 3943657}
!11 = !{i64 2151483110}
!12 = !{!"auto-init"}
!13 = !{i32 0, i32 33}
