; ModuleID = '/llk/IR/drivers/gpu/drm/panfrost/panfrost_gpu.c_pt.bc'
source_filename = "../drivers/gpu/drm/panfrost/panfrost_gpu.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.panfrost_model = type { ptr, i32, i32, i64, i64, [6 x %struct.anon.78] }
%struct.anon.78 = type { i32, i64 }
%struct.panfrost_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], [3 x ptr], i8, %struct.panfrost_features, ptr, %struct.spinlock, i32, i32, i32, %struct.list_head, ptr, [3 x [2 x ptr]], %struct.list_head, ptr, %struct.mutex, %struct.anon.75, %struct.mutex, %struct.list_head, %struct.shrinker, %struct.panfrost_devfreq }
%struct.panfrost_features = type { i16, i16, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [16 x i32], i32, i32, [2 x i32], [2 x i32] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.75 = type { ptr, %struct.work_struct, %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.panfrost_devfreq = type { ptr, ptr, %struct.devfreq_simple_ondemand_data, i8, i64, i64, i64, i32, %struct.spinlock }
%struct.devfreq_simple_ondemand_data = type { i32, i32 }
%struct.panfrost_compatible = type { i32, ptr, i32, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@.str = private unnamed_addr constant [26 x i8] c"gpu soft reset timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"error powering up gpu L2\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"error powering up gpu shader\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error powering up gpu tiler\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"gpu\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"panfrost-gpu\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"failed to request gpu irq\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gpu_models = internal unnamed_addr constant [14 x %struct.panfrost_model] [%struct.panfrost_model { ptr @.str.12, i32 1536, i32 0, i64 270557184, i64 564447363, [6 x %struct.anon.78] [%struct.anon.78 { i32 1, i64 269489020 }, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer] }, %struct.panfrost_model { ptr @.str.13, i32 1568, i32 0, i64 270558208, i64 554450944, [6 x %struct.anon.78] [%struct.anon.78 { i32 16, i64 14852096 }, %struct.anon.78 { i32 4096, i64 6291456 }, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer] }, %struct.panfrost_model { ptr @.str.14, i32 1824, i32 0, i64 271621696, i64 553992192, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.15, i32 1872, i32 0, i64 268597183, i64 604241920, [6 x %struct.anon.78] [%struct.anon.78 { i32 0, i64 39845888 }, %struct.anon.78 { i32 16, i64 39845888 }, %struct.anon.78 { i32 16, i64 33554432 }, %struct.anon.78 { i32 32, i64 39845888 }, %struct.anon.78 { i32 48, i64 33554432 }, %struct.anon.78 zeroinitializer] }, %struct.panfrost_model { ptr @.str.16, i32 2080, i32 0, i64 270431999, i64 604241920, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.17, i32 2096, i32 0, i64 270431999, i64 604241920, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.18, i32 2144, i32 0, i64 269383615, i64 604241920, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.19, i32 2176, i32 0, i64 269383615, i64 604241920, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.20, i32 24576, i32 0, i64 299792383, i64 671088640, [6 x %struct.anon.78] [%struct.anon.78 { i32 1, i64 67108864 }, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer] }, %struct.panfrost_model { ptr @.str.21, i32 24577, i32 0, i64 333346815, i64 0, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.22, i32 28672, i32 0, i64 333346815, i64 0, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.23, i32 28673, i32 0, i64 1071544319, i64 0, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.24, i32 28674, i32 0, i64 333346815, i64 0, [6 x %struct.anon.78] zeroinitializer }, %struct.panfrost_model { ptr @.str.25, i32 28675, i32 0, i64 1071544319, i64 0, [6 x %struct.anon.78] [%struct.anon.78 { i32 4096, i64 1073741824 }, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer, %struct.anon.78 zeroinitializer] }], align 8
@.str.8 = private unnamed_addr constant [50 x i8] c"mali-%s id 0x%x major 0x%x minor 0x%x status 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"features: %64pb, issues: %64pb\00", align 1
@.str.10 = private unnamed_addr constant [84 x i8] c"Features: L2:0x%08x Shader:0x%08x Tiler:0x%08x Mem:0x%0x MMU:0x%08x AS:0x%x JS:0x%x\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"shader_present=0x%0llx l2_present=0x%0llx\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"t600\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"t620\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"t720\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"t760\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"t820\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"t830\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"t860\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"t880\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"g71\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"g72\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"g51\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"g76\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"g52\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"g31\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"GPU Fault 0x%08x (%s) at 0x%016llx\0A\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"There were multiple GPU faults - some have not been reported\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_soft_reset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !10
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 256) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #3, !srcloc !9
  %9 = tail call i64 @ktime_get() #3
  %10 = add i64 %9, 10000000
  %11 = load ptr, ptr %2, align 4
  %12 = getelementptr i8, ptr %11, i32 32
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !12
  %14 = and i32 %13, 256
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %23, %1
  %17 = tail call i64 @ktime_get() #3
  %18 = icmp sgt i64 %17, %10
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 4
  %21 = getelementptr i8, ptr %20, i32 32
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !12
  br label %29

23:                                               ; preds = %16
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #3
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #3, !srcloc !12
  %27 = and i32 %26, 256
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %16, label %29

29:                                               ; preds = %23, %19, %1
  %30 = phi i32 [ %22, %19 ], [ %13, %1 ], [ %26, %23 ]
  %31 = and i32 %30, 256
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str) #4
  br label %40

35:                                               ; preds = %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 198529) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !14
  tail call void @arm_heavy_mb() #3
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr i8, ptr %38, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 198529) #3, !srcloc !9
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ -110, %33 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_amlogic_quirk(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !15
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 694724633) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2101247) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_power_on(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 24
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load volatile i32, ptr %2, align 4
  %8 = and i32 %7, 8388608
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %11

11:                                               ; preds = %10, %6
  %12 = phi i32 [ 65536, %10 ], [ 0, %6 ]
  %13 = load volatile i32, ptr %2, align 4
  %14 = lshr i32 %13, 7
  %15 = and i32 %14, 64
  %16 = or i32 %15, %12
  %17 = load volatile i32, ptr %2, align 4
  %18 = shl i32 %17, 9
  %19 = and i32 %18, 33554432
  %20 = or i32 %16, %19
  %21 = load volatile i32, ptr %2, align 4
  %22 = and i32 %21, 268435456
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %11
  %25 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11
  %26 = load i16, ptr %25, align 8
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 61440
  %29 = icmp eq i32 %28, 0
  %30 = and i32 %27, 61455
  %31 = select i1 %29, i32 %27, i32 %30
  %32 = icmp ult i32 %31, 1872
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = or i32 %20, 262144
  br label %39

35:                                               ; preds = %24
  %36 = icmp ult i32 %31, 2177
  %37 = or i32 %20, 65536
  %38 = select i1 %36, i32 %37, i32 %20
  br label %39

39:                                               ; preds = %35, %33, %11
  %40 = phi i32 [ %20, %11 ], [ %34, %33 ], [ %38, %35 ]
  %41 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23
  %42 = load volatile i32, ptr %41, align 4
  %43 = lshr i32 %42, 10
  %44 = and i32 %43, 131072
  %45 = or i32 %44, %40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !17
  tail call void @arm_heavy_mb() #3
  %48 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 3844
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %45) #3, !srcloc !9
  br label %51

51:                                               ; preds = %47, %39
  %52 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 3848
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !18
  %56 = load volatile i32, ptr %2, align 4
  %57 = lshr i32 %56, 26
  %58 = and i32 %57, 1
  %59 = or i32 %58, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !19
  tail call void @arm_heavy_mb() #3
  %60 = load ptr, ptr %52, align 4
  %61 = getelementptr i8, ptr %60, i32 3848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %59) #3, !srcloc !9
  %62 = load ptr, ptr %52, align 4
  %63 = getelementptr i8, ptr %62, i32 3852
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !20
  %65 = load volatile i32, ptr %41, align 4
  %66 = and i32 %65, 536870912
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 -251658241, i32 -520093697
  %69 = and i32 %68, %64
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %70 = load ptr, ptr %52, align 4
  %71 = getelementptr i8, ptr %70, i32 3852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %69) #3, !srcloc !9
  %72 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11
  %73 = load i16, ptr %72, align 8
  %74 = icmp ult i16 %73, 4096
  %75 = and i16 %73, -4081
  %76 = select i1 %74, i16 %73, i16 %75
  switch i16 %76, label %89 [
    i16 2144, label %77
    i16 2176, label %77
    i16 24576, label %81
  ]

77:                                               ; preds = %51, %51
  %78 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 1
  %79 = load i16, ptr %78, align 2
  %80 = icmp ugt i16 %79, 8191
  br i1 %80, label %85, label %89

81:                                               ; preds = %51
  %82 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 17
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77
  %86 = phi i32 [ 12, %81 ], [ 504, %77 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %87 = load ptr, ptr %52, align 4
  %88 = getelementptr i8, ptr %87, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %86) #3, !srcloc !9
  br label %89

89:                                               ; preds = %85, %81, %77, %51
  %90 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 12
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.panfrost_compatible, ptr %91, i32 0, i32 4
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %96, label %95

95:                                               ; preds = %89
  tail call void %93(ptr noundef %0) #3
  br label %96

96:                                               ; preds = %95, %89
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %97 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 4
  %98 = load i64, ptr %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load ptr, ptr %52, align 4
  %101 = getelementptr i8, ptr %100, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #3, !srcloc !9
  %102 = tail call i64 @ktime_get() #3
  %103 = add i64 %102, 20000000
  %104 = load ptr, ptr %52, align 4
  %105 = getelementptr i8, ptr %104, i32 352
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #3, !srcloc !12
  %107 = zext i32 %106 to i64
  %108 = load i64, ptr %97, align 8
  %109 = icmp eq i64 %108, %107
  br i1 %109, label %129, label %110

110:                                              ; preds = %113, %96
  %111 = tail call i64 @ktime_get() #3
  %112 = icmp sgt i64 %111, %103
  br i1 %112, label %120, label %113

113:                                              ; preds = %110
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #3
  %114 = load ptr, ptr %52, align 4
  %115 = getelementptr i8, ptr %114, i32 352
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %115) #3, !srcloc !12
  %117 = zext i32 %116 to i64
  %118 = load i64, ptr %97, align 8
  %119 = icmp eq i64 %118, %117
  br i1 %119, label %129, label %110

120:                                              ; preds = %110
  %121 = load ptr, ptr %52, align 4
  %122 = getelementptr i8, ptr %121, i32 352
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %122) #3, !srcloc !12
  %124 = load i64, ptr %97, align 8
  %125 = zext i32 %123 to i64
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.1) #4
  br label %129

129:                                              ; preds = %127, %120, %113, %96
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !24
  tail call void @arm_heavy_mb() #3
  %130 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 2
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load ptr, ptr %52, align 4
  %134 = getelementptr i8, ptr %133, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 %132) #3, !srcloc !9
  %135 = tail call i64 @ktime_get() #3
  %136 = add i64 %135, 20000000
  %137 = load ptr, ptr %52, align 4
  %138 = getelementptr i8, ptr %137, i32 320
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %138) #3, !srcloc !12
  %140 = zext i32 %139 to i64
  %141 = load i64, ptr %130, align 8
  %142 = icmp eq i64 %141, %140
  br i1 %142, label %162, label %143

143:                                              ; preds = %146, %129
  %144 = tail call i64 @ktime_get() #3
  %145 = icmp sgt i64 %144, %136
  br i1 %145, label %153, label %146

146:                                              ; preds = %143
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #3
  %147 = load ptr, ptr %52, align 4
  %148 = getelementptr i8, ptr %147, i32 320
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #3, !srcloc !12
  %150 = zext i32 %149 to i64
  %151 = load i64, ptr %130, align 8
  %152 = icmp eq i64 %151, %150
  br i1 %152, label %162, label %143

153:                                              ; preds = %143
  %154 = load ptr, ptr %52, align 4
  %155 = getelementptr i8, ptr %154, i32 320
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #3, !srcloc !12
  %157 = load i64, ptr %130, align 8
  %158 = zext i32 %156 to i64
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %162, label %160

160:                                              ; preds = %153
  %161 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.2) #4
  br label %162

162:                                              ; preds = %160, %153, %146, %129
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %163 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 3
  %164 = load i64, ptr %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = load ptr, ptr %52, align 4
  %167 = getelementptr i8, ptr %166, i32 400
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %167, i32 %165) #3, !srcloc !9
  %168 = tail call i64 @ktime_get() #3
  %169 = add i64 %168, 1000000
  %170 = load ptr, ptr %52, align 4
  %171 = getelementptr i8, ptr %170, i32 336
  %172 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #3, !srcloc !12
  %173 = zext i32 %172 to i64
  %174 = load i64, ptr %163, align 8
  %175 = icmp eq i64 %174, %173
  br i1 %175, label %195, label %176

176:                                              ; preds = %179, %162
  %177 = tail call i64 @ktime_get() #3
  %178 = icmp sgt i64 %177, %169
  br i1 %178, label %186, label %179

179:                                              ; preds = %176
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #3
  %180 = load ptr, ptr %52, align 4
  %181 = getelementptr i8, ptr %180, i32 336
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #3, !srcloc !12
  %183 = zext i32 %182 to i64
  %184 = load i64, ptr %163, align 8
  %185 = icmp eq i64 %184, %183
  br i1 %185, label %195, label %176

186:                                              ; preds = %176
  %187 = load ptr, ptr %52, align 4
  %188 = getelementptr i8, ptr %187, i32 336
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %188) #3, !srcloc !12
  %190 = load i64, ptr %163, align 8
  %191 = zext i32 %189 to i64
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %195, label %193

193:                                              ; preds = %186
  %194 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %194, ptr noundef nonnull @.str.3) #4
  br label %195

195:                                              ; preds = %193, %186, %179, %162
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_power_off(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @panfrost_gpu_soft_reset(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %294

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !29
  %9 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 8
  store i32 %8, ptr %9, align 8
  %10 = load ptr, ptr %5, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !30
  %13 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 9
  store i32 %12, ptr %13, align 4
  %14 = load ptr, ptr %5, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !31
  %17 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 10
  store i32 %16, ptr %17, align 8
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !32
  %21 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 11
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !33
  %25 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 12
  store i32 %24, ptr %25, align 8
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr i8, ptr %26, i32 172
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !34
  %29 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 13
  store i32 %28, ptr %29, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i8, ptr %30, i32 160
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !35
  %33 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 14
  store i32 %32, ptr %33, align 8
  %34 = load ptr, ptr %5, align 4
  %35 = getelementptr i8, ptr %34, i32 164
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !36
  %37 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 15
  store i32 %36, ptr %37, align 4
  %38 = load ptr, ptr %5, align 4
  %39 = getelementptr i8, ptr %38, i32 168
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !37
  %41 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 16
  store i32 %40, ptr %41, align 8
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i8, ptr %42, i32 768
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !38
  %45 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 17
  store i32 %44, ptr %45, align 4
  %46 = load ptr, ptr %5, align 4
  %47 = getelementptr i8, ptr %46, i32 76
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !39
  %49 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 18
  store i32 %48, ptr %49, align 8
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i8, ptr %50, i32 176
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %53 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 19, i32 0
  store i32 %52, ptr %53, align 4
  %54 = load ptr, ptr %5, align 4
  %55 = getelementptr i8, ptr %54, i32 180
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %57 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 19, i32 1
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %5, align 4
  %59 = getelementptr i8, ptr %58, i32 184
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %61 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 19, i32 2
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %5, align 4
  %63 = getelementptr i8, ptr %62, i32 188
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !40
  %65 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 19, i32 3
  store i32 %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr i8, ptr %67, i32 24
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !41
  %70 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 6
  store i32 %69, ptr %70, align 8
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr i8, ptr %71, i32 28
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !42
  %74 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 7
  store i32 %73, ptr %74, align 4
  %75 = tail call i32 @__sw_hweight32(i32 noundef %73) #3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %77, %4
  %78 = phi i32 [ %85, %77 ], [ 0, %4 ]
  %79 = load ptr, ptr %5, align 4
  %80 = shl i32 %78, 2
  %81 = add i32 %80, 192
  %82 = getelementptr i8, ptr %79, i32 %81
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !43
  %84 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 20, i32 %78
  store i32 %83, ptr %84, align 4
  %85 = add nuw i32 %78, 1
  %86 = icmp eq i32 %85, %75
  br i1 %86, label %87, label %77

87:                                               ; preds = %77, %4
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i8, ptr %88, i32 256
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !44
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 2
  store i64 %91, ptr %92, align 8
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i8, ptr %93, i32 260
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !45
  %96 = zext i32 %95 to i64
  %97 = shl nuw i64 %96, 32
  %98 = load i64, ptr %92, align 8
  %99 = or i64 %98, %97
  store i64 %99, ptr %92, align 8
  %100 = load ptr, ptr %5, align 4
  %101 = getelementptr i8, ptr %100, i32 272
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !46
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 3
  store i64 %103, ptr %104, align 8
  %105 = load ptr, ptr %5, align 4
  %106 = getelementptr i8, ptr %105, i32 276
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !47
  %108 = zext i32 %107 to i64
  %109 = shl nuw i64 %108, 32
  %110 = load i64, ptr %104, align 8
  %111 = or i64 %110, %109
  store i64 %111, ptr %104, align 8
  %112 = load ptr, ptr %5, align 4
  %113 = getelementptr i8, ptr %112, i32 288
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !48
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 4
  store i64 %115, ptr %116, align 8
  %117 = load ptr, ptr %5, align 4
  %118 = getelementptr i8, ptr %117, i32 292
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !49
  %120 = zext i32 %119 to i64
  %121 = shl nuw i64 %120, 32
  %122 = load i64, ptr %116, align 8
  %123 = or i64 %122, %121
  store i64 %123, ptr %116, align 8
  %124 = tail call i32 @__sw_hweight64(i64 noundef %123) #3
  %125 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 21
  store i32 %124, ptr %125, align 4
  %126 = load ptr, ptr %5, align 4
  %127 = getelementptr i8, ptr %126, i32 3584
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %127) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !50
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 5
  store i64 %129, ptr %130, align 8
  %131 = load ptr, ptr %5, align 4
  %132 = getelementptr i8, ptr %131, i32 3588
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %132) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !51
  %134 = zext i32 %133 to i64
  %135 = shl nuw i64 %134, 32
  %136 = load i64, ptr %130, align 8
  %137 = or i64 %136, %135
  store i64 %137, ptr %130, align 8
  %138 = load ptr, ptr %5, align 4
  %139 = getelementptr i8, ptr %138, i32 784
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %139) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !52
  %141 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 22
  store i32 %140, ptr %141, align 8
  %142 = load ptr, ptr %5, align 4
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !53
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 1
  store i16 %144, ptr %145, align 2
  %146 = lshr i32 %143, 16
  %147 = trunc i32 %146 to i16
  %148 = icmp eq i32 %146, 26966
  %149 = select i1 %148, i16 1536, i16 %147
  store i16 %149, ptr %66, align 8
  %150 = and i32 %143, 65535
  %151 = zext i16 %149 to i32
  %152 = and i32 %151, 61440
  %153 = icmp eq i32 %152, 0
  %154 = and i32 %151, 61455
  %155 = select i1 %153, i32 %151, i32 %154
  %156 = icmp eq i32 %155, 1536
  br i1 %156, label %161, label %228

157:                                              ; preds = %228
  %158 = getelementptr %struct.panfrost_model, ptr %229, i32 1, i32 1
  %159 = load i32, ptr %158, align 4
  %160 = icmp eq i32 %155, %159
  br i1 %160, label %161, label %228

161:                                              ; preds = %157, %87
  %162 = phi ptr [ @.str.12, %87 ], [ %231, %157 ]
  %163 = phi ptr [ @gpu_models, %87 ], [ %230, %157 ]
  %164 = getelementptr inbounds %struct.panfrost_model, ptr %163, i32 0, i32 3
  %165 = load i64, ptr %164, align 8
  %166 = getelementptr inbounds %struct.panfrost_model, ptr %163, i32 0, i32 4
  %167 = load i64, ptr %166, align 8
  %168 = or i64 %167, 1024
  %169 = and i32 %143, 65520
  %170 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 0
  %171 = load i32, ptr %170, align 8
  %172 = icmp eq i32 %171, %150
  br i1 %172, label %195, label %173

173:                                              ; preds = %161
  %174 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 1
  %175 = load i32, ptr %174, align 8
  %176 = icmp eq i32 %175, %150
  br i1 %176, label %195, label %177

177:                                              ; preds = %173
  %178 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 2
  %179 = load i32, ptr %178, align 8
  %180 = icmp eq i32 %179, %150
  br i1 %180, label %195, label %181

181:                                              ; preds = %177
  %182 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 3
  %183 = load i32, ptr %182, align 8
  %184 = icmp eq i32 %183, %150
  br i1 %184, label %195, label %185

185:                                              ; preds = %181
  %186 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 4
  %187 = load i32, ptr %186, align 8
  %188 = icmp eq i32 %187, %150
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 5
  %191 = load i32, ptr %190, align 8
  %192 = icmp eq i32 %191, %150
  %193 = icmp eq i32 %191, %169
  %194 = or i1 %192, %193
  br i1 %194, label %195, label %200

195:                                              ; preds = %189, %185, %181, %177, %173, %161
  %196 = phi i32 [ 5, %189 ], [ 4, %185 ], [ 3, %181 ], [ 2, %177 ], [ 1, %173 ], [ 0, %161 ]
  %197 = trunc i64 %165 to i32
  %198 = lshr i64 %165, 32
  %199 = trunc i64 %198 to i32
  br label %218

200:                                              ; preds = %189
  %201 = icmp eq i32 %187, %169
  %202 = icmp eq i32 %183, %169
  %203 = icmp eq i32 %179, %169
  %204 = icmp eq i32 %175, %169
  %205 = icmp ne i32 %171, %169
  %206 = sext i1 %205 to i32
  %207 = select i1 %204, i32 1, i32 %206
  %208 = select i1 %203, i32 2, i32 %207
  %209 = select i1 %202, i32 3, i32 %208
  %210 = select i1 %201, i32 4, i32 %209
  %211 = icmp sgt i32 %210, -1
  %212 = trunc i64 %168 to i32
  %213 = lshr i64 %167, 32
  %214 = trunc i64 %213 to i32
  %215 = trunc i64 %165 to i32
  %216 = lshr i64 %165, 32
  %217 = trunc i64 %216 to i32
  br i1 %211, label %218, label %233

218:                                              ; preds = %200, %195
  %219 = phi i32 [ %199, %195 ], [ %217, %200 ]
  %220 = phi i32 [ %197, %195 ], [ %215, %200 ]
  %221 = phi i32 [ %196, %195 ], [ %210, %200 ]
  %222 = getelementptr %struct.panfrost_model, ptr %163, i32 0, i32 5, i32 %221, i32 1
  %223 = load i64, ptr %222, align 8
  %224 = or i64 %223, %168
  %225 = trunc i64 %224 to i32
  %226 = lshr i64 %224, 32
  %227 = trunc i64 %226 to i32
  br label %233

228:                                              ; preds = %157, %87
  %229 = phi ptr [ %230, %157 ], [ @gpu_models, %87 ]
  %230 = getelementptr %struct.panfrost_model, ptr %229, i32 1
  %231 = load ptr, ptr %230, align 8
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %157

233:                                              ; preds = %228, %218, %200
  %234 = phi i32 [ %212, %200 ], [ %225, %218 ], [ 1024, %228 ]
  %235 = phi i32 [ %214, %200 ], [ %227, %218 ], [ 0, %228 ]
  %236 = phi i32 [ %215, %200 ], [ %220, %218 ], [ 0, %228 ]
  %237 = phi i32 [ %217, %200 ], [ %219, %218 ], [ 0, %228 ]
  %238 = phi ptr [ %162, %200 ], [ %162, %218 ], [ @.str.7, %228 ]
  %239 = and i32 %143, 15
  %240 = lshr i32 %143, 4
  %241 = and i32 %240, 255
  %242 = lshr i32 %150, 12
  %243 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23
  store i32 %236, ptr %243, align 4
  %244 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23, i32 1
  store i32 %237, ptr %244, align 4
  %245 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 24
  store i32 %234, ptr %245, align 4
  %246 = getelementptr %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 24, i32 1
  store i32 %235, ptr %246, align 4
  %247 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %247, ptr noundef nonnull @.str.8, ptr noundef nonnull %238, i32 noundef %151, i32 noundef %242, i32 noundef %241, i32 noundef %239) #4
  %248 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %248, ptr noundef nonnull @.str.9, ptr noundef %243, ptr noundef %245) #4
  %249 = load ptr, ptr %0, align 8
  %250 = load i32, ptr %9, align 8
  %251 = load i32, ptr %13, align 4
  %252 = load i32, ptr %17, align 8
  %253 = load i32, ptr %21, align 4
  %254 = load i32, ptr %25, align 8
  %255 = load i32, ptr %70, align 8
  %256 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %249, ptr noundef nonnull @.str.10, i32 noundef %250, i32 noundef %251, i32 noundef %252, i32 noundef %253, i32 noundef %254, i32 noundef %255, i32 noundef %256) #4
  %257 = load ptr, ptr %0, align 8
  %258 = load i64, ptr %92, align 8
  %259 = load i64, ptr %116, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %257, ptr noundef nonnull @.str.11, i64 noundef %258, i64 noundef %259) #4
  %260 = load ptr, ptr %0, align 8
  %261 = load i32, ptr %25, align 8
  %262 = lshr i32 %261, 8
  %263 = and i32 %262, 255
  %264 = icmp eq i32 %263, 64
  br i1 %264, label %269, label %265

265:                                              ; preds = %233
  %266 = zext i32 %263 to i64
  %267 = shl nsw i64 -1, %266
  %268 = xor i64 %267, -1
  br label %269

269:                                              ; preds = %265, %233
  %270 = phi i64 [ %268, %265 ], [ -1, %233 ]
  %271 = tail call i32 @dma_set_mask(ptr noundef %260, i64 noundef %270) #3
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %269
  %274 = tail call i32 @dma_set_coherent_mask(ptr noundef %260, i64 noundef %270) #3
  br label %275

275:                                              ; preds = %273, %269
  %276 = load ptr, ptr %0, align 8
  %277 = getelementptr inbounds %struct.device, ptr %276, i32 0, i32 20
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  store i32 -1, ptr %278, align 4
  %281 = load ptr, ptr %0, align 8
  br label %282

282:                                              ; preds = %280, %275
  %283 = phi ptr [ %276, %275 ], [ %281, %280 ]
  %284 = getelementptr i8, ptr %283, i32 -16
  %285 = tail call i32 @platform_get_irq_byname(ptr noundef %284, ptr noundef nonnull @.str.4) #3
  %286 = icmp slt i32 %285, 1
  br i1 %286, label %294, label %287

287:                                              ; preds = %282
  %288 = load ptr, ptr %0, align 8
  %289 = tail call i32 @devm_request_threaded_irq(ptr noundef %288, i32 noundef %285, ptr noundef nonnull @panfrost_gpu_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.5, ptr noundef %0) #3
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = load ptr, ptr %0, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %292, ptr noundef nonnull @.str.6) #4
  br label %294

293:                                              ; preds = %287
  tail call void @panfrost_gpu_power_on(ptr noundef %0)
  br label %294

294:                                              ; preds = %293, %291, %282, %1
  %295 = phi i32 [ %289, %291 ], [ 0, %293 ], [ %2, %1 ], [ -19, %282 ]
  ret i32 %295
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @panfrost_gpu_irq_handler(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.panfrost_device, ptr %1, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 44
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !54
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !55
  %10 = icmp eq i32 %6, 0
  br i1 %10, label %46, label %11

11:                                               ; preds = %2
  %12 = and i32 %6, 129
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 68
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !56
  %18 = zext i32 %17 to i64
  %19 = shl nuw i64 %18, 32
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr i8, ptr %20, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !57
  %23 = zext i32 %22 to i64
  %24 = or i64 %19, %23
  %25 = load ptr, ptr %1, align 8
  %26 = and i32 %9, 255
  %27 = tail call ptr @panfrost_exception_name(i32 noundef %26) #3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.26, i32 noundef %9, ptr noundef %27, i64 noundef %24) #4
  %28 = and i32 %6, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %14
  %31 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.27) #4
  br label %32

32:                                               ; preds = %30, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !58
  tail call void @arm_heavy_mb() #3
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 0) #3, !srcloc !9
  br label %35

35:                                               ; preds = %32, %11
  %36 = and i32 %6, 65536
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  tail call void @panfrost_perfcnt_sample_done(ptr noundef %1) #3
  br label %39

39:                                               ; preds = %38, %35
  %40 = and i32 %6, 131072
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @panfrost_perfcnt_clean_cache_done(ptr noundef %1) #3
  br label %43

43:                                               ; preds = %42, %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !59
  tail call void @arm_heavy_mb() #3
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr i8, ptr %44, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %6) #3, !srcloc !9
  br label %46

46:                                               ; preds = %43, %2
  %47 = phi i32 [ 1, %43 ], [ 0, %2 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @panfrost_gpu_fini(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !26
  tail call void @arm_heavy_mb() #3
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #3, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !28
  tail call void @arm_heavy_mb() #3
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 0) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @panfrost_gpu_get_latest_flush_id(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 11, i32 23
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 4194304
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8
  %8 = tail call i32 @pm_runtime_get_if_active(ptr noundef %7, i1 noundef zeroext false) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.panfrost_device, ptr %0, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #3, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !60
  %15 = load ptr, ptr %0, align 8
  %16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #3
  br label %17

17:                                               ; preds = %10, %6, %1
  %18 = phi i32 [ %14, %10 ], [ 0, %6 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @panfrost_exception_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_sample_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @panfrost_perfcnt_clean_cache_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 2154137946}
!9 = !{i64 5001635}
!10 = !{i64 2154138443}
!11 = !{i64 2154138869}
!12 = !{i64 5002053}
!13 = !{i64 2154142654}
!14 = !{i64 2154144672}
!15 = !{i64 2154145490}
!16 = !{i64 2154145909}
!17 = !{i64 2154146825}
!18 = !{i64 2154147352}
!19 = !{i64 2154147682}
!20 = !{i64 2154148209}
!21 = !{i64 2154148671}
!22 = !{i64 2154149313}
!23 = !{i64 2154228591}
!24 = !{i64 2154231168}
!25 = !{i64 2154233791}
!26 = !{i64 2154236343}
!27 = !{i64 2154236710}
!28 = !{i64 2154237077}
!29 = !{i64 2154206661}
!30 = !{i64 2154207049}
!31 = !{i64 2154207437}
!32 = !{i64 2154207825}
!33 = !{i64 2154208213}
!34 = !{i64 2154208601}
!35 = !{i64 2154208989}
!36 = !{i64 2154209377}
!37 = !{i64 2154209765}
!38 = !{i64 2154210153}
!39 = !{i64 2154210546}
!40 = !{i64 2154211014}
!41 = !{i64 2154211402}
!42 = !{i64 2154211790}
!43 = !{i64 2154215002}
!44 = !{i64 2154215390}
!45 = !{i64 2154215778}
!46 = !{i64 2154216166}
!47 = !{i64 2154216554}
!48 = !{i64 2154216942}
!49 = !{i64 2154217330}
!50 = !{i64 2154223542}
!51 = !{i64 2154223930}
!52 = !{i64 2154224318}
!53 = !{i64 2154224701}
!54 = !{i64 2154133798}
!55 = !{i64 2154134181}
!56 = !{i64 2154134784}
!57 = !{i64 2154135167}
!58 = !{i64 2154137036}
!59 = !{i64 2154137575}
!60 = !{i64 2154258942}
