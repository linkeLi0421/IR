; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/acr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.119, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.119 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wpr_header = type { i32, i32, i32, i32, i32 }
%struct.wpr_header_v1 = type { i32, i32, i32, i32, i32, i32 }
%struct.lsb_header = type { %struct.lsf_signature, %struct.lsb_header_tail }
%struct.lsf_signature = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32 }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lsb_header_v1 = type { %struct.lsf_signature_v1, %struct.lsb_header_tail }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.flcn_acr_desc = type { %union.anon.126, i32, i32, i32, %struct.anon.127, i32, i64, %struct.anon.129 }
%union.anon.126 = type { [4 x i32], [496 x i8] }
%struct.anon.127 = type { i32, [2 x %struct.anon.128] }
%struct.anon.128 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.129 = type { i32, i32, i32, i32 }
%struct.flcn_acr_desc_v1 = type { [512 x i8], [4 x i32], i32, i32, i32, %struct.anon.130, i32, i64, %struct.anon.132 }
%struct.anon.130 = type { i32, [2 x %struct.anon.131] }
%struct.anon.131 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.132 = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%s: wprHeader\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: \09falconID      : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: \09lsbOffset     : 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: \09bootstrapOwner: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: \09lazyBootstrap : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"%s: \09status        : %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s: \09binVersion    : %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"%s: acrDesc\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%s: \09wprRegionId  : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: \09wprOffset    : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"%s: \09mmuMemRange  : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s: \09noRegions    : %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"%s: \09region[%d]    :\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"%s: \09  startAddr  : 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"%s: \09  endAddr    : 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"%s: \09  regionId   : %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%s: \09  readMask   : 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"%s: \09  writeMask  : 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"%s: \09  clientMask : 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"%s: \09ucodeBlobSize: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"%s: \09ucodeBlobBase: 0x%llx\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"%s: \09vprEnabled   : %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"%s: \09vprStart     : 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"%s: \09vprEnd       : 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"%s: \09hdcpPolicies : 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [31 x i8] c"%s: \09wprRegionId         : %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"%s: \09wprOffset           : 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"%s: \09mmuMemoryRange      : 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"%s: \09noRegions           : %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"%s: \09region[%d]           :\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"%s: \09  startAddr         : 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"%s: \09  endAddr           : 0x%x\0A\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"%s: \09  regionId          : %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"%s: \09  readMask          : 0x%x\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"%s: \09  writeMask         : 0x%x\0A\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"%s: \09  clientMask        : 0x%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"%s: \09  shadowMemStartAddr: 0x%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"%s: \09ucodeBlobSize       : %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"%s: \09ucodeBlobBase       : 0x%llx\0A\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"%s: \09vprEnabled          : %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"%s: \09vprStart            : 0x%x\0A\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"%s: \09vprEnd              : 0x%x\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"%s: \09hdcpPolicies        : 0x%x\0A\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"%s: lsbHeader\0A\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"%s: \09ucodeOff      : 0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"%s: \09ucodeSize     : 0x%x\0A\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"%s: \09dataSize      : 0x%x\0A\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s: \09blCodeSize    : 0x%x\0A\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"%s: \09blImemOff     : 0x%x\0A\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"%s: \09blDataOff     : 0x%x\0A\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"%s: \09blDataSize    : 0x%x\0A\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"%s: \09appCodeOff    : 0x%x\0A\00", align 1
@.str.52 = private unnamed_addr constant [27 x i8] c"%s: \09appCodeSize   : 0x%x\0A\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"%s: \09appDataOff    : 0x%x\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"%s: \09appDataSize   : 0x%x\0A\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"%s: \09flags         : 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wpr_header_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %51

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %51

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %51

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.wpr_header, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.wpr_header, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.wpr_header, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.wpr_header, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %50) #2
  br label %51

51:                                               ; preds = %45, %37, %29, %21, %14, %6, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wpr_header_v1_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %59

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %59

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %59

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.wpr_header_v1, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %59

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.wpr_header_v1, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %59

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.wpr_header_v1, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.wpr_header_v1, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.wpr_header_v1, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %58) #2
  br label %59

59:                                               ; preds = %53, %45, %37, %29, %21, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lsb_header_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lsb_header, ptr %1, i32 0, i32 1
  tail call fastcc void @lsb_header_tail_dump(ptr noundef %0, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @lsb_header_tail_dump(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %107

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.43, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %107

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.44, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %107

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.45, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %107

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.46, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %107

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.47, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %107

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.48, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %107

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.49, ptr noundef %11, i32 noundef %58) #2
  %59 = load i32, ptr %3, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %107

61:                                               ; preds = %53
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.50, ptr noundef %11, i32 noundef %66) #2
  %67 = load i32, ptr %3, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %107

69:                                               ; preds = %61
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.51, ptr noundef %11, i32 noundef %74) #2
  %75 = load i32, ptr %3, align 4
  %76 = icmp ugt i32 %75, 3
  br i1 %76, label %77, label %107

77:                                               ; preds = %69
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.52, ptr noundef %11, i32 noundef %82) #2
  %83 = load i32, ptr %3, align 4
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %107

85:                                               ; preds = %77
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.53, ptr noundef %11, i32 noundef %90) #2
  %91 = load i32, ptr %3, align 4
  %92 = icmp ugt i32 %91, 3
  br i1 %92, label %93, label %107

93:                                               ; preds = %85
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 10
  %98 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.54, ptr noundef %11, i32 noundef %98) #2
  %99 = load i32, ptr %3, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %107

101:                                              ; preds = %93
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 11
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.55, ptr noundef %11, i32 noundef %106) #2
  br label %107

107:                                              ; preds = %101, %93, %85, %77, %69, %61, %53, %45, %37, %29, %21, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @lsb_header_v1_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lsb_header_v1, ptr %1, i32 0, i32 1
  tail call fastcc void @lsb_header_tail_dump(ptr noundef %0, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flcn_acr_desc_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %202

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %202

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %19) #2
  %20 = load i32, ptr %3, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %202

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %27) #2
  %28 = load i32, ptr %3, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %202

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 3
  %35 = load i32, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %35) #2
  %36 = load i32, ptr %3, align 4
  %37 = icmp ugt i32 %36, 3
  br i1 %37, label %38, label %202

38:                                               ; preds = %30
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %43) #2
  %44 = load i32, ptr %3, align 4
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %47 = icmp ugt i32 %44, 3
  br i1 %47, label %48, label %202

48:                                               ; preds = %38
  %49 = load ptr, ptr %45, align 4
  %50 = getelementptr inbounds %struct.nvkm_device, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %51, ptr noundef nonnull @.str.12, ptr noundef %46, i32 noundef 0) #2
  %52 = load i32, ptr %3, align 4
  %53 = icmp ugt i32 %52, 3
  br i1 %53, label %54, label %202

54:                                               ; preds = %48
  %55 = load ptr, ptr %45, align 4
  %56 = getelementptr inbounds %struct.nvkm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0
  %59 = load i32, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.13, ptr noundef %46, i32 noundef %59) #2
  %60 = load i32, ptr %3, align 4
  %61 = icmp ugt i32 %60, 3
  br i1 %61, label %62, label %202

62:                                               ; preds = %54
  %63 = load ptr, ptr %45, align 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %65, ptr noundef nonnull @.str.14, ptr noundef %46, i32 noundef %67) #2
  %68 = load i32, ptr %3, align 4
  %69 = icmp ugt i32 %68, 3
  br i1 %69, label %70, label %202

70:                                               ; preds = %62
  %71 = load ptr, ptr %45, align 4
  %72 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 2
  %75 = load i32, ptr %74, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %73, ptr noundef nonnull @.str.15, ptr noundef %46, i32 noundef %75) #2
  %76 = load i32, ptr %3, align 4
  %77 = icmp ugt i32 %76, 3
  br i1 %77, label %78, label %202

78:                                               ; preds = %70
  %79 = load ptr, ptr %45, align 4
  %80 = getelementptr inbounds %struct.nvkm_device, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.16, ptr noundef %46, i32 noundef %83) #2
  %84 = load i32, ptr %3, align 4
  %85 = icmp ugt i32 %84, 3
  br i1 %85, label %86, label %202

86:                                               ; preds = %78
  %87 = load ptr, ptr %45, align 4
  %88 = getelementptr inbounds %struct.nvkm_device, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %89, ptr noundef nonnull @.str.17, ptr noundef %46, i32 noundef %91) #2
  %92 = load i32, ptr %3, align 4
  %93 = icmp ugt i32 %92, 3
  br i1 %93, label %94, label %202

94:                                               ; preds = %86
  %95 = load ptr, ptr %45, align 4
  %96 = getelementptr inbounds %struct.nvkm_device, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 8
  %98 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 0, i32 5
  %99 = load i32, ptr %98, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str.18, ptr noundef %46, i32 noundef %99) #2
  %100 = load i32, ptr %3, align 4
  %101 = icmp ugt i32 %100, 3
  br i1 %101, label %102, label %202

102:                                              ; preds = %94
  %103 = load ptr, ptr %45, align 4
  %104 = getelementptr inbounds %struct.nvkm_device, ptr %103, i32 0, i32 2
  %105 = load ptr, ptr %104, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %105, ptr noundef nonnull @.str.12, ptr noundef %46, i32 noundef 1) #2
  %106 = load i32, ptr %3, align 4
  %107 = icmp ugt i32 %106, 3
  br i1 %107, label %108, label %202

108:                                              ; preds = %102
  %109 = load ptr, ptr %45, align 4
  %110 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1
  %113 = load i32, ptr %112, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.13, ptr noundef %46, i32 noundef %113) #2
  %114 = load i32, ptr %3, align 4
  %115 = icmp ugt i32 %114, 3
  br i1 %115, label %116, label %202

116:                                              ; preds = %108
  %117 = load ptr, ptr %45, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 1
  %121 = load i32, ptr %120, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.14, ptr noundef %46, i32 noundef %121) #2
  %122 = load i32, ptr %3, align 4
  %123 = icmp ugt i32 %122, 3
  br i1 %123, label %124, label %202

124:                                              ; preds = %116
  %125 = load ptr, ptr %45, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 2
  %129 = load i32, ptr %128, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.15, ptr noundef %46, i32 noundef %129) #2
  %130 = load i32, ptr %3, align 4
  %131 = icmp ugt i32 %130, 3
  br i1 %131, label %132, label %202

132:                                              ; preds = %124
  %133 = load ptr, ptr %45, align 4
  %134 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 3
  %137 = load i32, ptr %136, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.16, ptr noundef %46, i32 noundef %137) #2
  %138 = load i32, ptr %3, align 4
  %139 = icmp ugt i32 %138, 3
  br i1 %139, label %140, label %202

140:                                              ; preds = %132
  %141 = load ptr, ptr %45, align 4
  %142 = getelementptr inbounds %struct.nvkm_device, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 4
  %145 = load i32, ptr %144, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %143, ptr noundef nonnull @.str.17, ptr noundef %46, i32 noundef %145) #2
  %146 = load i32, ptr %3, align 4
  %147 = icmp ugt i32 %146, 3
  br i1 %147, label %148, label %202

148:                                              ; preds = %140
  %149 = load ptr, ptr %45, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr %struct.flcn_acr_desc, ptr %1, i32 0, i32 4, i32 1, i32 1, i32 5
  %153 = load i32, ptr %152, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %151, ptr noundef nonnull @.str.18, ptr noundef %46, i32 noundef %153) #2
  %154 = load i32, ptr %3, align 4
  %155 = icmp ugt i32 %154, 3
  br i1 %155, label %156, label %202

156:                                              ; preds = %148
  %157 = load ptr, ptr %45, align 4
  %158 = getelementptr inbounds %struct.nvkm_device, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 5
  %161 = load i32, ptr %160, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.19, ptr noundef %46, i32 noundef %161) #2
  %162 = load i32, ptr %3, align 4
  %163 = icmp ugt i32 %162, 3
  br i1 %163, label %164, label %202

164:                                              ; preds = %156
  %165 = load ptr, ptr %45, align 4
  %166 = getelementptr inbounds %struct.nvkm_device, ptr %165, i32 0, i32 2
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 6
  %169 = load i64, ptr %168, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %167, ptr noundef nonnull @.str.20, ptr noundef %46, i64 noundef %169) #2
  %170 = load i32, ptr %3, align 4
  %171 = icmp ugt i32 %170, 3
  br i1 %171, label %172, label %202

172:                                              ; preds = %164
  %173 = load ptr, ptr %45, align 4
  %174 = getelementptr inbounds %struct.nvkm_device, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8
  %176 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 7
  %177 = load i32, ptr %176, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %175, ptr noundef nonnull @.str.21, ptr noundef %46, i32 noundef %177) #2
  %178 = load i32, ptr %3, align 4
  %179 = icmp ugt i32 %178, 3
  br i1 %179, label %180, label %202

180:                                              ; preds = %172
  %181 = load ptr, ptr %45, align 4
  %182 = getelementptr inbounds %struct.nvkm_device, ptr %181, i32 0, i32 2
  %183 = load ptr, ptr %182, align 8
  %184 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 7, i32 1
  %185 = load i32, ptr %184, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %183, ptr noundef nonnull @.str.22, ptr noundef %46, i32 noundef %185) #2
  %186 = load i32, ptr %3, align 4
  %187 = icmp ugt i32 %186, 3
  br i1 %187, label %188, label %202

188:                                              ; preds = %180
  %189 = load ptr, ptr %45, align 4
  %190 = getelementptr inbounds %struct.nvkm_device, ptr %189, i32 0, i32 2
  %191 = load ptr, ptr %190, align 8
  %192 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 7, i32 2
  %193 = load i32, ptr %192, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %191, ptr noundef nonnull @.str.23, ptr noundef %46, i32 noundef %193) #2
  %194 = load i32, ptr %3, align 4
  %195 = icmp ugt i32 %194, 3
  br i1 %195, label %196, label %202

196:                                              ; preds = %188
  %197 = load ptr, ptr %45, align 4
  %198 = getelementptr inbounds %struct.nvkm_device, ptr %197, i32 0, i32 2
  %199 = load ptr, ptr %198, align 8
  %200 = getelementptr inbounds %struct.flcn_acr_desc, ptr %1, i32 0, i32 7, i32 3
  %201 = load i32, ptr %200, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %199, ptr noundef nonnull @.str.24, ptr noundef %46, i32 noundef %201) #2
  br label %202

202:                                              ; preds = %196, %188, %180, %172, %164, %156, %148, %140, %132, %124, %116, %108, %102, %94, %86, %78, %70, %62, %54, %48, %38, %30, %22, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flcn_acr_desc_v1_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %44

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.7, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %44

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.25, ptr noundef %11, i32 noundef %19) #2
  %20 = load i32, ptr %3, align 4
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 4
  %24 = getelementptr inbounds %struct.nvkm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %27) #2
  %28 = load i32, ptr %3, align 4
  %29 = icmp ugt i32 %28, 3
  br i1 %29, label %30, label %44

30:                                               ; preds = %22
  %31 = load ptr, ptr %7, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 4
  %35 = load i32, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.27, ptr noundef %11, i32 noundef %35) #2
  %36 = load i32, ptr %3, align 4
  %37 = icmp ugt i32 %36, 3
  br i1 %37, label %38, label %44

38:                                               ; preds = %30
  %39 = load ptr, ptr %7, align 4
  %40 = getelementptr inbounds %struct.nvkm_device, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 8
  %42 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.28, ptr noundef %11, i32 noundef %43) #2
  br label %44

44:                                               ; preds = %38, %30, %22, %14, %6, %2
  %45 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %47

47:                                               ; preds = %112, %44
  %48 = phi i1 [ true, %44 ], [ false, %112 ]
  %49 = phi i32 [ 0, %44 ], [ 1, %112 ]
  %50 = load i32, ptr %3, align 4
  %51 = icmp ugt i32 %50, 3
  br i1 %51, label %52, label %112

52:                                               ; preds = %47
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr inbounds %struct.nvkm_device, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.29, ptr noundef %46, i32 noundef %49) #2
  %56 = load i32, ptr %3, align 4
  %57 = icmp ugt i32 %56, 3
  br i1 %57, label %58, label %112

58:                                               ; preds = %52
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49
  %63 = load i32, ptr %62, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.30, ptr noundef %46, i32 noundef %63) #2
  %64 = load i32, ptr %3, align 4
  %65 = icmp ugt i32 %64, 3
  br i1 %65, label %66, label %112

66:                                               ; preds = %58
  %67 = load ptr, ptr %45, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 1
  %71 = load i32, ptr %70, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.31, ptr noundef %46, i32 noundef %71) #2
  %72 = load i32, ptr %3, align 4
  %73 = icmp ugt i32 %72, 3
  br i1 %73, label %74, label %112

74:                                               ; preds = %66
  %75 = load ptr, ptr %45, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 2
  %79 = load i32, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.32, ptr noundef %46, i32 noundef %79) #2
  %80 = load i32, ptr %3, align 4
  %81 = icmp ugt i32 %80, 3
  br i1 %81, label %82, label %112

82:                                               ; preds = %74
  %83 = load ptr, ptr %45, align 4
  %84 = getelementptr inbounds %struct.nvkm_device, ptr %83, i32 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 3
  %87 = load i32, ptr %86, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.33, ptr noundef %46, i32 noundef %87) #2
  %88 = load i32, ptr %3, align 4
  %89 = icmp ugt i32 %88, 3
  br i1 %89, label %90, label %112

90:                                               ; preds = %82
  %91 = load ptr, ptr %45, align 4
  %92 = getelementptr inbounds %struct.nvkm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 4
  %95 = load i32, ptr %94, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.34, ptr noundef %46, i32 noundef %95) #2
  %96 = load i32, ptr %3, align 4
  %97 = icmp ugt i32 %96, 3
  br i1 %97, label %98, label %112

98:                                               ; preds = %90
  %99 = load ptr, ptr %45, align 4
  %100 = getelementptr inbounds %struct.nvkm_device, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 5
  %103 = load i32, ptr %102, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %101, ptr noundef nonnull @.str.35, ptr noundef %46, i32 noundef %103) #2
  %104 = load i32, ptr %3, align 4
  %105 = icmp ugt i32 %104, 3
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load ptr, ptr %45, align 4
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 5, i32 1, i32 %49, i32 6
  %111 = load i32, ptr %110, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.36, ptr noundef %46, i32 noundef %111) #2
  br label %112

112:                                              ; preds = %106, %98, %90, %82, %74, %66, %58, %52, %47
  br i1 %48, label %47, label %113

113:                                              ; preds = %112
  %114 = load i32, ptr %3, align 4
  %115 = icmp ugt i32 %114, 3
  br i1 %115, label %116, label %162

116:                                              ; preds = %113
  %117 = load ptr, ptr %45, align 4
  %118 = getelementptr inbounds %struct.nvkm_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 8
  %120 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 6
  %121 = load i32, ptr %120, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.37, ptr noundef %46, i32 noundef %121) #2
  %122 = load i32, ptr %3, align 4
  %123 = icmp ugt i32 %122, 3
  br i1 %123, label %124, label %162

124:                                              ; preds = %116
  %125 = load ptr, ptr %45, align 4
  %126 = getelementptr inbounds %struct.nvkm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 8
  %128 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 7
  %129 = load i64, ptr %128, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %127, ptr noundef nonnull @.str.38, ptr noundef %46, i64 noundef %129) #2
  %130 = load i32, ptr %3, align 4
  %131 = icmp ugt i32 %130, 3
  br i1 %131, label %132, label %162

132:                                              ; preds = %124
  %133 = load ptr, ptr %45, align 4
  %134 = getelementptr inbounds %struct.nvkm_device, ptr %133, i32 0, i32 2
  %135 = load ptr, ptr %134, align 8
  %136 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 8
  %137 = load i32, ptr %136, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %135, ptr noundef nonnull @.str.39, ptr noundef %46, i32 noundef %137) #2
  %138 = load i32, ptr %3, align 4
  %139 = icmp ugt i32 %138, 3
  br i1 %139, label %140, label %162

140:                                              ; preds = %132
  %141 = load ptr, ptr %45, align 4
  %142 = getelementptr inbounds %struct.nvkm_device, ptr %141, i32 0, i32 2
  %143 = load ptr, ptr %142, align 8
  %144 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 8, i32 1
  %145 = load i32, ptr %144, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %143, ptr noundef nonnull @.str.40, ptr noundef %46, i32 noundef %145) #2
  %146 = load i32, ptr %3, align 4
  %147 = icmp ugt i32 %146, 3
  br i1 %147, label %148, label %162

148:                                              ; preds = %140
  %149 = load ptr, ptr %45, align 4
  %150 = getelementptr inbounds %struct.nvkm_device, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 8, i32 2
  %153 = load i32, ptr %152, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %151, ptr noundef nonnull @.str.41, ptr noundef %46, i32 noundef %153) #2
  %154 = load i32, ptr %3, align 4
  %155 = icmp ugt i32 %154, 3
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load ptr, ptr %45, align 4
  %158 = getelementptr inbounds %struct.nvkm_device, ptr %157, i32 0, i32 2
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %struct.flcn_acr_desc_v1, ptr %1, i32 0, i32 8, i32 3
  %161 = load i32, ptr %160, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %159, ptr noundef nonnull @.str.42, ptr noundef %46, i32 noundef %161) #2
  br label %162

162:                                              ; preds = %156, %148, %140, %132, %124, %116, %113
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind }

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
