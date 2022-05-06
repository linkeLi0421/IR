; ModuleID = '/llk/IR/arch/arm/mach-shmobile/setup-rcar-gen2.c_pt.bc'
source_filename = "../arch/arm/mach-shmobile/setup-rcar-gen2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.memory_reserve_config = type { i64, i64, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@.str = private unnamed_addr constant [43 x i8] c"Generic R-Car Gen2 (Flattened Device Tree)\00", align 1
@rcar_gen2_boards_compat_dt = internal constant [6 x ptr] [ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr null], section ".init.rodata", align 4
@__mach_desc_RCAR_GEN2_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @rcar_gen2_boards_compat_dt, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gen2_reserve, ptr null, ptr null, ptr null, ptr @rcar_gen2_timer_init, ptr null, ptr @shmobile_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Generic RZ/G1 (Flattened Device Tree)\00", align 1
@rz_g1_boards_compat_dt = internal constant [6 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.11, ptr @.str.12, ptr null], section ".init.rodata", align 4
@__mach_desc_RZ_G1_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @rz_g1_boards_compat_dt, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_gen2_reserve, ptr null, ptr null, ptr null, ptr @rcar_gen2_timer_init, ptr null, ptr @shmobile_init_late, ptr null, ptr null }, section ".arch.info.init", align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"renesas,r8a7790\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"renesas,r8a7791\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"renesas,r8a7792\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"renesas,r8a7793\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"renesas,r8a7794\00", align 1
@rcar_gen2_reserve.rcar_gen2_dma_contiguous = internal global ptr null, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"linux,usable-memory\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@dt_root_addr_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@dt_root_size_cells = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"renesas,r8a7745\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"renesas,r8a77470\00", align 1
@cpg_matches = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7742-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7743-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7744-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7790-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7791-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r8a7793-cpg-mssr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.16 }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.13 = private unnamed_addr constant [12 x i8] c"clock-names\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"clocks\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"extal\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"renesas,r8a7742\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"renesas,r8a7743\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"renesas,r8a7744\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @__mach_desc_RCAR_GEN2_DT, ptr @__mach_desc_RZ_G1_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rcar_gen2_reserve() #0 section ".init.text" {
  %1 = alloca %struct.memory_reserve_config, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #7
  %2 = getelementptr inbounds i8, ptr %1, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i64 268435456, ptr %1, align 8
  %3 = call i32 @of_scan_flat_dt(ptr noundef nonnull @rcar_gen2_scan_mem, ptr noundef nonnull %1) #7
  %4 = getelementptr inbounds %struct.memory_reserve_config, ptr %1, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.memory_reserve_config, ptr %1, i32 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = trunc i64 %5 to i32
  %12 = call zeroext i1 @memblock_is_region_memory(i32 noundef %10, i32 noundef %11) #7
  br i1 %12, label %13, label %19

13:                                               ; preds = %7
  %14 = load i64, ptr %4, align 8
  %15 = trunc i64 %14 to i32
  %16 = load i64, ptr %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @dma_contiguous_reserve_area(i32 noundef %15, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @rcar_gen2_reserve.rcar_gen2_dma_contiguous, i1 noundef zeroext true) #8
  br label %19

19:                                               ; preds = %13, %7, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rcar_gen2_timer_init() #0 section ".init.text" {
  %1 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 3), align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %31

3:                                                ; preds = %0
  tail call void @secure_cntvoff_init() #7
  %4 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.11) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.12) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.6) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @get_extal_freq() #9
  %17 = lshr i32 %16, 1
  br label %18

18:                                               ; preds = %15, %12, %9, %6, %3
  %19 = phi i32 [ %17, %15 ], [ 32500000, %12 ], [ 32500000, %9 ], [ 32500000, %6 ], [ 32500000, %3 ]
  %20 = tail call ptr @ioremap(i32 noundef -435683328, i32 noundef 4096) #7
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %20, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !9
  %27 = icmp eq i32 %26, %19
  br i1 %27, label %30, label %28

28:                                               ; preds = %24, %18
  %29 = getelementptr i8, ptr %20, i32 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %19) #7, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c14, c0, 0", "r"(i32 %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 1) #7, !srcloc !11
  br label %30

30:                                               ; preds = %28, %24
  tail call void @iounmap(ptr noundef %20) #7
  br label %31

31:                                               ; preds = %30, %0
  tail call void @of_clk_init(ptr noundef null) #7
  tail call void @timer_probe() #7
  ret void
}

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @shmobile_init_late() #1 section ".init.text" {
  %1 = tail call i32 @shmobile_suspend_init() #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_scan_flat_dt(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_gen2_scan_mem(i32 noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, ptr nocapture noundef %3) #0 section ".init.text" {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.7, ptr noundef null) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #7
  store i32 0, ptr %6, align 4, !annotation !13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %60, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %7, ptr noundef nonnull dereferenceable(7) @.str.8)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %60

12:                                               ; preds = %9
  %13 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull %6) #7
  store ptr %13, ptr %5, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = call ptr @of_get_flat_dt_prop(i32 noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull %6) #7
  store ptr %16, ptr %5, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %60, label %18

18:                                               ; preds = %15, %12
  %19 = phi ptr [ %16, %15 ], [ %13, %12 ]
  %20 = load i32, ptr %6, align 4
  %21 = lshr i32 %20, 2
  %22 = getelementptr i32, ptr %19, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = ashr i32 %20, 2
  %25 = load i32, ptr @dt_root_addr_cells, align 4
  %26 = load i32, ptr @dt_root_size_cells, align 4
  %27 = add i32 %26, %25
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %60, label %29

29:                                               ; preds = %18
  %30 = getelementptr inbounds %struct.memory_reserve_config, ptr %3, i32 0, i32 1
  %31 = getelementptr inbounds %struct.memory_reserve_config, ptr %3, i32 0, i32 2
  br label %32

32:                                               ; preds = %51, %29
  %33 = phi i32 [ %25, %29 ], [ %56, %51 ]
  %34 = call i64 @dt_mem_next_cell(i32 noundef %33, ptr noundef nonnull %5) #7
  %35 = load i32, ptr @dt_root_size_cells, align 4
  %36 = call i64 @dt_mem_next_cell(i32 noundef %35, ptr noundef nonnull %5) #7
  %37 = icmp ugt i64 %34, 4294967295
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  %39 = add i64 %36, %34
  %40 = icmp ugt i64 %39, 4294967295
  %41 = sub nuw nsw i64 4294967296, %34
  %42 = select i1 %40, i64 %41, i64 %36
  %43 = load i64, ptr %3, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = load i64, ptr %30, align 8
  %47 = icmp ult i64 %34, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = add i64 %42, %34
  %50 = sub i64 %49, %43
  store i64 %50, ptr %30, align 8
  store i64 %43, ptr %31, align 8
  br label %51

51:                                               ; preds = %48, %45, %38, %32
  %52 = load ptr, ptr %5, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = sub i32 %23, %53
  %55 = ashr exact i32 %54, 2
  %56 = load i32, ptr @dt_root_addr_cells, align 4
  %57 = load i32, ptr @dt_root_size_cells, align 4
  %58 = add i32 %57, %56
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %32

60:                                               ; preds = %51, %18, %15, %9, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @memblock_is_region_memory(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @dma_contiguous_reserve_area(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5 section ".init.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_flat_dt_prop(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @dt_mem_next_cell(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @secure_cntvoff_init() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @get_extal_freq() unnamed_addr #0 section ".init.text" {
  %1 = alloca %struct.of_phandle_args, align 4
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #7
  store ptr null, ptr %2, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 20000000, ptr %3, align 4
  %4 = call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @cpg_matches, ptr noundef nonnull %2) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %0
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr inbounds %struct.of_device_id, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = call i32 @of_property_match_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.13, ptr noundef nonnull %9) #7
  br label %13

13:                                               ; preds = %11, %6
  %14 = phi i32 [ %12, %11 ], [ 0, %6 ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %1) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %1, i8 0, i32 72, i1 false) #7, !annotation !13
  %15 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %4, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %14, ptr noundef nonnull %1) #7
  %16 = icmp ne i32 %15, 0
  %17 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %1) #7
  call void @of_node_put(ptr noundef nonnull %4) #7
  %18 = icmp eq ptr %17, null
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.15, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #7
  call void @of_node_put(ptr noundef nonnull %17) #7
  %22 = load i32, ptr %3, align 4
  br label %23

23:                                               ; preds = %20, %13, %0
  %24 = phi i32 [ 20000000, %13 ], [ 20000000, %0 ], [ %22, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #7
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @shmobile_suspend_init() local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
!8 = !{i64 2794069}
!9 = !{i64 2150326032}
!10 = !{i64 2150327254}
!11 = !{i64 2793651}
!12 = !{i64 3206}
!13 = !{!"auto-init"}
