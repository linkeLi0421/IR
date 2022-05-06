; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/tu102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.129, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.129 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.lsf_signature_v1 = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32, i32, i32, i32, [88 x i8], [16 x i8] }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_gsp = type { %struct.nvkm_subdev, %struct.nvkm_falcon }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.91, %struct.anon.92, %struct.nvkm_engine }
%struct.anon.91 = type { i32, ptr, i32, i8 }
%struct.anon.92 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.95 }
%struct.anon.95 = type { %struct.refcount_struct, %struct.mutex, i8 }

@__UNIQUE_ID_firmware252 = internal constant [40 x i8] c"firmware=nvidia/tu102/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [43 x i8] c"firmware=nvidia/tu102/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [40 x i8] c"firmware=nvidia/tu104/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [43 x i8] c"firmware=nvidia/tu104/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [40 x i8] c"firmware=nvidia/tu106/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [43 x i8] c"firmware=nvidia/tu106/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [40 x i8] c"firmware=nvidia/tu116/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [43 x i8] c"firmware=nvidia/tu116/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [40 x i8] c"firmware=nvidia/tu117/acr/unload_bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [43 x i8] c"firmware=nvidia/tu117/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [40 x i8] c"firmware=nvidia/tu102/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [40 x i8] c"firmware=nvidia/tu104/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware264 = internal constant [40 x i8] c"firmware=nvidia/tu106/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [40 x i8] c"firmware=nvidia/tu116/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [40 x i8] c"firmware=nvidia/tu117/acr/ucode_asb.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [33 x i8] c"firmware=nvidia/tu102/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware268 = internal constant [44 x i8] c"firmware=nvidia/tu102/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware269 = internal constant [33 x i8] c"firmware=nvidia/tu104/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [44 x i8] c"firmware=nvidia/tu104/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware271 = internal constant [33 x i8] c"firmware=nvidia/tu106/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware272 = internal constant [44 x i8] c"firmware=nvidia/tu106/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware273 = internal constant [33 x i8] c"firmware=nvidia/tu116/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware274 = internal constant [44 x i8] c"firmware=nvidia/tu116/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware275 = internal constant [33 x i8] c"firmware=nvidia/tu117/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware276 = internal constant [44 x i8] c"firmware=nvidia/tu117/acr/ucode_ahesasc.bin\00", section ".modinfo", align 1
@tu102_acr_fwif = internal constant [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @tu102_acr_load, ptr @tu102_acr }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], align 4
@tu102_acr = internal constant %struct.nvkm_acr_func { ptr null, ptr @tu102_acr_ahesasc_fwif, ptr @tu102_acr_asb_fwif, ptr @tu102_acr_unload_fwif, ptr @gp102_acr_wpr_parse, ptr @gp102_acr_wpr_layout, ptr @gp102_acr_wpr_alloc, ptr @tu102_acr_wpr_build, ptr @gp102_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @tu102_acr_init, ptr null, i64 0 }, align 8
@gm200_acr = external dso_local constant %struct.nvkm_acr_func, align 8
@.str = private unnamed_addr constant [11 x i8] c"AcrAHESASC\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"acr/bl\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"acr/ucode_ahesasc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"AHESASC\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"AcrASB\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"acr/ucode_asb\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ASB\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"AcrUnload\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"acr/unload_bl\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"acr/ucode_unload\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@tu102_acr_ahesasc_fwif = internal constant [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @tu102_acr_ahesasc_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@tu102_acr_asb_fwif = internal constant [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @tu102_acr_asb_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@tu102_acr_unload_fwif = internal constant [3 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gp108_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif { i32 -1, ptr @tu102_acr_hsfw_nofw, ptr null }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@tu102_acr_ahesasc_0 = internal constant %struct.nvkm_acr_hsf_func { ptr @gp102_acr_load_load, ptr @tu102_acr_hsfw_boot, ptr @gp108_acr_hsfw_bld }, align 4
@tu102_acr_asb_0 = internal constant %struct.nvkm_acr_hsf_func { ptr @tu102_acr_asb_load, ptr @tu102_acr_hsfw_boot, ptr @gp108_acr_hsfw_bld }, align 4
@gp108_acr_unload_0 = external dso_local constant %struct.nvkm_acr_hsf_func, align 4
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267, ptr @__UNIQUE_ID_firmware268, ptr @__UNIQUE_ID_firmware269, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_firmware271, ptr @__UNIQUE_ID_firmware272, ptr @__UNIQUE_ID_firmware273, ptr @__UNIQUE_ID_firmware274, ptr @__UNIQUE_ID_firmware275, ptr @__UNIQUE_ID_firmware276], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tu102_acr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @tu102_acr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_acr_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  %6 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %2, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_acr_func, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str)
  %12 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @nvkm_longopt(ptr noundef %15, ptr noundef nonnull %4, i32 noundef -2) #6
  %17 = icmp sgt i32 %16, -2
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  br label %34

20:                                               ; preds = %25, %3
  %21 = phi ptr [ %28, %25 ], [ %10, %3 ]
  %22 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %21, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %62, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %21, align 4
  %27 = icmp ne i32 %26, %16
  %28 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %21, i32 1
  %29 = icmp eq ptr %21, null
  %30 = select i1 %27, i1 true, i1 %29
  br i1 %30, label %20, label %31

31:                                               ; preds = %25
  %32 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str)
  %33 = load i32, ptr %21, align 4
  br label %34

34:                                               ; preds = %31, %18
  %35 = phi ptr [ %21, %31 ], [ null, %18 ]
  %36 = phi ptr [ %21, %31 ], [ %10, %18 ]
  %37 = phi i32 [ %33, %31 ], [ -1, %18 ]
  %38 = load ptr, ptr %12, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 @nvkm_longopt(ptr noundef %40, ptr noundef nonnull %4, i32 noundef %37) #6
  %42 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %36, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %65, label %45

45:                                               ; preds = %34
  %46 = icmp sgt i32 %41, -1
  br label %47

47:                                               ; preds = %54, %45
  %48 = phi ptr [ %43, %45 ], [ %57, %54 ]
  %49 = phi ptr [ %36, %45 ], [ %55, %54 ]
  br i1 %46, label %59, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %49, align 4
  %52 = call i32 %48(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %51, ptr noundef %49) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %49, i32 1
  %56 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %49, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %47

59:                                               ; preds = %47
  %60 = call i32 %43(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef %41, ptr noundef %36) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59, %54, %20
  %63 = phi i32 [ %60, %59 ], [ %52, %54 ], [ -22, %20 ]
  %64 = inttoptr i32 %63 to ptr
  br label %65

65:                                               ; preds = %62, %59, %50, %34
  %66 = phi ptr [ %64, %62 ], [ %36, %59 ], [ %35, %34 ], [ %49, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #6
  %67 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = ptrtoint ptr %66 to i32
  br label %194

70:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr inbounds %struct.nvkm_acr_func, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8
  %74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6)
  %75 = load ptr, ptr %12, align 4
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %75, i32 0, i32 6
  %77 = load ptr, ptr %76, align 4
  %78 = call i32 @nvkm_longopt(ptr noundef %77, ptr noundef nonnull %5, i32 noundef -2) #6
  %79 = icmp sgt i32 %78, -2
  br i1 %79, label %82, label %80

80:                                               ; preds = %70
  %81 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  br label %96

82:                                               ; preds = %87, %70
  %83 = phi ptr [ %90, %87 ], [ %73, %70 ]
  %84 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %83, i32 0, i32 1
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %124, label %87

87:                                               ; preds = %82
  %88 = load i32, ptr %83, align 4
  %89 = icmp ne i32 %88, %78
  %90 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %83, i32 1
  %91 = icmp eq ptr %83, null
  %92 = select i1 %89, i1 true, i1 %91
  br i1 %92, label %82, label %93

93:                                               ; preds = %87
  %94 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6)
  %95 = load i32, ptr %83, align 4
  br label %96

96:                                               ; preds = %93, %80
  %97 = phi ptr [ %83, %93 ], [ null, %80 ]
  %98 = phi ptr [ %83, %93 ], [ %73, %80 ]
  %99 = phi i32 [ %95, %93 ], [ -1, %80 ]
  %100 = load ptr, ptr %12, align 4
  %101 = getelementptr inbounds %struct.nvkm_device, ptr %100, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  %103 = call i32 @nvkm_longopt(ptr noundef %102, ptr noundef nonnull %5, i32 noundef %99) #6
  %104 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %98, i32 0, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %127, label %107

107:                                              ; preds = %96
  %108 = icmp sgt i32 %103, -1
  br label %109

109:                                              ; preds = %116, %107
  %110 = phi ptr [ %105, %107 ], [ %119, %116 ]
  %111 = phi ptr [ %98, %107 ], [ %117, %116 ]
  br i1 %108, label %121, label %112

112:                                              ; preds = %109
  %113 = load i32, ptr %111, align 4
  %114 = call i32 %110(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %113, ptr noundef %111) #6
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116

116:                                              ; preds = %112
  %117 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %111, i32 1
  %118 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %111, i32 1, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %124, label %109

121:                                              ; preds = %109
  %122 = call i32 %105(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %103, ptr noundef %98) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121, %116, %82
  %125 = phi i32 [ %122, %121 ], [ %114, %116 ], [ -22, %82 ]
  %126 = inttoptr i32 %125 to ptr
  br label %127

127:                                              ; preds = %124, %121, %112, %96
  %128 = phi ptr [ %126, %124 ], [ %98, %121 ], [ %97, %96 ], [ %111, %112 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #6
  %129 = icmp ugt ptr %128, inttoptr (i32 -4096 to ptr)
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = ptrtoint ptr %128 to i32
  br label %194

132:                                              ; preds = %127
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %6, i8 0, i32 32, i1 false), !annotation !8
  %133 = load ptr, ptr %7, align 4
  %134 = getelementptr inbounds %struct.nvkm_acr_func, ptr %133, i32 0, i32 3
  %135 = load ptr, ptr %134, align 4
  %136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9)
  %137 = load ptr, ptr %12, align 4
  %138 = getelementptr inbounds %struct.nvkm_device, ptr %137, i32 0, i32 6
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @nvkm_longopt(ptr noundef %139, ptr noundef nonnull %6, i32 noundef -2) #6
  %141 = icmp sgt i32 %140, -2
  br i1 %141, label %144, label %142

142:                                              ; preds = %132
  %143 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  br label %158

144:                                              ; preds = %149, %132
  %145 = phi ptr [ %152, %149 ], [ %135, %132 ]
  %146 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %145, i32 0, i32 1
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %186, label %149

149:                                              ; preds = %144
  %150 = load i32, ptr %145, align 4
  %151 = icmp ne i32 %150, %140
  %152 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %145, i32 1
  %153 = icmp eq ptr %145, null
  %154 = select i1 %151, i1 true, i1 %153
  br i1 %154, label %144, label %155

155:                                              ; preds = %149
  %156 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %6, i32 noundef 32, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.9)
  %157 = load i32, ptr %145, align 4
  br label %158

158:                                              ; preds = %155, %142
  %159 = phi ptr [ %145, %155 ], [ null, %142 ]
  %160 = phi ptr [ %145, %155 ], [ %135, %142 ]
  %161 = phi i32 [ %157, %155 ], [ -1, %142 ]
  %162 = load ptr, ptr %12, align 4
  %163 = getelementptr inbounds %struct.nvkm_device, ptr %162, i32 0, i32 6
  %164 = load ptr, ptr %163, align 4
  %165 = call i32 @nvkm_longopt(ptr noundef %164, ptr noundef nonnull %6, i32 noundef %161) #6
  %166 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %160, i32 0, i32 1
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %189, label %169

169:                                              ; preds = %158
  %170 = icmp sgt i32 %165, -1
  br label %171

171:                                              ; preds = %178, %169
  %172 = phi ptr [ %167, %169 ], [ %181, %178 ]
  %173 = phi ptr [ %160, %169 ], [ %179, %178 ]
  br i1 %170, label %183, label %174

174:                                              ; preds = %171
  %175 = load i32, ptr %173, align 4
  %176 = call i32 %172(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %175, ptr noundef %173) #6
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %173, i32 1
  %180 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %173, i32 1, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %171

183:                                              ; preds = %171
  %184 = call i32 %167(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef %165, ptr noundef %160) #6
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183, %178, %144
  %187 = phi i32 [ %184, %183 ], [ %176, %178 ], [ -22, %144 ]
  %188 = inttoptr i32 %187 to ptr
  br label %189

189:                                              ; preds = %186, %183, %174, %158
  %190 = phi ptr [ %188, %186 ], [ %160, %183 ], [ %159, %158 ], [ %173, %174 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #6
  %191 = icmp ugt ptr %190, inttoptr (i32 -4096 to ptr)
  %192 = ptrtoint ptr %190 to i32
  %193 = select i1 %191, i32 %192, i32 0
  br label %194

194:                                              ; preds = %189, %130, %68
  %195 = phi i32 [ %69, %68 ], [ %131, %130 ], [ %193, %189 ]
  ret i32 %195
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_parse(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_layout(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_alloc(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_acr_wpr_build(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvkm_memory, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void %8(ptr noundef %4, i64 noundef 512, i32 noundef -1) #6
  %9 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %103, label %12

12:                                               ; preds = %95, %2
  %13 = phi ptr [ %101, %95 ], [ %10, %2 ]
  %14 = phi i32 [ %67, %95 ], [ 0, %2 ]
  %15 = getelementptr i8, ptr %13, i32 -12
  %16 = getelementptr i8, ptr %13, i32 16
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr i8, ptr %13, i32 -4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %13, i32 64
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.lsf_signature_v1, ptr %19, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_memory, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = zext i32 %14 to i64
  tail call void %30(ptr noundef %26, i64 noundef %31, i32 noundef %21) #6
  %32 = or i32 %14, 4
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.nvkm_memory, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = zext i32 %32 to i64
  tail call void %37(ptr noundef %33, i64 noundef %38, i32 noundef %23) #6
  %39 = add i32 %14, 8
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = zext i32 %39 to i64
  tail call void %44(ptr noundef %40, i64 noundef %45, i32 noundef 1) #6
  %46 = add i32 %14, 12
  %47 = load ptr, ptr %3, align 8
  %48 = getelementptr inbounds %struct.nvkm_memory, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = zext i32 %46 to i64
  tail call void %51(ptr noundef %47, i64 noundef %52, i32 noundef 1) #6
  %53 = add i32 %14, 16
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = zext i32 %53 to i64
  tail call void %58(ptr noundef %54, i64 noundef %59, i32 noundef %25) #6
  %60 = add i32 %14, 20
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.nvkm_memory, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = zext i32 %60 to i64
  tail call void %65(ptr noundef %61, i64 noundef %66, i32 noundef 1) #6
  %67 = add i32 %14, 24
  %68 = tail call i32 @gp102_acr_wpr_build_lsb(ptr noundef %0, ptr noundef %15) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %111

70:                                               ; preds = %12
  %71 = getelementptr i8, ptr %13, i32 12
  %72 = load i32, ptr %71, align 4
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %95, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %13, i32 8
  %76 = load ptr, ptr %75, align 4
  %77 = lshr i32 %72, 2
  %78 = getelementptr i8, ptr %13, i32 68
  %79 = load i32, ptr %78, align 4
  br label %80

80:                                               ; preds = %80, %74
  %81 = phi ptr [ %91, %80 ], [ %76, %74 ]
  %82 = phi i32 [ %84, %80 ], [ %77, %74 ]
  %83 = phi i32 [ %93, %80 ], [ %79, %74 ]
  %84 = add nsw i32 %82, -1
  %85 = load ptr, ptr %3, align 8
  %86 = getelementptr inbounds %struct.nvkm_memory, ptr %85, i32 0, i32 1
  %87 = load ptr, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %87, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = zext i32 %83 to i64
  %91 = getelementptr i32, ptr %81, i32 1
  %92 = load i32, ptr %81, align 4
  tail call void %89(ptr noundef %85, i64 noundef %90, i32 noundef %92) #6
  %93 = add i32 %83, 4
  %94 = icmp eq i32 %84, 0
  br i1 %94, label %95, label %80

95:                                               ; preds = %80, %70
  %96 = load ptr, ptr %15, align 4
  %97 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %96, i32 0, i32 2
  %98 = load ptr, ptr %97, align 8
  %99 = getelementptr i8, ptr %13, i32 72
  %100 = load i32, ptr %99, align 4
  tail call void %98(ptr noundef %0, i32 noundef %100, ptr noundef %15) #6
  %101 = load ptr, ptr %13, align 4
  %102 = icmp eq ptr %101, %9
  br i1 %102, label %103, label %12

103:                                              ; preds = %95, %2
  %104 = phi i32 [ 0, %2 ], [ %67, %95 ]
  %105 = load ptr, ptr %3, align 8
  %106 = getelementptr inbounds %struct.nvkm_memory, ptr %105, i32 0, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %107, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = zext i32 %104 to i64
  tail call void %109(ptr noundef %105, i64 noundef %110, i32 noundef -1) #6
  br label %111

111:                                              ; preds = %103, %12
  %112 = phi i32 [ 0, %103 ], [ %68, %12 ]
  ret i32 %112
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp102_acr_wpr_patch(ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gm200_acr_wpr_check(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_acr_init(ptr noundef %0) #0 {
  %2 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %0, ptr noundef nonnull @.str.5) #6
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %0, ptr noundef nonnull @.str.8) #6
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i32 [ %5, %4 ], [ %2, %1 ]
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @tu102_acr_hsfw_nofw(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, ptr nocapture noundef readnone %3, i32 noundef %4, ptr nocapture noundef readnone %5) #5 {
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_load_load(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_acr_hsfw_boot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 0) #6
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gp108_acr_hsfw_bld(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_boot(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tu102_acr_asb_load(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 44
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_gsp, ptr %6, i32 0, i32 1
  %8 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %7) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gm200_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gp102_acr_wpr_build_lsb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsf_boot(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }

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
