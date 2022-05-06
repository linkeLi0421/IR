; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/clk/base.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.nvkm_clk_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.nvkm_domain] }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvbios_cstepX = type { i32, [2 x i8], i8 }
%struct.nvbios_cstepE = type { i8, i8 }
%struct.nvbios_perfE = type { i8, i8, i8, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.nvbios_perfS = type { %union.anon.145 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i32 }
%struct.nvbios_vpstate_header = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.nvbios_vpstate_entry = type { i8, i16 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_volt = type { ptr, %struct.nvkm_subdev, i8, i8, [256 x %struct.anon.122], i32, i32, i8, i8, i8, i32 }
%struct.anon.122 = type { i32, i8 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.134, %struct.anon.135, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.134 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.135 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram_func = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvbios_boostE = type { i8, i32, i32 }
%struct.nvbios_boostS = type { i8, i8, i32, i32 }

@nvkm_clk = internal constant %struct.nvkm_subdev_func { ptr @nvkm_clk_dtor, ptr null, ptr null, ptr null, ptr @nvkm_clk_init, ptr @nvkm_clk_fini, ptr null }, align 4
@nvkm_clk_ctor.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [11 x i8] c"&clk->wait\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NvClkMode\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"NvClkModeAC\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"NvClkModeDC\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NvBoost\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"%s: %02x freq unknown\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"%s: %02x: %10d KHz\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"%s: %10d KHz\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"%s %d MHz\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"%s %d-%d MHz\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%s: %s: %s %s %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"%s: P %d PWR %d U(AC) %d U(DC) %d A %d T %d\C2\B0C D %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"%s: -> %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"%s: error setting pstate %d: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%s: setting performance state %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"%s: failed to raise fan speed: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"%s: failed to raise voltage: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"%s: failed to lower voltage: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"%s: failed to lower fan speed: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_ustate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 1, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  %8 = icmp ult i32 %1, -2
  br i1 %8, label %9, label %31

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %24, label %13

13:                                               ; preds = %20, %9
  %14 = phi ptr [ %22, %20 ], [ %11, %9 ]
  %15 = phi i32 [ %21, %20 ], [ 0, %9 ]
  %16 = getelementptr inbounds %struct.nvkm_pstate, ptr %14, i32 0, i32 3
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %24, label %20

20:                                               ; preds = %13
  %21 = add i32 %15, 1
  %22 = load ptr, ptr %14, align 4
  %23 = icmp eq ptr %22, %10
  br i1 %23, label %24, label %13

24:                                               ; preds = %20, %13, %9
  %25 = phi i32 [ 0, %9 ], [ %21, %20 ], [ %15, %13 ]
  %26 = phi ptr [ %10, %9 ], [ %10, %20 ], [ %14, %13 ]
  %27 = getelementptr inbounds %struct.nvkm_pstate, ptr %26, i32 0, i32 3
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %40

31:                                               ; preds = %24, %7
  %32 = phi i32 [ %1, %7 ], [ %25, %24 ]
  %33 = add i32 %32, 2
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = icmp eq i32 %2, 0
  %37 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 13
  %38 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 12
  %39 = select i1 %36, ptr %37, ptr %38
  store i32 %32, ptr %39, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %0, i1 noundef zeroext true)
  br label %40

40:                                               ; preds = %35, %31, %24, %3
  %41 = phi i32 [ 0, %35 ], [ %33, %31 ], [ -22, %24 ], [ -38, %3 ]
  ret i32 %41
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_pstate_calc(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
  %3 = alloca %struct.wait_queue_entry, align 4
  %4 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 6
  %6 = load ptr, ptr @system_wq, align 4
  %7 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %6, ptr noundef %5) #10
  br i1 %1, label %8, label %21

8:                                                ; preds = %2
  %9 = load volatile i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !9
  call void @init_wait_entry(ptr noundef nonnull %3, i32 noundef 0) #10
  %12 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 7
  %13 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 2) #10
  %14 = load volatile i32, ptr %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %16, %11
  call void @schedule() #10
  %17 = call i32 @prepare_to_wait_event(ptr noundef %12, ptr noundef nonnull %3, i32 noundef 2) #10
  %18 = load volatile i32, ptr %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %16

20:                                               ; preds = %16, %11
  call void @finish_wait(ptr noundef %12, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #10
  br label %21

21:                                               ; preds = %20, %8, %2
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_astate(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 14
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %2
  br label %10

10:                                               ; preds = %6, %4
  %11 = phi i32 [ %9, %6 ], [ %1, %4 ]
  %12 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 14
  %13 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = tail call i32 @llvm.smin.i32(i32 %11, i32 %15)
  %17 = tail call i32 @llvm.smax.i32(i32 %16, i32 0)
  store i32 %17, ptr %12, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %0, i1 noundef zeroext %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_tstate(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 16
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, %1
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  store i8 %1, ptr %3, align 4
  %7 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 8
  store volatile i32 1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr @system_wq, align 4
  %10 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %9, ptr noundef %8) #10
  br label %11

11:                                               ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_dstate(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 15
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %2
  br label %9

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %8, %5 ], [ %1, %3 ]
  %11 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 15
  %12 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = tail call i32 @llvm.smin.i32(i32 %10, i32 %14)
  %16 = tail call i32 @llvm.smax.i32(i32 %15, i32 0)
  store i32 %16, ptr %11, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %0, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_read(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_clk_func, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0, i32 noundef %1) #10
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.nvbios_cstepX, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.nvbios_cstepE, align 2
  %11 = alloca %struct.nvbios_perfE, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca %struct.nvbios_perfS, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca %struct.nvbios_vpstate_header, align 4
  %21 = alloca %struct.nvbios_vpstate_entry, align 4
  %22 = alloca %struct.nvbios_vpstate_entry, align 4
  %23 = zext i1 %4 to i8
  %24 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 1
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 21
  %26 = load ptr, ptr %25, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #10
  store i32 0, ptr %19, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %20, i8 0, i32 16, i1 false), !annotation !9
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_clk, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %24) #10
  %27 = icmp eq ptr %26, null
  br i1 %27, label %54, label %28

28:                                               ; preds = %6
  %29 = call i32 @nvbios_vpstate_parse(ptr noundef nonnull %26, ptr noundef nonnull %20) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #10
  store i32 0, ptr %21, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #10
  store i32 0, ptr %22, align 4, !annotation !9
  %32 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %20, i32 0, i32 8
  %33 = load i8, ptr %32, align 1
  %34 = call i32 @nvbios_vpstate_entry(ptr noundef nonnull %26, ptr noundef nonnull %20, i8 noundef zeroext %33, ptr noundef nonnull %22) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %22, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = zext i16 %38 to i32
  %40 = mul nuw nsw i32 %39, 1000
  %41 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 20
  store i32 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = getelementptr inbounds %struct.nvbios_vpstate_header, ptr %20, i32 0, i32 7
  %44 = load i8, ptr %43, align 2
  %45 = call i32 @nvbios_vpstate_entry(ptr noundef nonnull %26, ptr noundef nonnull %20, i8 noundef zeroext %44, ptr noundef nonnull %21) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.nvbios_vpstate_entry, ptr %21, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = mul nuw nsw i32 %50, 1000
  %52 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 19
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %47, %42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #10
  br label %54

54:                                               ; preds = %53, %28, %6
  store ptr %0, ptr %5, align 4
  %55 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 4
  store volatile ptr %55, ptr %55, align 4
  %56 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 4, i32 1
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.nvkm_clk_func, ptr %0, i32 0, i32 8
  %58 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 2
  store ptr %57, ptr %58, align 4
  %59 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 12
  store i32 -1, ptr %59, align 4
  %60 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 13
  store i32 -1, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 17
  store i8 %23, ptr %61, align 1
  %62 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 6
  store i32 -32, ptr %62, align 4
  %63 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 6, i32 1
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 6, i32 1, i32 1
  store ptr %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 6, i32 2
  store ptr @nvkm_pstate_work, ptr %65, align 4
  %66 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 7
  call void @__init_waitqueue_head(ptr noundef %66, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_clk_ctor.__key) #10
  %67 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 8
  store volatile i32 0, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nvkm_clk_func, ptr %0, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %54
  %72 = getelementptr inbounds %struct.nvkm_clk_func, ptr %0, i32 0, i32 7
  %73 = load i32, ptr %72, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %255

75:                                               ; preds = %71
  %76 = load ptr, ptr %56, align 4
  store ptr %69, ptr %56, align 4
  store ptr %55, ptr %69, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %76, ptr %77, align 4
  store volatile ptr %69, ptr %76, align 4
  %78 = load i32, ptr %72, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %246, label %255

80:                                               ; preds = %54
  %81 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 1, i32 1
  %82 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 1
  %83 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 9
  %84 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 10
  %85 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 2
  %86 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 3
  %87 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 4
  %88 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 5
  %89 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 6
  %90 = getelementptr inbounds %struct.nvbios_perfE, ptr %11, i32 0, i32 7
  %91 = getelementptr inbounds %struct.nvbios_cstepE, ptr %10, i32 0, i32 1
  %92 = getelementptr inbounds %struct.nvbios_cstepX, ptr %7, i32 0, i32 2
  %93 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 5
  br label %94

94:                                               ; preds = %245, %80
  %95 = phi i32 [ %96, %245 ], [ 0, %80 ]
  %96 = add i32 %95, 1
  %97 = load ptr, ptr %81, align 4
  %98 = getelementptr inbounds %struct.nvkm_device, ptr %97, i32 0, i32 21
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %58, align 4
  %101 = getelementptr %struct.nvkm_domain, ptr %100, i32 -1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #10
  store i16 0, ptr %10, align 2, !annotation !9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %11, i8 0, i32 32, i1 false) #10, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  store i8 0, ptr %12, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  store i8 0, ptr %13, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #10
  store i8 0, ptr %14, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #10
  store i8 0, ptr %15, align 1, !annotation !9
  %102 = call i32 @nvbios_perfEp(ptr noundef %99, i32 noundef %95, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %11) #10
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %244, label %104

104:                                              ; preds = %94
  %105 = load i8, ptr %11, align 4
  %106 = icmp eq i8 %105, -1
  br i1 %106, label %245, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %109 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3520, i32 noundef 160) #11
  %110 = icmp eq ptr %109, null
  br i1 %110, label %244, label %111

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 1
  store volatile ptr %112, ptr %112, align 8
  %113 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 1, i32 1
  store ptr %112, ptr %113, align 4
  %114 = load i8, ptr %11, align 4
  %115 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 3
  store i8 %114, ptr %115, align 4
  %116 = load i8, ptr %82, align 1
  %117 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 4
  store i8 %116, ptr %117, align 1
  %118 = load i8, ptr %83, align 4
  %119 = zext i8 %118 to i32
  %120 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 5
  store i32 %119, ptr %120, align 8
  %121 = load i8, ptr %84, align 1
  %122 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 6
  store i8 %121, ptr %122, align 4
  %123 = load i8, ptr %85, align 2
  %124 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 1
  store i8 %123, ptr %124, align 8
  %125 = load i32, ptr %86, align 4
  %126 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 15
  store i32 %125, ptr %126, align 8
  %127 = load i32, ptr %87, align 4
  %128 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 17
  store i32 %127, ptr %128, align 8
  %129 = load i32, ptr %88, align 4
  %130 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 18
  store i32 %129, ptr %130, align 4
  %131 = load i32, ptr %89, align 4
  %132 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 27
  store i32 %131, ptr %132, align 8
  %133 = load i32, ptr %90, align 4
  %134 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 28
  store i32 %133, ptr %134, align 4
  %135 = load i8, ptr %12, align 1
  %136 = icmp ugt i8 %135, 63
  br i1 %136, label %137, label %176

137:                                              ; preds = %171, %111
  %138 = phi i8 [ %172, %171 ], [ %135, %111 ]
  %139 = phi ptr [ %140, %171 ], [ %101, %111 ]
  %140 = getelementptr %struct.nvkm_domain, ptr %139, i32 1
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 29
  br i1 %142, label %174, label %143

143:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  store i32 0, ptr %16, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #10
  store i8 %138, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #10
  %144 = load i8, ptr %13, align 1
  store i8 %144, ptr %18, align 1
  %145 = getelementptr %struct.nvkm_domain, ptr %139, i32 1, i32 1
  %146 = load i8, ptr %145, align 4
  %147 = zext i8 %146 to i32
  %148 = load i8, ptr %14, align 1
  %149 = load i8, ptr %15, align 1
  %150 = call i32 @nvbios_perfSp(ptr noundef %99, i32 noundef %102, i32 noundef %147, ptr noundef nonnull %17, ptr noundef nonnull %18, i8 noundef zeroext %148, i8 noundef zeroext %149, ptr noundef nonnull %16) #10
  %151 = icmp eq i32 %150, 0
  %152 = load i8, ptr %17, align 1
  %153 = icmp ne i8 %152, 64
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %171, label %155

155:                                              ; preds = %143
  %156 = getelementptr %struct.nvkm_domain, ptr %139, i32 1, i32 2
  %157 = load i8, ptr %156, align 1
  %158 = and i8 %157, 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i32, ptr %16, align 4
  br label %167

162:                                              ; preds = %155
  %163 = load i8, ptr %115, align 4
  %164 = load i8, ptr %145, align 4
  %165 = load i32, ptr %16, align 4
  %166 = call fastcc i32 @nvkm_clk_adjust(ptr noundef %5, i1 noundef zeroext false, i8 noundef zeroext %163, i8 noundef zeroext %164, i32 noundef %165) #10
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi i32 [ %161, %160 ], [ %166, %162 ]
  %169 = load i32, ptr %140, align 4
  %170 = getelementptr %struct.nvkm_pstate, ptr %109, i32 0, i32 2, i32 2, i32 %169
  store i32 %168, ptr %170, align 4
  br label %171

171:                                              ; preds = %167, %143
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  %172 = load i8, ptr %12, align 1
  %173 = icmp ugt i8 %172, 63
  br i1 %173, label %137, label %174

174:                                              ; preds = %171, %137
  %175 = load i8, ptr %115, align 4
  br label %176

176:                                              ; preds = %174, %111
  %177 = phi i8 [ %175, %174 ], [ %114, %111 ]
  %178 = call i32 @nvbios_cstepEm(ptr noundef %99, i8 noundef zeroext %177, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %10) #10
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %239, label %180

180:                                              ; preds = %176
  %181 = load i8, ptr %91, align 1
  %182 = zext i8 %181 to i32
  %183 = getelementptr inbounds %struct.nvkm_pstate, ptr %109, i32 0, i32 2
  br label %184

184:                                              ; preds = %236, %180
  %185 = phi i32 [ %182, %180 ], [ %237, %236 ]
  %186 = load ptr, ptr %81, align 4
  %187 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 21
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %struct.nvkm_device, ptr %186, i32 0, i32 40
  %190 = load ptr, ptr %189, align 4
  %191 = load ptr, ptr %58, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #10
  store i64 0, ptr %7, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !9
  %192 = call i32 @nvbios_cstepXp(ptr noundef %188, i32 noundef %185, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %7) #10
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %236, label %194

194:                                              ; preds = %184
  %195 = icmp eq ptr %190, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %194
  %197 = load i8, ptr %92, align 2
  %198 = call i32 @nvkm_volt_map_min(ptr noundef nonnull %190, i8 noundef zeroext %197) #10
  %199 = getelementptr inbounds %struct.nvkm_volt, ptr %190, i32 0, i32 5
  %200 = load i32, ptr %199, align 4
  %201 = icmp ugt i32 %198, %200
  br i1 %201, label %236, label %202

202:                                              ; preds = %196, %194
  %203 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %204 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %203, i32 noundef 3520, i32 noundef 132) #11
  %205 = icmp eq ptr %204, null
  br i1 %205, label %236, label %206

206:                                              ; preds = %202
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(132) %204, ptr noundef align 8 dereferenceable(132) %183, i32 132, i1 false) #10
  %207 = load i8, ptr %92, align 2
  %208 = getelementptr inbounds %struct.nvkm_cstate, ptr %204, i32 0, i32 1
  store i8 %207, ptr %208, align 8
  %209 = trunc i32 %185 to i8
  %210 = getelementptr inbounds %struct.nvkm_cstate, ptr %204, i32 0, i32 3
  store i8 %209, ptr %210, align 8
  %211 = icmp eq ptr %191, null
  br i1 %211, label %232, label %212

212:                                              ; preds = %229, %206
  %213 = phi ptr [ %230, %229 ], [ %191, %206 ]
  %214 = load i32, ptr %213, align 4
  %215 = icmp eq i32 %214, 29
  br i1 %215, label %232, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.nvkm_domain, ptr %213, i32 0, i32 2
  %218 = load i8, ptr %217, align 1
  %219 = and i8 %218, 1
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %229, label %221

221:                                              ; preds = %216
  %222 = load i8, ptr %115, align 4
  %223 = getelementptr inbounds %struct.nvkm_domain, ptr %213, i32 0, i32 1
  %224 = load i8, ptr %223, align 4
  %225 = load i32, ptr %7, align 8
  %226 = call fastcc i32 @nvkm_clk_adjust(ptr noundef %5, i1 noundef zeroext true, i8 noundef zeroext %222, i8 noundef zeroext %224, i32 noundef %225) #10
  %227 = load i32, ptr %213, align 4
  %228 = getelementptr %struct.nvkm_cstate, ptr %204, i32 0, i32 2, i32 %227
  store i32 %226, ptr %228, align 4
  br label %229

229:                                              ; preds = %221, %216
  %230 = getelementptr %struct.nvkm_domain, ptr %213, i32 1
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %212

232:                                              ; preds = %229, %212, %206
  %233 = load ptr, ptr %112, align 8
  %234 = getelementptr inbounds %struct.list_head, ptr %233, i32 0, i32 1
  store ptr %204, ptr %234, align 4
  store ptr %233, ptr %204, align 8
  %235 = getelementptr inbounds %struct.list_head, ptr %204, i32 0, i32 1
  store ptr %112, ptr %235, align 4
  store volatile ptr %204, ptr %112, align 8
  br label %236

236:                                              ; preds = %232, %202, %196, %184
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #10
  %237 = add nsw i32 %185, -1
  %238 = icmp eq i32 %185, 0
  br i1 %238, label %239, label %184

239:                                              ; preds = %236, %176
  call fastcc void @nvkm_pstate_info(ptr noundef %5, ptr noundef nonnull %109) #10
  %240 = load ptr, ptr %56, align 4
  store ptr %109, ptr %56, align 4
  store ptr %55, ptr %109, align 8
  %241 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %240, ptr %241, align 4
  store volatile ptr %109, ptr %240, align 4
  %242 = load i32, ptr %93, align 4
  %243 = add i32 %242, 1
  store i32 %243, ptr %93, align 4
  br label %245

244:                                              ; preds = %107, %94
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %258

245:                                              ; preds = %239, %104
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #10
  br label %94

246:                                              ; preds = %246, %75
  %247 = phi i32 [ %252, %246 ], [ 1, %75 ]
  %248 = load ptr, ptr %68, align 4
  %249 = getelementptr %struct.nvkm_pstate, ptr %248, i32 %247
  %250 = load ptr, ptr %56, align 4
  store ptr %249, ptr %56, align 4
  store ptr %55, ptr %249, align 4
  %251 = getelementptr inbounds %struct.list_head, ptr %249, i32 0, i32 1
  store ptr %250, ptr %251, align 4
  store volatile ptr %249, ptr %250, align 4
  %252 = add nuw nsw i32 %247, 1
  %253 = load i32, ptr %72, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %246, label %255

255:                                              ; preds = %246, %75, %71
  %256 = phi i32 [ %73, %71 ], [ %78, %75 ], [ %253, %246 ]
  %257 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 5
  store i32 %256, ptr %257, align 4
  br label %258

258:                                              ; preds = %255, %244
  %259 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 12
  %260 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 9
  %261 = call i32 @nvkm_notify_init(ptr noundef null, ptr noundef %259, ptr noundef nonnull @nvkm_clk_pwrsrc, i1 noundef zeroext true, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %260) #10
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %292

263:                                              ; preds = %258
  %264 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 6
  %265 = load ptr, ptr %264, align 4
  %266 = call ptr @nvkm_stropt(ptr noundef %265, ptr noundef nonnull @.str.1, ptr noundef nonnull %19) #10
  %267 = icmp eq ptr %266, null
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = load i32, ptr %19, align 4
  %270 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %5, ptr noundef nonnull %266, i32 noundef %269)
  store i32 %270, ptr %59, align 4
  %271 = load i32, ptr %19, align 4
  %272 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %5, ptr noundef nonnull %266, i32 noundef %271)
  store i32 %272, ptr %60, align 4
  br label %273

273:                                              ; preds = %268, %263
  %274 = load ptr, ptr %264, align 4
  %275 = call ptr @nvkm_stropt(ptr noundef %274, ptr noundef nonnull @.str.2, ptr noundef nonnull %19) #10
  %276 = icmp eq ptr %275, null
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = load i32, ptr %19, align 4
  %279 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %5, ptr noundef nonnull %275, i32 noundef %278)
  store i32 %279, ptr %59, align 4
  br label %280

280:                                              ; preds = %277, %273
  %281 = load ptr, ptr %264, align 4
  %282 = call ptr @nvkm_stropt(ptr noundef %281, ptr noundef nonnull @.str.3, ptr noundef nonnull %19) #10
  %283 = icmp eq ptr %282, null
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = load i32, ptr %19, align 4
  %286 = call fastcc i32 @nvkm_clk_nstate(ptr noundef %5, ptr noundef nonnull %282, i32 noundef %285)
  store i32 %286, ptr %60, align 4
  br label %287

287:                                              ; preds = %284, %280
  %288 = load ptr, ptr %264, align 4
  %289 = call i32 @nvkm_longopt(ptr noundef %288, ptr noundef nonnull @.str.4, i32 noundef 0) #10
  %290 = trunc i32 %289 to i8
  %291 = getelementptr inbounds %struct.nvkm_clk, ptr %5, i32 0, i32 18
  store i8 %290, ptr %291, align 2
  br label %292

292:                                              ; preds = %287, %258
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #10
  ret i32 %261
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vpstate_parse(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_vpstate_entry(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nvkm_pstate_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -232
  %3 = getelementptr i8, ptr %0, i32 28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !10
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %3) #10, !srcloc !11
  %4 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %3) #10, !srcloc !12
  %5 = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %338, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @power_supply_is_system_supplied() #10
  %9 = getelementptr i8, ptr %0, i32 88
  store i32 %8, ptr %9, align 4
  %10 = getelementptr i8, ptr %0, i32 -196
  %11 = load i32, ptr %10, align 4
  %12 = icmp ugt i32 %11, 4
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = getelementptr i8, ptr %0, i32 -224
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr i8, ptr %0, i32 -212
  %19 = getelementptr i8, ptr %0, i32 92
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr i8, ptr %0, i32 96
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr i8, ptr %0, i32 100
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr i8, ptr %0, i32 104
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr i8, ptr %0, i32 112
  %28 = load i8, ptr %27, align 4
  %29 = zext i8 %28 to i32
  %30 = getelementptr i8, ptr %0, i32 108
  %31 = load i32, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef %18, i32 noundef %20, i32 noundef %8, i32 noundef %22, i32 noundef %24, i32 noundef %26, i32 noundef %29, i32 noundef %31) #12
  %32 = load i32, ptr %9, align 4
  br label %33

33:                                               ; preds = %13, %7
  %34 = phi i32 [ %32, %13 ], [ %8, %7 ]
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i32 100, i32 96
  %37 = getelementptr i8, ptr %0, i32 %36
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %0, i32 -4
  %40 = load i32, ptr %39, align 4
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne i32 %38, -1
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %56

44:                                               ; preds = %33
  %45 = icmp slt i32 %38, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = getelementptr i8, ptr %0, i32 104
  %48 = load i32, ptr %47, align 4
  br label %49

49:                                               ; preds = %46, %44
  %50 = phi i32 [ %48, %46 ], [ %38, %44 ]
  %51 = add i32 %40, -1
  %52 = tail call i32 @llvm.smin.i32(i32 %50, i32 %51)
  %53 = getelementptr i8, ptr %0, i32 108
  %54 = load i32, ptr %53, align 4
  %55 = tail call i32 @llvm.smax.i32(i32 %52, i32 %54)
  br label %58

56:                                               ; preds = %33
  %57 = getelementptr i8, ptr %0, i32 92
  store i32 -1, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %49
  %59 = phi i32 [ %55, %49 ], [ -1, %56 ]
  %60 = load i32, ptr %10, align 4
  %61 = icmp ugt i32 %60, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %58
  %63 = getelementptr i8, ptr %0, i32 -224
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.nvkm_device, ptr %64, i32 0, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.13, ptr noundef %67, i32 noundef %59) #12
  br label %68

68:                                               ; preds = %62, %58
  %69 = getelementptr i8, ptr %0, i32 92
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %59, %70
  br i1 %71, label %335, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %0, i32 -224
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 33
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 20
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %0, i32 -12
  br label %80

80:                                               ; preds = %80, %72
  %81 = phi i32 [ 0, %72 ], [ %87, %80 ]
  %82 = phi ptr [ %79, %72 ], [ %83, %80 ]
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %79
  %85 = icmp eq i32 %81, %59
  %86 = select i1 %84, i1 true, i1 %85
  %87 = add i32 %81, 1
  br i1 %86, label %88, label %80

88:                                               ; preds = %80
  %89 = load i32, ptr %10, align 4
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.15, ptr noundef %94, i32 noundef %59) #12
  br label %95

95:                                               ; preds = %91, %88
  store i32 %59, ptr %69, align 4
  %96 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 5
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 6
  %99 = load i8, ptr %98, align 4
  %100 = tail call i32 @nvkm_pcie_set_link(ptr noundef %78, i32 noundef %97, i8 noundef zeroext %99) #10
  %101 = icmp eq ptr %76, null
  br i1 %101, label %133, label %102

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.nvkm_fb, ptr %76, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %133, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr %104, align 8
  %108 = getelementptr inbounds %struct.nvkm_ram_func, ptr %107, i32 0, i32 6
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %133, label %111

111:                                              ; preds = %106
  %112 = getelementptr %struct.nvkm_pstate, ptr %83, i32 0, i32 2, i32 2, i32 18
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %127, %111
  %115 = phi ptr [ %129, %127 ], [ %109, %111 ]
  %116 = tail call i32 %115(ptr noundef nonnull %104, i32 noundef %113) #10
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load ptr, ptr %104, align 8
  %120 = getelementptr inbounds %struct.nvkm_ram_func, ptr %119, i32 0, i32 7
  %121 = load ptr, ptr %120, align 8
  %122 = tail call i32 %121(ptr noundef nonnull %104) #10
  br label %123

123:                                              ; preds = %118, %114
  %124 = phi i32 [ %122, %118 ], [ %116, %114 ]
  %125 = icmp sgt i32 %124, 0
  %126 = load ptr, ptr %104, align 8
  br i1 %125, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.nvkm_ram_func, ptr %126, i32 0, i32 6
  %129 = load ptr, ptr %128, align 4
  br label %114

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.nvkm_ram_func, ptr %126, i32 0, i32 8
  %132 = load ptr, ptr %131, align 4
  tail call void %132(ptr noundef nonnull %104) #10
  br label %133

133:                                              ; preds = %130, %106, %102, %95
  %134 = load ptr, ptr %73, align 4
  %135 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 42
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_device, ptr %134, i32 0, i32 40
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 1
  %140 = load volatile ptr, ptr %139, align 4
  %141 = icmp eq ptr %140, %139
  br i1 %141, label %240, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 1, i32 1
  %144 = load ptr, ptr %143, align 4
  %145 = icmp ne ptr %83, null
  %146 = icmp ne ptr %144, null
  %147 = and i1 %145, %146
  br i1 %147, label %148, label %242

148:                                              ; preds = %142
  %149 = icmp eq ptr %138, null
  br i1 %149, label %242, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.nvkm_volt, ptr %138, i32 0, i32 5
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nvkm_volt, ptr %138, i32 0, i32 7
  %154 = load i8, ptr %153, align 4
  %155 = icmp eq i8 %154, -1
  br i1 %155, label %161, label %156

156:                                              ; preds = %150
  %157 = getelementptr i8, ptr %0, i32 112
  %158 = load i8, ptr %157, align 4
  %159 = tail call i32 @nvkm_volt_map(ptr noundef nonnull %138, i8 noundef zeroext %154, i8 noundef zeroext %158) #10
  %160 = tail call i32 @llvm.smin.i32(i32 %152, i32 %159) #10
  br label %161

161:                                              ; preds = %156, %150
  %162 = phi i32 [ %160, %156 ], [ %152, %150 ]
  %163 = getelementptr inbounds %struct.nvkm_volt, ptr %138, i32 0, i32 8
  %164 = load i8, ptr %163, align 1
  %165 = icmp eq i8 %164, -1
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr i8, ptr %0, i32 112
  %168 = load i8, ptr %167, align 4
  %169 = tail call i32 @nvkm_volt_map(ptr noundef nonnull %138, i8 noundef zeroext %164, i8 noundef zeroext %168) #10
  %170 = tail call i32 @llvm.smin.i32(i32 %162, i32 %169) #10
  br label %171

171:                                              ; preds = %166, %161
  %172 = phi i32 [ %170, %166 ], [ %162, %161 ]
  %173 = getelementptr inbounds %struct.nvkm_volt, ptr %138, i32 0, i32 9
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, -1
  br i1 %175, label %181, label %176

176:                                              ; preds = %171
  %177 = getelementptr i8, ptr %0, i32 112
  %178 = load i8, ptr %177, align 4
  %179 = tail call i32 @nvkm_volt_map(ptr noundef nonnull %138, i8 noundef zeroext %174, i8 noundef zeroext %178) #10
  %180 = tail call i32 @llvm.smin.i32(i32 %172, i32 %179) #10
  br label %181

181:                                              ; preds = %176, %171
  %182 = phi i32 [ %180, %176 ], [ %172, %171 ]
  %183 = icmp eq ptr %139, %144
  br i1 %183, label %242, label %184

184:                                              ; preds = %181
  %185 = getelementptr i8, ptr %0, i32 112
  %186 = getelementptr i8, ptr %0, i32 -176
  %187 = getelementptr i8, ptr %0, i32 114
  %188 = getelementptr i8, ptr %0, i32 116
  %189 = getelementptr i8, ptr %0, i32 120
  br label %190

190:                                              ; preds = %236, %184
  %191 = phi ptr [ %144, %184 ], [ %238, %236 ]
  %192 = load i8, ptr %185, align 4
  %193 = load ptr, ptr %186, align 4
  %194 = load ptr, ptr %73, align 4
  %195 = getelementptr inbounds %struct.nvkm_device, ptr %194, i32 0, i32 40
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %193, null
  br i1 %197, label %224, label %198

198:                                              ; preds = %221, %190
  %199 = phi ptr [ %222, %221 ], [ %193, %190 ]
  %200 = load i32, ptr %199, align 4
  %201 = icmp eq i32 %200, 29
  br i1 %201, label %224, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.nvkm_domain, ptr %199, i32 0, i32 2
  %204 = load i8, ptr %203, align 1
  %205 = and i8 %204, 2
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %221, label %207

207:                                              ; preds = %202
  %208 = getelementptr %struct.nvkm_cstate, ptr %191, i32 0, i32 2, i32 %200
  %209 = load i32, ptr %208, align 4
  %210 = load i8, ptr %187, align 2
  switch i8 %210, label %221 [
    i8 0, label %211
    i8 1, label %216
  ]

211:                                              ; preds = %207
  %212 = load i32, ptr %188, align 4
  %213 = icmp ne i32 %212, 0
  %214 = icmp ugt i32 %209, %212
  %215 = select i1 %213, i1 %214, i1 false
  br i1 %215, label %236, label %216

216:                                              ; preds = %211, %207
  %217 = load i32, ptr %189, align 4
  %218 = icmp ne i32 %217, 0
  %219 = icmp ugt i32 %209, %217
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %236, label %221

221:                                              ; preds = %216, %207, %202
  %222 = getelementptr %struct.nvkm_domain, ptr %199, i32 1
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %198

224:                                              ; preds = %221, %198, %190
  %225 = icmp eq ptr %196, null
  br i1 %225, label %242, label %226

226:                                              ; preds = %224
  %227 = getelementptr inbounds %struct.nvkm_cstate, ptr %191, i32 0, i32 1
  %228 = load i8, ptr %227, align 4
  %229 = tail call i32 @nvkm_volt_map(ptr noundef nonnull %196, i8 noundef zeroext %228, i8 noundef zeroext %192) #10
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %236, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.nvkm_volt, ptr %196, i32 0, i32 5
  %233 = load i32, ptr %232, align 4
  %234 = tail call i32 @llvm.umin.i32(i32 %233, i32 %182) #10
  %235 = icmp ugt i32 %229, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %231, %226, %216, %211
  %237 = getelementptr inbounds %struct.list_head, ptr %191, i32 0, i32 1
  %238 = load ptr, ptr %237, align 4
  %239 = icmp eq ptr %238, %139
  br i1 %239, label %242, label %190

240:                                              ; preds = %133
  %241 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 2
  br label %242

242:                                              ; preds = %240, %236, %231, %224, %181, %148, %142
  %243 = phi ptr [ %241, %240 ], [ null, %142 ], [ %144, %148 ], [ %139, %181 ], [ %191, %224 ], [ %139, %236 ], [ %191, %231 ]
  %244 = icmp eq ptr %136, null
  br i1 %244, label %258, label %245

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 4
  %247 = load i8, ptr %246, align 1
  %248 = zext i8 %247 to i32
  %249 = tail call i32 @nvkm_therm_cstate(ptr noundef nonnull %136, i32 noundef %248, i32 noundef 1) #10
  switch i32 %249, label %250 [
    i32 -19, label %258
    i32 0, label %258
  ]

250:                                              ; preds = %245
  %251 = load i32, ptr %10, align 4
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %335, label %253

253:                                              ; preds = %250
  %254 = load ptr, ptr %73, align 4
  %255 = getelementptr inbounds %struct.nvkm_device, ptr %254, i32 0, i32 2
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.16, ptr noundef %257, i32 noundef %249) #12
  br label %326

258:                                              ; preds = %245, %245, %242
  %259 = icmp eq ptr %138, null
  br i1 %259, label %276, label %260

260:                                              ; preds = %258
  %261 = getelementptr inbounds %struct.nvkm_cstate, ptr %243, i32 0, i32 1
  %262 = load i8, ptr %261, align 4
  %263 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 2, i32 1
  %264 = load i8, ptr %263, align 4
  %265 = getelementptr i8, ptr %0, i32 112
  %266 = load i8, ptr %265, align 4
  %267 = tail call i32 @nvkm_volt_set_id(ptr noundef nonnull %138, i8 noundef zeroext %262, i8 noundef zeroext %264, i8 noundef zeroext %266, i32 noundef 1) #10
  switch i32 %267, label %268 [
    i32 -19, label %276
    i32 0, label %276
  ]

268:                                              ; preds = %260
  %269 = load i32, ptr %10, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %335, label %271

271:                                              ; preds = %268
  %272 = load ptr, ptr %73, align 4
  %273 = getelementptr inbounds %struct.nvkm_device, ptr %272, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8
  %275 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %274, ptr noundef nonnull @.str.17, ptr noundef %275, i32 noundef %267) #12
  br label %326

276:                                              ; preds = %260, %260, %258
  %277 = load ptr, ptr %2, align 4
  %278 = getelementptr inbounds %struct.nvkm_clk_func, ptr %277, i32 0, i32 3
  %279 = load ptr, ptr %278, align 4
  %280 = tail call i32 %279(ptr noundef %2, ptr noundef %243) #10
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %290

282:                                              ; preds = %276
  %283 = load ptr, ptr %2, align 4
  %284 = getelementptr inbounds %struct.nvkm_clk_func, ptr %283, i32 0, i32 4
  %285 = load ptr, ptr %284, align 4
  %286 = tail call i32 %285(ptr noundef %2) #10
  %287 = load ptr, ptr %2, align 4
  %288 = getelementptr inbounds %struct.nvkm_clk_func, ptr %287, i32 0, i32 5
  %289 = load ptr, ptr %288, align 4
  tail call void %289(ptr noundef %2) #10
  br label %290

290:                                              ; preds = %282, %276
  %291 = phi i32 [ %286, %282 ], [ %280, %276 ]
  br i1 %259, label %308, label %292

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.nvkm_cstate, ptr %243, i32 0, i32 1
  %294 = load i8, ptr %293, align 4
  %295 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 2, i32 1
  %296 = load i8, ptr %295, align 4
  %297 = getelementptr i8, ptr %0, i32 112
  %298 = load i8, ptr %297, align 4
  %299 = tail call i32 @nvkm_volt_set_id(ptr noundef nonnull %138, i8 noundef zeroext %294, i8 noundef zeroext %296, i8 noundef zeroext %298, i32 noundef -1) #10
  switch i32 %299, label %300 [
    i32 -19, label %308
    i32 0, label %308
  ]

300:                                              ; preds = %292
  %301 = load i32, ptr %10, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %308, label %303

303:                                              ; preds = %300
  %304 = load ptr, ptr %73, align 4
  %305 = getelementptr inbounds %struct.nvkm_device, ptr %304, i32 0, i32 2
  %306 = load ptr, ptr %305, align 8
  %307 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.18, ptr noundef %307, i32 noundef %299) #12
  br label %308

308:                                              ; preds = %303, %300, %292, %292, %290
  %309 = phi i32 [ %299, %292 ], [ %291, %290 ], [ %299, %292 ], [ %299, %303 ], [ %299, %300 ]
  br i1 %244, label %323, label %310

310:                                              ; preds = %308
  %311 = getelementptr inbounds %struct.nvkm_pstate, ptr %83, i32 0, i32 4
  %312 = load i8, ptr %311, align 1
  %313 = zext i8 %312 to i32
  %314 = tail call i32 @nvkm_therm_cstate(ptr noundef nonnull %136, i32 noundef %313, i32 noundef -1) #10
  switch i32 %314, label %315 [
    i32 -19, label %323
    i32 0, label %323
  ]

315:                                              ; preds = %310
  %316 = load i32, ptr %10, align 4
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %335, label %318

318:                                              ; preds = %315
  %319 = load ptr, ptr %73, align 4
  %320 = getelementptr inbounds %struct.nvkm_device, ptr %319, i32 0, i32 2
  %321 = load ptr, ptr %320, align 8
  %322 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %321, ptr noundef nonnull @.str.19, ptr noundef %322, i32 noundef %314) #12
  br label %326

323:                                              ; preds = %310, %310, %308
  %324 = phi i32 [ %314, %310 ], [ %309, %308 ], [ %314, %310 ]
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %335, label %326

326:                                              ; preds = %323, %318, %271, %253
  %327 = phi i32 [ %249, %253 ], [ %267, %271 ], [ %314, %318 ], [ %324, %323 ]
  %328 = load i32, ptr %10, align 4
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %335, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %73, align 4
  %332 = getelementptr inbounds %struct.nvkm_device, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 8
  %334 = getelementptr i8, ptr %0, i32 -212
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.14, ptr noundef %334, i32 noundef %59, i32 noundef %327) #12
  br label %335

335:                                              ; preds = %330, %326, %323, %315, %268, %250, %68
  %336 = getelementptr i8, ptr %0, i32 16
  tail call void @__wake_up(ptr noundef %336, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  %337 = getelementptr i8, ptr %0, i32 32
  tail call void @nvkm_notify_get(ptr noundef %337) #10
  br label %338

338:                                              ; preds = %335, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_notify_init(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_clk_pwrsrc(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  store volatile i32 1, ptr %2, align 4
  %3 = getelementptr i8, ptr %0, i32 -32
  %4 = load ptr, ptr @system_wq, align 4
  %5 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %4, ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_stropt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_clk_nstate(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 17
  %6 = load i8, ptr %5, align 1, !range !8
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 4
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  %11 = tail call i32 @strncasecmp(ptr noundef %1, ptr noundef nonnull @.str.20, i32 noundef 4) #10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %11, %10 ], [ %2, %8 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %65, label %15

15:                                               ; preds = %12, %3
  %16 = icmp eq i32 %2, 8
  br i1 %16, label %17, label %19

17:                                               ; preds = %15
  %18 = tail call i32 @strncasecmp(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef 8) #10
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ %2, %15 ]
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %62, label %22

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %1, i32 %2
  %24 = load i8, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !9
  store i8 0, ptr %23, align 1
  %25 = call i32 @_kstrtol(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %22
  %28 = load i32, ptr %4, align 4
  %29 = load i8, ptr %5, align 1, !range !8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %27
  %32 = icmp ult i32 %28, -2
  br i1 %32, label %33, label %55

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %48, label %37

37:                                               ; preds = %44, %33
  %38 = phi ptr [ %46, %44 ], [ %35, %33 ]
  %39 = phi i32 [ %45, %44 ], [ 0, %33 ]
  %40 = getelementptr inbounds %struct.nvkm_pstate, ptr %38, i32 0, i32 3
  %41 = load i8, ptr %40, align 4
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %28, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %37
  %45 = add i32 %39, 1
  %46 = load ptr, ptr %38, align 4
  %47 = icmp eq ptr %46, %34
  br i1 %47, label %48, label %37

48:                                               ; preds = %44, %37, %33
  %49 = phi i32 [ 0, %33 ], [ %45, %44 ], [ %39, %37 ]
  %50 = phi ptr [ %34, %33 ], [ %34, %44 ], [ %38, %37 ]
  %51 = getelementptr inbounds %struct.nvkm_pstate, ptr %50, i32 0, i32 3
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %28, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %48, %31
  %56 = phi i32 [ %28, %31 ], [ %49, %48 ]
  %57 = add i32 %56, 2
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %48, %27
  br label %60

60:                                               ; preds = %59, %55, %22
  %61 = phi i32 [ 1, %22 ], [ 1, %59 ], [ %57, %55 ]
  store i8 %24, ptr %23, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %62

62:                                               ; preds = %60, %19
  %63 = phi i32 [ %61, %60 ], [ 1, %19 ]
  %64 = add nsw i32 %63, -2
  br label %65

65:                                               ; preds = %62, %12
  %66 = phi i32 [ %64, %62 ], [ -2, %12 ]
  ret i32 %66
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvkm_clk_new_(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #0 {
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 364) #11
  store ptr %8, ptr %5, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @nvkm_clk_ctor(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull %8)
  br label %12

12:                                               ; preds = %10, %6
  %13 = phi i32 [ %11, %10 ], [ -12, %6 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nvkm_clk_dtor(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 260
  tail call void @nvkm_notify_fini(ptr noundef %3) #10
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nvkm_clk_func, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  %9 = getelementptr i8, ptr %0, i32 216
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %33, label %12

12:                                               ; preds = %27, %8
  %13 = phi ptr [ %14, %27 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_pstate, ptr %13, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %27, label %18

18:                                               ; preds = %18, %12
  %19 = phi ptr [ %20, %18 ], [ %16, %12 ]
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %22, ptr %23, align 4
  store volatile ptr %20, ptr %22, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %19, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %21, align 4
  tail call void @kfree(ptr noundef %19) #10
  %24 = icmp eq ptr %20, %15
  br i1 %24, label %25, label %18

25:                                               ; preds = %18
  %26 = load ptr, ptr %13, align 4
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi ptr [ %26, %25 ], [ %14, %12 ]
  %29 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %28, ptr %30, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %13, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %29, align 4
  tail call void @kfree(ptr noundef %13) #10
  %32 = icmp eq ptr %14, %9
  br i1 %32, label %33, label %12

33:                                               ; preds = %27, %8, %1
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_clk_init(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = getelementptr i8, ptr %0, i32 52
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 56
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(160) %5, i8 0, i32 160, i1 false)
  %6 = getelementptr i8, ptr %0, i32 64
  store volatile ptr %6, ptr %6, align 4
  %7 = getelementptr i8, ptr %0, i32 68
  store ptr %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %0, i32 204
  store i8 -1, ptr %8, align 4
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 29
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = getelementptr i8, ptr %0, i32 84
  br label %13

13:                                               ; preds = %32, %11
  %14 = phi i32 [ %9, %11 ], [ %36, %32 ]
  %15 = phi ptr [ %4, %11 ], [ %35, %32 ]
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr inbounds %struct.nvkm_clk_func, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = tail call i32 %18(ptr noundef %2, i32 noundef %14) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nvkm_device, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %31 = load i32, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.5, ptr noundef %30, i32 noundef %31) #12
  br label %52

32:                                               ; preds = %13
  %33 = load i32, ptr %15, align 4
  %34 = getelementptr [29 x i32], ptr %12, i32 0, i32 %33
  store i32 %19, ptr %34, align 4
  %35 = getelementptr %struct.nvkm_domain, ptr %15, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 29
  br i1 %37, label %38, label %13

38:                                               ; preds = %32, %1
  tail call fastcc void @nvkm_pstate_info(ptr noundef %2, ptr noundef %5)
  %39 = load ptr, ptr %2, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef %2) #10
  br label %52

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %0, i32 224
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -1
  %48 = getelementptr i8, ptr %0, i32 332
  store i32 %47, ptr %48, align 4
  %49 = getelementptr i8, ptr %0, i32 336
  store i32 0, ptr %49, align 4
  %50 = getelementptr i8, ptr %0, i32 320
  store i32 -1, ptr %50, align 4
  %51 = getelementptr i8, ptr %0, i32 340
  store i8 90, ptr %51, align 4
  tail call fastcc void @nvkm_pstate_calc(ptr noundef %2, i1 noundef zeroext true)
  br label %52

52:                                               ; preds = %44, %42, %25, %21
  %53 = phi i32 [ %43, %42 ], [ 0, %44 ], [ %19, %25 ], [ %19, %21 ]
  ret i32 %53
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nvkm_clk_fini(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = getelementptr i8, ptr %0, i32 260
  tail call void @nvkm_notify_put(ptr noundef %4) #10
  %5 = getelementptr i8, ptr %0, i32 228
  %6 = tail call zeroext i1 @flush_work(ptr noundef %5) #10
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr inbounds %struct.nvkm_clk_func, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void %9(ptr noundef %3) #10
  br label %12

12:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvkm_pstate_info(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [3 x [32 x i8]], align 1
  %4 = alloca [4 x i8], align 4
  %5 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.nvkm_domain, ptr %6, i32 -1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(96) %3, i8 0, i32 96, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 11565, ptr %4, align 4
  %8 = getelementptr inbounds %struct.nvkm_pstate, ptr %1, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, -1
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = zext i8 %9 to i32
  %13 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, 29
  br i1 %16, label %83, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %19 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %20 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %21 = getelementptr inbounds %struct.nvkm_pstate, ptr %1, i32 0, i32 1
  br label %22

22:                                               ; preds = %78, %17
  %23 = phi i32 [ %15, %17 ], [ %81, %78 ]
  %24 = phi ptr [ %6, %17 ], [ %80, %78 ]
  %25 = phi ptr [ %7, %17 ], [ %24, %78 ]
  %26 = phi i32 [ -1, %17 ], [ %79, %78 ]
  %27 = getelementptr %struct.nvkm_pstate, ptr %1, i32 0, i32 2, i32 2, i32 %23
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %78, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %18, align 4
  %32 = icmp ugt i32 %31, 3
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.7, ptr noundef %20, i32 noundef %23, i32 noundef %28) #12
  br label %37

37:                                               ; preds = %33, %30
  %38 = load ptr, ptr %21, align 4
  %39 = icmp eq ptr %38, %21
  br i1 %39, label %58, label %40

40:                                               ; preds = %55, %37
  %41 = phi ptr [ %56, %55 ], [ %38, %37 ]
  %42 = phi i32 [ %47, %55 ], [ %28, %37 ]
  %43 = phi i32 [ %48, %55 ], [ %28, %37 ]
  %44 = load i32, ptr %24, align 4
  %45 = getelementptr %struct.nvkm_cstate, ptr %41, i32 0, i32 2, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = tail call i32 @llvm.umin.i32(i32 %42, i32 %46)
  %48 = tail call i32 @llvm.umax.i32(i32 %43, i32 %46)
  %49 = load i32, ptr %18, align 4
  %50 = icmp ugt i32 %49, 3
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load ptr, ptr %19, align 4
  %53 = getelementptr inbounds %struct.nvkm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef %20, i32 noundef %46) #12
  br label %55

55:                                               ; preds = %51, %40
  %56 = load ptr, ptr %41, align 4
  %57 = icmp eq ptr %56, %21
  br i1 %57, label %58, label %40

58:                                               ; preds = %55, %37
  %59 = phi i32 [ %28, %37 ], [ %48, %55 ]
  %60 = phi i32 [ %28, %37 ], [ %47, %55 ]
  %61 = getelementptr %struct.nvkm_domain, ptr %25, i32 1, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = add i32 %26, 1
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = getelementptr %struct.nvkm_domain, ptr %25, i32 1, i32 4
  %69 = load i32, ptr %68, align 4
  %70 = udiv i32 %60, %69
  %71 = udiv i32 %59, %69
  %72 = icmp eq i32 %70, %71
  %73 = getelementptr [3 x [32 x i8]], ptr %3, i32 0, i32 %65
  br i1 %72, label %74, label %76

74:                                               ; preds = %67
  %75 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %73, i32 noundef 32, ptr noundef nonnull @.str.9, ptr noundef nonnull %62, i32 noundef %70)
  br label %78

76:                                               ; preds = %67
  %77 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %73, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef nonnull %62, i32 noundef %70, i32 noundef %71)
  br label %78

78:                                               ; preds = %76, %74, %64, %58, %22
  %79 = phi i32 [ %26, %22 ], [ %65, %74 ], [ %65, %76 ], [ %65, %64 ], [ %26, %58 ]
  %80 = getelementptr %struct.nvkm_domain, ptr %24, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 29
  br i1 %82, label %83, label %22

83:                                               ; preds = %78, %14
  %84 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 5
  %85 = load i32, ptr %84, align 4
  %86 = icmp ugt i32 %85, 3
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.nvkm_device, ptr %89, i32 0, i32 2
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 4
  %93 = getelementptr inbounds [3 x [32 x i8]], ptr %3, i32 0, i32 1
  %94 = getelementptr inbounds [3 x [32 x i8]], ptr %3, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.11, ptr noundef %92, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef %93, ptr noundef %94) #12
  br label %95

95:                                               ; preds = %87, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %3) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_is_system_supplied() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_notify_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pcie_set_link(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_therm_cstate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_set_id(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_map(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfEp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_perfSp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @nvkm_clk_adjust(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.nvbios_boostE, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.nvbios_boostS, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = getelementptr inbounds %struct.nvkm_clk, ptr %0, i32 0, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 21
  %17 = load ptr, ptr %16, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %6, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1, !annotation !9
  %18 = call i32 @nvbios_boostEm(ptr noundef %17, i8 noundef zeroext %2, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %6) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %11, i8 0, i32 12, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #10
  %21 = getelementptr inbounds %struct.nvbios_boostE, ptr %6, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = call i32 @llvm.umax.i32(i32 %22, i32 %4)
  %24 = getelementptr inbounds %struct.nvbios_boostE, ptr %6, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 %23)
  br label %27

27:                                               ; preds = %53, %20
  %28 = phi i8 [ 0, %20 ], [ %54, %53 ]
  %29 = load i8, ptr %7, align 1
  store i8 %29, ptr %12, align 1
  %30 = load i8, ptr %8, align 1
  store i8 %30, ptr %13, align 1
  %31 = zext i8 %28 to i32
  %32 = load i8, ptr %9, align 1
  %33 = load i8, ptr %10, align 1
  %34 = call i32 @nvbios_boostSp(ptr noundef %17, i32 noundef %31, i32 noundef %18, ptr noundef nonnull %12, ptr noundef nonnull %13, i8 noundef zeroext %32, i8 noundef zeroext %33, ptr noundef nonnull %11) #10
  %35 = icmp eq i32 %34, 0
  %36 = xor i1 %35, true
  %37 = load i8, ptr %11, align 4
  %38 = icmp eq i8 %37, %3
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %53

40:                                               ; preds = %27
  %41 = getelementptr inbounds %struct.nvbios_boostS, ptr %11, i32 0, i32 1
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = mul i32 %26, %43
  %45 = udiv i32 %44, 100
  %46 = select i1 %1, i32 %45, i32 %26
  %47 = getelementptr inbounds %struct.nvbios_boostS, ptr %11, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = call i32 @llvm.umax.i32(i32 %48, i32 %46)
  %50 = getelementptr inbounds %struct.nvbios_boostS, ptr %11, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = call i32 @llvm.umin.i32(i32 %51, i32 %49)
  br label %55

53:                                               ; preds = %27
  %54 = add i8 %28, 1
  br i1 %35, label %55, label %27

55:                                               ; preds = %53, %40
  %56 = phi i32 [ %52, %40 ], [ %26, %53 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #10
  br label %57

57:                                               ; preds = %55, %5
  %58 = phi i32 [ %56, %55 ], [ %4, %5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_cstepEm(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_boostEm(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_boostSp(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_cstepXp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_volt_map_min(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
!10 = !{i64 2148575613}
!11 = !{i64 786092, i64 2148276063, i64 2148276089, i64 2148276136, i64 2148276158, i64 2148276186, i64 2148276206}
!12 = !{i64 794742, i64 794759, i64 794783, i64 794809, i64 794827}
!13 = !{i64 2148575957}
