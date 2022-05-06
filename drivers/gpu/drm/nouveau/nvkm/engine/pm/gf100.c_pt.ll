; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/pm/gf100.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/gf100.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_specmux = type { i32, i8, ptr, i8 }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_pm_func = type { ptr }
%struct.gf100_pm_func = type { ptr, ptr, ptr }
%struct.nvkm_pm = type { ptr, %struct.nvkm_engine, %struct.anon.123, %struct.list_head, %struct.list_head, i32 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.122 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.anon.122 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.123 = type { %struct.spinlock, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_perfctr = type { %struct.list_head, i8, [4 x i8], [4 x [8 x i64]], i32, i32, i32 }
%struct.nvkm_perfdom = type { %struct.nvkm_object, ptr, %struct.list_head, %struct.list_head, ptr, [4 x ptr], [32 x i8], i32, i8, i32, i16, [0 x %struct.nvkm_perfsig] }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_perfsig = type { ptr, [8 x i8] }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.120, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.120 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"unk0\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"unk4\00", align 1
@.compoundliteral = internal constant [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 1, i8 0, ptr @.str, i8 0 }, %struct.nvkm_specmux { i32 63, i8 4, ptr @.str.1, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pbfb_broadcast_pm_unk100\00", align 1
@gf100_pbfb_sources = dso_local constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 1110272, ptr @.compoundliteral, ptr @.str.2 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"unk16\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"unk24\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unk29\00", align 1
@.compoundliteral.6 = internal constant [5 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 16383, i8 0, ptr @.str, i8 0 }, %struct.nvkm_specmux { i32 7, i8 16, ptr @.str.3, i8 0 }, %struct.nvkm_specmux { i32 3, i8 24, ptr @.str.4, i8 0 }, %struct.nvkm_specmux { i32 2, i8 29, ptr @.str.5, i8 0 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"pmfb0_pm_unk28\00", align 1
@gf100_pmfb_sources = dso_local constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 1310760, ptr @.compoundliteral.6, ptr @.str.7 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"gpc00_l1_00\00", align 1
@gf100_l1_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 5260456, ptr @.compoundliteral.29, ptr @.str.30 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"gpc00_l1_01\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"gpc00_l1_02\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"gpc00_l1_03\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"gpc00_l1_04\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"gpc00_l1_05\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gpc00_tex_00\00", align 1
@gf100_tex_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 5259968, ptr @.compoundliteral.33, ptr @.str.34 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"gpc00_tex_01\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"gpc00_tex_02\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"gpc00_tex_03\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"gpc00_tex_04\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"gpc00_tex_05\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"gpc00_tex_06\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"gpc00_tex_07\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"gpc00_tex_08\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"gpc00_unk400_00\00", align 1
@gf100_unk400_sources = internal constant [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 5260300, ptr @.compoundliteral.35, ptr @.str.36 }, %struct.nvkm_specsrc zeroinitializer], align 4
@.compoundliteral.24 = internal constant [17 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 0, ptr @.str.8, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.9, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 2, ptr @.str.10, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 3, ptr @.str.11, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 5, ptr @.str.12, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 6, ptr @.str.13, ptr @gf100_l1_sources }, %struct.nvkm_specsig { i8 10, ptr @.str.14, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 11, ptr @.str.15, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 12, ptr @.str.16, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 13, ptr @.str.17, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 14, ptr @.str.18, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 15, ptr @.str.19, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 16, ptr @.str.20, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 17, ptr @.str.21, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 18, ptr @.str.22, ptr @gf100_tex_sources }, %struct.nvkm_specsig { i8 38, ptr @.str.23, ptr @gf100_unk400_sources }, %struct.nvkm_specsig zeroinitializer], align 4
@gf100_perfctr_func = dso_local constant %struct.nvkm_funcdom { ptr @gf100_perfctr_init, ptr @gf100_perfctr_read, ptr @gf100_perfctr_next }, align 4
@gf100_pm_gpc = dso_local constant [2 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 224, ptr @.compoundliteral.24, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@gf100_pm_ = internal constant %struct.nvkm_pm_func { ptr @gf100_pm_fini }, align 4
@.str.25 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"gpc\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@gf100_pm = internal constant %struct.gf100_pm_func { ptr @gf100_pm_hub, ptr @gf100_pm_gpc, ptr @gf100_pm_part }, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"sel\00", align 1
@.compoundliteral.29 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 63, i8 0, ptr @.str.28, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.30 = private unnamed_addr constant [27 x i8] c"pgraph_gpc0_tpc0_l1_pm_mux\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"sel0\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"sel1\00", align 1
@.compoundliteral.33 = internal constant [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 15, i8 0, ptr @.str.31, i8 1 }, %struct.nvkm_specmux { i32 7, i8 8, ptr @.str.32, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.34 = private unnamed_addr constant [32 x i8] c"pgraph_gpc0_tpc0_tex_pm_mux_c_d\00", align 1
@.compoundliteral.35 = internal constant [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 63, i8 0, ptr @.str.28, i8 1 }, %struct.nvkm_specmux zeroinitializer], align 4
@.str.36 = private unnamed_addr constant [31 x i8] c"pgraph_gpc0_tpc0_unk400_pm_mux\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@gf100_pm_hub = internal constant [1 x %struct.nvkm_specdom] zeroinitializer, align 4
@gf100_pm_part = internal constant [2 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 224, ptr @.compoundliteral.51, ptr @gf100_perfctr_func }, %struct.nvkm_specdom zeroinitializer], align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"part00_pbfb_00\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"part00_pbfb_01\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"part00_pmfb_00\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"part00_pmfb_01\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"part00_pmfb_02\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"part00_pmfb_03\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"part00_pmfb_04\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"part00_pmfb_05\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"part00_pmfb_06\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"part00_pmfb_07\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"part00_pmfb_08\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"part00_pmfb_09\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0a\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"part00_pmfb_0b\00", align 1
@.compoundliteral.51 = internal constant [15 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 15, ptr @.str.37, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 16, ptr @.str.38, ptr @gf100_pbfb_sources }, %struct.nvkm_specsig { i8 33, ptr @.str.39, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 4, ptr @.str.40, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 0, ptr @.str.41, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 2, ptr @.str.42, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.43, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 46, ptr @.str.44, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 47, ptr @.str.45, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 27, ptr @.str.46, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 28, ptr @.str.47, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 29, ptr @.str.48, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 30, ptr @.str.49, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig { i8 31, ptr @.str.50, ptr @gf100_pmfb_sources }, %struct.nvkm_specsig zeroinitializer], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_perfctr_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 0
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or i32 %14, %10
  %16 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or i32 %19, %15
  %21 = getelementptr %struct.nvkm_perfctr, ptr %2, i32 0, i32 2, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or i32 %24, %20
  %26 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 8
  %27 = load i8, ptr %26, align 4
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 3
  %30 = or i32 %29, 262146
  %31 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %34 = load i32, ptr %33, align 8
  %35 = add i32 %34, 156
  %36 = getelementptr i8, ptr %32, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %30) #3, !srcloc !9
  %37 = load ptr, ptr %31, align 4
  %38 = load i32, ptr %33, align 8
  %39 = add i32 %38, 256
  %40 = getelementptr i8, ptr %37, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #3, !srcloc !9
  %41 = load ptr, ptr %31, align 4
  %42 = load i32, ptr %33, align 8
  %43 = add i32 %42, 64
  %44 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = shl i32 %45, 3
  %47 = add i32 %43, %46
  %48 = getelementptr i8, ptr %41, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %25) #3, !srcloc !9
  %49 = load ptr, ptr %31, align 4
  %50 = load i32, ptr %33, align 8
  %51 = add i32 %50, 68
  %52 = load i32, ptr %44, align 8
  %53 = shl i32 %52, 3
  %54 = add i32 %51, %53
  %55 = getelementptr i8, ptr %49, i32 %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %7) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_perfctr_read(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 4
  %7 = load i32, ptr %6, align 8
  switch i32 %7, label %43 [
    i32 0, label %8
    i32 1, label %16
    i32 2, label %24
    i32 3, label %32
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 140
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %20 = load i32, ptr %19, align 8
  %21 = add i32 %20, 136
  %22 = getelementptr i8, ptr %18, i32 %21
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %28 = load i32, ptr %27, align 8
  %29 = add i32 %28, 128
  %30 = getelementptr i8, ptr %26, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %36 = load i32, ptr %35, align 8
  %37 = add i32 %36, 144
  %38 = getelementptr i8, ptr %34, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  br label %40

40:                                               ; preds = %32, %24, %16, %8
  %41 = phi i32 [ %39, %32 ], [ %31, %24 ], [ %23, %16 ], [ %15, %8 ]
  %42 = getelementptr inbounds %struct.nvkm_perfctr, ptr %2, i32 0, i32 6
  store i32 %41, ptr %42, align 8
  br label %43

43:                                               ; preds = %40, %3
  %44 = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 11
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %47 = load i32, ptr %46, align 8
  %48 = add i32 %47, 112
  %49 = getelementptr i8, ptr %45, i32 %48
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %51 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 9
  store i32 %50, ptr %51, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_perfctr_next(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 10
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = add nsw i32 %7, -25
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %4, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nvkm_perfdom, ptr %1, i32 0, i32 7
  %12 = load i32, ptr %11, align 8
  %13 = add i32 %12, 108
  %14 = getelementptr i8, ptr %10, i32 %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #3, !srcloc !9
  %15 = load ptr, ptr %9, align 4
  %16 = load i32, ptr %11, align 8
  %17 = add i32 %16, 236
  %18 = getelementptr i8, ptr %15, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 17) #3, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_pm_new_(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #4
  store ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @nvkm_pm_ctor(ptr noundef nonnull @gf100_pm_, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %7) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %7, ptr noundef nonnull @.str.25, i32 noundef 0, i32 noundef 1769472, i32 noundef 0, i32 noundef 512, ptr noundef %13) #3
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 140336
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %21 = shl nsw i32 -1, %20
  %22 = load ptr, ptr %17, align 4
  %23 = getelementptr i8, ptr %22, i32 140548
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %25 = or i32 %24, %21
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr i8, ptr %26, i32 140676
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %29 = or i32 %25, %28
  %30 = xor i32 %29, -1
  %31 = getelementptr inbounds %struct.gf100_pm_func, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %7, ptr noundef nonnull @.str.26, i32 noundef %30, i32 noundef 1572864, i32 noundef 4096, i32 noundef 512, ptr noundef %32) #3
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %16
  %36 = load ptr, ptr %17, align 4
  %37 = getelementptr i8, ptr %36, i32 140344
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %39 = shl nsw i32 -1, %38
  %40 = load ptr, ptr %17, align 4
  %41 = getelementptr i8, ptr %40, i32 140616
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %43 = or i32 %42, %39
  %44 = load ptr, ptr %17, align 4
  %45 = getelementptr i8, ptr %44, i32 140744
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %47 = or i32 %43, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.gf100_pm_func, ptr %0, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = tail call i32 @nvkm_perfdom_new(ptr noundef nonnull %7, ptr noundef nonnull @.str.27, i32 noundef %48, i32 noundef 1703936, i32 noundef 4096, i32 noundef 512, ptr noundef %50) #3
  br label %52

52:                                               ; preds = %35, %16, %12, %9, %5
  %53 = phi i32 [ -12, %5 ], [ %10, %9 ], [ %14, %12 ], [ %33, %16 ], [ %51, %35 ]
  ret i32 %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pm_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_perfdom_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @gf100_pm_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call i32 @gf100_pm_new_(ptr noundef nonnull @gf100_pm, ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3)
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @gf100_pm_fini(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nvkm_pm, ptr %0, i32 0, i32 1, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 512
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %8 = and i32 %7, -268435457
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #3, !srcloc !9
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr i8, ptr %11, i32 512
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #3, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !11
  %14 = or i32 %13, 268435456
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 512
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !8
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %14) #3, !srcloc !9
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
!8 = !{i64 2151489299}
!9 = !{i64 3948206}
!10 = !{i64 3948624}
!11 = !{i64 2151488077}
