; ModuleID = '/llk/IR/drivers/gpu/drm/vc4/vc4_perfmon.c_pt.bc'
source_filename = "../drivers/gpu/drm/vc4/vc4_perfmon.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type {}
%struct.vc4_dev = type { %struct.drm_device, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.vc4_bo_cache, i32, ptr, %struct.mutex, %struct.anon.74, i64, i64, i64, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct, ptr, %struct.list_head, ptr, i32, i32, i32, %struct.atomic_t, %struct.work_struct, i32, i8, %struct.mutex, %struct.anon.75, %struct.drm_modeset_lock, %struct.drm_private_obj, %struct.drm_private_obj, %struct.drm_private_obj, %struct.list_head, %struct.mutex, %struct.kref }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.65, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.73, ptr, i32, ptr, i8, i32 }
%struct.anon.65 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.73 = type { i32, ptr }
%struct.vc4_bo_cache = type { ptr, i32, %struct.list_head, %struct.work_struct, %struct.timer_list }
%struct.anon.74 = type { %struct.list_head, i32, i32, i32, i32, %struct.mutex }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.75 = type { %struct.timer_list, %struct.work_struct }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.vc4_perfmon = type { %struct.refcount_struct, i8, [16 x i8], [0 x i64] }
%struct.vc4_v3d = type { ptr, ptr, ptr, ptr, %struct.debugfs_regset32 }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.anon.78 = type { %struct.idr, %struct.mutex }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_vc4_perfmon_create = type { i32, i32, [16 x i8] }
%struct.drm_vc4_perfmon_get_values = type { i32, i64 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@vc4_perfmon_start.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [34 x i8] c"drivers/gpu/drm/vc4/vc4_perfmon.c\00", align 1
@vc4_perfmon_stop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vc4_perfmon_open_file.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"&vc4file->perfmon.lock\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Creating perfmon no VC4 V3D probed\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Destroying perfmon no VC4 V3D probed\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Getting perfmon no VC4 V3D probed\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_get(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #6, !srcloc !9
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7, !prof !10

7:                                                ; preds = %3
  %8 = add i32 %5, 1
  %9 = or i32 %8, %5
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %13, label %11, !prof !11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 2, %3 ], [ 1, %7 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef %12) #6
  br label %13

13:                                               ; preds = %11, %7, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_put(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %0) #6, !srcloc !8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %0, ptr nonnull %0, i32 1, ptr nonnull elementtype(i32) %0) #6, !srcloc !13
  %5 = extractvalue { i32, i32, i32 } %4, 0
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %11, label %9, !prof !11

9:                                                ; preds = %7
  tail call void @refcount_warn_saturate(ptr noundef nonnull %0, i32 noundef 3) #6
  br label %11

10:                                               ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @kfree(ptr noundef nonnull %0) #6
  br label %11

11:                                               ; preds = %10, %9, %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_start(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 22
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi i1 [ true, %2 ], [ %7, %4 ]
  %10 = load i1, ptr @vc4_perfmon_start.__already_done, align 1
  %11 = xor i1 %10, true
  %12 = select i1 %9, i1 %11, i1 false
  br i1 %12, label %13, label %14, !prof !10

13:                                               ; preds = %8
  store i1 true, ptr @vc4_perfmon_start.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 35, i32 noundef 9, ptr noundef null) #6
  br label %14

14:                                               ; preds = %13, %8
  br i1 %9, label %53, label %15

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.vc4_perfmon, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %32, %21 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !15
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr %struct.vc4_perfmon, ptr %1, i32 0, i32 2, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load ptr, ptr %20, align 4
  %27 = getelementptr inbounds %struct.vc4_v3d, ptr %26, i32 0, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = shl i32 %22, 3
  %30 = add nuw nsw i32 %29, 1668
  %31 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %25) #6, !srcloc !16
  %32 = add nuw nsw i32 %22, 1
  %33 = load i8, ptr %16, align 4
  %34 = zext i8 %33 to i32
  %35 = icmp ult i32 %32, %34
  br i1 %35, label %21, label %36

36:                                               ; preds = %21
  %37 = zext i8 %33 to i32
  %38 = sub nsw i32 32, %37
  br label %39

39:                                               ; preds = %36, %15
  %40 = phi i32 [ %38, %36 ], [ 32, %15 ]
  %41 = lshr i32 -1, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !17
  tail call void @arm_heavy_mb() #6
  %42 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.vc4_v3d, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 1648
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %41) #6, !srcloc !16
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !18
  tail call void @arm_heavy_mb() #6
  %47 = or i32 %41, -2147483648
  %48 = load ptr, ptr %42, align 4
  %49 = getelementptr inbounds %struct.vc4_v3d, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 1652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %47) #6, !srcloc !16
  %52 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 22
  store ptr %1, ptr %52, align 8
  br label %53

53:                                               ; preds = %39, %14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_stop(ptr nocapture noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 22
  %5 = load ptr, ptr %4, align 8
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %5, %1
  %8 = or i1 %6, %7
  %9 = load i1, ptr @vc4_perfmon_stop.__already_done, align 1
  %10 = xor i1 %9, true
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %13, !prof !10

12:                                               ; preds = %3
  store i1 true, ptr @vc4_perfmon_stop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 53, i32 noundef 9, ptr noundef null) #6
  br label %13

13:                                               ; preds = %12, %3
  br i1 %8, label %44, label %14

14:                                               ; preds = %13
  br i1 %2, label %15, label %38

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.vc4_perfmon, ptr %1, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  br label %21

21:                                               ; preds = %21, %19
  %22 = phi i32 [ 0, %19 ], [ %34, %21 ]
  %23 = load ptr, ptr %20, align 4
  %24 = getelementptr inbounds %struct.vc4_v3d, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = shl i32 %22, 3
  %27 = add nuw nsw i32 %26, 1664
  %28 = getelementptr i8, ptr %25, i32 %27
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !19
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !20
  %30 = zext i32 %29 to i64
  %31 = getelementptr %struct.vc4_perfmon, ptr %1, i32 0, i32 3, i32 %22
  %32 = load i64, ptr %31, align 8
  %33 = add i64 %32, %30
  store i64 %33, ptr %31, align 8
  %34 = add nuw nsw i32 %22, 1
  %35 = load i8, ptr %16, align 4
  %36 = zext i8 %35 to i32
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %21, label %38

38:                                               ; preds = %21, %15, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %39 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.vc4_v3d, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 1652
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #6, !srcloc !16
  store ptr null, ptr %4, align 8
  br label %44

44:                                               ; preds = %38, %13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @vc4_perfmon_find(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.anon.78, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = tail call ptr @idr_find(ptr noundef %0, i32 noundef %1) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %4) #6, !srcloc !8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #6, !srcloc !9
  %8 = extractvalue { i32, i32, i32 } %7, 0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10, !prof !10

10:                                               ; preds = %6
  %11 = add i32 %8, 1
  %12 = or i32 %11, %8
  %13 = icmp sgt i32 %12, -1
  br i1 %13, label %16, label %14, !prof !11

14:                                               ; preds = %10, %6
  %15 = phi i32 [ 2, %6 ], [ 1, %10 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %15) #6
  br label %16

16:                                               ; preds = %14, %10, %2
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_open_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.78, ptr %0, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @vc4_perfmon_open_file.__key) #6
  store i32 0, ptr %0, align 4
  %3 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 1
  store i32 33554436, ptr %3, align 4
  %4 = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 2
  store ptr null, ptr %4, align 4
  %5 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 1
  store i32 1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.idr, ptr %0, i32 0, i32 2
  store i32 0, ptr %6, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @vc4_perfmon_close_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.anon.78, ptr %0, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %2) #6
  %3 = tail call i32 @idr_for_each(ptr noundef %0, ptr noundef nonnull @vc4_perfmon_idr_del, ptr noundef null) #6
  tail call void @idr_destroy(ptr noundef %0) #6
  tail call void @mutex_unlock(ptr noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vc4_perfmon_idr_del(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %1) #6, !srcloc !8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #6, !srcloc !13
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %13, label %11, !prof !11

11:                                               ; preds = %9
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #6
  br label %13

12:                                               ; preds = %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %13

13:                                               ; preds = %12, %11, %9, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_perfmon_create_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2) #6
  br label %45

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_vc4_perfmon_create, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, -17
  %14 = icmp ult i32 %13, -16
  br i1 %14, label %45, label %18

15:                                               ; preds = %18
  %16 = add nuw i32 %19, 1
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %23, label %18

18:                                               ; preds = %15, %10
  %19 = phi i32 [ %16, %15 ], [ 0, %10 ]
  %20 = getelementptr %struct.drm_vc4_perfmon_create, ptr %1, i32 0, i32 2, i32 %19
  %21 = load i8, ptr %20, align 1
  %22 = icmp ugt i8 %21, 29
  br i1 %22, label %45, label %15

23:                                               ; preds = %15
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 8) #6
  %25 = extractvalue { i32, i1 } %24, 1
  %26 = extractvalue { i32, i1 } %24, 0
  %27 = tail call i32 @llvm.uadd.sat.i32(i32 %26, i32 24) #6
  %28 = select i1 %25, i32 -1, i32 %27
  %29 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %11, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = getelementptr i8, ptr %29, i32 5
  %36 = getelementptr i8, ptr %1, i32 8
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %35, ptr align 1 %36, i32 %32, i1 false)
  br label %37

37:                                               ; preds = %34, %31
  %38 = trunc i32 %32 to i8
  %39 = getelementptr inbounds %struct.vc4_perfmon, ptr %29, i32 0, i32 1
  store i8 %38, ptr %39, align 4
  store volatile i32 1, ptr %29, align 64
  %40 = getelementptr inbounds %struct.anon.78, ptr %5, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %40) #6
  %41 = tail call i32 @idr_alloc(ptr noundef %5, ptr noundef nonnull %29, i32 noundef 1, i32 noundef -1, i32 noundef 3264) #6
  tail call void @mutex_unlock(ptr noundef %40) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @kfree(ptr noundef nonnull %29) #6
  br label %45

44:                                               ; preds = %37
  store i32 %41, ptr %1, align 4
  br label %45

45:                                               ; preds = %44, %43, %23, %18, %10, %9
  %46 = phi i32 [ %41, %43 ], [ 0, %44 ], [ -19, %9 ], [ -22, %10 ], [ -12, %23 ], [ -22, %18 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_perfmon_destroy_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #6
  br label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.78, ptr %10, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = load i32, ptr %1, align 4
  %13 = tail call ptr @idr_remove(ptr noundef %10, i32 noundef %12) #6
  tail call void @mutex_unlock(ptr noundef %11) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #6, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !13
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = icmp sgt i32 %17, 0
  br i1 %20, label %23, label %21, !prof !11

21:                                               ; preds = %19
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #6
  br label %23

22:                                               ; preds = %15
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @kfree(ptr noundef nonnull %13) #6
  br label %23

23:                                               ; preds = %22, %21, %19, %8, %7
  %24 = phi i32 [ -19, %7 ], [ -22, %8 ], [ 0, %19 ], [ 0, %21 ], [ 0, %22 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @vc4_perfmon_get_values_ioctl(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.vc4_dev, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.4) #6
  br label %57

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.drm_file, ptr %2, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.anon.78, ptr %10, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %11) #6
  %12 = load i32, ptr %1, align 8
  %13 = tail call ptr @idr_find(ptr noundef %10, i32 noundef %12) #6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #6, !srcloc !8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !9
  %17 = extractvalue { i32, i32, i32 } %16, 0
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19, !prof !10

19:                                               ; preds = %15
  %20 = add i32 %17, 1
  %21 = or i32 %20, %17
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %26, label %23, !prof !11

23:                                               ; preds = %19, %15
  %24 = phi i32 [ 2, %15 ], [ 1, %19 ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef %24) #6
  br label %26

25:                                               ; preds = %8
  tail call void @mutex_unlock(ptr noundef %11) #6
  br label %57

26:                                               ; preds = %23, %19
  tail call void @mutex_unlock(ptr noundef %11) #6
  %27 = getelementptr inbounds %struct.drm_vc4_perfmon_get_values, ptr %1, i32 0, i32 1
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.vc4_perfmon, ptr %13, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 3
  %35 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %34, i32 -1090519040) #8, !srcloc !22
  %36 = extractvalue { i32, i32 } %35, 0
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.vc4_perfmon, ptr %13, i32 0, i32 3
  %40 = tail call ptr @llvm.thread.pointer() #6
  %41 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 3
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %41) #9, !srcloc !23
  %43 = and i32 %42, -13
  %44 = or i32 %43, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %44) #6, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !25
  %45 = tail call i32 @arm_copy_to_user(ptr noundef %30, ptr noundef %39, i32 noundef %34) #6
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #6, !srcloc !24
  tail call void asm sideeffect "isb ", "~{memory}"() #6, !srcloc !25
  br label %46

46:                                               ; preds = %38, %26
  %47 = phi i32 [ %45, %38 ], [ %34, %26 ]
  %48 = icmp eq i32 %47, 0
  %49 = select i1 %48, i32 0, i32 -14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !12
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %13) #6, !srcloc !8
  %50 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #6, !srcloc !13
  %51 = extractvalue { i32, i32, i32 } %50, 0
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = icmp sgt i32 %51, 0
  br i1 %54, label %57, label %55, !prof !11

55:                                               ; preds = %53
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #6
  br label %57

56:                                               ; preds = %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  tail call void @kfree(ptr noundef nonnull %13) #6
  br label %57

57:                                               ; preds = %56, %55, %53, %25, %7
  %58 = phi i32 [ -19, %7 ], [ -22, %25 ], [ %49, %53 ], [ %49, %55 ], [ %49, %56 ]
  ret i32 %58
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

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
!8 = !{i64 421634, i64 2147911605, i64 2147911631, i64 2147911678, i64 2147911700, i64 2147911728, i64 2147911748}
!9 = !{i64 2147925275, i64 2147925307, i64 2147925336, i64 2147925370, i64 2147925401, i64 2147925424}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{!"branch_weights", i32 2000, i32 1}
!12 = !{i64 2148025473}
!13 = !{i64 2147927632, i64 2147927664, i64 2147927693, i64 2147927727, i64 2147927758, i64 2147927781}
!14 = !{i64 2149272991}
!15 = !{i64 2155248097}
!16 = !{i64 5473156}
!17 = !{i64 2155249358}
!18 = !{i64 2155249893}
!19 = !{i64 5473574}
!20 = !{i64 2155251672}
!21 = !{i64 2155251917}
!22 = !{i64 2149944975, i64 2149945000}
!23 = !{i64 2440509}
!24 = !{i64 2440706}
!25 = !{i64 2149925985}
