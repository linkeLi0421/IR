; ModuleID = '/llk/IR/drivers/pinctrl/meson/pinctrl-meson.c_pt.bc'
source_filename = "../drivers/pinctrl/meson/pinctrl-meson.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_funcs_count:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_funcs_count\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_funcs_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_func_name:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_func_name\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_func_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pmx_get_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pmx_get_groups\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pmx_get_groups:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson8_aobus_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22meson8_aobus_parse_dt_extra\22\09\09\09\09\09"
module asm "__kstrtabns_meson8_aobus_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_a1_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_a1_parse_dt_extra\22\09\09\09\09\09"
module asm "__kstrtabns_meson_a1_parse_dt_extra:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_meson_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.meson_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, ptr, ptr, ptr, ptr, ptr, %struct.gpio_chip, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.meson_pinctrl_data = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, ptr, ptr, ptr }
%struct.meson_pmx_func = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.meson_pmx_group = type { ptr, ptr, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.meson_bank = type { ptr, i32, i32, i32, i32, [6 x %struct.meson_reg_desc] }
%struct.meson_reg_desc = type { i32, i32 }

@__kstrtab_meson_pmx_get_funcs_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_funcs_count = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_funcs_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_funcs_count to i32), ptr @__kstrtab_meson_pmx_get_funcs_count, ptr @__kstrtabns_meson_pmx_get_funcs_count }, section "___ksymtab_gpl+meson_pmx_get_funcs_count", align 4
@__kstrtab_meson_pmx_get_func_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_func_name = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_func_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_func_name to i32), ptr @__kstrtab_meson_pmx_get_func_name, ptr @__kstrtabns_meson_pmx_get_func_name }, section "___ksymtab_gpl+meson_pmx_get_func_name", align 4
@__kstrtab_meson_pmx_get_groups = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pmx_get_groups = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pmx_get_groups = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pmx_get_groups to i32), ptr @__kstrtab_meson_pmx_get_groups, ptr @__kstrtabns_meson_pmx_get_groups }, section "___ksymtab_gpl+meson_pmx_get_groups", align 4
@__kstrtab_meson8_aobus_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson8_aobus_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__ksymtab_meson8_aobus_parse_dt_extra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson8_aobus_parse_dt_extra to i32), ptr @__kstrtab_meson8_aobus_parse_dt_extra, ptr @__kstrtabns_meson8_aobus_parse_dt_extra }, section "___ksymtab_gpl+meson8_aobus_parse_dt_extra", align 4
@__kstrtab_meson_a1_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_a1_parse_dt_extra = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_a1_parse_dt_extra = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_a1_parse_dt_extra to i32), ptr @__kstrtab_meson_a1_parse_dt_extra, ptr @__kstrtabns_meson_a1_parse_dt_extra }, section "___ksymtab_gpl+meson_a1_parse_dt_extra", align 4
@.str = private unnamed_addr constant [14 x i8] c"pinctrl-meson\00", align 1
@meson_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @meson_get_groups_count, ptr @meson_get_group_name, ptr @meson_get_group_pins, ptr @meson_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, align 4
@meson_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @meson_pinconf_get, ptr @meson_pinconf_set, ptr @meson_pinconf_group_get, ptr @meson_pinconf_group_set, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't register pinctrl device\00", align 1
@__kstrtab_meson_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_pinctrl_probe to i32), ptr @__kstrtab_meson_pinctrl_probe, ptr @__kstrtabns_meson_pinctrl_probe }, section "___ksymtab_gpl+meson_pinctrl_probe", align 4
@__UNIQUE_ID_file206 = internal constant [55 x i8] c"pinctrl_meson.file=drivers/pinctrl/meson/pinctrl-meson\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [29 x i8] c"pinctrl_meson.license=GPL v2\00", section ".modinfo", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"gpio-controller\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"multiple gpio nodes\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"no gpio node found\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mux\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"mux registers not found\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"gpio registers not found\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"pull-enable\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"reg-names\00", align 1
@meson_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"%pOFn-%s\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"drive-strength not supported\0A\00", align 1
@meson_pinconf_set_drive_strength.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"pin %u: invalid drive-strength : %d , default to 4mA\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"can't add gpio chip %s\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__ksymtab_meson8_aobus_parse_dt_extra, ptr @__ksymtab_meson_a1_parse_dt_extra, ptr @__ksymtab_meson_pinctrl_probe, ptr @__ksymtab_meson_pmx_get_func_name, ptr @__ksymtab_meson_pmx_get_funcs_count, ptr @__ksymtab_meson_pmx_get_groups], section "llvm.metadata"
@switch.table.meson_pinconf_get = private unnamed_addr constant [4 x i32] [i32 500, i32 2500, i32 3000, i32 4000], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_pmx_get_funcs_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.meson_pinctrl, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @meson_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.meson_pmx_func, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_pmx_get_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.meson_pmx_func, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %12, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.meson_pmx_func, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @meson8_aobus_parse_dt_extra(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 5
  store ptr %3, ptr %6, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @meson_a1_parse_dt_extra(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 6
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 5
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 8
  store ptr %3, ptr %6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @meson_pinctrl_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 384, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %128, label %5

5:                                                ; preds = %1
  store ptr %2, ptr %3, align 4
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #8
  %7 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  %10 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %22, %21 ], [ null, %5 ]
  %14 = phi ptr [ %23, %21 ], [ %10, %5 ]
  %15 = tail call ptr @of_find_property(ptr noundef nonnull %14, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = icmp eq ptr %13, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  %20 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.3) #9
  tail call void @of_node_put(ptr noundef nonnull %14) #8
  br label %128

21:                                               ; preds = %17, %12
  %22 = phi ptr [ %13, %12 ], [ %14, %17 ]
  %23 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %14) #8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %12

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %25, %5
  %28 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.4) #9
  br label %128

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 10
  store ptr %22, ptr %30, align 4
  %31 = tail call fastcc ptr @meson_map_resource(ptr noundef %3, ptr noundef nonnull %22, ptr noundef nonnull @.str.5) #8
  %32 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 4
  store ptr %31, ptr %32, align 4
  %33 = icmp eq ptr %31, null
  %34 = icmp ugt ptr %31, inttoptr (i32 -4096 to ptr)
  %35 = or i1 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.6) #9
  %38 = load ptr, ptr %32, align 4
  %39 = icmp eq ptr %38, null
  %40 = ptrtoint ptr %38 to i32
  br i1 %39, label %128, label %71

41:                                               ; preds = %29
  %42 = tail call fastcc ptr @meson_map_resource(ptr noundef %3, ptr noundef nonnull %22, ptr noundef nonnull @.str.7) #8
  %43 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 7
  store ptr %42, ptr %43, align 4
  %44 = icmp eq ptr %42, null
  %45 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  %46 = or i1 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.8) #9
  %49 = load ptr, ptr %43, align 4
  %50 = icmp eq ptr %49, null
  %51 = ptrtoint ptr %49 to i32
  br i1 %50, label %128, label %71

52:                                               ; preds = %41
  %53 = tail call fastcc ptr @meson_map_resource(ptr noundef %3, ptr noundef nonnull %22, ptr noundef nonnull @.str.9) #8
  %54 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 6
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  %56 = select i1 %55, ptr null, ptr %53
  store ptr %56, ptr %54, align 4
  %57 = tail call fastcc ptr @meson_map_resource(ptr noundef %3, ptr noundef nonnull %22, ptr noundef nonnull @.str.10) #8
  %58 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 5
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  %60 = select i1 %59, ptr null, ptr %57
  store ptr %60, ptr %58, align 4
  %61 = tail call fastcc ptr @meson_map_resource(ptr noundef %3, ptr noundef nonnull %22, ptr noundef nonnull @.str.11) #8
  %62 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 8
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  %64 = select i1 %63, ptr null, ptr %61
  store ptr %64, ptr %62, align 4
  %65 = load ptr, ptr %7, align 4
  %66 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %65, i32 0, i32 11
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %76, label %69

69:                                               ; preds = %52
  %70 = tail call i32 %67(ptr noundef %3) #8
  br label %71

71:                                               ; preds = %69, %47, %36
  %72 = phi i32 [ %70, %69 ], [ %40, %36 ], [ %51, %47 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %128

74:                                               ; preds = %71
  %75 = load ptr, ptr %7, align 4
  br label %76

76:                                               ; preds = %74, %52
  %77 = phi ptr [ %75, %74 ], [ %65, %52 ]
  %78 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2
  store ptr @.str, ptr %78, align 4
  %79 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 6
  store ptr null, ptr %79, align 4
  %80 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 3
  store ptr @meson_pctrl_ops, ptr %80, align 4
  %81 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %77, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 4
  store ptr %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 5
  store ptr @meson_pinconf_ops, ptr %84, align 4
  %85 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %77, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 1
  store ptr %86, ptr %87, align 4
  %88 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %77, i32 0, i32 4
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 2, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load ptr, ptr %3, align 4
  %92 = tail call ptr @devm_pinctrl_register(ptr noundef %91, ptr noundef %78, ptr noundef nonnull %3) #8
  %93 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 1
  store ptr %92, ptr %93, align 4
  %94 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.1) #9
  %97 = load ptr, ptr %93, align 4
  %98 = ptrtoint ptr %97 to i32
  br label %128

99:                                               ; preds = %76
  %100 = load ptr, ptr %7, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9
  store ptr %101, ptr %102, align 4
  %103 = load ptr, ptr %3, align 4
  %104 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 2
  store ptr %103, ptr %104, align 4
  %105 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 5
  store ptr @gpiochip_generic_request, ptr %105, align 4
  %106 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 6
  store ptr @gpiochip_generic_free, ptr %106, align 4
  %107 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 14
  store ptr @gpiochip_generic_config, ptr %107, align 4
  %108 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 7
  store ptr @meson_gpio_get_direction, ptr %108, align 4
  %109 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 8
  store ptr @meson_gpio_direction_input, ptr %109, align 4
  %110 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 9
  store ptr @meson_gpio_direction_output, ptr %110, align 4
  %111 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 10
  store ptr @meson_gpio_get, ptr %111, align 4
  %112 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 12
  store ptr @meson_gpio_set, ptr %112, align 4
  %113 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 19
  store i32 -1, ptr %113, align 4
  %114 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %100, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 20
  store i16 %116, ptr %117, align 4
  %118 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 23
  store i8 0, ptr %118, align 4
  %119 = load ptr, ptr %30, align 4
  %120 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 39
  store ptr %119, ptr %120, align 4
  %121 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 9, i32 40
  store i32 2, ptr %121, align 4
  %122 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %102, ptr noundef %3, ptr noundef null, ptr noundef null) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %99
  %125 = load ptr, ptr %3, align 4
  %126 = load ptr, ptr %7, align 4
  %127 = load ptr, ptr %126, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.17, ptr noundef %127) #9
  br label %128

128:                                              ; preds = %124, %99, %95, %71, %47, %36, %27, %19, %1
  %129 = phi i32 [ %98, %95 ], [ -12, %1 ], [ %72, %71 ], [ 0, %99 ], [ %122, %124 ], [ -22, %27 ], [ -22, %19 ], [ -2, %36 ], [ -2, %47 ]
  ret i32 %129
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @meson_map_resource(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.resource, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %4, i8 0, i32 32, i1 false), !annotation !8
  %5 = tail call i32 @of_property_match_string(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %2) #8
  %6 = call i32 @of_address_to_resource(ptr noundef %1, i32 noundef %5, ptr noundef nonnull %4) #8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 4
  %10 = call ptr @devm_ioremap_resource(ptr noundef %9, ptr noundef nonnull %4) #8
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.resource, ptr %4, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  %16 = add i32 %14, -3
  %17 = sub i32 %16, %15
  store i32 %17, ptr getelementptr inbounds (%struct.regmap_config, ptr @meson_regmap_config, i32 0, i32 19), align 4
  %18 = load ptr, ptr %0, align 4
  %19 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %18, i32 noundef 3264, ptr noundef nonnull @.str.13, ptr noundef %1, ptr noundef %2) #8
  store ptr %19, ptr @meson_regmap_config, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %0, align 4
  %23 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %22, ptr noundef null, ptr noundef %10, ptr noundef nonnull @meson_regmap_config, ptr noundef null, ptr noundef null) #8
  br label %24

24:                                               ; preds = %21, %12, %8, %3
  %25 = phi ptr [ %23, %21 ], [ null, %3 ], [ %10, %8 ], [ inttoptr (i32 -12 to ptr), %12 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #8
  ret ptr %25
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.meson_pinctrl, ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @meson_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.meson_pmx_group, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.meson_pmx_group, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.meson_pmx_group, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_pin_dbg_show(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load ptr, ptr %5, align 4
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %7, %3 ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %12) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #6 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #8
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %10 = load i32, ptr %2, align 4
  %11 = and i32 %10, 255
  %12 = trunc i32 %10 to i8
  switch i8 %12, label %259 [
    i8 1, label %13
    i8 3, label %13
    i8 5, label %13
    i8 10, label %80
    i8 18, label %127
    i8 17, label %170
  ]

13:                                               ; preds = %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %15, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %15, i32 0, i32 7
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %31, %19
  %23 = phi i32 [ 0, %19 ], [ %32, %31 ]
  %24 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp ugt i32 %25, %1
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp ult i32 %29, %1
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %22
  %32 = add nuw i32 %23, 1
  %33 = icmp eq i32 %32, %17
  br i1 %33, label %76, label %22

34:                                               ; preds = %27
  %35 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 5, i32 0
  %36 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 5, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = sub i32 %1, %25
  %39 = add i32 %38, %37
  %40 = load i32, ptr %35, align 4
  %41 = lshr i32 %39, 5
  %42 = add i32 %41, %40
  %43 = shl i32 %42, 2
  %44 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = call i32 @regmap_read(ptr noundef %45, i32 noundef %43, ptr noundef nonnull %8) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %34
  %49 = and i32 %39, 31
  %50 = load i32, ptr %8, align 4
  %51 = shl nuw i32 1, %49
  %52 = and i32 %50, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %77, label %54

54:                                               ; preds = %48
  %55 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 5, i32 1
  %56 = getelementptr %struct.meson_bank, ptr %21, i32 %23, i32 5, i32 1, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, %1
  %59 = load i32, ptr %24, align 4
  %60 = sub i32 %58, %59
  %61 = load i32, ptr %55, align 4
  %62 = lshr i32 %60, 5
  %63 = add i32 %62, %61
  %64 = shl i32 %63, 2
  %65 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 6
  %66 = load ptr, ptr %65, align 4
  %67 = call i32 @regmap_read(ptr noundef %66, i32 noundef %64, ptr noundef nonnull %8) #8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %54
  %70 = and i32 %60, 31
  %71 = load i32, ptr %8, align 4
  %72 = shl nuw i32 1, %70
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, i32 3, i32 5
  br label %77

76:                                               ; preds = %31, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  br label %259

77:                                               ; preds = %69, %54, %48, %34
  %78 = phi i32 [ %46, %34 ], [ %67, %54 ], [ 1, %48 ], [ %75, %69 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #8
  %79 = icmp eq i32 %78, %11
  br i1 %79, label %254, label %259

80:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #8
  store i32 0, ptr %7, align 4, !annotation !8
  %81 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 8
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %125, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 3
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %86, i32 0, i32 8
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %125, label %90

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %86, i32 0, i32 7
  %92 = load ptr, ptr %91, align 4
  br label %93

93:                                               ; preds = %102, %90
  %94 = phi i32 [ 0, %90 ], [ %103, %102 ]
  %95 = getelementptr %struct.meson_bank, ptr %92, i32 %94, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = icmp ugt i32 %96, %1
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = getelementptr %struct.meson_bank, ptr %92, i32 %94, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp ult i32 %100, %1
  br i1 %101, label %102, label %105

102:                                              ; preds = %98, %93
  %103 = add nuw i32 %94, 1
  %104 = icmp eq i32 %103, %88
  br i1 %104, label %125, label %93

105:                                              ; preds = %98
  %106 = getelementptr %struct.meson_bank, ptr %92, i32 %94, i32 5, i32 5
  %107 = getelementptr %struct.meson_bank, ptr %92, i32 %94, i32 5, i32 5, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = sub i32 %1, %96
  %110 = add i32 %109, %108
  %111 = shl i32 %110, 1
  %112 = load i32, ptr %106, align 4
  %113 = lshr i32 %111, 5
  %114 = add i32 %113, %112
  %115 = shl i32 %114, 2
  %116 = call i32 @regmap_read(ptr noundef nonnull %82, i32 noundef %115, ptr noundef nonnull %7) #8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %105
  %119 = and i32 %111, 30
  %120 = load i32, ptr %7, align 4
  %121 = lshr i32 %120, %119
  %122 = and i32 %121, 3
  %123 = getelementptr inbounds [4 x i32], ptr @switch.table.meson_pinconf_get, i32 0, i32 %122
  %124 = load i32, ptr %123, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %254

125:                                              ; preds = %105, %102, %84, %80
  %126 = phi i32 [ -524, %80 ], [ %116, %105 ], [ -22, %84 ], [ -22, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #8
  br label %259

127:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #8
  store i32 0, ptr %6, align 4, !annotation !8
  %128 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %129, i32 0, i32 8
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %162, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %129, i32 0, i32 7
  %135 = load ptr, ptr %134, align 4
  br label %136

136:                                              ; preds = %145, %133
  %137 = phi i32 [ 0, %133 ], [ %146, %145 ]
  %138 = getelementptr %struct.meson_bank, ptr %135, i32 %137, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = icmp ugt i32 %139, %1
  br i1 %140, label %145, label %141

141:                                              ; preds = %136
  %142 = getelementptr %struct.meson_bank, ptr %135, i32 %137, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %143, %1
  br i1 %144, label %145, label %148

145:                                              ; preds = %141, %136
  %146 = add nuw i32 %137, 1
  %147 = icmp eq i32 %146, %131
  br i1 %147, label %162, label %136

148:                                              ; preds = %141
  %149 = getelementptr %struct.meson_bank, ptr %135, i32 %137, i32 5, i32 2
  %150 = getelementptr %struct.meson_bank, ptr %135, i32 %137, i32 5, i32 2, i32 1
  %151 = load i32, ptr %150, align 4
  %152 = sub i32 %1, %139
  %153 = add i32 %151, %152
  %154 = load i32, ptr %149, align 4
  %155 = lshr i32 %153, 5
  %156 = add i32 %155, %154
  %157 = shl i32 %156, 2
  %158 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 7
  %159 = load ptr, ptr %158, align 4
  %160 = call i32 @regmap_read(ptr noundef %159, i32 noundef %157, ptr noundef nonnull %6) #8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %163

162:                                              ; preds = %145, %127
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %259

163:                                              ; preds = %148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  br label %259

164:                                              ; preds = %148
  %165 = and i32 %153, 31
  %166 = load i32, ptr %6, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #8
  %167 = shl nuw i32 1, %165
  %168 = and i32 %166, %167
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %254, label %259

170:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !8
  %171 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 3
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %172, i32 0, i32 8
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %205, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %172, i32 0, i32 7
  %178 = load ptr, ptr %177, align 4
  br label %179

179:                                              ; preds = %188, %176
  %180 = phi i32 [ 0, %176 ], [ %189, %188 ]
  %181 = getelementptr %struct.meson_bank, ptr %178, i32 %180, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = icmp ugt i32 %182, %1
  br i1 %183, label %188, label %184

184:                                              ; preds = %179
  %185 = getelementptr %struct.meson_bank, ptr %178, i32 %180, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = icmp ult i32 %186, %1
  br i1 %187, label %188, label %191

188:                                              ; preds = %184, %179
  %189 = add nuw i32 %180, 1
  %190 = icmp eq i32 %189, %174
  br i1 %190, label %205, label %179

191:                                              ; preds = %184
  %192 = getelementptr %struct.meson_bank, ptr %178, i32 %180, i32 5, i32 2
  %193 = getelementptr %struct.meson_bank, ptr %178, i32 %180, i32 5, i32 2, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = sub i32 %1, %182
  %196 = add i32 %194, %195
  %197 = load i32, ptr %192, align 4
  %198 = lshr i32 %196, 5
  %199 = add i32 %198, %197
  %200 = shl i32 %199, 2
  %201 = getelementptr inbounds %struct.meson_pinctrl, ptr %9, i32 0, i32 7
  %202 = load ptr, ptr %201, align 4
  %203 = call i32 @regmap_read(ptr noundef %202, i32 noundef %200, ptr noundef nonnull %5) #8
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %207, label %206

205:                                              ; preds = %188, %170
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %259

206:                                              ; preds = %191
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %259

207:                                              ; preds = %191
  %208 = and i32 %196, 31
  %209 = load i32, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %210 = shl nuw i32 1, %208
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %259

213:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %214 = load ptr, ptr %171, align 4
  %215 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %214, i32 0, i32 8
  %216 = load i32, ptr %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %251, label %218

218:                                              ; preds = %213
  %219 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %214, i32 0, i32 7
  %220 = load ptr, ptr %219, align 4
  br label %221

221:                                              ; preds = %230, %218
  %222 = phi i32 [ 0, %218 ], [ %231, %230 ]
  %223 = getelementptr %struct.meson_bank, ptr %220, i32 %222, i32 1
  %224 = load i32, ptr %223, align 4
  %225 = icmp ugt i32 %224, %1
  br i1 %225, label %230, label %226

226:                                              ; preds = %221
  %227 = getelementptr %struct.meson_bank, ptr %220, i32 %222, i32 2
  %228 = load i32, ptr %227, align 4
  %229 = icmp ult i32 %228, %1
  br i1 %229, label %230, label %233

230:                                              ; preds = %226, %221
  %231 = add nuw i32 %222, 1
  %232 = icmp eq i32 %231, %216
  br i1 %232, label %251, label %221

233:                                              ; preds = %226
  %234 = getelementptr %struct.meson_bank, ptr %220, i32 %222, i32 5, i32 3
  %235 = getelementptr %struct.meson_bank, ptr %220, i32 %222, i32 5, i32 3, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = sub i32 %1, %224
  %238 = add i32 %236, %237
  %239 = load i32, ptr %234, align 4
  %240 = lshr i32 %238, 5
  %241 = add i32 %240, %239
  %242 = shl i32 %241, 2
  %243 = load ptr, ptr %201, align 4
  %244 = call i32 @regmap_read(ptr noundef %243, i32 noundef %242, ptr noundef nonnull %4) #8
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %233
  %247 = and i32 %238, 31
  %248 = load i32, ptr %4, align 4
  %249 = lshr i32 %248, %247
  %250 = and i32 %249, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %254

251:                                              ; preds = %230, %213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  br label %259

252:                                              ; preds = %233
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  %253 = icmp slt i32 %244, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %252, %246, %164, %118, %77
  %255 = phi i32 [ 1, %77 ], [ %124, %118 ], [ 1, %164 ], [ %250, %246 ], [ %244, %252 ]
  %256 = shl i32 %255, 8
  %257 = and i32 %256, 16776960
  %258 = or i32 %257, %11
  store i32 %258, ptr %2, align 4
  br label %259

259:                                              ; preds = %254, %252, %251, %207, %206, %205, %164, %163, %162, %125, %77, %76, %3
  %260 = phi i32 [ 0, %254 ], [ -22, %77 ], [ %126, %125 ], [ -22, %164 ], [ -22, %207 ], [ -22, %252 ], [ -524, %3 ], [ -22, %76 ], [ -22, %251 ], [ -22, %163 ], [ -22, %162 ], [ -22, %206 ], [ -22, %205 ]
  ret i32 %260
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %162, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 3
  %9 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 7
  %10 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 8
  %11 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 5
  br label %15

12:                                               ; preds = %159
  %13 = add nuw i32 %16, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %162, label %15

15:                                               ; preds = %12, %7
  %16 = phi i32 [ 0, %7 ], [ %13, %12 ]
  %17 = phi i32 [ 0, %7 ], [ %24, %12 ]
  %18 = getelementptr i32, ptr %2, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  switch i8 %20, label %23 [
    i8 10, label %21
    i8 18, label %21
    i8 17, label %21
  ]

21:                                               ; preds = %15, %15, %15
  %22 = lshr i32 %19, 8
  br label %23

23:                                               ; preds = %21, %15
  %24 = phi i32 [ %17, %15 ], [ %22, %21 ]
  switch i8 %20, label %162 [
    i8 1, label %25
    i8 5, label %59
    i8 3, label %61
    i8 10, label %63
    i8 18, label %120
    i8 17, label %156
  ]

25:                                               ; preds = %23
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %26, i32 0, i32 8
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %162, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %26, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  br label %33

33:                                               ; preds = %42, %30
  %34 = phi i32 [ 0, %30 ], [ %43, %42 ]
  %35 = getelementptr %struct.meson_bank, ptr %32, i32 %34, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp ugt i32 %36, %1
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = getelementptr %struct.meson_bank, ptr %32, i32 %34, i32 2
  %40 = load i32, ptr %39, align 4
  %41 = icmp ult i32 %40, %1
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %33
  %43 = add nuw i32 %34, 1
  %44 = icmp eq i32 %43, %28
  br i1 %44, label %162, label %33

45:                                               ; preds = %38
  %46 = getelementptr %struct.meson_bank, ptr %32, i32 %34, i32 5, i32 0
  %47 = getelementptr %struct.meson_bank, ptr %32, i32 %34, i32 5, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %1, %36
  %50 = add i32 %49, %48
  %51 = load i32, ptr %46, align 4
  %52 = lshr i32 %50, 5
  %53 = add i32 %52, %51
  %54 = shl i32 %53, 2
  %55 = and i32 %50, 31
  %56 = load ptr, ptr %11, align 4
  %57 = shl nuw i32 1, %55
  %58 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %54, i32 noundef %57, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %159

59:                                               ; preds = %23
  %60 = tail call fastcc i32 @meson_pinconf_enable_bias(ptr noundef %5, i32 noundef %1, i1 noundef zeroext true)
  br label %159

61:                                               ; preds = %23
  %62 = tail call fastcc i32 @meson_pinconf_enable_bias(ptr noundef %5, i32 noundef %1, i1 noundef zeroext false)
  br label %159

63:                                               ; preds = %23
  %64 = trunc i32 %24 to i16
  %65 = load ptr, ptr %10, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.15) #9
  br label %162

69:                                               ; preds = %63
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %70, i32 0, i32 8
  %72 = load i32, ptr %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %162, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %70, i32 0, i32 7
  %76 = load ptr, ptr %75, align 4
  br label %77

77:                                               ; preds = %86, %74
  %78 = phi i32 [ 0, %74 ], [ %87, %86 ]
  %79 = getelementptr %struct.meson_bank, ptr %76, i32 %78, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp ugt i32 %80, %1
  br i1 %81, label %86, label %82

82:                                               ; preds = %77
  %83 = getelementptr %struct.meson_bank, ptr %76, i32 %78, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp ult i32 %84, %1
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %77
  %87 = add nuw i32 %78, 1
  %88 = icmp eq i32 %87, %72
  br i1 %88, label %162, label %77

89:                                               ; preds = %82
  %90 = getelementptr %struct.meson_bank, ptr %76, i32 %78, i32 5, i32 5
  %91 = getelementptr %struct.meson_bank, ptr %76, i32 %78, i32 5, i32 5, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = sub i32 %1, %80
  %94 = add i32 %93, %92
  %95 = shl i32 %94, 1
  %96 = load i32, ptr %90, align 4
  %97 = lshr i32 %95, 5
  %98 = add i32 %97, %96
  %99 = shl i32 %98, 2
  %100 = and i32 %95, 30
  %101 = and i32 %24, 65535
  %102 = icmp ult i16 %64, 501
  br i1 %102, label %114, label %103

103:                                              ; preds = %89
  %104 = icmp ult i16 %64, 2501
  br i1 %104, label %114, label %105

105:                                              ; preds = %103
  %106 = icmp ult i16 %64, 3001
  br i1 %106, label %114, label %107

107:                                              ; preds = %105
  %108 = icmp ult i16 %64, 4001
  br i1 %108, label %114, label %109

109:                                              ; preds = %107
  %110 = load i1, ptr @meson_pinconf_set_drive_strength.__print_once, align 1
  br i1 %110, label %114, label %111

111:                                              ; preds = %109
  store i1 true, ptr @meson_pinconf_set_drive_strength.__print_once, align 1
  %112 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %112, ptr noundef nonnull @.str.16, i32 noundef %1, i32 noundef %101) #9
  %113 = load ptr, ptr %10, align 4
  br label %114

114:                                              ; preds = %111, %109, %107, %105, %103, %89
  %115 = phi ptr [ %65, %89 ], [ %65, %103 ], [ %65, %105 ], [ %65, %107 ], [ %113, %111 ], [ %65, %109 ]
  %116 = phi i32 [ 0, %89 ], [ 1, %103 ], [ 2, %105 ], [ 3, %107 ], [ 3, %111 ], [ 3, %109 ]
  %117 = shl nuw i32 3, %100
  %118 = shl nuw i32 %116, %100
  %119 = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef %99, i32 noundef %117, i32 noundef %118, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %159

120:                                              ; preds = %23
  %121 = icmp eq i32 %24, 0
  %122 = load ptr, ptr %8, align 4
  %123 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %122, i32 0, i32 8
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %162, label %126

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %122, i32 0, i32 7
  %128 = load ptr, ptr %127, align 4
  br label %129

129:                                              ; preds = %138, %126
  %130 = phi i32 [ 0, %126 ], [ %139, %138 ]
  %131 = getelementptr %struct.meson_bank, ptr %128, i32 %130, i32 1
  %132 = load i32, ptr %131, align 4
  %133 = icmp ugt i32 %132, %1
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = getelementptr %struct.meson_bank, ptr %128, i32 %130, i32 2
  %136 = load i32, ptr %135, align 4
  %137 = icmp ult i32 %136, %1
  br i1 %137, label %138, label %141

138:                                              ; preds = %134, %129
  %139 = add nuw i32 %130, 1
  %140 = icmp eq i32 %139, %124
  br i1 %140, label %162, label %129

141:                                              ; preds = %134
  %142 = getelementptr %struct.meson_bank, ptr %128, i32 %130, i32 5, i32 2
  %143 = getelementptr %struct.meson_bank, ptr %128, i32 %130, i32 5, i32 2, i32 1
  %144 = load i32, ptr %143, align 4
  %145 = sub i32 %1, %132
  %146 = add i32 %144, %145
  %147 = load i32, ptr %142, align 4
  %148 = lshr i32 %146, 5
  %149 = add i32 %148, %147
  %150 = shl i32 %149, 2
  %151 = and i32 %146, 31
  %152 = load ptr, ptr %9, align 4
  %153 = shl nuw i32 1, %151
  %154 = select i1 %121, i32 %153, i32 0
  %155 = tail call i32 @regmap_update_bits_base(ptr noundef %152, i32 noundef %150, i32 noundef %153, i32 noundef %154, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %159

156:                                              ; preds = %23
  %157 = icmp ne i32 %24, 0
  %158 = tail call fastcc i32 @meson_pinconf_set_output_drive(ptr noundef %5, i32 noundef %1, i1 noundef zeroext %157)
  br label %159

159:                                              ; preds = %156, %141, %114, %61, %59, %45
  %160 = phi i32 [ %158, %156 ], [ %62, %61 ], [ %60, %59 ], [ %58, %45 ], [ %119, %114 ], [ %155, %141 ]
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %12, label %162

162:                                              ; preds = %159, %138, %120, %86, %69, %67, %42, %25, %23, %12, %4
  %163 = phi i32 [ -524, %67 ], [ 0, %4 ], [ -22, %42 ], [ -22, %86 ], [ -22, %138 ], [ %160, %159 ], [ 0, %12 ], [ -524, %23 ], [ -22, %25 ], [ -22, %69 ], [ -22, %120 ]
  ret i32 %163
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @meson_pinconf_group_get(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #7 {
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.meson_pmx_group, ptr %9, i32 %1, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %4
  %14 = getelementptr %struct.meson_pmx_group, ptr %9, i32 %1, i32 1
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i32 [ 0, %13 ], [ %21, %15 ]
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr i32, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  %20 = tail call i32 @meson_pinconf_set(ptr noundef %0, i32 noundef %19, ptr noundef %2, i32 noundef %3)
  %21 = add nuw i32 %16, 1
  %22 = load i32, ptr %10, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %15, label %24

24:                                               ; preds = %15, %4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_pinconf_enable_bias(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %57, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %57, label %12

24:                                               ; preds = %17
  %25 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 1
  %26 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 1, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %1
  %29 = sub i32 %28, %15
  %30 = load i32, ptr %25, align 4
  %31 = lshr i32 %29, 5
  %32 = add i32 %31, %30
  %33 = shl i32 %32, 2
  %34 = and i32 %29, 31
  %35 = shl nuw i32 1, %34
  %36 = select i1 %2, i32 %35, i32 0
  %37 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %33, i32 noundef %35, i32 noundef %36, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %24
  %42 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 0
  %43 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %1
  %46 = load i32, ptr %14, align 4
  %47 = sub i32 %45, %46
  %48 = load i32, ptr %42, align 4
  %49 = lshr i32 %47, 5
  %50 = add i32 %49, %48
  %51 = shl i32 %50, 2
  %52 = and i32 %47, 31
  %53 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = shl nuw i32 1, %52
  %56 = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %51, i32 noundef %55, i32 noundef %55, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %57

57:                                               ; preds = %41, %24, %21, %3
  %58 = phi i32 [ %39, %24 ], [ %56, %41 ], [ -22, %3 ], [ -22, %21 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @meson_pinconf_set_output_drive(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %75, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %75, label %12

24:                                               ; preds = %17
  %25 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 2
  %26 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %1, %15
  %29 = add i32 %27, %28
  %30 = load i32, ptr %25, align 4
  %31 = lshr i32 %29, 5
  %32 = add i32 %31, %30
  %33 = shl i32 %32, 2
  %34 = and i32 %29, 31
  %35 = getelementptr inbounds %struct.meson_pinctrl, ptr %0, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = shl nuw i32 1, %34
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %33, i32 noundef %37, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %75

40:                                               ; preds = %24
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %41, i32 0, i32 8
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %75, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %41, i32 0, i32 7
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %57, %45
  %49 = phi i32 [ 0, %45 ], [ %58, %57 ]
  %50 = getelementptr %struct.meson_bank, ptr %47, i32 %49, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = icmp ugt i32 %51, %1
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = getelementptr %struct.meson_bank, ptr %47, i32 %49, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp ult i32 %55, %1
  br i1 %56, label %57, label %60

57:                                               ; preds = %53, %48
  %58 = add nuw i32 %49, 1
  %59 = icmp eq i32 %58, %43
  br i1 %59, label %75, label %48

60:                                               ; preds = %53
  %61 = getelementptr %struct.meson_bank, ptr %47, i32 %49, i32 5, i32 3
  %62 = getelementptr %struct.meson_bank, ptr %47, i32 %49, i32 5, i32 3, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sub i32 %1, %51
  %65 = add i32 %63, %64
  %66 = load i32, ptr %61, align 4
  %67 = lshr i32 %65, 5
  %68 = add i32 %67, %66
  %69 = shl i32 %68, 2
  %70 = and i32 %65, 31
  %71 = load ptr, ptr %35, align 4
  %72 = shl nuw i32 1, %70
  %73 = select i1 %2, i32 %72, i32 0
  %74 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef %69, i32 noundef %72, i32 noundef %73, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %75

75:                                               ; preds = %60, %57, %40, %24, %21, %3
  %76 = phi i32 [ %38, %24 ], [ %74, %60 ], [ -22, %40 ], [ -22, %3 ], [ -22, %57 ], [ -22, %21 ]
  ret i32 %76
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_get_direction(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %22, %10
  %14 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %15 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %44, label %13

25:                                               ; preds = %18
  %26 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 5, i32 2
  %27 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 5, i32 2, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %1, %16
  %30 = add i32 %28, %29
  %31 = load i32, ptr %26, align 4
  %32 = lshr i32 %30, 5
  %33 = add i32 %32, %31
  %34 = shl i32 %33, 2
  %35 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 @regmap_read(ptr noundef %36, i32 noundef %34, ptr noundef nonnull %3) #8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = and i32 %30, 31
  %41 = load i32, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %42 = lshr i32 %41, %40
  %43 = and i32 %42, 1
  br label %49

44:                                               ; preds = %22, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  br label %47

45:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  %46 = icmp slt i32 %37, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %45, %44
  %48 = phi i32 [ -22, %44 ], [ %37, %45 ]
  br label %49

49:                                               ; preds = %47, %45, %39
  %50 = phi i32 [ %48, %47 ], [ %43, %39 ], [ 1, %45 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %5, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = icmp ult i32 %19, %1
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %39, label %12

24:                                               ; preds = %17
  %25 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 2
  %26 = getelementptr %struct.meson_bank, ptr %11, i32 %13, i32 5, i32 2, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %1, %15
  %29 = add i32 %27, %28
  %30 = load i32, ptr %25, align 4
  %31 = lshr i32 %29, 5
  %32 = add i32 %31, %30
  %33 = shl i32 %32, 2
  %34 = and i32 %29, 31
  %35 = getelementptr inbounds %struct.meson_pinctrl, ptr %3, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = shl nuw i32 1, %34
  %38 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %33, i32 noundef %37, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %39

39:                                               ; preds = %24, %21, %2
  %40 = phi i32 [ %38, %24 ], [ -22, %2 ], [ -22, %21 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = icmp ne i32 %2, 0
  %6 = tail call fastcc i32 @meson_pinconf_set_output_drive(ptr noundef %4, i32 noundef %1, i1 noundef zeroext %5)
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 8
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %42, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %6, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %22, %10
  %14 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %15 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp ugt i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, %1
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %42, label %13

25:                                               ; preds = %18
  %26 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 5, i32 4
  %27 = getelementptr %struct.meson_bank, ptr %12, i32 %14, i32 5, i32 4, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %1
  %30 = sub i32 %29, %16
  %31 = load i32, ptr %26, align 4
  %32 = lshr i32 %30, 5
  %33 = add i32 %32, %31
  %34 = shl i32 %33, 2
  %35 = and i32 %30, 31
  %36 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 7
  %37 = load ptr, ptr %36, align 4
  %38 = call i32 @regmap_read(ptr noundef %37, i32 noundef %34, ptr noundef nonnull %3) #8
  %39 = load i32, ptr %3, align 4
  %40 = lshr i32 %39, %35
  %41 = and i32 %40, 1
  br label %42

42:                                               ; preds = %25, %22, %2
  %43 = phi i32 [ %41, %25 ], [ -22, %2 ], [ -22, %22 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = icmp eq i32 %2, 0
  %6 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %42, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.meson_pinctrl_data, ptr %7, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %23, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %23 ]
  %16 = getelementptr %struct.meson_bank, ptr %13, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp ugt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.meson_bank, ptr %13, i32 %15, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = icmp ult i32 %21, %1
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = icmp eq i32 %24, %9
  br i1 %25, label %42, label %14

26:                                               ; preds = %19
  %27 = getelementptr %struct.meson_bank, ptr %13, i32 %15, i32 5, i32 3
  %28 = getelementptr %struct.meson_bank, ptr %13, i32 %15, i32 5, i32 3, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %1, %17
  %31 = add i32 %29, %30
  %32 = load i32, ptr %27, align 4
  %33 = lshr i32 %31, 5
  %34 = add i32 %33, %32
  %35 = shl i32 %34, 2
  %36 = and i32 %31, 31
  %37 = getelementptr inbounds %struct.meson_pinctrl, ptr %4, i32 0, i32 7
  %38 = load ptr, ptr %37, align 4
  %39 = shl nuw i32 1, %36
  %40 = select i1 %5, i32 0, i32 %39
  %41 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %35, i32 noundef %39, i32 noundef %40, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %42

42:                                               ; preds = %26, %23, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
