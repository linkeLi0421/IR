; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_acr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.nvkm_acr_hsf_func = type { ptr, ptr, ptr }
%struct.nvkm_acr_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr_hsf_fwif = type { i32, ptr, ptr }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.wpr_header = type { i32, i32, i32, i32, i32 }
%struct.lsb_header = type { %struct.lsf_signature, %struct.lsb_header_tail }
%struct.lsf_signature = type { [2 x [16 x i8]], [2 x [16 x i8]], i32, i32, i32 }
%struct.lsb_header_tail = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.131, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { i32, i32, i32 }
%struct.nvkm_acr_lsf = type { ptr, ptr, i32, %struct.list_head }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.flcn_bl_dmem_desc_v1 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32 }>
%struct.nvkm_acr_hsf = type { ptr, ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nvkm_vma = type { %struct.list_head, %struct.rb_node, i64, [7 x i8], i8, ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.127 }
%struct.anon.127 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.nvkm_acr_hsfw = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.anon.132 }
%struct.anon.132 = type { %struct.anon.133, %struct.anon.133, i32 }
%struct.anon.133 = type { ptr, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.134, %struct.anon.135 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.134 = type { %struct.mutex, i32, i32 }
%struct.anon.135 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.flcn_acr_desc = type { %union.anon.142, i32, i32, i32, %struct.anon.143, i32, i64, %struct.anon.145 }
%union.anon.142 = type { [4 x i32], [496 x i8] }
%struct.anon.143 = type { i32, [2 x %struct.anon.144] }
%struct.anon.144 = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.145 = type { i32, i32, i32, i32 }

@gm200_acr = dso_local constant %struct.nvkm_acr_func zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"%s: firmware unavailable\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: mailbox %08x %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: patching production signature\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"%s: patching debug signature\0A\00", align 1
@gm200_acr_unload_0 = dso_local constant %struct.nvkm_acr_hsf_func { ptr @gm200_acr_unload_load, ptr @gm200_acr_unload_boot, ptr @gm200_acr_hsfw_bld }, align 4
@__UNIQUE_ID_firmware252 = internal constant [43 x i8] c"firmware=nvidia/gm200/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [43 x i8] c"firmware=nvidia/gm204/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [43 x i8] c"firmware=nvidia/gm206/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [43 x i8] c"firmware=nvidia/gp100/acr/ucode_unload.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [33 x i8] c"firmware=nvidia/gm200/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [41 x i8] c"firmware=nvidia/gm200/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [33 x i8] c"firmware=nvidia/gm204/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [41 x i8] c"firmware=nvidia/gm204/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [33 x i8] c"firmware=nvidia/gm206/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [41 x i8] c"firmware=nvidia/gm206/acr/ucode_load.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [33 x i8] c"firmware=nvidia/gp100/acr/bl.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [41 x i8] c"firmware=nvidia/gp100/acr/ucode_load.bin\00", section ".modinfo", align 1
@gm200_acr_fwif = internal constant [3 x %struct.nvkm_acr_fwif] [%struct.nvkm_acr_fwif { i32 0, ptr @gm200_acr_load, ptr @gm200_acr_0 }, %struct.nvkm_acr_fwif { i32 -1, ptr @gm200_acr_nofw, ptr @gm200_acr }, %struct.nvkm_acr_fwif zeroinitializer], align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/gm200.c\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gm200_acr_0 = internal constant %struct.nvkm_acr_func { ptr @gm200_acr_load_fwif, ptr null, ptr null, ptr @gm200_acr_unload_fwif, ptr @gm200_acr_wpr_parse, ptr @gm200_acr_wpr_layout, ptr @gm200_acr_wpr_alloc, ptr @gm200_acr_wpr_build, ptr @gm200_acr_wpr_patch, ptr @gm200_acr_wpr_check, ptr @gm200_acr_init, ptr null, i64 12 }, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"AcrLoad\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Nv%sFw\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Nv%sFwVer\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"acr/bl\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"acr/ucode_load\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"AcrUnload\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"acr/ucode_unload\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"unload\00", align 1
@gm200_acr_load_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_load_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gm200_acr_unload_fwif = internal constant [2 x %struct.nvkm_acr_hsf_fwif] [%struct.nvkm_acr_hsf_fwif { i32 0, ptr @nvkm_acr_hsfw_load, ptr @gm200_acr_unload_0 }, %struct.nvkm_acr_hsf_fwif zeroinitializer], align 4
@gm200_acr_load_0 = internal constant %struct.nvkm_acr_hsf_func { ptr @gm200_acr_load_load, ptr @gm200_acr_load_boot, ptr @gm200_acr_hsfw_bld }, align 4
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_nofw(ptr noundef %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %12) #10
  br label %13

13:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_init(ptr noundef %0) #0 {
  %2 = tail call i32 @nvkm_acr_hsf_boot(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsf_boot(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_acr_wpr_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 1051860
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2) #11, !srcloc !9
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr i8, ptr %9, i32 1051860
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %12 = and i32 %11, -256
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 8
  store i64 %14, ptr %1, align 8
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr i8, ptr %15, i32 1051860
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 3) #11, !srcloc !9
  %17 = load ptr, ptr %6, align 4
  %18 = getelementptr i8, ptr %17, i32 1051860
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %20 = and i32 %19, -256
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = add nuw nsw i64 %22, 131072
  store i64 %23, ptr %2, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_acr_wpr_patch(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca %struct.wpr_header, align 4
  %4 = alloca %struct.lsb_header, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, i8 0, i32 20, i1 false), !annotation !12
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(124) %4, i8 0, i32 124, i1 false), !annotation !12
  %6 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %7 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %8 = getelementptr inbounds %struct.wpr_header, ptr %3, i32 0, i32 1
  %9 = getelementptr inbounds %struct.lsb_header, ptr %4, i32 0, i32 1, i32 5
  %10 = getelementptr inbounds %struct.wpr_header, ptr %3, i32 0, i32 2
  %11 = getelementptr inbounds %struct.wpr_header, ptr %3, i32 0, i32 3
  %12 = getelementptr inbounds %struct.wpr_header, ptr %3, i32 0, i32 4
  br label %13

13:                                               ; preds = %81, %2
  %14 = phi i32 [ 0, %2 ], [ %83, %81 ]
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_memory, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = zext i32 %14 to i64
  %20 = call i32 %18(ptr noundef %15, i64 noundef %19) #11
  store i32 %20, ptr %3, align 4
  %21 = add i32 %14, 4
  %22 = load ptr, ptr %6, align 8
  %23 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = zext i32 %21 to i64
  %27 = call i32 %25(ptr noundef %22, i64 noundef %26) #11
  store i32 %27, ptr %8, align 4
  %28 = add i32 %14, 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.nvkm_memory, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = load ptr, ptr %31, align 4
  %33 = zext i32 %28 to i64
  %34 = call i32 %32(ptr noundef %29, i64 noundef %33) #11
  store i32 %34, ptr %10, align 4
  %35 = add i32 %14, 12
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_memory, ptr %36, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = zext i32 %35 to i64
  %41 = call i32 %39(ptr noundef %36, i64 noundef %40) #11
  store i32 %41, ptr %11, align 4
  %42 = add i32 %14, 16
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_memory, ptr %43, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %45, align 4
  %47 = zext i32 %42 to i64
  %48 = call i32 %46(ptr noundef %43, i64 noundef %47) #11
  store i32 %48, ptr %12, align 4
  call void @wpr_header_dump(ptr noundef %5, ptr noundef nonnull %3) #11
  %49 = load i32, ptr %3, align 4
  br label %50

50:                                               ; preds = %54, %13
  %51 = phi ptr [ %7, %13 ], [ %52, %54 ]
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %7
  br i1 %53, label %81, label %54

54:                                               ; preds = %50
  %55 = getelementptr i8, ptr %52, i32 -4
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %49
  br i1 %57, label %58, label %50

58:                                               ; preds = %54
  %59 = load i32, ptr %8, align 4
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi ptr [ %4, %58 ], [ %71, %60 ]
  %62 = phi i32 [ 31, %58 ], [ %64, %60 ]
  %63 = phi i32 [ %59, %58 ], [ %72, %60 ]
  %64 = add nsw i32 %62, -1
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = zext i32 %63 to i64
  %70 = call i32 %68(ptr noundef %65, i64 noundef %69) #11
  %71 = getelementptr i32, ptr %61, i32 1
  store i32 %70, ptr %61, align 4
  %72 = add i32 %63, 4
  %73 = icmp eq i32 %64, 0
  br i1 %73, label %74, label %60

74:                                               ; preds = %60
  %75 = getelementptr i8, ptr %52, i32 -12
  call void @lsb_header_dump(ptr noundef %5, ptr noundef nonnull %4) #11
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = load i32, ptr %9, align 4
  call void %78(ptr noundef %0, i32 noundef %79, i64 noundef %1) #11
  %80 = load i32, ptr %3, align 4
  br label %81

81:                                               ; preds = %74, %50
  %82 = phi i32 [ %80, %74 ], [ %49, %50 ]
  %83 = add i32 %14, 20
  %84 = icmp eq i32 %82, -1
  br i1 %84, label %85, label %13

85:                                               ; preds = %81
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wpr_header_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lsb_header_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @gm200_acr_wpr_build_lsb_tail(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 17, i32 1
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 16
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 4
  store i32 %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 17, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 18
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 9
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %24
  %28 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 7
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 8
  store i32 %30, ptr %31, align 4
  %32 = load i32, ptr %23, align 4
  %33 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 13
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 9
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %0, i32 0, i32 14
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 10
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %0, align 4
  %41 = load i32, ptr %40, align 8
  %42 = getelementptr inbounds %struct.lsb_header_tail, ptr %1, i32 0, i32 11
  store i32 %41, ptr %42, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_build(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = alloca %struct.lsb_header, align 4
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %155, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  %9 = getelementptr inbounds %struct.nvkm_acr_lsf, ptr %1, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %11 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 1
  %13 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 2
  %14 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 3
  %15 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 4
  %16 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 5
  %17 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 6
  %18 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 7
  %19 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 8
  %20 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 9
  %21 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 10
  %22 = getelementptr inbounds %struct.lsb_header, ptr %3, i32 0, i32 1, i32 11
  br label %23

23:                                               ; preds = %148, %7
  %24 = phi ptr [ %5, %7 ], [ %153, %148 ]
  %25 = phi i32 [ 0, %7 ], [ %71, %148 ]
  %26 = getelementptr i8, ptr %24, i32 -12
  %27 = getelementptr i8, ptr %24, i32 -4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr i8, ptr %24, i32 64
  %30 = load i32, ptr %29, align 4
  br i1 %8, label %34, label %31

31:                                               ; preds = %23
  %32 = load i32, ptr %9, align 4
  %33 = icmp ne i32 %28, %32
  br label %34

34:                                               ; preds = %31, %23
  %35 = phi i1 [ false, %23 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = load ptr, ptr %10, align 8
  %38 = getelementptr inbounds %struct.nvkm_memory, ptr %37, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = zext i32 %25 to i64
  tail call void %41(ptr noundef %37, i64 noundef %42, i32 noundef %28) #11
  %43 = add i32 %25, 4
  %44 = load ptr, ptr %10, align 8
  %45 = getelementptr inbounds %struct.nvkm_memory, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = zext i32 %43 to i64
  tail call void %48(ptr noundef %44, i64 noundef %49, i32 noundef %30) #11
  %50 = add i32 %25, 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds %struct.nvkm_memory, ptr %51, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %53, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = zext i32 %50 to i64
  tail call void %55(ptr noundef %51, i64 noundef %56, i32 noundef 0) #11
  %57 = add i32 %25, 12
  %58 = load ptr, ptr %10, align 8
  %59 = getelementptr inbounds %struct.nvkm_memory, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %60, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = zext i32 %57 to i64
  tail call void %62(ptr noundef %58, i64 noundef %63, i32 noundef %36) #11
  %64 = add i32 %25, 16
  %65 = load ptr, ptr %10, align 8
  %66 = getelementptr inbounds %struct.nvkm_memory, ptr %65, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %67, i32 0, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = zext i32 %64 to i64
  tail call void %69(ptr noundef %65, i64 noundef %70, i32 noundef 1) #11
  %71 = add i32 %25, 20
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %3) #11
  %72 = getelementptr i8, ptr %24, i32 16
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 76
  br i1 %75, label %76, label %123, !prof !13

76:                                               ; preds = %34
  %77 = getelementptr inbounds %struct.firmware, ptr %73, i32 0, i32 1
  %78 = load ptr, ptr %77, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(76) %3, ptr noundef align 1 dereferenceable(76) %78, i32 76, i1 false) #11
  %79 = getelementptr i8, ptr %24, i32 68
  %80 = load i32, ptr %79, align 4
  store i32 %80, ptr %11, align 4
  %81 = getelementptr i8, ptr %24, i32 56
  %82 = load i32, ptr %81, align 4
  store i32 %82, ptr %12, align 4
  %83 = getelementptr i8, ptr %24, i32 60
  %84 = load i32, ptr %83, align 4
  store i32 %84, ptr %13, align 4
  %85 = getelementptr i8, ptr %24, i32 20
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %14, align 4
  %87 = getelementptr i8, ptr %24, i32 24
  %88 = load i32, ptr %87, align 4
  store i32 %88, ptr %15, align 4
  %89 = getelementptr i8, ptr %24, i32 72
  %90 = load i32, ptr %89, align 4
  store i32 %90, ptr %16, align 4
  %91 = getelementptr i8, ptr %24, i32 76
  %92 = load i32, ptr %91, align 4
  store i32 %92, ptr %17, align 4
  %93 = getelementptr i8, ptr %24, i32 32
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr i8, ptr %24, i32 40
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %96, %94
  store i32 %97, ptr %18, align 4
  %98 = getelementptr i8, ptr %24, i32 44
  %99 = load i32, ptr %98, align 4
  store i32 %99, ptr %19, align 4
  %100 = getelementptr i8, ptr %24, i32 48
  %101 = load i32, ptr %100, align 4
  %102 = add i32 %101, %94
  store i32 %102, ptr %20, align 4
  %103 = getelementptr i8, ptr %24, i32 52
  %104 = load i32, ptr %103, align 4
  store i32 %104, ptr %21, align 4
  %105 = load ptr, ptr %26, align 4
  %106 = load i32, ptr %105, align 8
  store i32 %106, ptr %22, align 4
  %107 = load i32, ptr %29, align 4
  br label %108

108:                                              ; preds = %108, %76
  %109 = phi ptr [ %3, %76 ], [ %119, %108 ]
  %110 = phi i32 [ 31, %76 ], [ %112, %108 ]
  %111 = phi i32 [ %107, %76 ], [ %121, %108 ]
  %112 = add nsw i32 %110, -1
  %113 = load ptr, ptr %10, align 8
  %114 = getelementptr inbounds %struct.nvkm_memory, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %115, i32 0, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = zext i32 %111 to i64
  %119 = getelementptr i32, ptr %109, i32 1
  %120 = load i32, ptr %109, align 4
  tail call void %117(ptr noundef %113, i64 noundef %118, i32 noundef %120) #11
  %121 = add i32 %111, 4
  %122 = icmp eq i32 %112, 0
  br i1 %122, label %124, label %108

123:                                              ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 116, i32 noundef 9, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #11
  br label %164

124:                                              ; preds = %108
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %3) #11
  %125 = getelementptr i8, ptr %24, i32 12
  %126 = load i32, ptr %125, align 4
  %127 = icmp ult i32 %126, 4
  br i1 %127, label %148, label %128

128:                                              ; preds = %124
  %129 = getelementptr i8, ptr %24, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = lshr i32 %126, 2
  %132 = load i32, ptr %79, align 4
  br label %133

133:                                              ; preds = %133, %128
  %134 = phi ptr [ %144, %133 ], [ %130, %128 ]
  %135 = phi i32 [ %137, %133 ], [ %131, %128 ]
  %136 = phi i32 [ %146, %133 ], [ %132, %128 ]
  %137 = add nsw i32 %135, -1
  %138 = load ptr, ptr %10, align 8
  %139 = getelementptr inbounds %struct.nvkm_memory, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = zext i32 %136 to i64
  %144 = getelementptr i32, ptr %134, i32 1
  %145 = load i32, ptr %134, align 4
  tail call void %142(ptr noundef %138, i64 noundef %143, i32 noundef %145) #11
  %146 = add i32 %136, 4
  %147 = icmp eq i32 %137, 0
  br i1 %147, label %148, label %133

148:                                              ; preds = %133, %124
  %149 = load ptr, ptr %26, align 4
  %150 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %149, i32 0, i32 2
  %151 = load ptr, ptr %150, align 8
  %152 = load i32, ptr %89, align 4
  tail call void %151(ptr noundef %0, i32 noundef %152, ptr noundef %26) #11
  %153 = load ptr, ptr %24, align 4
  %154 = icmp eq ptr %153, %4
  br i1 %154, label %155, label %23

155:                                              ; preds = %148, %2
  %156 = phi i32 [ 0, %2 ], [ %71, %148 ]
  %157 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nvkm_memory, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 4
  %163 = zext i32 %156 to i64
  tail call void %162(ptr noundef %158, i64 noundef %163, i32 noundef -1) #11
  br label %164

164:                                              ; preds = %155, %123
  %165 = phi i32 [ 0, %155 ], [ -22, %123 ]
  ret i32 %165
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_layout(ptr noundef readonly %0) #6 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %30, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %28, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %27, %5 ], [ 220, %1 ]
  %8 = getelementptr i8, ptr %6, i32 -12
  %9 = add nsw i32 %7, 255
  %10 = and i32 %9, -256
  %11 = getelementptr i8, ptr %6, i32 64
  store i32 %10, ptr %11, align 4
  %12 = add i32 %10, 4219
  %13 = and i32 %12, -4096
  %14 = getelementptr i8, ptr %6, i32 68
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %6, i32 12
  %16 = load i32, ptr %15, align 4
  %17 = or i32 %13, 255
  %18 = add i32 %17, %16
  %19 = and i32 %18, -256
  %20 = getelementptr i8, ptr %6, i32 72
  store i32 %19, ptr %20, align 4
  %21 = load ptr, ptr %8, align 4
  %22 = getelementptr inbounds %struct.nvkm_acr_lsf_func, ptr %21, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 255
  %25 = and i32 %24, -256
  %26 = getelementptr i8, ptr %6, i32 76
  store i32 %25, ptr %26, align 4
  %27 = add i32 %25, %19
  %28 = load ptr, ptr %6, align 4
  %29 = icmp eq ptr %28, %2
  br i1 %29, label %30, label %5

30:                                               ; preds = %5, %1
  %31 = phi i32 [ 220, %1 ], [ %27, %5 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_wpr_parse(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 14
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %5, %1 ], [ %12, %11 ]
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  tail call void @wpr_header_dump(ptr noundef %6, ptr noundef %8) #11
  %12 = getelementptr %struct.wpr_header, ptr %8, i32 1
  %13 = load i32, ptr %8, align 4
  %14 = tail call ptr @nvkm_acr_lsfw_add(ptr noundef null, ptr noundef %0, ptr noundef null, i32 noundef %13) #11
  %15 = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %7

16:                                               ; preds = %11
  %17 = ptrtoint ptr %14 to i32
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_acr_lsfw_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gm200_acr_hsfw_bld(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.flcn_bl_dmem_desc_v1, align 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %3) #11
  %4 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  store i32 1, ptr %4, align 1
  %5 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 3
  %6 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_vma, ptr %7, i32 0, i32 2
  %9 = load i64, ptr %8, align 8
  store i64 %9, ptr %5, align 1
  %10 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 4
  %11 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %10, align 1
  %13 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 5
  %14 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 6
  %17 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 8
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 1
  %19 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 7
  %20 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 1
  %22 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 8
  store i32 0, ptr %22, align 1
  %23 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 9
  %24 = load i64, ptr %8, align 8
  %25 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = zext i32 %26 to i64
  %28 = add i64 %24, %27
  store i64 %28, ptr %23, align 1
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v1, ptr %3, i32 0, i32 10
  %30 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 11
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 1
  %32 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v1_dump(ptr noundef %32, ptr noundef nonnull %3) #11
  %33 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 14
  %34 = load ptr, ptr %33, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %34, ptr noundef nonnull %3, i32 noundef 0, i32 noundef 76, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_hsfw_boot(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @nvkm_falcon_reset(ptr noundef %8) #11
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 11
  %11 = load ptr, ptr %10, align 8
  tail call void @nvkm_falcon_bind_context(ptr noundef %8, ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_falcon, ptr %8, i32 0, i32 13
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i16
  tail call void @nvkm_falcon_load_imem(ptr noundef %8, ptr noundef %13, i32 noundef %18, i32 noundef %17, i16 noundef zeroext %21, i8 noundef zeroext 0, i1 noundef zeroext false) #11
  %22 = load ptr, ptr %1, align 4
  %23 = getelementptr inbounds %struct.nvkm_acr_hsf_func, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  tail call void %24(ptr noundef %0, ptr noundef %1) #11
  %25 = getelementptr inbounds %struct.nvkm_falcon, ptr %8, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 2
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_subdev, ptr %26, i32 0, i32 3
  %30 = load i32, ptr %29, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %6, i32 noundef %28, i32 noundef %30, i1 noundef zeroext false) #11
  %31 = load ptr, ptr %25, align 4
  %32 = getelementptr inbounds %struct.nvkm_subdev, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nvkm_device, ptr %33, i32 0, i32 11
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_falcon, ptr %8, i32 0, i32 3
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 64
  %39 = getelementptr i8, ptr %35, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !8
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 -559045211) #11, !srcloc !9
  %40 = load i32, ptr %19, align 4
  %41 = shl i32 %40, 8
  tail call void @nvkm_falcon_set_start_addr(ptr noundef %8, i32 noundef %41) #11
  tail call void @nvkm_falcon_start(ptr noundef %8) #11
  %42 = tail call i32 @nvkm_falcon_wait_for_halt(ptr noundef %8, i32 noundef 100) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %82

44:                                               ; preds = %4
  %45 = load ptr, ptr %25, align 4
  %46 = getelementptr inbounds %struct.nvkm_subdev, ptr %45, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 11
  %49 = load ptr, ptr %48, align 4
  %50 = load i32, ptr %36, align 4
  %51 = add i32 %50, 64
  %52 = getelementptr i8, ptr %49, i32 %51
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %54 = load ptr, ptr %25, align 4
  %55 = getelementptr inbounds %struct.nvkm_subdev, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_device, ptr %56, i32 0, i32 11
  %58 = load ptr, ptr %57, align 4
  %59 = load i32, ptr %36, align 4
  %60 = add i32 %59, 68
  %61 = getelementptr i8, ptr %58, i32 %60
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %61) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  %63 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = icmp ugt i32 %64, 3
  br i1 %65, label %66, label %71

66:                                               ; preds = %44
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.2, ptr noundef %70, i32 noundef %53, i32 noundef %62) #10
  br label %71

71:                                               ; preds = %66, %44
  %72 = icmp eq i32 %53, 0
  %73 = icmp eq i32 %53, %3
  %74 = or i1 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = tail call i32 @nvkm_falcon_clear_interrupt(ptr noundef %8, i32 noundef %2) #11
  %77 = load ptr, ptr %25, align 4
  %78 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_subdev, ptr %77, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  tail call void @nvkm_mc_intr_mask(ptr noundef %6, i32 noundef %79, i32 noundef %81, i1 noundef zeroext true) #11
  br label %82

82:                                               ; preds = %75, %71, %4
  %83 = phi i32 [ 0, %75 ], [ %42, %4 ], [ -5, %71 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mc_intr_mask(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_set_start_addr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_wait_for_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_clear_interrupt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  %5 = tail call i32 @nvkm_falcon_get(ptr noundef %2, ptr noundef %4) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %157

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 14
  %9 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 14, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.nvkm_falcon, ptr %2, i32 0, i32 10
  %14 = load i8, ptr %13, align 2, !range !14
  %15 = icmp eq i8 %14, 0
  %16 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, 3
  br i1 %15, label %19, label %35

19:                                               ; preds = %12
  br i1 %18, label %20, label %27

20:                                               ; preds = %19
  %21 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef %25) #10
  %26 = load i32, ptr %9, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = phi i32 [ %26, %20 ], [ %10, %19 ]
  %29 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 %28
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 14, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %31, ptr align 1 %32, i32 %34, i1 false)
  br label %52

35:                                               ; preds = %12
  br i1 %18, label %36, label %43

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nvkm_device, ptr %38, i32 0, i32 2
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.4, ptr noundef %41) #10
  %42 = load i32, ptr %9, align 4
  br label %43

43:                                               ; preds = %36, %35
  %44 = phi i32 [ %42, %36 ], [ %10, %35 ]
  %45 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 %44
  %48 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 14, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 14, i32 1, i32 1
  %51 = load i32, ptr %50, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %47, ptr align 1 %49, i32 %51, i1 false)
  br label %52

52:                                               ; preds = %43, %27, %7
  tail call void @nvkm_falcon_put(ptr noundef %2, ptr noundef %4) #11
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 64) #12
  %55 = icmp eq ptr %54, null
  br i1 %55, label %157, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %1, align 4
  store ptr %57, ptr %54, align 8
  %58 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 1
  store ptr %59, ptr %60, align 4
  %61 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 2
  %62 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 3
  %63 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 3, i32 1
  %64 = load ptr, ptr %63, align 4
  store ptr %61, ptr %63, align 4
  store ptr %62, ptr %61, align 8
  %65 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 2, i32 1
  store ptr %64, ptr %65, align 4
  store volatile ptr %61, ptr %64, align 4
  %66 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 3
  store i32 %67, ptr %68, align 8
  %69 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 4
  %70 = load i32, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 4
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = tail call ptr @kmemdup(ptr noundef %73, i32 noundef %67, i32 noundef 3264) #11
  %75 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 5
  store ptr %74, ptr %75, align 8
  %76 = icmp eq ptr %74, null
  br i1 %76, label %157, label %77

77:                                               ; preds = %56
  %78 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 8
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 6
  store i32 %79, ptr %80, align 4
  %81 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 9
  %82 = load i32, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 7
  store i32 %82, ptr %83, align 8
  %84 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 10
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 8
  store i32 %85, ptr %86, align 4
  %87 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 11
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 9
  store i32 %88, ptr %89, align 8
  %90 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 12
  %91 = load i32, ptr %90, align 4
  %92 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 10
  store i32 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 13
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 11
  store i32 %94, ptr %95, align 8
  %96 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 7
  %99 = load i32, ptr %98, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 12
  %102 = tail call i32 @nvkm_memory_new(ptr noundef %97, i32 noundef 0, i64 noundef %100, i32 noundef 4096, i1 noundef zeroext false, ptr noundef %101) #11
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %157

104:                                              ; preds = %77
  %105 = load ptr, ptr %101, align 4
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nvkm_memory_func, ptr %106, i32 0, i32 7
  %108 = load ptr, ptr %107, align 4
  %109 = tail call ptr %108(ptr noundef %105) #11
  %110 = load i32, ptr %98, align 4
  %111 = icmp ult i32 %110, 4
  br i1 %111, label %131, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %114 = load ptr, ptr %113, align 4
  %115 = lshr i32 %110, 2
  br label %116

116:                                              ; preds = %116, %112
  %117 = phi ptr [ %127, %116 ], [ %114, %112 ]
  %118 = phi i32 [ %120, %116 ], [ %115, %112 ]
  %119 = phi i32 [ %129, %116 ], [ 0, %112 ]
  %120 = add nsw i32 %118, -1
  %121 = load ptr, ptr %101, align 4
  %122 = getelementptr inbounds %struct.nvkm_memory, ptr %121, i32 0, i32 1
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %123, i32 0, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = zext i32 %119 to i64
  %127 = getelementptr i32, ptr %117, i32 1
  %128 = load i32, ptr %117, align 4
  tail call void %125(ptr noundef %121, i64 noundef %126, i32 noundef %128) #11
  %129 = add nuw i32 %119, 4
  %130 = icmp eq i32 %120, 0
  br i1 %130, label %131, label %116

131:                                              ; preds = %116, %104
  %132 = load ptr, ptr %101, align 4
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nvkm_memory_func, ptr %133, i32 0, i32 8
  %135 = load ptr, ptr %134, align 4
  tail call void %135(ptr noundef %132) #11
  %136 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 12
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %101, align 4
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.nvkm_memory_func, ptr %139, i32 0, i32 5
  %141 = load ptr, ptr %140, align 4
  %142 = tail call i64 %141(ptr noundef %138) #11
  %143 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 13
  %144 = tail call i32 @nvkm_vmm_get(ptr noundef %137, i8 noundef zeroext 12, i64 noundef %142, ptr noundef %143) #11
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %131
  %147 = load ptr, ptr %101, align 4
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr inbounds %struct.nvkm_memory_func, ptr %148, i32 0, i32 9
  %150 = load ptr, ptr %149, align 4
  %151 = load ptr, ptr %136, align 4
  %152 = load ptr, ptr %143, align 8
  %153 = tail call i32 %150(ptr noundef %147, i64 noundef 0, ptr noundef %151, ptr noundef %152, ptr noundef null, i32 noundef 0) #11
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %146
  %156 = getelementptr inbounds %struct.nvkm_acr_hsf, ptr %54, i32 0, i32 14
  store ptr %2, ptr %156, align 4
  br label %157

157:                                              ; preds = %155, %146, %131, %77, %56, %52, %3
  %158 = phi i32 [ 0, %155 ], [ %5, %3 ], [ -12, %52 ], [ -12, %56 ], [ %102, %77 ], [ %144, %131 ], [ %153, %146 ]
  ret i32 %158
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_get(ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_unload_boot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef 29)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_unload_load(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 39
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_pmu, ptr %6, i32 0, i32 2
  %8 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_load_boot(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @gm200_acr_hsfw_boot(ptr noundef %0, ptr noundef %1, i32 noundef 16, i32 noundef 0)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gm200_acr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_acr_new_(ptr noundef nonnull @gm200_acr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #11
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm200_acr_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca [32 x i8], align 1
  %5 = alloca [32 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !12
  %6 = getelementptr inbounds %struct.nvkm_acr_fwif, ptr %2, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6)
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = call i32 @nvkm_longopt(ptr noundef %13, ptr noundef nonnull %4, i32 noundef -2) #11
  %15 = icmp sgt i32 %14, -2
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6)
  br label %32

18:                                               ; preds = %23, %3
  %19 = phi ptr [ %26, %23 ], [ %8, %3 ]
  %20 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %60, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %19, align 4
  %25 = icmp ne i32 %24, %14
  %26 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %19, i32 1
  %27 = icmp eq ptr %19, null
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %18, label %29

29:                                               ; preds = %23
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6)
  %31 = load i32, ptr %19, align 4
  br label %32

32:                                               ; preds = %29, %16
  %33 = phi ptr [ %19, %29 ], [ null, %16 ]
  %34 = phi ptr [ %19, %29 ], [ %8, %16 ]
  %35 = phi i32 [ %31, %29 ], [ -1, %16 ]
  %36 = load ptr, ptr %10, align 4
  %37 = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @nvkm_longopt(ptr noundef %38, ptr noundef nonnull %4, i32 noundef %35) #11
  %40 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %34, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %63, label %43

43:                                               ; preds = %32
  %44 = icmp sgt i32 %39, -1
  br label %45

45:                                               ; preds = %52, %43
  %46 = phi ptr [ %41, %43 ], [ %55, %52 ]
  %47 = phi ptr [ %34, %43 ], [ %53, %52 ]
  br i1 %44, label %57, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr %47, align 4
  %50 = call i32 %46(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %49, ptr noundef %47) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %47, i32 1
  %54 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %47, i32 1, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %45

57:                                               ; preds = %45
  %58 = call i32 %41(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %39, ptr noundef %34) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57, %52, %18
  %61 = phi i32 [ %58, %57 ], [ %50, %52 ], [ -22, %18 ]
  %62 = inttoptr i32 %61 to ptr
  br label %63

63:                                               ; preds = %60, %57, %48, %32
  %64 = phi ptr [ %62, %60 ], [ %34, %57 ], [ %33, %32 ], [ %47, %48 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #11
  %65 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = ptrtoint ptr %64 to i32
  br label %130

68:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !12
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.nvkm_acr_func, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.11)
  %73 = load ptr, ptr %10, align 4
  %74 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  %76 = call i32 @nvkm_longopt(ptr noundef %75, ptr noundef nonnull %5, i32 noundef -2) #11
  %77 = icmp sgt i32 %76, -2
  br i1 %77, label %80, label %78

78:                                               ; preds = %68
  %79 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11)
  br label %94

80:                                               ; preds = %85, %68
  %81 = phi ptr [ %88, %85 ], [ %71, %68 ]
  %82 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %81, i32 0, i32 1
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %122, label %85

85:                                               ; preds = %80
  %86 = load i32, ptr %81, align 4
  %87 = icmp ne i32 %86, %76
  %88 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %81, i32 1
  %89 = icmp eq ptr %81, null
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %80, label %91

91:                                               ; preds = %85
  %92 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11)
  %93 = load i32, ptr %81, align 4
  br label %94

94:                                               ; preds = %91, %78
  %95 = phi ptr [ %81, %91 ], [ null, %78 ]
  %96 = phi ptr [ %81, %91 ], [ %71, %78 ]
  %97 = phi i32 [ %93, %91 ], [ -1, %78 ]
  %98 = load ptr, ptr %10, align 4
  %99 = getelementptr inbounds %struct.nvkm_device, ptr %98, i32 0, i32 6
  %100 = load ptr, ptr %99, align 4
  %101 = call i32 @nvkm_longopt(ptr noundef %100, ptr noundef nonnull %5, i32 noundef %97) #11
  %102 = getelementptr inbounds %struct.nvkm_acr_hsf_fwif, ptr %96, i32 0, i32 1
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %125, label %105

105:                                              ; preds = %94
  %106 = icmp sgt i32 %101, -1
  br label %107

107:                                              ; preds = %114, %105
  %108 = phi ptr [ %103, %105 ], [ %117, %114 ]
  %109 = phi ptr [ %96, %105 ], [ %115, %114 ]
  br i1 %106, label %119, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %109, align 4
  %112 = call i32 %108(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %111, ptr noundef %109) #11
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  %115 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %109, i32 1
  %116 = getelementptr %struct.nvkm_acr_hsf_fwif, ptr %109, i32 1, i32 1
  %117 = load ptr, ptr %116, align 4
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %107

119:                                              ; preds = %107
  %120 = call i32 %103(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %101, ptr noundef %96) #11
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119, %114, %80
  %123 = phi i32 [ %120, %119 ], [ %112, %114 ], [ -22, %80 ]
  %124 = inttoptr i32 %123 to ptr
  br label %125

125:                                              ; preds = %122, %119, %110, %94
  %126 = phi ptr [ %124, %122 ], [ %96, %119 ], [ %95, %94 ], [ %109, %110 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #11
  %127 = icmp ugt ptr %126, inttoptr (i32 -4096 to ptr)
  %128 = ptrtoint ptr %126 to i32
  %129 = select i1 %127, i32 %128, i32 0
  br label %130

130:                                              ; preds = %125, %66
  %131 = phi i32 [ %67, %66 ], [ %129, %125 ]
  ret i32 %131
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_longopt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm200_acr_wpr_alloc(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = add i32 %1, 262143
  %6 = and i32 %5, -262144
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %9 = tail call i32 @nvkm_memory_new(ptr noundef %4, i32 noundef 0, i64 noundef %7, i32 noundef 262144, i1 noundef zeroext true, ptr noundef %8) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nvkm_memory_func, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i64 %15(ptr noundef %12) #11
  %17 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  store i64 %16, ptr %17, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nvkm_memory_func, ptr %19, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i64 %21(ptr noundef %18) #11
  %23 = add i64 %22, %16
  %24 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  store i64 %23, ptr %24, align 8
  br label %25

25:                                               ; preds = %11, %2
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_hsfw_load(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gm200_acr_load_load(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_acr_hsfw, ptr %1, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = getelementptr inbounds %struct.flcn_acr_desc, ptr %7, i32 0, i32 1
  store i32 1, ptr %8, align 8
  %9 = getelementptr inbounds %struct.flcn_acr_desc, ptr %7, i32 0, i32 4
  store i32 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 8
  %11 = load i64, ptr %10, align 8
  %12 = lshr i64 %11, 8
  %13 = trunc i64 %12 to i32
  %14 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 9
  %16 = load i64, ptr %15, align 8
  %17 = lshr i64 %16, 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1, i32 0, i32 1
  store i32 %18, ptr %19, align 4
  %20 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1, i32 0, i32 2
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1, i32 0, i32 3
  store i32 15, ptr %21, align 4
  %22 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1, i32 0, i32 4
  store i32 12, ptr %22, align 4
  %23 = getelementptr inbounds %struct.anon.143, ptr %9, i32 0, i32 1, i32 0, i32 5
  store i32 2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  tail call void @flcn_acr_desc_dump(ptr noundef %24, ptr noundef %7) #11
  %25 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_device, ptr %26, i32 0, i32 39
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nvkm_pmu, ptr %28, i32 0, i32 2
  %30 = tail call i32 @gm200_acr_hsfw_load(ptr noundef %0, ptr noundef %1, ptr noundef %29)
  ret i32 %30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_acr_desc_dump(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!8 = !{i64 2151497937}
!9 = !{i64 3956844}
!10 = !{i64 3957262}
!11 = !{i64 2151496715}
!12 = !{!"auto-init"}
!13 = !{!"branch_weights", i32 2000, i32 1}
!14 = !{i8 0, i8 2}
