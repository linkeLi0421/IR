; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gf100_gr_fwif = type { i32, ptr, ptr, ptr, ptr }
%struct.gf100_grctx_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gf100_gr_func_zbc = type { ptr, ptr, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr }
%struct.anon.0 = type { ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.gf100_gr = type { ptr, %struct.nvkm_gr, %struct.anon.125, %struct.anon.131, i8, ptr, ptr, ptr, ptr, [16 x %struct.gf100_gr_zbc_color], [16 x %struct.gf100_gr_zbc_depth], [16 x %struct.gf100_gr_zbc_stencil], i8, i8, [32 x i8], i8, i8, [32 x i8], [32 x i8], [32 x [4 x i8]], [32 x [4 x i8]], i8, i8, i8, [256 x i8], [256 x %struct.anon.132], i8, [4 x %struct.gf100_gr_data], [512 x %struct.gf100_gr_mmio], i32, ptr, i32, i32 }
%struct.nvkm_gr = type { ptr, %struct.nvkm_engine }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.125 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob, %struct.mutex, i32 }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.129, %struct.anon.130, %struct.nvkm_engine }
%struct.anon.129 = type { i32, ptr, i32, i8 }
%struct.anon.130 = type { i32, ptr, i32, i8 }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.131 = type { %struct.nvkm_falcon, %struct.nvkm_blob, %struct.nvkm_blob }
%struct.gf100_gr_zbc_color = type { i32, [4 x i32], [4 x i32] }
%struct.gf100_gr_zbc_depth = type { i32, i32, i32 }
%struct.gf100_gr_zbc_stencil = type { i32, i32, i32 }
%struct.anon.132 = type { i8, i8 }
%struct.gf100_gr_data = type { i32, i32, i8 }
%struct.gf100_gr_mmio = type { i32, i32, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.121, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.121 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.gf100_gr_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [0 x %struct.nvkm_sclass] }
%struct.gf100_gr_pack = type { ptr, i32 }
%struct.gf100_gr_init = type { i32, i8, i32, i32 }
%struct.gk20a_fw_av = type { i32, i32 }
%struct.gk20a_fw_aiv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"sw_nonctx\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"sw_ctx\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"sw_bundle_init\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"sw_method_init\00", align 1
@__UNIQUE_ID_firmware252 = internal constant [36 x i8] c"firmware=nvidia/gk20a/fecs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware253 = internal constant [36 x i8] c"firmware=nvidia/gk20a/fecs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware254 = internal constant [37 x i8] c"firmware=nvidia/gk20a/gpccs_data.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware255 = internal constant [37 x i8] c"firmware=nvidia/gk20a/gpccs_inst.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware256 = internal constant [41 x i8] c"firmware=nvidia/gk20a/sw_bundle_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware257 = internal constant [33 x i8] c"firmware=nvidia/gk20a/sw_ctx.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware258 = internal constant [41 x i8] c"firmware=nvidia/gk20a/sw_method_init.bin\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware259 = internal constant [36 x i8] c"firmware=nvidia/gk20a/sw_nonctx.bin\00", section ".modinfo", align 1
@gk20a_gr_fwif = internal constant [2 x %struct.gf100_gr_fwif] [%struct.gf100_gr_fwif { i32 0, ptr @gk20a_gr_load, ptr @gk20a_gr, ptr null, ptr null }, %struct.gf100_gr_fwif zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/gr/gk20a.c\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s %s: timeout\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: FECS mem scrubbing timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: GPCCS mem scrubbing timeout\0A\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"fecs_inst\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"fecs_data\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"gpccs_inst\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gpccs_data\00", align 1
@gk20a_grctx = external dso_local constant %struct.gf100_grctx_func, align 4
@gf100_gr_zbc = external dso_local constant %struct.gf100_gr_func_zbc, align 4
@gf100_fermi = external dso_local constant %struct.nvkm_object_func, align 4
@gk20a_gr = internal constant { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon, %struct.anon.0, ptr, i32, i32, i32, ptr, ptr, ptr, [5 x %struct.nvkm_sclass] } { ptr @gf100_gr_oneinit_tiles, ptr @gf100_gr_oneinit_sm_id, ptr @gk20a_gr_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf117_gr_init_zcull, ptr null, ptr @gk104_gr_init_rop_active_fbps, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gf100_gr_trap_mp, ptr @gk20a_gr_set_hww_esr_report_mask, ptr null, %struct.anon zeroinitializer, %struct.anon.0 zeroinitializer, ptr @gf100_gr_rops, i32 0, i32 0, i32 1, ptr @gk20a_grctx, ptr null, ptr @gf100_gr_zbc, [5 x %struct.nvkm_sclass] [%struct.nvkm_sclass { i32 -1, i32 -1, i32 36909, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41024, ptr null, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41623, ptr @gf100_fermi, ptr null }, %struct.nvkm_sclass { i32 -1, i32 -1, i32 41152, ptr null, ptr null }, %struct.nvkm_sclass zeroinitializer] }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_firmware252, ptr @__UNIQUE_ID_firmware253, ptr @__UNIQUE_ID_firmware254, ptr @__UNIQUE_ID_firmware255, ptr @__UNIQUE_ID_firmware256, ptr @__UNIQUE_ID_firmware257, ptr @__UNIQUE_ID_firmware258, ptr @__UNIQUE_ID_firmware259], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_init(ptr noundef %0) #0 {
  %2 = alloca %struct.nvkm_timer_wait, align 8
  %3 = alloca %struct.nvkm_timer_wait, align 8
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4227116
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1) #7, !srcloc !9
  %9 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @gf100_gr_mmio(ptr noundef %0, ptr noundef %10) #7
  %11 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false) #7, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %2) #7
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 11
  br label %13

13:                                               ; preds = %19, %1
  %14 = load ptr, ptr %12, align 4
  %15 = getelementptr i8, ptr %14, i32 4231436
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %17 = and i32 %16, 6
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %49, label %19

19:                                               ; preds = %13
  %20 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %2) #7
  %21 = icmp sgt i64 %20, -1
  br i1 %21, label %13, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.nvkm_timer, ptr %23, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nvkm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = call ptr @dev_driver_string(ptr noundef %27) #7
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.nvkm_timer, ptr %29, i32 0, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nvkm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = load ptr, ptr %33, align 4
  br label %39

39:                                               ; preds = %37, %22
  %40 = phi ptr [ %38, %37 ], [ %35, %22 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 199, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %28, ptr noundef %40) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  %41 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %149, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr inbounds %struct.nvkm_device, ptr %45, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef %48) #8
  br label %149

49:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #7, !annotation !10
  call void @nvkm_timer_wait_init(ptr noundef %11, i64 noundef 2000000000, ptr noundef nonnull %3) #7
  br label %50

50:                                               ; preds = %56, %49
  %51 = load ptr, ptr %12, align 4
  %52 = getelementptr i8, ptr %51, i32 4301068
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %54 = and i32 %53, 6
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %86, label %56

56:                                               ; preds = %50
  %57 = call i64 @nvkm_timer_wait_test(ptr noundef nonnull %3) #7
  %58 = icmp sgt i64 %57, -1
  br i1 %58, label %50, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.nvkm_timer, ptr %60, i32 0, i32 1, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nvkm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 8
  %65 = call ptr @dev_driver_string(ptr noundef %64) #7
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.nvkm_timer, ptr %66, i32 0, i32 1, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.nvkm_device, ptr %68, i32 0, i32 2
  %70 = load ptr, ptr %69, align 8
  %71 = getelementptr inbounds %struct.device, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %59
  %75 = load ptr, ptr %70, align 4
  br label %76

76:                                               ; preds = %74, %59
  %77 = phi ptr [ %75, %74 ], [ %72, %59 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 207, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %65, ptr noundef %77) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %78 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 5
  %79 = load i32, ptr %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %149, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.nvkm_device, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 8
  %85 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.7, ptr noundef %85) #8
  br label %149

86:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #7
  %87 = call i32 @gf100_gr_wait_idle(ptr noundef %0) #7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %149

89:                                               ; preds = %86
  %90 = load ptr, ptr %0, align 4
  %91 = getelementptr inbounds %struct.gf100_gr_func, ptr %90, i32 0, i32 4
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  call void %92(ptr noundef %0) #7
  br label %95

95:                                               ; preds = %94, %89
  %96 = load ptr, ptr %6, align 4
  %97 = getelementptr i8, ptr %96, i32 5255192
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %99 = or i32 %98, 1
  %100 = load ptr, ptr %6, align 4
  %101 = getelementptr i8, ptr %100, i32 5255192
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 %99) #7, !srcloc !9
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.gf100_gr_func, ptr %102, i32 0, i32 8
  %104 = load ptr, ptr %103, align 4
  call void %104(ptr noundef %0) #7
  %105 = load ptr, ptr %0, align 4
  %106 = getelementptr inbounds %struct.gf100_gr_func, ptr %105, i32 0, i32 10
  %107 = load ptr, ptr %106, align 4
  call void %107(ptr noundef %0) #7
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr i8, ptr %108, i32 4195584
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %109, i32 65537) #7, !srcloc !9
  %110 = load ptr, ptr %6, align 4
  %111 = getelementptr i8, ptr %110, i32 4194560
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 -1) #7, !srcloc !9
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr i8, ptr %112, i32 4194620
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 -1) #7, !srcloc !9
  %114 = load ptr, ptr %6, align 4
  %115 = getelementptr i8, ptr %114, i32 4234276
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 983040) #7, !srcloc !9
  %116 = load ptr, ptr %6, align 4
  %117 = getelementptr i8, ptr %116, i32 4210688
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 -1073741824) #7, !srcloc !9
  %118 = load ptr, ptr %6, align 4
  %119 = getelementptr i8, ptr %118, i32 4212224
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 -1073741824) #7, !srcloc !9
  %120 = load ptr, ptr %0, align 4
  %121 = getelementptr inbounds %struct.gf100_gr_func, ptr %120, i32 0, i32 28
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %95
  call void %122(ptr noundef %0) #7
  br label %125

125:                                              ; preds = %124, %95
  %126 = load ptr, ptr %6, align 4
  %127 = getelementptr i8, ptr %126, i32 4300044
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 2) #7, !srcloc !9
  %128 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 16
  %129 = load i8, ptr %128, align 1
  %130 = zext i8 %129 to i32
  %131 = shl i32 -65536, %130
  %132 = and i32 %131, 16711680
  %133 = xor i32 %132, 16711680
  %134 = load ptr, ptr %6, align 4
  %135 = getelementptr i8, ptr %134, i32 4304020
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 %133) #7, !srcloc !9
  %136 = load ptr, ptr %6, align 4
  %137 = getelementptr i8, ptr %136, i32 4194568
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %137, i32 -1) #7, !srcloc !9
  %138 = load ptr, ptr %6, align 4
  %139 = getelementptr i8, ptr %138, i32 4194616
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 -1) #7, !srcloc !9
  %140 = load ptr, ptr %6, align 4
  %141 = getelementptr i8, ptr %140, i32 4194584
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %141, i32 -1) #7, !srcloc !9
  %142 = load ptr, ptr %6, align 4
  %143 = getelementptr i8, ptr %142, i32 4194608
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 -1) #7, !srcloc !9
  %144 = load ptr, ptr %6, align 4
  %145 = getelementptr i8, ptr %144, i32 4194588
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 -1) #7, !srcloc !9
  %146 = load ptr, ptr %6, align 4
  %147 = getelementptr i8, ptr %146, i32 4194612
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 -1) #7, !srcloc !9
  call void @gf100_gr_zbc_init(ptr noundef %0) #7
  %148 = call i32 @gf100_gr_init_ctxctl(ptr noundef %0) #7
  br label %149

149:                                              ; preds = %125, %86, %81, %76, %44, %39
  %150 = phi i32 [ %148, %125 ], [ %87, %86 ], [ -110, %44 ], [ -110, %39 ], [ -110, %81 ], [ -110, %76 ]
  ret i32 %150
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_mmio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_wait_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_zbc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_init_ctxctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_load_sw(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvkm_blob, align 8
  %5 = alloca %struct.nvkm_blob, align 8
  %6 = alloca %struct.nvkm_blob, align 8
  %7 = alloca %struct.nvkm_blob, align 8
  %8 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 5
  %9 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #7
  store i64 0, ptr %7, align 8, !annotation !10
  %10 = call i32 @nvkm_firmware_load_blob(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str, i32 noundef %2, ptr noundef nonnull %7) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %165

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.nvkm_blob, ptr %7, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 3
  %17 = shl i32 %16, 4
  %18 = add i32 %17, 32
  %19 = call noalias ptr @vzalloc(i32 noundef %18) #9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %13
  %22 = getelementptr %struct.gf100_gr_pack, ptr %19, i32 2
  store ptr %22, ptr %19, align 4
  %23 = icmp ult i32 %15, 8
  %24 = load ptr, ptr %7, align 8
  br i1 %23, label %41, label %25

25:                                               ; preds = %21
  %26 = call i32 @llvm.umax.i32(i32 %16, i32 1) #7
  br label %27

27:                                               ; preds = %27, %25
  %28 = phi i32 [ 0, %25 ], [ %37, %27 ]
  %29 = getelementptr %struct.gf100_gr_init, ptr %22, i32 %28
  %30 = getelementptr %struct.gk20a_fw_av, ptr %24, i32 %28
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr %struct.gk20a_fw_av, ptr %24, i32 %28, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.gf100_gr_init, ptr %29, i32 0, i32 3
  store i32 %33, ptr %34, align 4
  %35 = getelementptr inbounds %struct.gf100_gr_init, ptr %29, i32 0, i32 1
  store i8 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.gf100_gr_init, ptr %29, i32 0, i32 2
  store i32 1, ptr %36, align 4
  %37 = add nuw nsw i32 %28, 1
  %38 = icmp eq i32 %37, %26
  br i1 %38, label %41, label %27

39:                                               ; preds = %13
  %40 = load ptr, ptr %7, align 8
  call void @kfree(ptr noundef %40) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  br label %165

41:                                               ; preds = %27, %21
  store ptr %19, ptr %8, align 4
  call void @kfree(ptr noundef %24) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #7
  %42 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  store i64 0, ptr %6, align 8, !annotation !10
  %43 = call i32 @nvkm_firmware_load_blob(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef %2, ptr noundef nonnull %6) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %165

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nvkm_blob, ptr %6, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = udiv i32 %48, 12
  %50 = shl i32 %49, 4
  %51 = add i32 %50, 32
  %52 = call noalias ptr @vzalloc(i32 noundef %51) #9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %72, label %54

54:                                               ; preds = %46
  %55 = getelementptr %struct.gf100_gr_pack, ptr %52, i32 2
  store ptr %55, ptr %52, align 4
  %56 = icmp ult i32 %48, 12
  %57 = load ptr, ptr %6, align 8
  br i1 %56, label %74, label %58

58:                                               ; preds = %54
  %59 = call i32 @llvm.umax.i32(i32 %49, i32 1) #7
  br label %60

60:                                               ; preds = %60, %58
  %61 = phi i32 [ 0, %58 ], [ %70, %60 ]
  %62 = getelementptr %struct.gf100_gr_init, ptr %55, i32 %61
  %63 = getelementptr %struct.gk20a_fw_aiv, ptr %57, i32 %61
  %64 = load i32, ptr %63, align 4
  store i32 %64, ptr %62, align 4
  %65 = getelementptr %struct.gk20a_fw_aiv, ptr %57, i32 %61, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.gf100_gr_init, ptr %62, i32 0, i32 3
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.gf100_gr_init, ptr %62, i32 0, i32 1
  store i8 1, ptr %68, align 4
  %69 = getelementptr inbounds %struct.gf100_gr_init, ptr %62, i32 0, i32 2
  store i32 1, ptr %69, align 4
  %70 = add nuw nsw i32 %61, 1
  %71 = icmp eq i32 %70, %59
  br i1 %71, label %74, label %60

72:                                               ; preds = %46
  %73 = load ptr, ptr %6, align 8
  call void @kfree(ptr noundef %73) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  br label %165

74:                                               ; preds = %60, %54
  store ptr %52, ptr %42, align 4
  call void @kfree(ptr noundef %57) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  %75 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #7
  store i64 0, ptr %5, align 8, !annotation !10
  %76 = call i32 @nvkm_firmware_load_blob(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %2, ptr noundef nonnull %5) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %165

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.nvkm_blob, ptr %5, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 3
  %83 = shl i32 %82, 4
  %84 = add i32 %83, 32
  %85 = call noalias ptr @vzalloc(i32 noundef %84) #9
  %86 = icmp eq ptr %85, null
  br i1 %86, label %105, label %87

87:                                               ; preds = %79
  %88 = getelementptr %struct.gf100_gr_pack, ptr %85, i32 2
  store ptr %88, ptr %85, align 4
  %89 = icmp ult i32 %81, 8
  %90 = load ptr, ptr %5, align 8
  br i1 %89, label %107, label %91

91:                                               ; preds = %87
  %92 = call i32 @llvm.umax.i32(i32 %82, i32 1) #7
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i32 [ 0, %91 ], [ %103, %93 ]
  %95 = getelementptr %struct.gf100_gr_init, ptr %88, i32 %94
  %96 = getelementptr %struct.gk20a_fw_av, ptr %90, i32 %94
  %97 = load i32, ptr %96, align 4
  store i32 %97, ptr %95, align 4
  %98 = getelementptr %struct.gk20a_fw_av, ptr %90, i32 %94, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.gf100_gr_init, ptr %95, i32 0, i32 3
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.gf100_gr_init, ptr %95, i32 0, i32 1
  store i8 1, ptr %101, align 4
  %102 = getelementptr inbounds %struct.gf100_gr_init, ptr %95, i32 0, i32 2
  store i32 1, ptr %102, align 4
  %103 = add nuw nsw i32 %94, 1
  %104 = icmp eq i32 %103, %92
  br i1 %104, label %107, label %93

105:                                              ; preds = %79
  %106 = load ptr, ptr %5, align 8
  call void @kfree(ptr noundef %106) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  br label %165

107:                                              ; preds = %93, %87
  store ptr %85, ptr %75, align 4
  call void @kfree(ptr noundef %90) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #7
  %108 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store i64 0, ptr %4, align 8, !annotation !10
  %109 = call i32 @nvkm_firmware_load_blob(ptr noundef %9, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %2, ptr noundef nonnull %4) #7
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %161

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.nvkm_blob, ptr %4, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 3
  %115 = shl i32 %114, 4
  %116 = add i32 %115, 408
  %117 = call noalias ptr @vzalloc(i32 noundef %116) #9
  %118 = icmp eq ptr %117, null
  br i1 %118, label %158, label %119

119:                                              ; preds = %111
  %120 = icmp ult i32 %113, 8
  br i1 %120, label %157, label %121

121:                                              ; preds = %119
  %122 = getelementptr %struct.gf100_gr_pack, ptr %117, i32 17
  %123 = call i32 @llvm.umax.i32(i32 %114, i32 1) #7
  br label %124

124:                                              ; preds = %145, %121
  %125 = phi i32 [ %154, %145 ], [ 0, %121 ]
  %126 = phi i32 [ %148, %145 ], [ 0, %121 ]
  %127 = phi i32 [ %147, %145 ], [ 0, %121 ]
  %128 = phi ptr [ %155, %145 ], [ %122, %121 ]
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr %struct.gk20a_fw_av, ptr %129, i32 %125
  %131 = load i32, ptr %130, align 4
  %132 = and i32 %131, 65535
  %133 = lshr i32 %131, 14
  %134 = and i32 %133, 262140
  %135 = icmp eq i32 %126, %132
  br i1 %135, label %145, label %136

136:                                              ; preds = %124
  %137 = icmp ne i32 %126, 0
  %138 = zext i1 %137 to i32
  %139 = getelementptr %struct.gf100_gr_init, ptr %128, i32 %138
  %140 = getelementptr %struct.gf100_gr_pack, ptr %117, i32 %127
  store ptr %139, ptr %140, align 4
  %141 = getelementptr %struct.gf100_gr_pack, ptr %117, i32 %127, i32 1
  store i32 %132, ptr %141, align 4
  %142 = add i32 %127, 1
  %143 = icmp ugt i32 %142, 15
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  call void @vfree(ptr noundef nonnull %117) #7
  br label %158

145:                                              ; preds = %136, %124
  %146 = phi ptr [ %139, %136 ], [ %128, %124 ]
  %147 = phi i32 [ %142, %136 ], [ %127, %124 ]
  %148 = phi i32 [ %132, %136 ], [ %126, %124 ]
  store i32 %134, ptr %146, align 4
  %149 = getelementptr %struct.gk20a_fw_av, ptr %129, i32 %125, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr inbounds %struct.gf100_gr_init, ptr %146, i32 0, i32 3
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.gf100_gr_init, ptr %146, i32 0, i32 1
  store i8 1, ptr %152, align 4
  %153 = getelementptr inbounds %struct.gf100_gr_init, ptr %146, i32 0, i32 2
  store i32 1, ptr %153, align 4
  %154 = add nuw nsw i32 %125, 1
  %155 = getelementptr %struct.gf100_gr_init, ptr %146, i32 1
  %156 = icmp eq i32 %154, %123
  br i1 %156, label %157, label %124

157:                                              ; preds = %145, %119
  store ptr %117, ptr %108, align 4
  br label %158

158:                                              ; preds = %157, %144, %111
  %159 = phi i32 [ -28, %144 ], [ 0, %157 ], [ -12, %111 ]
  %160 = load ptr, ptr %4, align 8
  call void @kfree(ptr noundef %160) #7
  br label %161

161:                                              ; preds = %158, %107
  %162 = phi i32 [ %159, %158 ], [ %109, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 0, i32 -2
  br label %165

165:                                              ; preds = %161, %105, %78, %72, %45, %39, %12
  %166 = phi i32 [ -2, %105 ], [ -2, %72 ], [ -2, %39 ], [ %164, %161 ], [ -2, %12 ], [ -2, %45 ], [ -2, %78 ]
  ret i32 %166
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gk20a_gr_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_gr_new_(ptr noundef nonnull @gk20a_gr_fwif, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #7
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_timer_wait_test(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @gk20a_gr_load(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 1
  %6 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %1, ptr noundef %5) #7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 2, i32 2
  %10 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %1, ptr noundef %9) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 1
  %14 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %1, ptr noundef %13) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 3, i32 2
  %18 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i32 noundef %1, ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 4
  store i8 1, ptr %21, align 4
  %22 = tail call i32 @gk20a_gr_load_sw(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %1)
  br label %23

23:                                               ; preds = %20, %16, %12, %8, %3
  %24 = phi i32 [ %22, %20 ], [ -2, %16 ], [ -2, %12 ], [ -2, %8 ], [ -2, %3 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_tiles(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_oneinit_sm_id(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf117_gr_init_zcull(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gk104_gr_init_rop_active_fbps(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_gr_trap_mp(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gk20a_gr_set_hww_esr_report_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.gf100_gr, ptr %0, i32 0, i32 1, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4300356
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 2097150) #7, !srcloc !9
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 4300364
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 127) #7, !srcloc !9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_gr_rops(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

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
!8 = !{i64 2151507435}
!9 = !{i64 3966342}
!10 = !{!"auto-init"}
!11 = !{i64 3966760}
!12 = !{i64 2151506213}
