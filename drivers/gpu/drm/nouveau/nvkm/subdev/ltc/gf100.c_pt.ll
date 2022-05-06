; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c"
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
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.131, %struct.anon.132, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.132 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.120, i32, i32, i32, i32, i32, i32, %union.anon.124, i32, i32, [11 x i32], %union.anon.128 }>
%union.anon.120 = type { %struct.anon.123 }
%struct.anon.123 = type { i64 }
%union.anon.124 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, i32, i8 }
%union.anon.128 = type <{ %struct.anon.130, [12 x i8] }>
%struct.anon.130 = type { i48 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/ltc/gf100.c\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"IDLE_ERROR_IQ\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"IDLE_ERROR_CBC\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"IDLE_ERROR_TSTG\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"IDLE_ERROR_DSTG\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"EVICTED_CB\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"ILLEGAL_COMPSTAT\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"BLOCKLINEAR_CB\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ECC_SEC_ERROR\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ECC_DED_ERROR\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"DEBUG\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"ATOMIC_TO_Z\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"ILLEGAL_ATOMIC\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"BLKACTIVITY_ERR\00", align 1
@gf100_ltc_lts_intr_name = dso_local constant [14 x %struct.nvkm_bitfield] [%struct.nvkm_bitfield { i32 1, ptr @.str.2 }, %struct.nvkm_bitfield { i32 2, ptr @.str.3 }, %struct.nvkm_bitfield { i32 4, ptr @.str.4 }, %struct.nvkm_bitfield { i32 8, ptr @.str.5 }, %struct.nvkm_bitfield { i32 16, ptr @.str.6 }, %struct.nvkm_bitfield { i32 32, ptr @.str.7 }, %struct.nvkm_bitfield { i32 64, ptr @.str.8 }, %struct.nvkm_bitfield { i32 256, ptr @.str.9 }, %struct.nvkm_bitfield { i32 512, ptr @.str.10 }, %struct.nvkm_bitfield { i32 1024, ptr @.str.11 }, %struct.nvkm_bitfield { i32 2048, ptr @.str.12 }, %struct.nvkm_bitfield { i32 4096, ptr @.str.13 }, %struct.nvkm_bitfield { i32 8192, ptr @.str.14 }, %struct.nvkm_bitfield zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"%s: LTC invalidate took %lld ns\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"%s: LTC flush took %lld ns\0A\00", align 1
@gf100_ltc = internal constant %struct.nvkm_ltc_func { ptr @gf100_ltc_oneinit, ptr @gf100_ltc_init, ptr @gf100_ltc_intr, ptr @gf100_ltc_cbc_clear, ptr @gf100_ltc_cbc_wait, i32 16, ptr @gf100_ltc_zbc_clear_color, ptr @gf100_ltc_zbc_clear_depth, ptr null, ptr @gf100_ltc_invalidate, ptr @gf100_ltc_flush }, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"%s: LTC%d_LTS%d: %08x [%s]\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_cbc_clear(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1566924
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %1) #6, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 1566928
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %2) #6, !srcloc !9
  %11 = load ptr, ptr %6, align 4
  %12 = getelementptr i8, ptr %11, i32 1566920
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 4) #6, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_cbc_wait(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %11 = load i32, ptr %9, align 4
  br label %12

12:                                               ; preds = %57, %8
  %13 = phi i32 [ %6, %8 ], [ %58, %57 ]
  %14 = phi i32 [ %11, %8 ], [ %59, %57 ]
  %15 = phi i32 [ 0, %8 ], [ %60, %57 ]
  %16 = icmp eq i32 %14, 0
  br i1 %16, label %57, label %17

17:                                               ; preds = %12
  %18 = shl i32 %15, 13
  %19 = add i32 %18, 1315016
  br label %20

20:                                               ; preds = %51, %17
  %21 = phi i32 [ 0, %17 ], [ %52, %51 ]
  %22 = shl i32 %21, 10
  %23 = add i32 %19, %22
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  br label %24

24:                                               ; preds = %29, %20
  %25 = load ptr, ptr %10, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %31 = icmp sgt i64 %30, -1
  br i1 %31, label %24, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_timer, ptr %33, i32 0, i32 1, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 8
  %38 = call ptr @dev_driver_string(ptr noundef %37) #6
  %39 = load ptr, ptr %2, align 8
  %40 = getelementptr inbounds %struct.nvkm_timer, ptr %39, i32 0, i32 1, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_device, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %32
  %48 = load ptr, ptr %43, align 4
  br label %49

49:                                               ; preds = %47, %32
  %50 = phi ptr [ %48, %47 ], [ %45, %32 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %38, ptr noundef %50) #6
  br label %51

51:                                               ; preds = %49, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %52 = add nuw i32 %21, 1
  %53 = load i32, ptr %9, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %20, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr %5, align 4
  br label %57

57:                                               ; preds = %55, %12
  %58 = phi i32 [ %56, %55 ], [ %13, %12 ]
  %59 = phi i32 [ %53, %55 ], [ 0, %12 ]
  %60 = add nuw i32 %15, 1
  %61 = icmp ult i32 %60, %58
  br i1 %61, label %12, label %62

62:                                               ; preds = %57, %1
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
define dso_local void @gf100_ltc_zbc_clear_color(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1567300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %10 = and i32 %9, -16
  %11 = or i32 %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1567300
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = load i32, ptr %2, align 4
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 1567304
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #6, !srcloc !9
  %17 = getelementptr i32, ptr %2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %6, align 4
  %20 = getelementptr i8, ptr %19, i32 1567308
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !9
  %21 = getelementptr i32, ptr %2, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %6, align 4
  %24 = getelementptr i8, ptr %23, i32 1567312
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !9
  %25 = getelementptr i32, ptr %2, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %6, align 4
  %28 = getelementptr i8, ptr %27, i32 1567316
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_zbc_clear_depth(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1567300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %10 = and i32 %9, -16
  %11 = or i32 %10, %1
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr i8, ptr %12, i32 1567300
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = load ptr, ptr %6, align 4
  %15 = getelementptr i8, ptr %14, i32 1567320
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %2) #6, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_intr(ptr noundef %0) #0 {
  %2 = alloca [128 x i8], align 1
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 380
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 3
  %12 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 5
  %13 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 4
  %14 = load i32, ptr %11, align 4
  br label %15

15:                                               ; preds = %47, %10
  %16 = phi i32 [ %14, %10 ], [ %48, %47 ]
  %17 = phi i32 [ %8, %10 ], [ %51, %47 ]
  %18 = call i32 @llvm.cttz.i32(i32 %17, i1 true) #6, !range !13
  %19 = icmp eq i32 %16, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15
  %21 = shl nuw nsw i32 %18, 13
  %22 = or i32 %21, 1314848
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi i32 [ 0, %20 ], [ %44, %41 ]
  %25 = load ptr, ptr %3, align 4
  %26 = shl i32 %24, 10
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = add i32 %22, %26
  %30 = getelementptr i8, ptr %28, i32 %29
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %32 = and i32 %31, 65535
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %2, i8 0, i32 128, i1 false) #6, !annotation !10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %23
  call void @nvkm_snprintbf(ptr noundef nonnull %2, i32 noundef 128, ptr noundef nonnull @gf100_ltc_lts_intr_name, i32 noundef %32) #6
  %35 = load i32, ptr %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %3, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.17, ptr noundef %13, i32 noundef %18, i32 noundef %24, i32 noundef %32, ptr noundef nonnull %2) #7
  br label %41

41:                                               ; preds = %37, %34, %23
  %42 = load ptr, ptr %27, align 4
  %43 = getelementptr i8, ptr %42, i32 %29
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %31) #6, !srcloc !9
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #6
  %44 = add nuw i32 %24, 1
  %45 = load i32, ptr %11, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %23, label %47

47:                                               ; preds = %41, %15
  %48 = phi i32 [ 0, %15 ], [ %45, %41 ]
  %49 = shl nuw i32 1, %18
  %50 = xor i32 %49, -1
  %51 = and i32 %17, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %15

53:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_invalidate(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 458756
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 458756
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %53

14:                                               ; preds = %20
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 458756
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14, %1
  %21 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %14, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = call ptr @dev_driver_string(ptr noundef %28) #6
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi ptr [ %39, %38 ], [ %36, %23 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef %41) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %53

42:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %43 = icmp eq i64 %21, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.15, ptr noundef %52, i64 noundef %21) #7
  br label %53

53:                                               ; preds = %48, %44, %42, %40, %13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gf100_ltc_flush(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 458768
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #6, !srcloc !9
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %4, i64 noundef 2000000000, ptr noundef nonnull %2) #6
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 458768
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %11 = and i32 %10, 3
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %53

14:                                               ; preds = %20
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr i8, ptr %15, i32 458768
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #6, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %18 = and i32 %17, 3
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %14, %1
  %21 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #6
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %14, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8
  %25 = getelementptr inbounds %struct.nvkm_timer, ptr %24, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = call ptr @dev_driver_string(ptr noundef %28) #6
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.nvkm_timer, ptr %30, i32 0, i32 1, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = load ptr, ptr %34, align 4
  br label %40

40:                                               ; preds = %38, %23
  %41 = phi ptr [ %39, %38 ], [ %36, %23 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 145, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %29, ptr noundef %41) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  br label %53

42:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #6
  %43 = icmp eq i64 %21, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.16, ptr noundef %52, i64 noundef %21) #7
  br label %53

53:                                               ; preds = %48, %44, %42, %40, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_oneinit_tag_ram(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 33
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 1051776
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 5
  store i32 0, ptr %14, align 4
  br label %62

15:                                               ; preds = %1
  %16 = and i32 %11, 4096
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.nvkm_ram, ptr %7, i32 0, i32 3
  %19 = load i64, ptr %18, align 8
  %20 = lshr i64 %19, 19
  %21 = trunc i64 %20 to i32
  %22 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 5
  %23 = select i1 %17, i32 131072, i32 65536
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 %21)
  %25 = add nuw nsw i32 %24, 63
  %26 = and i32 %25, 524224
  store i32 %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = shl i32 %28, 11
  %30 = tail call i32 @llvm.umax.i32(i32 %29, i32 24576)
  %31 = lshr i32 %25, 6
  %32 = mul nuw nsw i32 %31, 24576
  %33 = add i32 %30, %29
  %34 = add i32 %33, %32
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 7
  %37 = tail call i32 @nvkm_ram_get(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 12, i64 noundef %35, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %36) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %15
  store i32 0, ptr %22, align 4
  br label %62

40:                                               ; preds = %15
  %41 = load ptr, ptr %36, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_func, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i64 %44(ptr noundef %41) #6
  %46 = zext i32 %30 to i64
  %47 = add i32 %29, -1
  %48 = zext i32 %47 to i64
  %49 = add nuw nsw i64 %48, %46
  %50 = add i64 %49, %45
  %51 = icmp ult i64 %50, 4294967296
  br i1 %51, label %52, label %55, !prof !14

52:                                               ; preds = %40
  %53 = trunc i64 %50 to i32
  %54 = udiv i32 %53, %29
  br label %59

55:                                               ; preds = %40
  %56 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %29, i64 %50) #8, !srcloc !15
  %57 = extractvalue { i64, i64 } %56, 1
  %58 = trunc i64 %57 to i32
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi i32 [ %54, %52 ], [ %58, %55 ]
  %61 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 6
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %59, %39, %13
  %63 = getelementptr inbounds %struct.nvkm_fb, ptr %5, i32 0, i32 4, i32 1
  %64 = tail call i32 @nvkm_mm_fini(ptr noundef %63) #6
  %65 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = tail call i32 @nvkm_mm_init(ptr noundef %63, i8 noundef zeroext 0, i32 noundef 0, i32 noundef %66, i32 noundef 1) #6
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ram_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_oneinit(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 140344
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 140628
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 1566940
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
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
  %31 = tail call i32 @gf100_ltc_oneinit_tag_ram(ptr noundef %0)
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_ltc_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_ltc_new_(ptr noundef nonnull @gf100_ltc, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ltc_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_snprintbf(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_ltc_init(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1051776
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 1566752
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %11 = and i32 %10, -1048577
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 1566752
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #6, !srcloc !9
  %14 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = load ptr, ptr %4, align 4
  %17 = getelementptr i8, ptr %16, i32 1566936
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #6, !srcloc !9
  %18 = getelementptr inbounds %struct.nvkm_ltc, ptr %0, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr i8, ptr %20, i32 1566932
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #6, !srcloc !9
  %22 = load ptr, ptr %4, align 4
  %23 = getelementptr i8, ptr %22, i32 1566912
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #6, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !12
  %25 = and i32 %24, -3
  %26 = shl i32 %7, 1
  %27 = and i32 %26, 2
  %28 = or i32 %25, %27
  %29 = xor i32 %28, 2
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr i8, ptr %30, i32 1566912
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !8
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #6, !srcloc !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

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
!8 = !{i64 2151487177}
!9 = !{i64 3946084}
!10 = !{!"auto-init"}
!11 = !{i64 3946502}
!12 = !{i64 2151485955}
!13 = !{i32 0, i32 33}
!14 = !{!"branch_weights", i32 2000, i32 1}
!15 = !{i64 2148124229, i64 2148124509, i64 2148124843, i64 2148125177}
