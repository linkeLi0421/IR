; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon, %struct.anon.0, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.127, %struct.anon.127, [0 x %struct.nvkm_sclass] }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.anon.127 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_sec2_func = type { ptr, i8, ptr, ptr }
%struct.nvkm_acr_lsf_func = type { i32, i32, ptr, ptr, ptr, i64, ptr, ptr }
%struct.nvkm_sec2_fwif = type { i32, ptr, ptr, ptr }
%struct.nvkm_sec2 = type { ptr, %struct.nvkm_engine, %struct.nvkm_falcon, ptr, ptr, ptr, %struct.work_struct, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.126 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.126 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.122, %struct.anon.123, %struct.nvkm_engine }
%struct.anon.122 = type { i32, ptr, i32, i8 }
%struct.anon.123 = type { i32, ptr, i32, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nv_sec2_init_msg = type { %struct.nvfw_falcon_msg, i8, i8, i16, [2 x %struct.anon.135], i32, i16 }
%struct.nvfw_falcon_msg = type { i8, i8, i8, i8 }
%struct.anon.135 = type { i32, i16, i8, i8 }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nvkm_timer = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.spinlock }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.flcn_bl_dmem_desc_v2 = type <{ [4 x i32], [4 x i32], i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32 }>
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.134, i32 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.134 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nv_sec2_args = type { i32, i32, i32, i32, i8 }
%struct.nv_sec2_acr_bootstrap_falcon_cmd = type { %struct.nv_sec2_acr_cmd, i32, i32 }
%struct.nv_sec2_acr_cmd = type { %struct.nvfw_falcon_msg, i8 }
%struct.nv_sec2_acr_bootstrap_falcon_msg = type { %struct.nv_sec2_acr_msg, i32, i32 }
%struct.nv_sec2_acr_msg = type { %struct.nvfw_falcon_msg, i8 }
%struct.loader_config_v1 = type <{ i32, i32, i64, i32, i32, i32, i64, i32, i64, i32, i32 }>

@.str = private unnamed_addr constant [26 x i8] c"%s: firmware unavailable\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: unhandled intr %08x\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/sec2/gp102.c\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@gp102_sec2_flcn = internal constant %struct.nvkm_falcon_func { %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr null, ptr null, i32 1032, i32 1536, ptr @nvkm_falcon_v1_load_imem, ptr @nvkm_falcon_v1_load_dmem, ptr @nvkm_falcon_v1_read_dmem, i32 16777216, ptr @gp102_sec2_flcn_bind_context, ptr @nvkm_falcon_v1_wait_for_halt, ptr @nvkm_falcon_v1_clear_interrupt, ptr @nvkm_falcon_v1_set_start_addr, ptr @nvkm_falcon_v1_start, ptr @gp102_sec2_flcn_enable, ptr @nvkm_falcon_v1_disable, ptr null, %struct.anon.127 { i32 2560, i32 2564, i32 8 }, %struct.anon.127 { i32 2608, i32 2612, i32 8 }, [0 x %struct.nvkm_sclass] zeroinitializer }, align 4
@gp102_sec2 = dso_local constant %struct.nvkm_sec2_func { ptr @gp102_sec2_flcn, i8 8, ptr @gp102_sec2_intr, ptr @gp102_sec2_initmsg }, align 4
@__UNIQUE_ID_firmware252 = internal constant [36 x i8] c"firmware=nvidia/gp102/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [37 x i8] c"firmware=nvidia/gp102/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [35 x i8] c"firmware=nvidia/gp102/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [36 x i8] c"firmware=nvidia/gp104/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [37 x i8] c"firmware=nvidia/gp104/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [35 x i8] c"firmware=nvidia/gp104/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [36 x i8] c"firmware=nvidia/gp106/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [37 x i8] c"firmware=nvidia/gp106/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware260 = internal constant [35 x i8] c"firmware=nvidia/gp106/sec2/sig.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware261 = internal constant [36 x i8] c"firmware=nvidia/gp107/sec2/desc.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware262 = internal constant [37 x i8] c"firmware=nvidia/gp107/sec2/image.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware263 = internal constant [35 x i8] c"firmware=nvidia/gp107/sec2/sig.bin\00", section ".modinfo", align 1
@gp102_sec2_acr_1 = dso_local constant %struct.nvkm_acr_lsf_func { i32 0, i32 84, ptr @gp102_sec2_acr_bld_write_1, ptr @gp102_sec2_acr_bld_patch_1, ptr @gp102_sec2_acr_boot, i64 140, ptr @gp102_sec2_acr_bootstrap_falcon, ptr null }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"sec2/\00", align 1
@__UNIQUE_ID_firmware264 = internal constant [38 x i8] c"firmware=nvidia/gp102/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware265 = internal constant [39 x i8] c"firmware=nvidia/gp102/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware266 = internal constant [37 x i8] c"firmware=nvidia/gp102/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware267 = internal constant [38 x i8] c"firmware=nvidia/gp104/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware268 = internal constant [39 x i8] c"firmware=nvidia/gp104/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware269 = internal constant [37 x i8] c"firmware=nvidia/gp104/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware270 = internal constant [38 x i8] c"firmware=nvidia/gp106/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware271 = internal constant [39 x i8] c"firmware=nvidia/gp106/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware272 = internal constant [37 x i8] c"firmware=nvidia/gp106/sec2/sig-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware273 = internal constant [38 x i8] c"firmware=nvidia/gp107/sec2/desc-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware274 = internal constant [39 x i8] c"firmware=nvidia/gp107/sec2/image-1.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware275 = internal constant [37 x i8] c"firmware=nvidia/gp107/sec2/sig-1.bin\00", section ".modinfo", align 1
@gp102_sec2_fwif = internal constant [4 x %struct.nvkm_sec2_fwif] [%struct.nvkm_sec2_fwif { i32 1, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_1 }, %struct.nvkm_sec2_fwif { i32 0, ptr @gp102_sec2_load, ptr @gp102_sec2, ptr @gp102_sec2_acr_0 }, %struct.nvkm_sec2_fwif { i32 -1, ptr @gp102_sec2_nofw, ptr @gp102_sec2, ptr null }, %struct.nvkm_sec2_fwif zeroinitializer], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [58 x i8] c"%s: ACR_BOOTSTRAP_FALCON failed for falcon %d [%s]: %08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"%s: %s booted\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"pmu\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"gsplite\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"fecs\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"gpccs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"nvdec\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"sec2\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"minion\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@gp102_sec2_acr_0 = internal constant %struct.nvkm_acr_lsf_func { i32 0, i32 56, ptr @gp102_sec2_acr_bld_write, ptr @gp102_sec2_acr_bld_patch, ptr @gp102_sec2_acr_boot, i64 140, ptr @gp102_sec2_acr_bootstrap_falcon, ptr null }, align 8
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259, ptr @__UNIQUE_ID_firmware260, ptr @__UNIQUE_ID_firmware261, ptr @__UNIQUE_ID_firmware262, ptr @__UNIQUE_ID_firmware263, ptr @__UNIQUE_ID_firmware264, ptr @__UNIQUE_ID_firmware265, ptr @__UNIQUE_ID_firmware266, ptr @__UNIQUE_ID_firmware267, ptr @__UNIQUE_ID_firmware268, ptr @__UNIQUE_ID_firmware269, ptr @__UNIQUE_ID_firmware270, ptr @__UNIQUE_ID_firmware271, ptr @__UNIQUE_ID_firmware272, ptr @__UNIQUE_ID_firmware273, ptr @__UNIQUE_ID_firmware274, ptr @__UNIQUE_ID_firmware275], section "llvm.metadata"
@switch.table.gp102_sec2_acr_bootstrap_falcon_callback = private unnamed_addr constant [11 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.14, ptr @.str.12, ptr @.str.14, ptr @.str.14, ptr @.str.13], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_nofw(ptr noundef %0, i32 %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %11, ptr noundef nonnull @.str, ptr noundef %12) #5
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
define dso_local i32 @gp102_sec2_initmsg(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.nv_sec2_init_msg, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %3 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = call i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef %4, ptr noundef nonnull %2, i32 noundef 32) #6
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %61

7:                                                ; preds = %1
  %8 = load i8, ptr %2, align 4
  %9 = icmp ne i8 %8, 1
  %10 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp ne i8 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  br i1 %13, label %61, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0
  %17 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0, i32 2
  %23 = load i8, ptr %22, align 2
  %24 = zext i8 %23 to i32
  %25 = load i32, ptr %16, align 4
  %26 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0, i32 1
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %21, i32 noundef %24, i32 noundef %25, i32 noundef %28) #6
  br label %38

29:                                               ; preds = %14
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = zext i8 %32 to i32
  %34 = load i32, ptr %16, align 4
  %35 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %30, i32 noundef %33, i32 noundef %34, i32 noundef %37) #6
  br label %38

38:                                               ; preds = %29, %20
  %39 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1
  %40 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %15, align 4
  %45 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1, i32 2
  %46 = load i8, ptr %45, align 2
  %47 = zext i8 %46 to i32
  %48 = load i32, ptr %39, align 4
  %49 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1, i32 1
  %50 = load i16, ptr %49, align 4
  %51 = zext i16 %50 to i32
  call void @nvkm_falcon_cmdq_init(ptr noundef %44, i32 noundef %47, i32 noundef %48, i32 noundef %51) #6
  br label %61

52:                                               ; preds = %38
  %53 = load ptr, ptr %3, align 4
  %54 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1, i32 2
  %55 = load i8, ptr %54, align 2
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %39, align 4
  %58 = getelementptr inbounds %struct.nv_sec2_init_msg, ptr %2, i32 0, i32 4, i32 1, i32 1
  %59 = load i16, ptr %58, align 4
  %60 = zext i16 %59 to i32
  call void @nvkm_falcon_msgq_init(ptr noundef %53, i32 noundef %56, i32 noundef %57, i32 noundef %60) #6
  br label %61

61:                                               ; preds = %52, %43, %7, %1
  %62 = phi i32 [ %5, %1 ], [ -22, %7 ], [ 0, %52 ], [ 0, %43 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #6
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_msgq_recv_initmsg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_msgq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_cmdq_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp102_sec2_intr(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 2, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 2, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 28
  %11 = getelementptr i8, ptr %7, i32 %10
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %13 = load ptr, ptr %2, align 4
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %8, align 4
  %19 = add i32 %18, 8
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %22 = lshr i32 %12, 16
  %23 = xor i32 %22, -1
  %24 = and i32 %12, %23
  %25 = and i32 %24, %21
  %26 = and i32 %25, 64
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 6
  %30 = load ptr, ptr @system_wq, align 4
  %31 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %30, ptr noundef %29) #6
  %32 = load ptr, ptr %2, align 4
  %33 = getelementptr inbounds %struct.nvkm_subdev, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_device, ptr %34, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %8, align 4
  %38 = add i32 %37, 4
  %39 = getelementptr i8, ptr %36, i32 %38
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 64) #6, !srcloc !12
  %40 = and i32 %25, -65
  br label %41

41:                                               ; preds = %28, %1
  %42 = phi i32 [ %40, %28 ], [ %25, %1 ]
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 5
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_device, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.1, ptr noundef %53, i32 noundef %42) #5
  br label %54

54:                                               ; preds = %48, %44
  %55 = load ptr, ptr %2, align 4
  %56 = getelementptr inbounds %struct.nvkm_subdev, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nvkm_device, ptr %57, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = load i32, ptr %8, align 4
  %61 = add i32 %60, 4
  %62 = getelementptr i8, ptr %59, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %42) #6, !srcloc !12
  br label %63

63:                                               ; preds = %54, %41
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_flcn_enable(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_subdev, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 960
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 %8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %13 = or i32 %12, 1
  %14 = load ptr, ptr %9, align 4
  %15 = getelementptr i8, ptr %14, i32 %8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #6, !srcloc !12
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #6
  %17 = load ptr, ptr %2, align 4
  %18 = getelementptr inbounds %struct.nvkm_subdev, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %6, align 4
  %21 = add i32 %20, 960
  %22 = getelementptr inbounds %struct.nvkm_device, ptr %19, i32 0, i32 11
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #6, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %26 = and i32 %25, -2
  %27 = load ptr, ptr %22, align 4
  %28 = getelementptr i8, ptr %27, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #6, !srcloc !12
  %29 = tail call i32 @nvkm_falcon_v1_enable(ptr noundef %0) #6
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @gp102_sec2_flcn_bind_context(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = alloca %struct.nvkm_timer_wait, align 8
  %5 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_subdev, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @nvkm_falcon_v1_bind_context(ptr noundef %0, ptr noundef %1) #6
  %9 = icmp eq ptr %1, null
  br i1 %9, label %118, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 10000000, ptr noundef nonnull %3) #6
  %11 = getelementptr inbounds %struct.nvkm_falcon, ptr %0, i32 0, i32 3
  br label %12

12:                                               ; preds = %36, %10
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 11
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr %11, align 4
  %19 = add i32 %18, 8
  %20 = getelementptr i8, ptr %17, i32 %19
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %24, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %11, align 4
  %28 = add i32 %27, 220
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %31 = and i32 %21, 8
  %32 = icmp ne i32 %31, 0
  %33 = and i32 %30, 28672
  %34 = icmp eq i32 %33, 20480
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %58, label %36

36:                                               ; preds = %12
  %37 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #6
  %38 = icmp sgt i64 %37, -1
  br i1 %38, label %12, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.nvkm_timer, ptr %40, i32 0, i32 1, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_device, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = call ptr @dev_driver_string(ptr noundef %44) #6
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.nvkm_timer, ptr %46, i32 0, i32 1, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nvkm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.device, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = load ptr, ptr %50, align 4
  br label %56

56:                                               ; preds = %54, %39
  %57 = phi ptr [ %55, %54 ], [ %52, %39 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 219, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %45, ptr noundef %57) #6
  br label %58

58:                                               ; preds = %56, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #6
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr inbounds %struct.nvkm_subdev, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = load i32, ptr %11, align 4
  %63 = add i32 %62, 4
  %64 = getelementptr inbounds %struct.nvkm_device, ptr %61, i32 0, i32 11
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr i8, ptr %65, i32 %63
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %68 = or i32 %67, 8
  %69 = load ptr, ptr %64, align 4
  %70 = getelementptr i8, ptr %69, i32 %63
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #6, !srcloc !12
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr inbounds %struct.nvkm_subdev, ptr %71, i32 0, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = load i32, ptr %11, align 4
  %75 = add i32 %74, 88
  %76 = getelementptr inbounds %struct.nvkm_device, ptr %73, i32 0, i32 11
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr i8, ptr %77, i32 %75
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %80 = or i32 %79, 2
  %81 = load ptr, ptr %76, align 4
  %82 = getelementptr i8, ptr %81, i32 %75
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !11
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #6, !srcloc !12
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvkm_timer_wait_init(ptr noundef %8, i64 noundef 10000000, ptr noundef nonnull %4) #6
  br label %83

83:                                               ; preds = %95, %58
  %84 = load ptr, ptr %5, align 4
  %85 = getelementptr inbounds %struct.nvkm_subdev, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_device, ptr %86, i32 0, i32 11
  %88 = load ptr, ptr %87, align 4
  %89 = load i32, ptr %11, align 4
  %90 = add i32 %89, 220
  %91 = getelementptr i8, ptr %88, i32 %90
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %91) #6, !srcloc !9
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !10
  %93 = and i32 %92, 28672
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %83
  %96 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %4) #6
  %97 = icmp sgt i64 %96, -1
  br i1 %97, label %83, label %98

98:                                               ; preds = %95
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds %struct.nvkm_timer, ptr %99, i32 0, i32 1, i32 1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.nvkm_device, ptr %101, i32 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = call ptr @dev_driver_string(ptr noundef %103) #6
  %105 = load ptr, ptr %4, align 8
  %106 = getelementptr inbounds %struct.nvkm_timer, ptr %105, i32 0, i32 1, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.nvkm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = getelementptr inbounds %struct.device, ptr %109, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %98
  %114 = load ptr, ptr %109, align 4
  br label %115

115:                                              ; preds = %113, %98
  %116 = phi ptr [ %114, %113 ], [ %111, %98 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 228, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef %104, ptr noundef %116) #6
  br label %117

117:                                              ; preds = %115, %83
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #6
  br label %118

118:                                              ; preds = %117, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_bind_context(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_write_1(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  store i32 6, ptr %5, align 1
  %6 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 3
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %6, align 1
  %13 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 4
  %14 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 11
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 1
  %16 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 5
  %17 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 1
  %19 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 6
  store i32 0, ptr %19, align 1
  %20 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 7
  store i32 0, ptr %20, align 1
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 8
  %22 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 9
  %25 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, %11
  %28 = zext i32 %27 to i64
  store i64 %28, ptr %24, align 1
  %29 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 10
  %30 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 1
  %32 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 11
  store i32 1, ptr %32, align 1
  %33 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 12
  %34 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %36, i32 0, i32 9
  %38 = load i32, ptr %37, align 4
  store i32 %38, ptr %33, align 1
  %39 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nvkm_memory, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %42, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = zext i32 %1 to i64
  tail call void %44(ptr noundef %40, i64 noundef %45, i32 noundef 0) #6
  br label %46

46:                                               ; preds = %46, %3
  %47 = phi i32 [ 20, %3 ], [ %53, %46 ]
  %48 = phi i32 [ %1, %3 ], [ %50, %46 ]
  %49 = phi ptr [ %4, %3 ], [ %51, %46 ]
  %50 = add i32 %48, 4
  %51 = getelementptr i32, ptr %49, i32 1
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %47, -1
  %54 = load ptr, ptr %39, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %56, i32 0, i32 1
  %58 = load ptr, ptr %57, align 4
  %59 = zext i32 %50 to i64
  tail call void %58(ptr noundef %54, i64 noundef %59, i32 noundef %52) #6
  %60 = icmp eq i32 %53, 0
  br i1 %60, label %61, label %46

61:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_patch_1(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.flcn_bl_dmem_desc_v2, align 1
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(84) %4, i8 0, i32 84, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  br label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %4, %3 ], [ %17, %6 ]
  %8 = phi i32 [ 21, %3 ], [ %10, %6 ]
  %9 = phi i32 [ %1, %3 ], [ %18, %6 ]
  %10 = add nsw i32 %8, -1
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_memory, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i32 %9 to i64
  %16 = tail call i32 %14(ptr noundef %11, i64 noundef %15) #6
  %17 = getelementptr i32, ptr %7, i32 1
  store i32 %16, ptr %7, align 4
  %18 = add i32 %9, 4
  %19 = icmp eq i32 %10, 0
  br i1 %19, label %20, label %6

20:                                               ; preds = %6
  %21 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 3
  %22 = load i64, ptr %21, align 1
  %23 = add i64 %22, %2
  store i64 %23, ptr %21, align 1
  %24 = getelementptr inbounds %struct.flcn_bl_dmem_desc_v2, ptr %4, i32 0, i32 9
  %25 = load i64, ptr %24, align 1
  %26 = add i64 %25, %2
  store i64 %26, ptr %24, align 1
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %4, %20 ], [ %38, %27 ]
  %29 = phi i32 [ 21, %20 ], [ %31, %27 ]
  %30 = phi i32 [ %1, %20 ], [ %40, %27 ]
  %31 = add nsw i32 %29, -1
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_memory, ptr %32, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = zext i32 %30 to i64
  %38 = getelementptr i32, ptr %28, i32 1
  %39 = load i32, ptr %28, align 4
  tail call void %36(ptr noundef %32, i64 noundef %37, i32 noundef %39) #6
  %40 = add i32 %30, 4
  %41 = icmp eq i32 %31, 0
  br i1 %41, label %42, label %27

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @flcn_bl_dmem_desc_v2_dump(ptr noundef %43, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_boot(ptr noundef %0) #0 {
  %2 = alloca %struct.nv_sec2_args, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i32 20, i1 false)
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %3, i32 0, i32 9
  %5 = load i32, ptr %4, align 4
  call void @nvkm_falcon_load_dmem(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %5, i32 noundef 20, i8 noundef zeroext 0) #6
  call void @nvkm_falcon_start(ptr noundef %0) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_bootstrap_falcon(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nv_sec2_acr_bootstrap_falcon_cmd, align 4
  %4 = getelementptr i8, ptr %0, i32 -92
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  %5 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.nvkm_sec2_func, ptr %6, i32 0, i32 1
  %8 = load i8, ptr %7, align 4
  store i8 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 1
  store i8 16, ptr %9, align 1
  %10 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 2
  store i8 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.nvfw_falcon_msg, ptr %3, i32 0, i32 3
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_cmd, ptr %3, i32 0, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_cmd, ptr %3, i32 0, i32 2
  store i32 %1, ptr %13, align 4
  %14 = getelementptr i8, ptr %0, i32 200
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -84
  %17 = call i32 @nvkm_falcon_cmdq_send(ptr noundef %15, ptr noundef nonnull %3, ptr noundef nonnull @gp102_sec2_acr_bootstrap_falcon_callback, ptr noundef %16, i32 noundef 100) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 1, i32 1
  %5 = getelementptr inbounds %struct.nvkm_sec2, ptr %0, i32 0, i32 2
  %6 = getelementptr inbounds %struct.nvkm_sec2_fwif, ptr %2, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef %4, ptr noundef %5, i32 noundef 7, ptr noundef nonnull @.str.4, i32 noundef %1, ptr noundef %7) #6
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gp102_sec2_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @nvkm_sec2_new_(ptr noundef nonnull @gp102_sec2_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef %3) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_sec2_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_imem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_read_dmem(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_wait_for_halt(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_v1_clear_interrupt(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_set_start_addr(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_start(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_v1_disable(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @flcn_bl_dmem_desc_v2_dump(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_load_dmem(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_start(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_cmdq_send(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gp102_sec2_acr_bootstrap_falcon_callback(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_msg, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 11
  br i1 %5, label %6, label %9

6:                                                ; preds = %2
  %7 = getelementptr inbounds [11 x ptr], ptr @switch.table.gp102_sec2_acr_bootstrap_falcon_callback, i32 0, i32 %4
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %2
  %10 = phi ptr [ %8, %6 ], [ @.str.14, %2 ]
  %11 = getelementptr inbounds %struct.nv_sec2_acr_bootstrap_falcon_msg, ptr %1, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  br i1 %13, label %24, label %16

16:                                               ; preds = %9
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nvkm_device, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.5, ptr noundef %23, i32 noundef %4, ptr noundef nonnull %10, i32 noundef %12) #5
  br label %32

24:                                               ; preds = %9
  %25 = icmp ugt i32 %15, 3
  br i1 %25, label %26, label %32

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nvkm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.nvkm_subdev, ptr %0, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef %31, ptr noundef nonnull %10) #5
  br label %32

32:                                               ; preds = %26, %24, %18, %16
  %33 = phi i32 [ -22, %18 ], [ -22, %16 ], [ 0, %26 ], [ 0, %24 ]
  ret i32 %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_write(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.loader_config_v1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  %5 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store i32 6, ptr %5, align 4
  %6 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 2
  %7 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 17, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = zext i32 %11 to i64
  store i64 %12, ptr %6, align 4
  %13 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 4
  %17 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 12
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 5
  %20 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 10
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 6
  %23 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 13
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %11
  %26 = zext i32 %25 to i64
  store i64 %26, ptr %22, align 4
  %27 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 7
  %28 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 14
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %27, align 4
  %30 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 8
  store i64 %12, ptr %30, align 4
  %31 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 9
  store i32 1, ptr %31, align 4
  %32 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 10
  %33 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %2, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nvkm_falcon_func, ptr %35, i32 0, i32 9
  %37 = load i32, ptr %36, align 4
  store i32 %37, ptr %32, align 4
  %38 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %39 = load ptr, ptr %38, align 8
  %40 = getelementptr inbounds %struct.nvkm_memory, ptr %39, i32 0, i32 1
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %41, i32 0, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = zext i32 %1 to i64
  tail call void %43(ptr noundef %39, i64 noundef %44, i32 noundef 0) #6
  %45 = add i32 %1, 4
  %46 = getelementptr inbounds i32, ptr %4, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %38, align 8
  %49 = getelementptr inbounds %struct.nvkm_memory, ptr %48, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = zext i32 %45 to i64
  tail call void %52(ptr noundef %48, i64 noundef %53, i32 noundef %47) #6
  %54 = add i32 %1, 8
  %55 = getelementptr inbounds i32, ptr %4, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %38, align 8
  %58 = getelementptr inbounds %struct.nvkm_memory, ptr %57, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %59, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = zext i32 %54 to i64
  tail call void %61(ptr noundef %57, i64 noundef %62, i32 noundef %56) #6
  %63 = add i32 %1, 12
  %64 = getelementptr inbounds i32, ptr %4, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = load ptr, ptr %38, align 8
  %67 = getelementptr inbounds %struct.nvkm_memory, ptr %66, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %68, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = zext i32 %63 to i64
  tail call void %70(ptr noundef %66, i64 noundef %71, i32 noundef %65) #6
  %72 = add i32 %1, 16
  %73 = getelementptr inbounds i32, ptr %4, i32 4
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %38, align 8
  %76 = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  %80 = zext i32 %72 to i64
  tail call void %79(ptr noundef %75, i64 noundef %80, i32 noundef %74) #6
  %81 = add i32 %1, 20
  %82 = getelementptr inbounds i32, ptr %4, i32 5
  %83 = load i32, ptr %82, align 4
  %84 = load ptr, ptr %38, align 8
  %85 = getelementptr inbounds %struct.nvkm_memory, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = zext i32 %81 to i64
  tail call void %88(ptr noundef %84, i64 noundef %89, i32 noundef %83) #6
  %90 = add i32 %1, 24
  %91 = getelementptr inbounds i32, ptr %4, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = load ptr, ptr %38, align 8
  %94 = getelementptr inbounds %struct.nvkm_memory, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %95, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = zext i32 %90 to i64
  tail call void %97(ptr noundef %93, i64 noundef %98, i32 noundef %92) #6
  %99 = add i32 %1, 28
  %100 = getelementptr inbounds i32, ptr %4, i32 7
  %101 = load i32, ptr %100, align 4
  %102 = load ptr, ptr %38, align 8
  %103 = getelementptr inbounds %struct.nvkm_memory, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %104, i32 0, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = zext i32 %99 to i64
  tail call void %106(ptr noundef %102, i64 noundef %107, i32 noundef %101) #6
  %108 = add i32 %1, 32
  %109 = getelementptr inbounds i32, ptr %4, i32 8
  %110 = load i32, ptr %109, align 4
  %111 = load ptr, ptr %38, align 8
  %112 = getelementptr inbounds %struct.nvkm_memory, ptr %111, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %113, i32 0, i32 1
  %115 = load ptr, ptr %114, align 4
  %116 = zext i32 %108 to i64
  tail call void %115(ptr noundef %111, i64 noundef %116, i32 noundef %110) #6
  %117 = add i32 %1, 36
  %118 = getelementptr inbounds i32, ptr %4, i32 9
  %119 = load i32, ptr %118, align 4
  %120 = load ptr, ptr %38, align 8
  %121 = getelementptr inbounds %struct.nvkm_memory, ptr %120, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %122, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = zext i32 %117 to i64
  tail call void %124(ptr noundef %120, i64 noundef %125, i32 noundef %119) #6
  %126 = add i32 %1, 40
  %127 = getelementptr inbounds i32, ptr %4, i32 10
  %128 = load i32, ptr %127, align 4
  %129 = load ptr, ptr %38, align 8
  %130 = getelementptr inbounds %struct.nvkm_memory, ptr %129, i32 0, i32 1
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %131, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = zext i32 %126 to i64
  tail call void %133(ptr noundef %129, i64 noundef %134, i32 noundef %128) #6
  %135 = add i32 %1, 44
  %136 = getelementptr inbounds i32, ptr %4, i32 11
  %137 = load i32, ptr %136, align 4
  %138 = load ptr, ptr %38, align 8
  %139 = getelementptr inbounds %struct.nvkm_memory, ptr %138, i32 0, i32 1
  %140 = load ptr, ptr %139, align 4
  %141 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %140, i32 0, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = zext i32 %135 to i64
  tail call void %142(ptr noundef %138, i64 noundef %143, i32 noundef %137) #6
  %144 = add i32 %1, 48
  %145 = getelementptr inbounds i32, ptr %4, i32 12
  %146 = load i32, ptr %145, align 4
  %147 = load ptr, ptr %38, align 8
  %148 = getelementptr inbounds %struct.nvkm_memory, ptr %147, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %149, i32 0, i32 1
  %151 = load ptr, ptr %150, align 4
  %152 = zext i32 %144 to i64
  tail call void %151(ptr noundef %147, i64 noundef %152, i32 noundef %146) #6
  %153 = add i32 %1, 52
  %154 = getelementptr inbounds i32, ptr %4, i32 13
  %155 = load i32, ptr %154, align 4
  %156 = load ptr, ptr %38, align 8
  %157 = getelementptr inbounds %struct.nvkm_memory, ptr %156, i32 0, i32 1
  %158 = load ptr, ptr %157, align 4
  %159 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %158, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = zext i32 %153 to i64
  tail call void %160(ptr noundef %156, i64 noundef %161, i32 noundef %155) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gp102_sec2_acr_bld_patch(ptr noundef %0, i32 noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.loader_config_v1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nvkm_memory, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = zext i32 %1 to i64
  %11 = tail call i32 %9(ptr noundef %6, i64 noundef %10) #6
  %12 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 %11, ptr %4, align 4
  %13 = add i32 %1, 4
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_memory, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %16, align 4
  %18 = zext i32 %13 to i64
  %19 = tail call i32 %17(ptr noundef %14, i64 noundef %18) #6
  %20 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 %19, ptr %12, align 4
  %21 = add i32 %1, 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.nvkm_memory, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = zext i32 %21 to i64
  %27 = tail call i32 %25(ptr noundef %22, i64 noundef %26) #6
  %28 = getelementptr inbounds i32, ptr %4, i32 3
  store i32 %27, ptr %20, align 4
  %29 = add i32 %1, 12
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds %struct.nvkm_memory, ptr %30, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = zext i32 %29 to i64
  %35 = tail call i32 %33(ptr noundef %30, i64 noundef %34) #6
  %36 = getelementptr inbounds i32, ptr %4, i32 4
  store i32 %35, ptr %28, align 4
  %37 = add i32 %1, 16
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_memory, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  %42 = zext i32 %37 to i64
  %43 = tail call i32 %41(ptr noundef %38, i64 noundef %42) #6
  %44 = getelementptr inbounds i32, ptr %4, i32 5
  store i32 %43, ptr %36, align 4
  %45 = add i32 %1, 20
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.nvkm_memory, ptr %46, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = zext i32 %45 to i64
  %51 = tail call i32 %49(ptr noundef %46, i64 noundef %50) #6
  %52 = getelementptr inbounds i32, ptr %4, i32 6
  store i32 %51, ptr %44, align 4
  %53 = add i32 %1, 24
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.nvkm_memory, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 4
  %58 = zext i32 %53 to i64
  %59 = tail call i32 %57(ptr noundef %54, i64 noundef %58) #6
  %60 = getelementptr inbounds i32, ptr %4, i32 7
  store i32 %59, ptr %52, align 4
  %61 = add i32 %1, 28
  %62 = load ptr, ptr %5, align 8
  %63 = getelementptr inbounds %struct.nvkm_memory, ptr %62, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = zext i32 %61 to i64
  %67 = tail call i32 %65(ptr noundef %62, i64 noundef %66) #6
  %68 = getelementptr inbounds i32, ptr %4, i32 8
  store i32 %67, ptr %60, align 4
  %69 = add i32 %1, 32
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.nvkm_memory, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = load ptr, ptr %72, align 4
  %74 = zext i32 %69 to i64
  %75 = tail call i32 %73(ptr noundef %70, i64 noundef %74) #6
  %76 = getelementptr inbounds i32, ptr %4, i32 9
  store i32 %75, ptr %68, align 4
  %77 = add i32 %1, 36
  %78 = load ptr, ptr %5, align 8
  %79 = getelementptr inbounds %struct.nvkm_memory, ptr %78, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = zext i32 %77 to i64
  %83 = tail call i32 %81(ptr noundef %78, i64 noundef %82) #6
  %84 = getelementptr inbounds i32, ptr %4, i32 10
  store i32 %83, ptr %76, align 4
  %85 = add i32 %1, 40
  %86 = load ptr, ptr %5, align 8
  %87 = getelementptr inbounds %struct.nvkm_memory, ptr %86, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr %88, align 4
  %90 = zext i32 %85 to i64
  %91 = tail call i32 %89(ptr noundef %86, i64 noundef %90) #6
  %92 = getelementptr inbounds i32, ptr %4, i32 11
  store i32 %91, ptr %84, align 4
  %93 = add i32 %1, 44
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.nvkm_memory, ptr %94, i32 0, i32 1
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr %96, align 4
  %98 = zext i32 %93 to i64
  %99 = tail call i32 %97(ptr noundef %94, i64 noundef %98) #6
  %100 = getelementptr inbounds i32, ptr %4, i32 12
  store i32 %99, ptr %92, align 4
  %101 = add i32 %1, 48
  %102 = load ptr, ptr %5, align 8
  %103 = getelementptr inbounds %struct.nvkm_memory, ptr %102, i32 0, i32 1
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = zext i32 %101 to i64
  %107 = tail call i32 %105(ptr noundef %102, i64 noundef %106) #6
  %108 = getelementptr inbounds i32, ptr %4, i32 13
  store i32 %107, ptr %100, align 4
  %109 = add i32 %1, 52
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds %struct.nvkm_memory, ptr %110, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %112, align 4
  %114 = zext i32 %109 to i64
  %115 = tail call i32 %113(ptr noundef %110, i64 noundef %114) #6
  store i32 %115, ptr %108, align 4
  %116 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 2
  %117 = load i64, ptr %116, align 4
  %118 = add i64 %117, %2
  store i64 %118, ptr %116, align 4
  %119 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 6
  %120 = load i64, ptr %119, align 4
  %121 = add i64 %120, %2
  store i64 %121, ptr %119, align 4
  %122 = getelementptr inbounds %struct.loader_config_v1, ptr %4, i32 0, i32 8
  %123 = load i64, ptr %122, align 4
  %124 = add i64 %123, %2
  store i64 %124, ptr %122, align 4
  br label %125

125:                                              ; preds = %125, %3
  %126 = phi ptr [ %4, %3 ], [ %136, %125 ]
  %127 = phi i32 [ 14, %3 ], [ %129, %125 ]
  %128 = phi i32 [ %1, %3 ], [ %138, %125 ]
  %129 = add nsw i32 %127, -1
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.nvkm_memory, ptr %130, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %132, i32 0, i32 1
  %134 = load ptr, ptr %133, align 4
  %135 = zext i32 %128 to i64
  %136 = getelementptr i32, ptr %126, i32 1
  %137 = load i32, ptr %126, align 4
  tail call void %134(ptr noundef %130, i64 noundef %135, i32 noundef %137) #6
  %138 = add i32 %128, 4
  %139 = icmp eq i32 %129, 0
  br i1 %139, label %140, label %125

140:                                              ; preds = %125
  %141 = getelementptr inbounds %struct.nvkm_acr, ptr %0, i32 0, i32 1
  call void @loader_config_v1_dump(ptr noundef %141, ptr noundef nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @loader_config_v1_dump(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind }
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
!9 = !{i64 3950196}
!10 = !{i64 2151489649}
!11 = !{i64 2151490871}
!12 = !{i64 3949778}
