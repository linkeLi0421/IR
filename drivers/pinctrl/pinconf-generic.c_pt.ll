; ModuleID = '/llk/IR/drivers/pinctrl/pinconf-generic.c_pt.bc'
source_filename = "../drivers/pinctrl/pinconf-generic.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dump_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dump_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dump_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_parse_dt_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_parse_dt_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_parse_dt_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_subnode_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_subnode_to_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_subnode_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_node_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_node_to_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_node_to_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinconf_generic_dt_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinconf_generic_dt_free_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinconf_generic_dt_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@conf_items = internal constant [23 x %struct.pin_config_item] [%struct.pin_config_item { i32 0, ptr @.str.11, ptr null, i8 0 }, %struct.pin_config_item { i32 1, ptr @.str.12, ptr null, i8 0 }, %struct.pin_config_item { i32 2, ptr @.str.13, ptr null, i8 0 }, %struct.pin_config_item { i32 3, ptr @.str.14, ptr null, i8 0 }, %struct.pin_config_item { i32 4, ptr @.str.15, ptr null, i8 0 }, %struct.pin_config_item { i32 5, ptr @.str.16, ptr null, i8 0 }, %struct.pin_config_item { i32 6, ptr @.str.17, ptr null, i8 0 }, %struct.pin_config_item { i32 7, ptr @.str.18, ptr null, i8 0 }, %struct.pin_config_item { i32 8, ptr @.str.19, ptr null, i8 0 }, %struct.pin_config_item { i32 9, ptr @.str.20, ptr @.str.21, i8 1 }, %struct.pin_config_item { i32 10, ptr @.str.20, ptr @.str.22, i8 1 }, %struct.pin_config_item { i32 11, ptr @.str.23, ptr @.str.24, i8 1 }, %struct.pin_config_item { i32 12, ptr @.str.25, ptr null, i8 0 }, %struct.pin_config_item { i32 13, ptr @.str.26, ptr null, i8 0 }, %struct.pin_config_item { i32 14, ptr @.str.27, ptr null, i8 0 }, %struct.pin_config_item { i32 15, ptr @.str.28, ptr @.str.29, i8 1 }, %struct.pin_config_item { i32 18, ptr @.str.30, ptr null, i8 0 }, %struct.pin_config_item { i32 17, ptr @.str.31, ptr @.str.32, i8 1 }, %struct.pin_config_item { i32 19, ptr @.str.33, ptr @.str.34, i8 1 }, %struct.pin_config_item { i32 21, ptr @.str.35, ptr @.str.36, i8 1 }, %struct.pin_config_item { i32 23, ptr @.str.37, ptr null, i8 0 }, %struct.pin_config_item { i32 24, ptr @.str.38, ptr null, i8 1 }, %struct.pin_config_item { i32 22, ptr @.str.39, ptr null, i8 1 }], align 4
@.str = private unnamed_addr constant [9 x i8] c"%s: 0x%x\00", align 1
@__kstrtab_pinconf_generic_dump_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dump_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dump_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dump_config to i32), ptr @__kstrtab_pinconf_generic_dump_config, ptr @__kstrtabns_pinconf_generic_dump_config }, section "___ksymtab_gpl+pinconf_generic_dump_config", align 4
@dt_params = internal unnamed_addr constant [28 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.40, i32 0, i32 0 }, %struct.pinconf_generic_params { ptr @.str.41, i32 1, i32 0 }, %struct.pinconf_generic_params { ptr @.str.42, i32 2, i32 0 }, %struct.pinconf_generic_params { ptr @.str.43, i32 5, i32 1 }, %struct.pinconf_generic_params { ptr @.str.44, i32 4, i32 1 }, %struct.pinconf_generic_params { ptr @.str.45, i32 3, i32 1 }, %struct.pinconf_generic_params { ptr @.str.46, i32 6, i32 0 }, %struct.pinconf_generic_params { ptr @.str.47, i32 7, i32 0 }, %struct.pinconf_generic_params { ptr @.str.48, i32 8, i32 0 }, %struct.pinconf_generic_params { ptr @.str.49, i32 9, i32 0 }, %struct.pinconf_generic_params { ptr @.str.50, i32 10, i32 0 }, %struct.pinconf_generic_params { ptr @.str.51, i32 11, i32 0 }, %struct.pinconf_generic_params { ptr @.str.52, i32 12, i32 0 }, %struct.pinconf_generic_params { ptr @.str.53, i32 12, i32 1 }, %struct.pinconf_generic_params { ptr @.str.54, i32 13, i32 0 }, %struct.pinconf_generic_params { ptr @.str.55, i32 14, i32 0 }, %struct.pinconf_generic_params { ptr @.str.56, i32 14, i32 1 }, %struct.pinconf_generic_params { ptr @.str.57, i32 15, i32 0 }, %struct.pinconf_generic_params { ptr @.str.58, i32 15, i32 1 }, %struct.pinconf_generic_params { ptr @.str.59, i32 18, i32 0 }, %struct.pinconf_generic_params { ptr @.str.60, i32 18, i32 1 }, %struct.pinconf_generic_params { ptr @.str.61, i32 17, i32 1 }, %struct.pinconf_generic_params { ptr @.str.62, i32 19, i32 0 }, %struct.pinconf_generic_params { ptr @.str.63, i32 17, i32 0 }, %struct.pinconf_generic_params { ptr @.str.64, i32 21, i32 0 }, %struct.pinconf_generic_params { ptr @.str.65, i32 23, i32 0 }, %struct.pinconf_generic_params { ptr @.str.66, i32 24, i32 0 }, %struct.pinconf_generic_params { ptr @.str.67, i32 22, i32 0 }], align 4
@__kstrtab_pinconf_generic_parse_dt_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_parse_dt_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_parse_dt_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_parse_dt_config to i32), ptr @__kstrtab_pinconf_generic_parse_dt_config, ptr @__kstrtabns_pinconf_generic_parse_dt_config }, section "___ksymtab_gpl+pinconf_generic_parse_dt_config", align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%pOF: could not parse property function\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%pOF: could not parse node property\0A\00", align 1
@__kstrtab_pinconf_generic_dt_subnode_to_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_subnode_to_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_subnode_to_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_subnode_to_map to i32), ptr @__kstrtab_pinconf_generic_dt_subnode_to_map, ptr @__kstrtabns_pinconf_generic_dt_subnode_to_map }, section "___ksymtab_gpl+pinconf_generic_dt_subnode_to_map", align 4
@__kstrtab_pinconf_generic_dt_node_to_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_node_to_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_node_to_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_node_to_map to i32), ptr @__kstrtab_pinconf_generic_dt_node_to_map, ptr @__kstrtabns_pinconf_generic_dt_node_to_map }, section "___ksymtab_gpl+pinconf_generic_dt_node_to_map", align 4
@__kstrtab_pinconf_generic_dt_free_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinconf_generic_dt_free_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinconf_generic_dt_free_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinconf_generic_dt_free_map to i32), ptr @__kstrtab_pinconf_generic_dt_free_map, ptr @__kstrtabns_pinconf_generic_dt_free_map }, section "___ksymtab_gpl+pinconf_generic_dt_free_map", align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"ERROR READING CONFIG SETTING %d \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" (%u\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %s)\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"input bias bus hold\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"input bias disabled\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"input bias high impedance\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"input bias pull down\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"input bias pull to pin specific state\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"input bias pull up\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"output drive open drain\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"output drive open source\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"output drive push pull\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"output drive strength\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"mA\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"uA\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"input debounce\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"usec\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"input enabled\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"input schmitt trigger\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"input schmitt enabled\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"pin low power\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"output enabled\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"pin output\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"output impedance\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"ohms\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"pin power source\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"sleep hardware state\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"slew rate\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"skew delay\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"bias-bus-hold\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"bias-disable\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"bias-high-impedance\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"bias-pull-up\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"bias-pull-pin-default\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"bias-pull-down\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"drive-open-drain\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"drive-open-source\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"drive-push-pull\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"drive-strength\00", align 1
@.str.50 = private unnamed_addr constant [24 x i8] c"drive-strength-microamp\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"input-debounce\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"input-disable\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"input-enable\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"input-schmitt\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"input-schmitt-disable\00", align 1
@.str.56 = private unnamed_addr constant [21 x i8] c"input-schmitt-enable\00", align 1
@.str.57 = private unnamed_addr constant [18 x i8] c"low-power-disable\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"low-power-enable\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"output-disable\00", align 1
@.str.60 = private unnamed_addr constant [14 x i8] c"output-enable\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"output-high\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"output-impedance-ohms\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"output-low\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"power-source\00", align 1
@.str.65 = private unnamed_addr constant [21 x i8] c"sleep-hardware-state\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"slew-rate\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"skew-delay\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_pinconf_generic_dt_free_map, ptr @__ksymtab_pinconf_generic_dt_node_to_map, ptr @__ksymtab_pinconf_generic_dt_subnode_to_map, ptr @__ksymtab_pinconf_generic_dump_config, ptr @__ksymtab_pinconf_generic_parse_dt_config], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dump_pins(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pinctrl_desc, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4
  %10 = load i8, ptr %9, align 4, !range !8
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %4
  call fastcc void @pinconf_generic_dump_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull @conf_items, i32 noundef 23, ptr noundef nonnull %5)
  %13 = load ptr, ptr %6, align 4
  %14 = getelementptr inbounds %struct.pinctrl_desc, ptr %13, i32 0, i32 7
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pinctrl_desc, ptr %13, i32 0, i32 9
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call fastcc void @pinconf_generic_dump_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %19, i32 noundef %15, ptr noundef nonnull %5)
  br label %22

22:                                               ; preds = %21, %17, %12, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pinconf_generic_dump_one(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, ptr nocapture noundef %6) unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = icmp sgt i32 %5, 0
  br i1 %9, label %10, label %54

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  %12 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  br label %13

13:                                               ; preds = %51, %10
  %14 = phi i32 [ 0, %10 ], [ %52, %51 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  %15 = getelementptr %struct.pin_config_item, ptr %4, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 255
  store i32 %17, ptr %8, align 4
  br i1 %11, label %28, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load ptr, ptr %19, align 4
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ %21, %18 ]
  %27 = call i32 @pin_config_group_get(ptr noundef %26, ptr noundef nonnull %2, ptr noundef nonnull %8) #6
  br label %30

28:                                               ; preds = %13
  %29 = call i32 @pin_config_get_for_pin(ptr noundef %0, i32 noundef %3, ptr noundef nonnull %8) #6
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %27, %25 ], [ %29, %28 ]
  switch i32 %31, label %32 [
    i32 -22, label %51
    i32 -524, label %51
    i32 0, label %33
  ]

32:                                               ; preds = %30
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.6, i32 noundef %14) #6
  br label %51

33:                                               ; preds = %30
  %34 = load i32, ptr %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.7) #6
  br label %37

37:                                               ; preds = %36, %33
  store i32 1, ptr %6, align 4
  %38 = getelementptr %struct.pin_config_item, ptr %4, i32 %14, i32 1
  %39 = load ptr, ptr %38, align 4
  call void @seq_puts(ptr noundef %1, ptr noundef %39) #6
  %40 = getelementptr %struct.pin_config_item, ptr %4, i32 %14, i32 3
  %41 = load i8, ptr %40, align 4, !range !8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %8, align 4
  %45 = lshr i32 %44, 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %45) #6
  %46 = getelementptr %struct.pin_config_item, ptr %4, i32 %14, i32 2
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %47) #6
  br label %51

50:                                               ; preds = %43
  call void @seq_puts(ptr noundef %1, ptr noundef nonnull @.str.10) #6
  br label %51

51:                                               ; preds = %50, %49, %37, %32, %30, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  %52 = add nuw nsw i32 %14, 1
  %53 = icmp eq i32 %52, %5
  br i1 %53, label %54, label %13

54:                                               ; preds = %51, %7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dump_config(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = and i32 %2, 255
  %5 = lshr i32 %2, 8
  br label %6

6:                                                ; preds = %14, %3
  %7 = phi i32 [ 0, %3 ], [ %15, %14 ]
  %8 = getelementptr [23 x %struct.pin_config_item], ptr @conf_items, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %4, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = getelementptr [23 x %struct.pin_config_item], ptr @conf_items, i32 0, i32 %7, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %13, i32 noundef %5) #6
  br label %14

14:                                               ; preds = %11, %6
  %15 = add nuw nsw i32 %7, 1
  %16 = icmp eq i32 %15, 23
  br i1 %16, label %17, label %6

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.pinctrl_desc, ptr %19, i32 0, i32 7
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %47, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.pinctrl_desc, ptr %19, i32 0, i32 9
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %47, label %27

27:                                               ; preds = %44, %23
  %28 = phi ptr [ %39, %44 ], [ %19, %23 ]
  %29 = phi ptr [ %46, %44 ], [ %25, %23 ]
  %30 = phi i32 [ %40, %44 ], [ 0, %23 ]
  %31 = getelementptr %struct.pin_config_item, ptr %29, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %4, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = getelementptr %struct.pin_config_item, ptr %29, i32 %30, i32 1
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str, ptr noundef %36, i32 noundef %5) #6
  %37 = load ptr, ptr %18, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = phi ptr [ %28, %27 ], [ %37, %34 ]
  %40 = add nuw i32 %30, 1
  %41 = getelementptr inbounds %struct.pinctrl_desc, ptr %39, i32 0, i32 7
  %42 = load i32, ptr %41, align 4
  %43 = icmp ult i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.pinctrl_desc, ptr %39, i32 0, i32 9
  %46 = load ptr, ptr %45, align 4
  br label %27

47:                                               ; preds = %38, %23, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = icmp eq ptr %0, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pinctrl_desc, ptr %12, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, 28
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %15, %10 ], [ 28, %8 ]
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 4) #6
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %93, label %20, !prof !9

20:                                               ; preds = %16
  %21 = extractvalue { i32, i1 } %18, 0
  %22 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %93, label %24

24:                                               ; preds = %43, %20
  %25 = phi i32 [ %44, %43 ], [ 0, %20 ]
  %26 = phi i32 [ %45, %43 ], [ 0, %20 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !10
  %27 = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %26
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef %28, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #6
  %30 = call i32 @llvm.smin.i32(i32 %29, i32 0) #6
  switch i32 %30, label %31 [
    i32 -22, label %43
    i32 0, label %33
  ]

31:                                               ; preds = %24
  %32 = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %26, i32 2
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi ptr [ %32, %31 ], [ %6, %24 ]
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.pinconf_generic_params, ptr @dt_params, i32 %26, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = shl i32 %35, 8
  %39 = and i32 %37, 255
  %40 = or i32 %39, %38
  %41 = getelementptr i32, ptr %22, i32 %25
  store i32 %40, ptr %41, align 4
  %42 = add i32 %25, 1
  br label %43

43:                                               ; preds = %33, %24
  %44 = phi i32 [ %42, %33 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  %45 = add nuw nsw i32 %26, 1
  %46 = icmp eq i32 %45, 28
  br i1 %46, label %47, label %24

47:                                               ; preds = %43
  br i1 %9, label %81, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pinctrl_desc, ptr %50, i32 0, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.pinctrl_desc, ptr %50, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %81, label %58

58:                                               ; preds = %77, %54
  %59 = phi i32 [ %78, %77 ], [ %44, %54 ]
  %60 = phi i32 [ %79, %77 ], [ 0, %54 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !10
  %61 = getelementptr %struct.pinconf_generic_params, ptr %56, i32 %60
  %62 = load ptr, ptr %61, align 4
  %63 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %0, ptr noundef %62, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #6
  %64 = call i32 @llvm.smin.i32(i32 %63, i32 0) #6
  switch i32 %64, label %65 [
    i32 -22, label %77
    i32 0, label %67
  ]

65:                                               ; preds = %58
  %66 = getelementptr %struct.pinconf_generic_params, ptr %56, i32 %60, i32 2
  br label %67

67:                                               ; preds = %65, %58
  %68 = phi ptr [ %66, %65 ], [ %5, %58 ]
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr %struct.pinconf_generic_params, ptr %56, i32 %60, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = shl i32 %69, 8
  %73 = and i32 %71, 255
  %74 = or i32 %73, %72
  %75 = getelementptr i32, ptr %22, i32 %59
  store i32 %74, ptr %75, align 4
  %76 = add i32 %59, 1
  br label %77

77:                                               ; preds = %67, %58
  %78 = phi i32 [ %76, %67 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  %79 = add nuw i32 %60, 1
  %80 = icmp eq i32 %79, %52
  br i1 %80, label %81, label %58

81:                                               ; preds = %77, %54, %48, %47
  %82 = phi i32 [ %44, %47 ], [ %44, %48 ], [ %44, %54 ], [ %78, %77 ]
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store ptr null, ptr %2, align 4
  br label %89

85:                                               ; preds = %81
  %86 = shl i32 %82, 2
  %87 = call ptr @kmemdup(ptr noundef nonnull %22, i32 noundef %86, i32 noundef 3264) #6
  store ptr %87, ptr %2, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85, %84
  %90 = phi i32 [ 0, %84 ], [ %82, %85 ]
  store i32 %90, ptr %3, align 4
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ -12, %85 ], [ 0, %89 ]
  call void @kfree(ptr noundef nonnull %22) #6
  br label %93

93:                                               ; preds = %91, %20, %16, %4
  %94 = phi i32 [ %92, %91 ], [ -22, %4 ], [ -12, %20 ], [ -12, %16 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = alloca ptr, align 4
  %8 = alloca ptr, align 4
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #6
  store ptr null, ptr %7, align 4, !annotation !10
  %10 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #6
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #6
  store i32 0, ptr %9, align 4
  %12 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %6
  %15 = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0) #6
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %14, %6
  %18 = phi i32 [ 4, %14 ], [ 3, %6 ]
  %19 = phi i32 [ %15, %14 ], [ %12, %6 ]
  %20 = phi ptr [ @.str.2, %14 ], [ @.str.1, %6 ]
  %21 = icmp eq i32 %5, 0
  %22 = select i1 %21, i32 %18, i32 %5
  %23 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull %7) #6
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = icmp eq i32 %23, -22
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef %1) #8
  br label %28

28:                                               ; preds = %27, %25
  store ptr null, ptr %7, align 4
  br label %29

29:                                               ; preds = %28, %17
  %30 = call i32 @pinconf_generic_parse_dt_config(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %9)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.5, ptr noundef %1) #8
  br label %67

33:                                               ; preds = %29
  %34 = load ptr, ptr %7, align 4
  %35 = icmp ne ptr %34, null
  %36 = zext i1 %35 to i32
  %37 = load i32, ptr %9, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %35, i32 2, i32 1
  %40 = select i1 %38, i32 %36, i32 %39
  %41 = mul nuw i32 %40, %19
  %42 = call i32 @pinctrl_utils_reserve_map(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %41) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %33
  %45 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull %20, ptr noundef null) #6
  %46 = call ptr @of_prop_next_string(ptr noundef %45, ptr noundef null) #6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %64, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %8, align 4
  br label %50

50:                                               ; preds = %61, %48
  %51 = phi ptr [ %46, %48 ], [ %62, %61 ]
  %52 = load ptr, ptr %7, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %51, ptr noundef nonnull %52) #6
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %54, %50
  br i1 %38, label %61, label %58

58:                                               ; preds = %57
  %59 = call i32 @pinctrl_utils_add_map_configs(ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %51, ptr noundef %49, i32 noundef %37, i32 noundef %22) #6
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %57
  %62 = call ptr @of_prop_next_string(ptr noundef %45, ptr noundef nonnull %51) #6
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %50

64:                                               ; preds = %61, %58, %54, %44, %33
  %65 = phi i32 [ %42, %33 ], [ 0, %44 ], [ %55, %54 ], [ %59, %58 ], [ 0, %61 ]
  %66 = load ptr, ptr %8, align 4
  call void @kfree(ptr noundef %66) #6
  br label %67

67:                                               ; preds = %64, %32, %14
  %68 = phi i32 [ %30, %32 ], [ %65, %64 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #6
  ret i32 %68
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  %7 = call i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %16, %9
  %13 = phi ptr [ %17, %16 ], [ %10, %9 ]
  %14 = call i32 @pinconf_generic_dt_subnode_to_map(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %6, ptr noundef %3, i32 noundef %4)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %13) #6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %12

19:                                               ; preds = %12, %5
  %20 = phi i32 [ %7, %5 ], [ %14, %12 ]
  %21 = load ptr, ptr %2, align 4
  %22 = load i32, ptr %3, align 4
  call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %21, i32 noundef %22) #6
  br label %23

23:                                               ; preds = %19, %16, %9
  %24 = phi i32 [ %20, %19 ], [ 0, %9 ], [ 0, %16 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinconf_generic_dt_free_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  tail call void @pinctrl_utils_free_map(ptr noundef %0, ptr noundef %1, i32 noundef %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_config_group_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pin_config_get_for_pin(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"auto-init"}
