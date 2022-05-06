; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/bios/shadow.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvbios_source = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.shadow = type { i32, ptr, ptr, i32, i32 }
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
%struct.nvkm_bios = type { %struct.nvkm_subdev, i32, ptr, i32, i32, i32, i32, %struct.anon.120 }
%struct.anon.120 = type { i8, i8, i8, i8, i8 }
%struct.nvbios_image = type { i32, i32, i8, i8 }
%struct.firmware = type { i32, ptr, ptr }

@nvbios_of = external dso_local constant %struct.nvbios_source, align 4
@nvbios_ramin = external dso_local constant %struct.nvbios_source, align 4
@nvbios_rom = external dso_local constant %struct.nvbios_source, align 4
@nvbios_acpi_fast = external dso_local constant %struct.nvbios_source, align 4
@nvbios_acpi_slow = external dso_local constant %struct.nvbios_source, align 4
@nvbios_pcirom = external dso_local constant %struct.nvbios_source, align 4
@nvbios_platform = external dso_local constant %struct.nvbios_source, align 4
@__const.nvbios_shadow.mthds = private unnamed_addr constant [8 x %struct.shadow] [%struct.shadow { i32 0, ptr @nvbios_of, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_ramin, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_rom, ptr null, i32 0, i32 0 }, %struct.shadow { i32 0, ptr @nvbios_acpi_fast, ptr null, i32 0, i32 0 }, %struct.shadow { i32 4, ptr @nvbios_acpi_slow, ptr null, i32 0, i32 0 }, %struct.shadow { i32 1, ptr @nvbios_pcirom, ptr null, i32 0, i32 0 }, %struct.shadow { i32 1, ptr @nvbios_platform, ptr null, i32 0, i32 0 }, %struct.shadow zeroinitializer], align 4
@.str = private unnamed_addr constant [7 x i8] c"NvBios\00", align 1
@shadow_fw = internal constant %struct.nvbios_source { ptr @.str.11, ptr @shadow_fw_init, ptr @release_firmware, ptr @shadow_fw_read, ptr null, i8 0, i8 0, i8 0, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: %s invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: unable to locate usable image\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s: using image from %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"%s: trying %s...\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s: scored %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"%s: %08x: header fetch failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"%s: image %d invalid\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s: %08x: type %02x, %d bytes\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s: %08x: fetch failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: %08x: checksum failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"firmware\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nvbios_shadow(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [8 x %struct.shadow], align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %2) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(160) %2, ptr noundef nonnull align 4 dereferenceable(160) @__const.nvbios_shadow.mthds, i32 160, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = call ptr @nvkm_stropt(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %3) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %67, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %3, align 4
  %12 = call ptr @kstrndup(ptr noundef nonnull %8, i32 noundef %11, i32 noundef 3264) #8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %67, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.shadow, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %42, label %18

18:                                               ; preds = %30, %14
  %19 = phi ptr [ %34, %30 ], [ %16, %14 ]
  %20 = phi ptr [ %31, %30 ], [ null, %14 ]
  %21 = phi ptr [ %32, %30 ], [ %2, %14 ]
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = call i32 @strcasecmp(ptr noundef nonnull %12, ptr noundef nonnull %22)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call fastcc i32 @shadow_method(ptr noundef %0, ptr noundef %21, ptr noundef null)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %24, %18
  %31 = phi ptr [ %20, %24 ], [ %21, %27 ], [ %20, %18 ]
  %32 = getelementptr %struct.shadow, ptr %21, i32 1
  %33 = getelementptr %struct.shadow, ptr %21, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %18

36:                                               ; preds = %30, %27
  %37 = phi ptr [ %32, %30 ], [ %21, %27 ]
  %38 = phi ptr [ %31, %30 ], [ %21, %27 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = icmp eq ptr %37, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %40, %14
  %43 = phi ptr [ %37, %40 ], [ %2, %14 ]
  %44 = getelementptr inbounds %struct.shadow, ptr %43, i32 0, i32 1
  store ptr @shadow_fw, ptr %44, align 4
  %45 = call fastcc i32 @shadow_method(ptr noundef %0, ptr noundef nonnull %43, ptr noundef nonnull %12)
  store ptr null, ptr %44, align 4
  br label %46

46:                                               ; preds = %42, %40, %36
  %47 = phi ptr [ %38, %36 ], [ %43, %42 ], [ null, %40 ]
  %48 = getelementptr inbounds %struct.shadow, ptr %47, i32 0, i32 4
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr %4, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.1, ptr noundef %59, ptr noundef nonnull %12) #9
  br label %60

60:                                               ; preds = %55, %51
  call void @kfree(ptr noundef nonnull %12) #8
  br label %61

61:                                               ; preds = %60, %46
  %62 = phi ptr [ %12, %46 ], [ null, %60 ]
  %63 = icmp eq ptr %47, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, ptr %48, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64, %61, %10, %1
  %68 = phi ptr [ %62, %64 ], [ %62, %61 ], [ null, %10 ], [ null, %1 ]
  %69 = getelementptr inbounds %struct.shadow, ptr %2, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %97, label %72

72:                                               ; preds = %91, %67
  %73 = phi ptr [ %92, %91 ], [ %2, %67 ]
  %74 = phi ptr [ %93, %91 ], [ %2, %67 ]
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.shadow, ptr %73, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = icmp ult i32 %79, %75
  br i1 %80, label %81, label %91

81:                                               ; preds = %77, %72
  %82 = call fastcc i32 @shadow_method(ptr noundef %0, ptr noundef %74, ptr noundef null)
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.shadow, ptr %74, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr inbounds %struct.shadow, ptr %73, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %86, %88
  %90 = select i1 %89, ptr %74, ptr %73
  br label %91

91:                                               ; preds = %84, %81, %77
  %92 = phi ptr [ %73, %81 ], [ %73, %77 ], [ %90, %84 ]
  %93 = getelementptr %struct.shadow, ptr %74, i32 1
  %94 = getelementptr %struct.shadow, ptr %74, i32 1, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %72

97:                                               ; preds = %91, %67, %64
  %98 = phi ptr [ %62, %64 ], [ %68, %67 ], [ %68, %91 ]
  %99 = phi ptr [ %47, %64 ], [ %2, %67 ], [ %92, %91 ]
  %100 = getelementptr inbounds %struct.shadow, ptr %2, i32 0, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %109, %97
  %104 = phi ptr [ %110, %109 ], [ %2, %97 ]
  %105 = icmp eq ptr %104, %99
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.shadow, ptr %104, i32 0, i32 2
  %108 = load ptr, ptr %107, align 4
  call void @kfree(ptr noundef %108) #8
  br label %109

109:                                              ; preds = %106, %103
  %110 = getelementptr %struct.shadow, ptr %104, i32 1
  %111 = getelementptr %struct.shadow, ptr %104, i32 1, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %103

114:                                              ; preds = %109, %97
  %115 = getelementptr inbounds %struct.shadow, ptr %99, i32 0, i32 4
  %116 = load i32, ptr %115, align 4
  %117 = icmp eq i32 %116, 0
  %118 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %119 = load i32, ptr %118, align 4
  br i1 %117, label %120, label %127

120:                                              ; preds = %114
  %121 = icmp eq i32 %119, 0
  br i1 %121, label %148, label %122

122:                                              ; preds = %120
  %123 = load ptr, ptr %4, align 4
  %124 = getelementptr inbounds %struct.nvkm_device, ptr %123, i32 0, i32 2
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.2, ptr noundef %126) #9
  br label %148

127:                                              ; preds = %114
  %128 = icmp ugt i32 %119, 3
  br i1 %128, label %129, label %141

129:                                              ; preds = %127
  %130 = load ptr, ptr %4, align 4
  %131 = getelementptr inbounds %struct.nvkm_device, ptr %130, i32 0, i32 2
  %132 = load ptr, ptr %131, align 8
  %133 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %134 = getelementptr inbounds %struct.shadow, ptr %99, i32 0, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %129
  %138 = load ptr, ptr %135, align 4
  br label %139

139:                                              ; preds = %137, %129
  %140 = phi ptr [ %138, %137 ], [ %98, %129 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull @.str.3, ptr noundef %133, ptr noundef %140) #9
  br label %141

141:                                              ; preds = %139, %127
  %142 = getelementptr inbounds %struct.shadow, ptr %99, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  store ptr %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.shadow, ptr %99, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  store i32 %146, ptr %147, align 4
  call void @kfree(ptr noundef %98) #8
  br label %148

148:                                              ; preds = %141, %122, %120
  %149 = phi i32 [ 0, %141 ], [ -22, %122 ], [ -22, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %2) #8
  ret i32 %149
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_stropt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shadow_method(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %55, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nvkm_device, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %18 = icmp eq ptr %2, null
  %19 = select i1 %18, ptr %6, ptr %2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef %17, ptr noundef nonnull %19) #9
  br label %20

20:                                               ; preds = %12, %8
  %21 = getelementptr inbounds %struct.nvbios_source, ptr %5, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = tail call ptr %22(ptr noundef %0, ptr noundef %2) #8
  %26 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store ptr null, ptr %26, align 4
  br label %58

29:                                               ; preds = %24, %20
  %30 = tail call fastcc i32 @shadow_image(ptr noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef %1)
  %31 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.nvbios_source, ptr %5, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call void %33(ptr noundef %37) #8
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, ptr %9, align 4
  %40 = icmp ugt i32 %39, 3
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %47 = load i32, ptr %31, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %45, ptr noundef nonnull @.str.5, ptr noundef %46, i32 noundef %47) #9
  br label %48

48:                                               ; preds = %41, %38
  %49 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 2
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 3
  store i32 %53, ptr %54, align 4
  store ptr null, ptr %49, align 4
  store i32 0, ptr %52, align 4
  br label %55

55:                                               ; preds = %48, %3
  %56 = getelementptr inbounds %struct.shadow, ptr %1, i32 0, i32 4
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %28
  %59 = phi i32 [ 0, %28 ], [ %57, %55 ]
  ret i32 %59
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @shadow_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca %struct.nvbios_image, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false), !annotation !8
  %6 = getelementptr inbounds %struct.shadow, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvbios_source, ptr %7, i32 0, i32 7
  %9 = load i8, ptr %8, align 2, !range !9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.nvbios_source, ptr %7, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.shadow, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 %13(ptr noundef %15) #8
  %17 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 3
  store i8 1, ptr %18, align 1
  br label %63

19:                                               ; preds = %4
  %20 = add i32 %2, 4096
  %21 = add i32 %2, 4099
  %22 = and i32 %21, -4
  %23 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.shadow, ptr %3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @nvbios_extend(ptr noundef %0, i32 noundef %22) #8
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %19
  %30 = load i32, ptr %23, align 4
  br label %38

31:                                               ; preds = %19
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.nvbios_source, ptr %32, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = sub i32 %22, %24
  %36 = tail call i32 %34(ptr noundef %26, i32 noundef %24, i32 noundef %35, ptr noundef %0) #8
  %37 = add i32 %36, %24
  store i32 %37, ptr %23, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = phi i32 [ %30, %29 ], [ %37, %31 ]
  %40 = icmp ult i32 %39, %20
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp ugt i32 %43, 3
  br i1 %44, label %45, label %162

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 8
  %50 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.6, ptr noundef %50, i32 noundef %2) #9
  br label %162

51:                                               ; preds = %38
  %52 = call zeroext i1 @nvbios_image(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5) #8
  br i1 %52, label %63, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ugt i32 %55, 3
  br i1 %56, label %57, label %162

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_device, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 8
  %62 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.7, ptr noundef %62, i32 noundef %1) #9
  br label %162

63:                                               ; preds = %51, %11
  %64 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %65 = load i32, ptr %64, align 4
  %66 = icmp ugt i32 %65, 3
  br i1 %66, label %67, label %79

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvkm_device, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %73 = load i32, ptr %5, align 4
  %74 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 2
  %75 = load i8, ptr %74, align 4
  %76 = zext i8 %75 to i32
  %77 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %71, ptr noundef nonnull @.str.8, ptr noundef %72, i32 noundef %73, i32 noundef %76, i32 noundef %78) #9
  br label %79

79:                                               ; preds = %67, %63
  %80 = load i32, ptr %5, align 4
  %81 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 1
  %82 = load i32, ptr %81, align 4
  %83 = add i32 %82, %80
  %84 = add i32 %83, 3
  %85 = and i32 %84, -4
  %86 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = getelementptr inbounds %struct.shadow, ptr %3, i32 0, i32 2
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @nvbios_extend(ptr noundef %0, i32 noundef %85) #8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %79
  %93 = load i32, ptr %86, align 4
  br label %101

94:                                               ; preds = %79
  %95 = load ptr, ptr %6, align 4
  %96 = getelementptr inbounds %struct.nvbios_source, ptr %95, i32 0, i32 3
  %97 = load ptr, ptr %96, align 4
  %98 = sub i32 %85, %87
  %99 = call i32 %97(ptr noundef %89, i32 noundef %87, i32 noundef %98, ptr noundef %0) #8
  %100 = add i32 %99, %87
  store i32 %100, ptr %86, align 4
  br label %101

101:                                              ; preds = %94, %92
  %102 = phi i32 [ %93, %92 ], [ %100, %94 ]
  %103 = icmp ult i32 %102, %83
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32, ptr %64, align 4
  %106 = icmp ugt i32 %105, 3
  br i1 %106, label %107, label %162

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nvkm_device, ptr %109, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %113 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %111, ptr noundef nonnull @.str.9, ptr noundef %112, i32 noundef %113) #9
  br label %162

114:                                              ; preds = %101
  %115 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 2
  %116 = load i8, ptr %115, align 4
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %114
  %119 = load ptr, ptr %6, align 4
  %120 = getelementptr inbounds %struct.nvbios_source, ptr %119, i32 0, i32 6
  %121 = load i8, ptr %120, align 1, !range !9
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.nvkm_bios, ptr %0, i32 0, i32 2
  %125 = load ptr, ptr %124, align 4
  %126 = load i32, ptr %5, align 4
  %127 = getelementptr i8, ptr %125, i32 %126
  %128 = load i32, ptr %81, align 4
  %129 = call zeroext i8 @nvbios_checksum(ptr noundef %127, i32 noundef %128) #8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %151, label %131

131:                                              ; preds = %123
  %132 = load i32, ptr %64, align 4
  %133 = icmp ugt i32 %132, 3
  br i1 %133, label %134, label %141

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.nvkm_device, ptr %136, i32 0, i32 2
  %138 = load ptr, ptr %137, align 8
  %139 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  %140 = load i32, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %138, ptr noundef nonnull @.str.10, ptr noundef %139, i32 noundef %140) #9
  br label %141

141:                                              ; preds = %134, %131
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr inbounds %struct.nvbios_source, ptr %142, i32 0, i32 8
  %144 = load i8, ptr %143, align 1, !range !9
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.nvbios_source, ptr %142, i32 0, i32 5
  %148 = load i8, ptr %147, align 4, !range !9
  %149 = icmp eq i8 %148, 0
  %150 = select i1 %149, i32 2, i32 3
  br label %151

151:                                              ; preds = %146, %123, %118, %114
  %152 = phi i32 [ %150, %146 ], [ 4, %123 ], [ 4, %118 ], [ 4, %114 ]
  %153 = getelementptr inbounds %struct.nvbios_image, ptr %5, i32 0, i32 3
  %154 = load i8, ptr %153, align 1, !range !9
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = add i32 %1, 1
  %158 = load i32, ptr %81, align 4
  %159 = add i32 %158, %2
  %160 = call fastcc i32 @shadow_image(ptr noundef %0, i32 noundef %157, i32 noundef %159, ptr noundef %3)
  %161 = add i32 %160, %152
  br label %162

162:                                              ; preds = %156, %151, %141, %107, %104, %57, %53, %45, %41
  %163 = phi i32 [ 0, %45 ], [ 0, %41 ], [ 0, %57 ], [ 0, %53 ], [ 0, %107 ], [ 0, %104 ], [ 0, %141 ], [ %152, %151 ], [ %161, %156 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  ret i32 %163
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nvbios_image(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_checksum(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_extend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @shadow_fw_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store ptr null, ptr %3, align 4, !annotation !8
  %8 = call i32 @request_firmware(ptr noundef nonnull %3, ptr noundef %1, ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  %10 = load ptr, ptr %3, align 4
  %11 = select i1 %9, ptr %10, ptr inttoptr (i32 -2 to ptr)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @shadow_fw_read(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #7 {
  %5 = add i32 %2, %1
  %6 = load i32, ptr %0, align 4
  %7 = icmp ugt i32 %5, %6
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.nvkm_bios, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %1
  %12 = getelementptr inbounds %struct.firmware, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %11, ptr align 1 %14, i32 %2, i1 false)
  br label %15

15:                                               ; preds = %8, %4
  %16 = phi i32 [ %2, %8 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
