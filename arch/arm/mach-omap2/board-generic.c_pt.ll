; ModuleID = '/llk/IR/arch/arm/mach-omap2/board-generic.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/board-generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smp_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.tag = type { %struct.tag_header, %union.anon.65 }
%struct.tag_header = type { i32, i32 }
%union.anon.65 = type { %struct.tag_videolfb }
%struct.tag_videolfb = type { i16, i16, i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

@.str = private unnamed_addr constant [18 x i8] c"Nokia RX-51 board\00", align 1
@n900_boards_compat = internal constant [2 x ptr] [ptr @.str.13, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_N900_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str, i32 0, ptr @n900_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rx51_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Generic OMAP3 (Flattened Device Tree)\00", align 1
@omap3_boards_compat = internal constant [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.1, i32 0, ptr @omap3_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Generic OMAP36xx (Flattened Device Tree)\00", align 1
@omap36xx_boards_compat = internal constant [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP36XX_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.2, i32 0, ptr @omap36xx_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3630_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Generic OMAP3-GP (Flattened Device Tree)\00", align 1
@omap3_gp_boards_compat = internal constant [3 x ptr] [ptr @.str.18, ptr @.str.19, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP3_GP_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.3, i32 0, ptr @omap3_gp_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @omap3430_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Generic AM3517 (Flattened Device Tree)\00", align 1
@am3517_boards_compat = internal constant [2 x ptr] [ptr @.str.20, ptr null], section ".init.rodata", align 4
@__mach_desc_AM3517_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.4, i32 0, ptr @am3517_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap3_map_io, ptr @am35xx_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap3_init_late, ptr null, ptr @omap3xxx_restart }, section ".arch.info.init", align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Generic ti814x (Flattened Device Tree)\00", align 1
@ti814x_boards_compat = internal constant [3 x ptr] [ptr @.str.21, ptr @.str.22, ptr null], section ".init.rodata", align 4
@__mach_desc_TI814X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.5, i32 0, ptr @ti814x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @ti81xx_map_io, ptr @ti814x_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @ti81xx_init_late, ptr null, ptr @ti81xx_restart }, section ".arch.info.init", align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Generic ti816x (Flattened Device Tree)\00", align 1
@ti816x_boards_compat = internal constant [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr null], section ".init.rodata", align 4
@__mach_desc_TI816X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.6, i32 0, ptr @ti816x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @ti81xx_map_io, ptr @ti816x_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @ti81xx_init_late, ptr null, ptr @ti81xx_restart }, section ".arch.info.init", align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Generic AM33XX (Flattened Device Tree)\00", align 1
@am33xx_boards_compat = internal constant [2 x ptr] [ptr @.str.25, ptr null], section ".init.rodata", align 4
@__mach_desc_AM33XX_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.7, i32 0, ptr @am33xx_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @am33xx_map_io, ptr @am33xx_init_early, ptr null, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @am33xx_init_late, ptr null, ptr @am33xx_restart }, section ".arch.info.init", align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"Generic OMAP4 (Flattened Device Tree)\00", align 1
@omap4_boards_compat = internal constant [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr null], section ".init.rodata", align 4
@omap4_smp_ops = external dso_local constant %struct.smp_operations, align 4
@__mach_desc_OMAP4_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.8, i32 0, ptr @omap4_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 809500672, i32 -811597825, ptr @omap4_l2c310_write_sec, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap4_map_io, ptr @omap4430_init_early, ptr @omap_gic_of_init, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @omap4430_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"Generic OMAP5 (Flattened Device Tree)\00", align 1
@omap5_boards_compat = internal constant [4 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr null], section ".init.rodata", align 4
@__mach_desc_OMAP5_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.9, i32 0, ptr @omap5_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @omap5_map_io, ptr @omap5_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @omap5_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Generic AM43 (Flattened Device Tree)\00", align 1
@am43_boards_compat = internal constant [3 x ptr] [ptr @.str.32, ptr @.str.33, ptr null], section ".init.rodata", align 4
@__mach_desc_AM43_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.10, i32 0, ptr @am43_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 809500672, i32 -811597825, ptr @omap4_l2c310_write_sec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @am33xx_map_io, ptr @am43xx_init_early, ptr @omap_gic_of_init, ptr @omap_init_time_of, ptr @omap_generic_init, ptr @am43xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"Generic DRA74X (Flattened Device Tree)\00", align 1
@dra74x_boards_compat = internal constant [6 x ptr] [ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr null], section ".init.rodata", align 4
@__mach_desc_DRA74X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.11, i32 0, ptr @dra74x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr @omap4_smp_ops, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @dra7xx_map_io, ptr @dra7xx_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @dra7xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.12 = private unnamed_addr constant [39 x i8] c"Generic DRA72X (Flattened Device Tree)\00", align 1
@dra72x_boards_compat = internal constant [5 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr null], section ".init.rodata", align 4
@__mach_desc_DRA72X_DT = internal constant %struct.machine_desc { i32 -1, ptr @.str.12, i32 0, ptr @dra72x_boards_compat, i32 0, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_reserve, ptr @dra7xx_map_io, ptr @dra7xx_init_early, ptr @omap_gic_of_init, ptr @omap5_realtime_timer_init, ptr @omap_generic_init, ptr @dra7xx_init_late, ptr null, ptr @omap44xx_restart }, section ".arch.info.init", align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"nokia,omap3-n900\00", align 1
@system_rev = external dso_local local_unnamed_addr global i32, align 4
@omap_dt_match_table = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"simple-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap-infra\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@.str.14 = private unnamed_addr constant [12 x i8] c"ti,omap3430\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ti,omap3\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ti,omap3630\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"ti,omap36xx\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ti,omap3-beagle\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"timll,omap3-devkit8000\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"ti,am3517\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"ti,dm8148\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"ti,dm814\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"ti,dm8168\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"ti,dm816\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"ti,am33xx\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"ti,omap4460\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"ti,omap4430\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"ti,omap4\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"ti,omap5432\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"ti,omap5430\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"ti,omap5\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"ti,am4372\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"ti,am43\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"ti,dra762\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"ti,am5728\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"ti,am5726\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"ti,dra742\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"ti,dra7\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"ti,am5718\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"ti,am5716\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"ti,dra722\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"ti,dra718\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @__mach_desc_AM33XX_DT, ptr @__mach_desc_AM3517_DT, ptr @__mach_desc_AM43_DT, ptr @__mach_desc_DRA72X_DT, ptr @__mach_desc_DRA74X_DT, ptr @__mach_desc_OMAP36XX_DT, ptr @__mach_desc_OMAP3_DT, ptr @__mach_desc_OMAP3_GP_DT, ptr @__mach_desc_OMAP3_N900_DT, ptr @__mach_desc_OMAP4_DT, ptr @__mach_desc_OMAP5_DT, ptr @__mach_desc_TI814X_DT, ptr @__mach_desc_TI816X_DT], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rx51_reserve() #0 section ".init.text" {
  tail call void @save_atags(ptr noundef nonnull inttoptr (i32 -1073741568 to ptr)) #3
  %1 = load i32, ptr inttoptr (i32 -1073741564 to ptr), align 4
  %2 = icmp eq i32 %1, 1413545985
  br i1 %2, label %3, label %19

3:                                                ; preds = %0
  %4 = load i32, ptr inttoptr (i32 -1073741568 to ptr), align 256
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %9

6:                                                ; preds = %15
  %7 = getelementptr inbounds %struct.tag, ptr %12, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr @system_rev, align 4
  br label %19

9:                                                ; preds = %15, %3
  %10 = phi ptr [ %12, %15 ], [ inttoptr (i32 -1073741568 to ptr), %3 ]
  %11 = phi i32 [ %13, %15 ], [ %4, %3 ]
  %12 = getelementptr i32, ptr %10, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tag_header, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 1413545991
  br i1 %18, label %6, label %9

19:                                               ; preds = %9, %6, %3, %0
  tail call void @omap_reserve() #3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap3_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3430_init_early() #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_init_time_of() #0 section ".init.text" {
  %1 = tail call i32 @omap_clk_init() #3
  tail call void @timer_probe() #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_generic_init() #0 section ".init.text" {
  tail call void @pdata_quirks_init(ptr noundef nonnull @omap_dt_match_table) #3
  tail call void @omap_soc_device_init() #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3xxx_restart(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_reserve() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3630_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @am35xx_init_early() #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ti81xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti814x_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti81xx_restart(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti816x_init_early() #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @am33xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @am33xx_restart(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4_l2c310_write_sec(i32 noundef, i32 noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap4_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4430_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_gic_of_init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap4430_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap44xx_restart(i32 noundef, ptr noundef) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap5_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_realtime_timer_init() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap5_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @am43xx_init_late() #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dra7xx_map_io() #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_init_early() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dra7xx_init_late() #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @save_atags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_clk_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @timer_probe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pdata_quirks_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_soc_device_init() local_unnamed_addr #2

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

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
