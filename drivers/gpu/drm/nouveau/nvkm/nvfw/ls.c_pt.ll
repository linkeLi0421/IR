; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/nvfw/ls.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvfw_ls_desc = type { %struct.nvfw_ls_desc_head, i32, [64 x %struct.anon], i32 }
%struct.nvfw_ls_desc_head = type { i32, i32, i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon = type { i32, i32 }
%struct.nvfw_ls_desc_v1 = type { %struct.nvfw_ls_desc_head, i32, i32, [64 x %struct.anon.127], i32 }
%struct.anon.127 = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s: \09nbOverlays           : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: \09loadOvl[%d]          : 0x%x %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: \09compressed           : %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s: \09nbImemOverlays       : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"%s: \09nbDmemOverlays       : %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s: \09loadOvl[%2d]          : 0x%x %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: lsUcodeImgDesc:\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"%s: \09descriptorSize       : %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"%s: \09imageSize            : %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: \09toolsVersion         : 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"%s: \09appVersion           : 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"%s: \09date                 : %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"%s: \09bootloaderStartOffset: 0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: \09bootloaderSize       : 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"%s: \09bootloaderImemOffset : 0x%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"%s: \09bootloaderEntryPoint : 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"%s: \09appStartOffset       : 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"%s: \09appSize              : 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"%s: \09appImemOffset        : 0x%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"%s: \09appImemEntry         : 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"%s: \09appDmemOffset        : 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"%s: \09appResidentCodeOffset: 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"%s: \09appResidentCodeSize  : 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"%s: \09appResidentDataOffset: 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"%s: \09appResidentDataSize  : 0x%x\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_ls_desc(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #0 {
  tail call fastcc void @nvfw_ls_desc_head(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvfw_ls_desc, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %13) #3
  br label %14

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %16 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %17

17:                                               ; preds = %29, %14
  %18 = phi i32 [ 0, %14 ], [ %30, %29 ]
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr %struct.nvfw_ls_desc, ptr %1, i32 0, i32 2, i32 %18
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.nvfw_ls_desc, ptr %1, i32 0, i32 2, i32 %18, i32 1
  %28 = load i32, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef %18, i32 noundef %26, i32 noundef %28) #3
  br label %29

29:                                               ; preds = %21, %17
  %30 = add nuw nsw i32 %18, 1
  %31 = icmp eq i32 %30, 64
  br i1 %31, label %32, label %17

32:                                               ; preds = %29
  %33 = load i32, ptr %3, align 4
  %34 = icmp ugt i32 %33, 3
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load ptr, ptr %15, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nvfw_ls_desc, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.2, ptr noundef %16, i32 noundef %40) #3
  br label %41

41:                                               ; preds = %35, %32
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nvfw_ls_desc_head(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %43

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.6, ptr noundef %11) #3
  %12 = load i32, ptr %3, align 4
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %43

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8
  %18 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.7, ptr noundef %11, i32 noundef %18) #3
  %19 = load i32, ptr %3, align 4
  %20 = icmp ugt i32 %19, 3
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.8, ptr noundef %11, i32 noundef %26) #3
  %27 = load i32, ptr %3, align 4
  %28 = icmp ugt i32 %27, 3
  br i1 %28, label %29, label %43

29:                                               ; preds = %21
  %30 = load ptr, ptr %7, align 4
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.9, ptr noundef %11, i32 noundef %34) #3
  %35 = load i32, ptr %3, align 4
  %36 = icmp ugt i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load ptr, ptr %7, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 3
  %42 = load i32, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.10, ptr noundef %11, i32 noundef %42) #3
  br label %43

43:                                               ; preds = %37, %29, %21, %14, %6, %2
  %44 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 4
  %45 = tail call ptr @kstrndup(ptr noundef %44, i32 noundef 64, i32 noundef 3264) #4
  %46 = load i32, ptr %3, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %52, ptr noundef nonnull @.str.11, ptr noundef %53, ptr noundef %45) #3
  br label %54

54:                                               ; preds = %48, %43
  tail call void @kfree(ptr noundef %45) #4
  %55 = load i32, ptr %3, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %161

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %63 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.12, ptr noundef %62, i32 noundef %64) #3
  %65 = load i32, ptr %3, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %161

67:                                               ; preds = %57
  %68 = load ptr, ptr %58, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 6
  %72 = load i32, ptr %71, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %70, ptr noundef nonnull @.str.13, ptr noundef %62, i32 noundef %72) #3
  %73 = load i32, ptr %3, align 4
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %75, label %161

75:                                               ; preds = %67
  %76 = load ptr, ptr %58, align 4
  %77 = getelementptr inbounds %struct.nvkm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 7
  %80 = load i32, ptr %79, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.14, ptr noundef %62, i32 noundef %80) #3
  %81 = load i32, ptr %3, align 4
  %82 = icmp ugt i32 %81, 3
  br i1 %82, label %83, label %161

83:                                               ; preds = %75
  %84 = load ptr, ptr %58, align 4
  %85 = getelementptr inbounds %struct.nvkm_device, ptr %84, i32 0, i32 2
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %86, ptr noundef nonnull @.str.15, ptr noundef %62, i32 noundef %88) #3
  %89 = load i32, ptr %3, align 4
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %161

91:                                               ; preds = %83
  %92 = load ptr, ptr %58, align 4
  %93 = getelementptr inbounds %struct.nvkm_device, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 9
  %96 = load i32, ptr %95, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %94, ptr noundef nonnull @.str.16, ptr noundef %62, i32 noundef %96) #3
  %97 = load i32, ptr %3, align 4
  %98 = icmp ugt i32 %97, 3
  br i1 %98, label %99, label %161

99:                                               ; preds = %91
  %100 = load ptr, ptr %58, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 10
  %104 = load i32, ptr %103, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %102, ptr noundef nonnull @.str.17, ptr noundef %62, i32 noundef %104) #3
  %105 = load i32, ptr %3, align 4
  %106 = icmp ugt i32 %105, 3
  br i1 %106, label %107, label %161

107:                                              ; preds = %99
  %108 = load ptr, ptr %58, align 4
  %109 = getelementptr inbounds %struct.nvkm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 8
  %111 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 11
  %112 = load i32, ptr %111, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.18, ptr noundef %62, i32 noundef %112) #3
  %113 = load i32, ptr %3, align 4
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %115, label %161

115:                                              ; preds = %107
  %116 = load ptr, ptr %58, align 4
  %117 = getelementptr inbounds %struct.nvkm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 8
  %119 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 12
  %120 = load i32, ptr %119, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.19, ptr noundef %62, i32 noundef %120) #3
  %121 = load i32, ptr %3, align 4
  %122 = icmp ugt i32 %121, 3
  br i1 %122, label %123, label %161

123:                                              ; preds = %115
  %124 = load ptr, ptr %58, align 4
  %125 = getelementptr inbounds %struct.nvkm_device, ptr %124, i32 0, i32 2
  %126 = load ptr, ptr %125, align 8
  %127 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 13
  %128 = load i32, ptr %127, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %126, ptr noundef nonnull @.str.20, ptr noundef %62, i32 noundef %128) #3
  %129 = load i32, ptr %3, align 4
  %130 = icmp ugt i32 %129, 3
  br i1 %130, label %131, label %161

131:                                              ; preds = %123
  %132 = load ptr, ptr %58, align 4
  %133 = getelementptr inbounds %struct.nvkm_device, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 14
  %136 = load i32, ptr %135, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %134, ptr noundef nonnull @.str.21, ptr noundef %62, i32 noundef %136) #3
  %137 = load i32, ptr %3, align 4
  %138 = icmp ugt i32 %137, 3
  br i1 %138, label %139, label %161

139:                                              ; preds = %131
  %140 = load ptr, ptr %58, align 4
  %141 = getelementptr inbounds %struct.nvkm_device, ptr %140, i32 0, i32 2
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 15
  %144 = load i32, ptr %143, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %142, ptr noundef nonnull @.str.22, ptr noundef %62, i32 noundef %144) #3
  %145 = load i32, ptr %3, align 4
  %146 = icmp ugt i32 %145, 3
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load ptr, ptr %58, align 4
  %149 = getelementptr inbounds %struct.nvkm_device, ptr %148, i32 0, i32 2
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 16
  %152 = load i32, ptr %151, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %150, ptr noundef nonnull @.str.23, ptr noundef %62, i32 noundef %152) #3
  %153 = load i32, ptr %3, align 4
  %154 = icmp ugt i32 %153, 3
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load ptr, ptr %58, align 4
  %157 = getelementptr inbounds %struct.nvkm_device, ptr %156, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %1, i32 0, i32 17
  %160 = load i32, ptr %159, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %158, ptr noundef nonnull @.str.24, ptr noundef %62, i32 noundef %160) #3
  br label %161

161:                                              ; preds = %155, %147, %139, %131, %123, %115, %107, %99, %91, %83, %75, %67, %57, %54
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nvfw_ls_desc_v1(ptr noundef %0, ptr noundef returned %1) local_unnamed_addr #0 {
  tail call fastcc void @nvfw_ls_desc_head(ptr noundef %0, ptr noundef %1)
  %3 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp ugt i32 %4, 3
  br i1 %5, label %6, label %21

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.nvfw_ls_desc_v1, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef %11, i32 noundef %13) #3
  %14 = load i32, ptr %3, align 4
  %15 = icmp ugt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %6
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = load i32, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.4, ptr noundef %11, i32 noundef %20) #3
  br label %21

21:                                               ; preds = %16, %6, %2
  %22 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  br label %24

24:                                               ; preds = %36, %21
  %25 = phi i32 [ 0, %21 ], [ %37, %36 ]
  %26 = load i32, ptr %3, align 4
  %27 = icmp ugt i32 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load ptr, ptr %22, align 4
  %30 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr %struct.nvfw_ls_desc_v1, ptr %1, i32 0, i32 3, i32 %25
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr %struct.nvfw_ls_desc_v1, ptr %1, i32 0, i32 3, i32 %25, i32 1
  %35 = load i32, ptr %34, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %31, ptr noundef nonnull @.str.5, ptr noundef %23, i32 noundef %25, i32 noundef %33, i32 noundef %35) #3
  br label %36

36:                                               ; preds = %28, %24
  %37 = add nuw nsw i32 %25, 1
  %38 = icmp eq i32 %37, 64
  br i1 %38, label %39, label %24

39:                                               ; preds = %36
  %40 = load i32, ptr %3, align 4
  %41 = icmp ugt i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load ptr, ptr %22, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvfw_ls_desc_v1, ptr %1, i32 0, i32 4
  %47 = load i32, ptr %46, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.2, ptr noundef %23, i32 noundef %47) #3
  br label %48

48:                                               ; preds = %42, %39
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind }
attributes #4 = { nounwind }

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
