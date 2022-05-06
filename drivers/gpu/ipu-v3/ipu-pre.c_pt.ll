; ModuleID = '/llk/IR/drivers/gpu/ipu-v3/ipu-pre.c_pt.bc'
source_filename = "../drivers/gpu/ipu-v3/ipu-pre.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.ipu_pre = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.71, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.71 = type { [4 x i8] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@available_pres = internal unnamed_addr global i32 0, align 4
@ipu_pre_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipu_pre_list_mutex, i64 12), ptr getelementptr (i8, ptr @ipu_pre_list_mutex, i64 12) } }, align 4
@ipu_pre_list = internal global %struct.list_head { ptr @ipu_pre_list, ptr @ipu_pre_list }, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str = private unnamed_addr constant [37 x i8] c"timeout waiting for PRE safe window\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"imx-ipu-pre\00", align 1
@ipu_pre_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6qp-pre\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@ipu_pre_drv = dso_local local_unnamed_addr global %struct.platform_driver { ptr @ipu_pre_probe, ptr @ipu_pre_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ipu_pre_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"axi\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"fsl,iram\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_pre_get_available_count() local_unnamed_addr #0 {
  %1 = load i32, ptr @available_pres, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @ipu_pre_lookup_by_phandle(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #7, !annotation !8
  %7 = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef %1, ptr noundef null, i32 noundef 0, i32 noundef %2, ptr noundef nonnull %4) #7
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %4, align 4
  %10 = select i1 %8, ptr %9, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #7
  call void @mutex_lock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  br label %11

11:                                               ; preds = %15, %3
  %12 = phi ptr [ @ipu_pre_list, %3 ], [ %13, %15 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, @ipu_pre_list
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.ipu_pre, ptr %13, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %10, %19
  br i1 %20, label %21, label %11

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.ipu_pre, ptr %13, i32 0, i32 1
  call void @mutex_unlock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  %23 = load ptr, ptr %22, align 4
  %24 = call ptr @device_link_add(ptr noundef %0, ptr noundef %23, i32 noundef 2) #7
  br label %26

25:                                               ; preds = %11
  call void @mutex_unlock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi ptr [ %13, %21 ], [ null, %25 ]
  call void @of_node_put(ptr noundef %10) #7
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ipu_pre_get(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 7
  %3 = load i8, ptr %2, align 4, !range !9
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %8 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 536873232) #7, !srcloc !11
  store i8 1, ptr %2, align 4
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 0, %5 ], [ -16, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_pre_put(ptr nocapture noundef %0) local_unnamed_addr #1 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !13
  tail call void @arm_heavy_mb() #7
  %2 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -2147483648) #7, !srcloc !11
  %4 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 7
  store i8 0, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_pre_configure(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
  %8 = tail call ptr @drm_format_info(i32 noundef %4) #7
  %9 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 3
  %10 = load i8, ptr %9, align 2
  %11 = icmp eq i64 %5, 0
  %12 = add i32 %2, -2
  %13 = add i32 %2, 3
  %14 = lshr i32 %13, 2
  %15 = add nsw i32 %14, -1
  %16 = select i1 %11, i32 %12, i32 %15
  %17 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 8
  store i32 %16, ptr %17, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !14
  tail call void @arm_heavy_mb() #7
  %18 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %6) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !15
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %18, align 4
  %22 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %6) #7, !srcloc !11
  %23 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 9
  store i32 %6, ptr %23, align 4
  %24 = shl i8 %10, 3
  %25 = and i8 %24, 48
  %26 = or i8 %25, 8
  %27 = zext i8 %26 to i32
  %28 = or i32 %27, 2049
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %29 = load ptr, ptr %18, align 4
  %30 = getelementptr i8, ptr %29, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #7, !srcloc !11
  %31 = and i32 %1, 65535
  %32 = shl i32 %2, 16
  %33 = or i32 %32, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %34 = load ptr, ptr %18, align 4
  %35 = getelementptr i8, ptr %34, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !11
  %36 = and i32 %3, 65535
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %37 = load ptr, ptr %18, align 4
  %38 = getelementptr i8, ptr %37, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #7, !srcloc !11
  %39 = or i32 %27, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %40 = load ptr, ptr %18, align 4
  %41 = getelementptr i8, ptr %40, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %42 = load ptr, ptr %18, align 4
  %43 = getelementptr i8, ptr %42, i32 304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %33) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !21
  tail call void @arm_heavy_mb() #7
  %44 = load ptr, ptr %18, align 4
  %45 = getelementptr i8, ptr %44, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %36) #7, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %46 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr i8, ptr %48, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #7, !srcloc !11
  %50 = load ptr, ptr %18, align 4
  %51 = getelementptr i8, ptr %50, i32 112
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #7, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !24
  %53 = and i32 %52, -256
  br i1 %11, label %62, label %54

54:                                               ; preds = %7
  %55 = icmp eq i64 %5, 432345564227567618
  %56 = select i1 %55, i32 96, i32 32
  %57 = or i32 %53, %56
  %58 = load i8, ptr %9, align 2
  %59 = icmp eq i8 %58, 2
  %60 = zext i1 %59 to i32
  %61 = or i32 %57, %60
  br label %62

62:                                               ; preds = %54, %7
  %63 = phi i32 [ %53, %7 ], [ %61, %54 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %64 = load ptr, ptr %18, align 4
  %65 = getelementptr i8, ptr %64, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !11
  %66 = load ptr, ptr %18, align 4
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #7, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !26
  %68 = and i32 %67, -268435476
  %69 = or i32 %68, 268435473
  %70 = or i32 %67, 268435475
  %71 = select i1 %11, i32 %69, i32 %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !27
  tail call void @arm_heavy_mb() #7
  %72 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #7, !srcloc !11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ipu_pre_update(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = add i32 %3, 1
  %5 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %9 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %1) #7, !srcloc !11
  store i32 %1, ptr %5, align 4
  %12 = load volatile i32, ptr @jiffies, align 64
  %13 = sub i32 %4, %12
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 8
  br label %20

17:                                               ; preds = %30, %8
  %18 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str) #8
  br label %37

20:                                               ; preds = %30, %15
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 288
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 16383
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %16, align 4
  %29 = icmp ult i32 %25, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %20
  %31 = load volatile i32, ptr @jiffies, align 64
  %32 = sub i32 %4, %31
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %17, label %20

34:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 16) #7, !srcloc !11
  br label %37

37:                                               ; preds = %34, %17, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @ipu_pre_update_pending(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !23
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  ret i1 %6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @ipu_pre_get_baddr(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ipu_pre, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_pre_probe(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 44, i32 noundef 3520) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %45, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %7 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = ptrtoint ptr %7 to i32
  br label %45

12:                                               ; preds = %5
  %13 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %14 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 3
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %45

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %20 = load ptr, ptr %19, align 8
  %21 = tail call ptr @of_gen_pool_get(ptr noundef %20, ptr noundef nonnull @.str.3, i32 noundef 0) #7
  %22 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 4
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %45, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 5
  %26 = tail call ptr @gen_pool_dma_alloc(ptr noundef nonnull %21, i32 noundef 65536, ptr noundef %25) #7
  %27 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 6
  store ptr %26, ptr %27, align 4
  %28 = icmp eq ptr %26, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %14, align 4
  %31 = tail call i32 @clk_prepare(ptr noundef %30) #7
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = tail call i32 @clk_enable(ptr noundef %30) #7
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %37

37:                                               ; preds = %36, %33, %29
  %38 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 1
  store ptr %2, ptr %38, align 4
  %39 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %39, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  %40 = load ptr, ptr @ipu_pre_list, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %3, ptr %41, align 4
  store ptr %40, ptr %3, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr @ipu_pre_list, ptr %42, align 4
  store volatile ptr %3, ptr @ipu_pre_list, align 4
  %43 = load i32, ptr @available_pres, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr @available_pres, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  br label %45

45:                                               ; preds = %37, %24, %18, %16, %10, %1
  %46 = phi i32 [ %11, %10 ], [ %17, %16 ], [ 0, %37 ], [ -12, %1 ], [ -517, %18 ], [ -12, %24 ]
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ipu_pre_remove(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void @mutex_lock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %5, ptr %7, align 4
  store volatile ptr %6, ptr %5, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %4, align 4
  %8 = load i32, ptr @available_pres, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr @available_pres, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ipu_pre_list_mutex) #7
  %10 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ipu_pre, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %13 to i32
  tail call void @gen_pool_free_owner(ptr noundef %17, i32 noundef %18, i32 noundef 65536, ptr noundef null) #7
  br label %19

19:                                               ; preds = %15, %1
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_gen_pool_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_dma_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_pool_free_owner(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2154838377}
!11 = !{i64 4376181}
!12 = !{i64 2154838731}
!13 = !{i64 2154839067}
!14 = !{i64 2154839606}
!15 = !{i64 2154839938}
!16 = !{i64 2154840351}
!17 = !{i64 2154840725}
!18 = !{i64 2154841072}
!19 = !{i64 2154841448}
!20 = !{i64 2154841822}
!21 = !{i64 2154842169}
!22 = !{i64 2154842503}
!23 = !{i64 4376599}
!24 = !{i64 2154843000}
!25 = !{i64 2154843527}
!26 = !{i64 2154843996}
!27 = !{i64 2154844379}
!28 = !{i64 2154844703}
!29 = !{i64 2154846154}
!30 = !{i64 2154846369}
