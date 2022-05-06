; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/flcn.c"
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
%struct.loader_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.loader_config_v1 = type <{ i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32 }>
%struct.flcn_bl_dmem_desc = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>

@.str = private unnamed_addr constant [18 x i8] c"%s: loaderConfig\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: \09dmaIdx        : %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%s: \09codeDmaBase   : 0x%xx\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s: \09codeSizeTotal : 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"%s: \09codeSizeToLoad: 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"%s: \09codeEntryPoint: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s: \09dataDmaBase   : 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s: \09dataSize      : 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"%s: \09overlayDmaBase: 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"%s: \09argc          : 0x%08x\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%s: \09argv          : 0x%08x\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"%s: \09codeDmaBase1  : 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%s: \09dataDmaBase1  : 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"%s: \09ovlyDmaBase1  : 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%s: \09reserved      : 0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"%s: \09codeDmaBase   : 0x%llxx\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s: \09dataDmaBase   : 0x%llx\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"%s: \09overlayDmaBase: 0x%llx\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s: flcnBlDmemDesc\0A\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"%s: \09reserved      : 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"%s: \09signature     : 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%s: \09ctxDma        : %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"%s: \09codeDmaBase   : 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"%s: \09nonSecCodeOff : 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"%s: \09nonSecCodeSize: 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"%s: \09secCodeOff    : 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"%s: \09secCodeSize   : 0x%x\0A\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"%s: \09codeDmaBase   : 0x%llx\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @loader_config_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %115

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %115

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %115

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.2, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %115

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %115

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %115

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %115

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %58) #2
  %59 = load i32, ptr %3, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %115

61:                                               ; preds = %53
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %66) #2
  %67 = load i32, ptr %3, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %115

69:                                               ; preds = %61
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 7
  %74 = load i32, ptr %73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %74) #2
  %75 = load i32, ptr %3, align 4
  %76 = icmp ugt i32 %75, 3
  br i1 %76, label %77, label %115

77:                                               ; preds = %69
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 8
  %82 = load i32, ptr %81, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %82) #2
  %83 = load i32, ptr %3, align 4
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %115

85:                                               ; preds = %77
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 9
  %90 = load i32, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %90) #2
  %91 = load i32, ptr %3, align 4
  %92 = icmp ugt i32 %91, 3
  br i1 %92, label %93, label %115

93:                                               ; preds = %85
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 10
  %98 = load i32, ptr %97, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %98) #2
  %99 = load i32, ptr %3, align 4
  %100 = icmp ugt i32 %99, 3
  br i1 %100, label %101, label %115

101:                                              ; preds = %93
  %102 = load ptr, ptr %7, align 4
  %103 = getelementptr inbounds %struct.nvkm_device, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 11
  %106 = load i32, ptr %105, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %104, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %106) #2
  %107 = load i32, ptr %3, align 4
  %108 = icmp ugt i32 %107, 3
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load ptr, ptr %7, align 4
  %111 = getelementptr inbounds %struct.nvkm_device, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 8
  %113 = getelementptr inbounds %struct.loader_config, ptr %1, i32 0, i32 12
  %114 = load i32, ptr %113, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %112, ptr noundef nonnull @.str.13, ptr noundef %11, i32 noundef %114) #2
  br label %115

115:                                              ; preds = %109, %101, %93, %85, %77, %69, %61, %53, %45, %37, %29, %21, %14, %6, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @loader_config_v1_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %99

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %99

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.14, ptr noundef %11, i32 noundef %18) #2
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %99

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %11, i32 noundef %26) #2
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %99

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 2
  %34 = load i64, ptr %33, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.15, ptr noundef %11, i64 noundef %34) #2
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %99

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %42) #2
  %43 = load i32, ptr %3, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %99

45:                                               ; preds = %37
  %46 = load ptr, ptr %7, align 4
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 2
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 4
  %50 = load i32, ptr %49, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %48, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %50) #2
  %51 = load i32, ptr %3, align 4
  %52 = icmp ugt i32 %51, 3
  br i1 %52, label %53, label %99

53:                                               ; preds = %45
  %54 = load ptr, ptr %7, align 4
  %55 = getelementptr inbounds %struct.nvkm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 5
  %58 = load i32, ptr %57, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %58) #2
  %59 = load i32, ptr %3, align 4
  %60 = icmp ugt i32 %59, 3
  br i1 %60, label %61, label %99

61:                                               ; preds = %53
  %62 = load ptr, ptr %7, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 6
  %66 = load i64, ptr %65, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.16, ptr noundef %11, i64 noundef %66) #2
  %67 = load i32, ptr %3, align 4
  %68 = icmp ugt i32 %67, 3
  br i1 %68, label %69, label %99

69:                                               ; preds = %61
  %70 = load ptr, ptr %7, align 4
  %71 = getelementptr inbounds %struct.nvkm_device, ptr %70, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 7
  %74 = load i32, ptr %73, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %74) #2
  %75 = load i32, ptr %3, align 4
  %76 = icmp ugt i32 %75, 3
  br i1 %76, label %77, label %99

77:                                               ; preds = %69
  %78 = load ptr, ptr %7, align 4
  %79 = getelementptr inbounds %struct.nvkm_device, ptr %78, i32 0, i32 2
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 8
  %82 = load i64, ptr %81, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %80, ptr noundef nonnull @.str.17, ptr noundef %11, i64 noundef %82) #2
  %83 = load i32, ptr %3, align 4
  %84 = icmp ugt i32 %83, 3
  br i1 %84, label %85, label %99

85:                                               ; preds = %77
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 9
  %90 = load i32, ptr %89, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %88, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %90) #2
  %91 = load i32, ptr %3, align 4
  %92 = icmp ugt i32 %91, 3
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load ptr, ptr %7, align 4
  %95 = getelementptr inbounds %struct.nvkm_device, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.loader_config_v1, ptr %1, i32 0, i32 10
  %98 = load i32, ptr %97, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %96, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %98) #2
  br label %99

99:                                               ; preds = %93, %85, %77, %69, %61, %53, %45, %37, %29, %21, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %127

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %127

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  %19 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #2
  %25 = load i32, ptr %3, align 4
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %27, label %127

27:                                               ; preds = %14
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 1, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 1, i32 3
  %38 = load i32, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %11, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #2
  %39 = load i32, ptr %3, align 4
  %40 = icmp ugt i32 %39, 3
  br i1 %40, label %41, label %127

41:                                               ; preds = %27
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.21, ptr noundef %11, i32 noundef %46) #2
  %47 = load i32, ptr %3, align 4
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %127

49:                                               ; preds = %41
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.22, ptr noundef %11, i32 noundef %54) #2
  %55 = load i32, ptr %3, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %127

57:                                               ; preds = %49
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.23, ptr noundef %11, i32 noundef %62) #2
  %63 = load i32, ptr %3, align 4
  %64 = icmp ugt i32 %63, 3
  br i1 %64, label %65, label %127

65:                                               ; preds = %57
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.24, ptr noundef %11, i32 noundef %70) #2
  %71 = load i32, ptr %3, align 4
  %72 = icmp ugt i32 %71, 3
  br i1 %72, label %73, label %127

73:                                               ; preds = %65
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.25, ptr noundef %11, i32 noundef %78) #2
  %79 = load i32, ptr %3, align 4
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %127

81:                                               ; preds = %73
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %86) #2
  %87 = load i32, ptr %3, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %127

89:                                               ; preds = %81
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %94) #2
  %95 = load i32, ptr %3, align 4
  %96 = icmp ugt i32 %95, 3
  br i1 %96, label %97, label %127

97:                                               ; preds = %89
  %98 = load ptr, ptr %7, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 9
  %102 = load i32, ptr %101, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.6, ptr noundef %11, i32 noundef %102) #2
  %103 = load i32, ptr %3, align 4
  %104 = icmp ugt i32 %103, 3
  br i1 %104, label %105, label %127

105:                                              ; preds = %97
  %106 = load ptr, ptr %7, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 10
  %110 = load i32, ptr %109, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %110) #2
  %111 = load i32, ptr %3, align 4
  %112 = icmp ugt i32 %111, 3
  br i1 %112, label %113, label %127

113:                                              ; preds = %105
  %114 = load ptr, ptr %7, align 4
  %115 = getelementptr inbounds %struct.nvkm_device, ptr %114, i32 0, i32 2
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 11
  %118 = load i32, ptr %117, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %116, ptr noundef nonnull @.str.11, ptr noundef %11, i32 noundef %118) #2
  %119 = load i32, ptr %3, align 4
  %120 = icmp ugt i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %113
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr inbounds %struct.nvkm_device, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr inbounds %struct.flcn_bl_dmem_desc, ptr %1, i32 0, i32 12
  %126 = load i32, ptr %125, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %126) #2
  br label %127

127:                                              ; preds = %121, %113, %105, %97, %89, %81, %73, %65, %57, %49, %41, %27, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %111

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.18, ptr noundef %11) #2
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %111

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 1
  %19 = getelementptr [4 x i32], ptr %1, i32 0, i32 1
  %20 = load i32, ptr %19, align 1
  %21 = getelementptr [4 x i32], ptr %1, i32 0, i32 2
  %22 = load i32, ptr %21, align 1
  %23 = getelementptr [4 x i32], ptr %1, i32 0, i32 3
  %24 = load i32, ptr %23, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef %11, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %24) #2
  %25 = load i32, ptr %3, align 4
  %26 = icmp ugt i32 %25, 3
  br i1 %26, label %27, label %111

27:                                               ; preds = %14
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 1
  %32 = load i32, ptr %31, align 1
  %33 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 1, i32 1
  %34 = load i32, ptr %33, align 1
  %35 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 1, i32 2
  %36 = load i32, ptr %35, align 1
  %37 = getelementptr %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 1, i32 3
  %38 = load i32, ptr %37, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef %11, i32 noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef %38) #2
  %39 = load i32, ptr %3, align 4
  %40 = icmp ugt i32 %39, 3
  br i1 %40, label %41, label %111

41:                                               ; preds = %27
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 2
  %46 = load i32, ptr %45, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.21, ptr noundef %11, i32 noundef %46) #2
  %47 = load i32, ptr %3, align 4
  %48 = icmp ugt i32 %47, 3
  br i1 %48, label %49, label %111

49:                                               ; preds = %41
  %50 = load ptr, ptr %7, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 3
  %54 = load i64, ptr %53, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.27, ptr noundef %11, i64 noundef %54) #2
  %55 = load i32, ptr %3, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %111

57:                                               ; preds = %49
  %58 = load ptr, ptr %7, align 4
  %59 = getelementptr inbounds %struct.nvkm_device, ptr %58, i32 0, i32 2
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 4
  %62 = load i32, ptr %61, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull @.str.23, ptr noundef %11, i32 noundef %62) #2
  %63 = load i32, ptr %3, align 4
  %64 = icmp ugt i32 %63, 3
  br i1 %64, label %65, label %111

65:                                               ; preds = %57
  %66 = load ptr, ptr %7, align 4
  %67 = getelementptr inbounds %struct.nvkm_device, ptr %66, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8
  %69 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 5
  %70 = load i32, ptr %69, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.24, ptr noundef %11, i32 noundef %70) #2
  %71 = load i32, ptr %3, align 4
  %72 = icmp ugt i32 %71, 3
  br i1 %72, label %73, label %111

73:                                               ; preds = %65
  %74 = load ptr, ptr %7, align 4
  %75 = getelementptr inbounds %struct.nvkm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 6
  %78 = load i32, ptr %77, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.25, ptr noundef %11, i32 noundef %78) #2
  %79 = load i32, ptr %3, align 4
  %80 = icmp ugt i32 %79, 3
  br i1 %80, label %81, label %111

81:                                               ; preds = %73
  %82 = load ptr, ptr %7, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 7
  %86 = load i32, ptr %85, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %84, ptr noundef nonnull @.str.26, ptr noundef %11, i32 noundef %86) #2
  %87 = load i32, ptr %3, align 4
  %88 = icmp ugt i32 %87, 3
  br i1 %88, label %89, label %111

89:                                               ; preds = %81
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr inbounds %struct.nvkm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 8
  %93 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 8
  %94 = load i32, ptr %93, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %92, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef %94) #2
  %95 = load i32, ptr %3, align 4
  %96 = icmp ugt i32 %95, 3
  br i1 %96, label %97, label %111

97:                                               ; preds = %89
  %98 = load ptr, ptr %7, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 2
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 9
  %102 = load i64, ptr %101, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %100, ptr noundef nonnull @.str.16, ptr noundef %11, i64 noundef %102) #2
  %103 = load i32, ptr %3, align 4
  %104 = icmp ugt i32 %103, 3
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load ptr, ptr %7, align 4
  %107 = getelementptr inbounds %struct.nvkm_device, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %1, i32 0, i32 10
  %110 = load i32, ptr %109, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %108, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %110) #2
  br label %111

111:                                              ; preds = %105, %97, %89, %81, %73, %65, %57, %49, %41, %27, %14, %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  tail call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %22

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %1, i32 0, i32 11
  %13 = load i32, ptr %12, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %13) #2
  %14 = load i32, ptr %3, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %1, i32 0, i32 12
  %21 = load i32, ptr %20, align 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %21) #2
  br label %22

22:                                               ; preds = %16, %6, %2
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
