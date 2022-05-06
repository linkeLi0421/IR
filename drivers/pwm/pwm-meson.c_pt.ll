; ModuleID = '/llk/IR/drivers/pwm/pwm-meson.c_pt.bc'
source_filename = "../drivers/pwm/pwm-meson.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.meson_pwm_data = type { ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.meson_pwm_channel_data = type { i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.meson_pwm = type { %struct.pwm_chip, ptr, [2 x %struct.meson_pwm_channel], ptr, %struct.spinlock }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.meson_pwm_channel = type { i32, i32, i8, ptr, %struct.clk_mux, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }

@meson_pwm_matches = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_meson8b_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_gxbb_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-gxbb-ao-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_gxbb_ao_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-ee-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_axg_ee_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-axg-ao-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_axg_ao_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ee-pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ee_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ao-pwm-ab\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ao_ab_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson-g12a-ao-pwm-cd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwm_g12a_ao_cd_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description191 = internal constant [47 x i8] c"description=Amlogic Meson PWM Generator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [48 x i8] c"author=Neil Armstrong <narmstrong@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [21 x i8] c"license=Dual BSD/GPL\00", section ".modinfo", align 1
@pwm_meson8b_data = internal constant %struct.meson_pwm_data { ptr @pwm_meson8b_parent_names, i32 4 }, align 4
@pwm_gxbb_data = internal constant %struct.meson_pwm_data { ptr @pwm_gxbb_parent_names, i32 4 }, align 4
@pwm_gxbb_ao_data = internal constant %struct.meson_pwm_data { ptr @pwm_gxbb_ao_parent_names, i32 2 }, align 4
@pwm_axg_ee_data = internal constant %struct.meson_pwm_data { ptr @pwm_axg_ee_parent_names, i32 4 }, align 4
@pwm_axg_ao_data = internal constant %struct.meson_pwm_data { ptr @pwm_axg_ao_parent_names, i32 4 }, align 4
@pwm_g12a_ee_data = internal constant %struct.meson_pwm_data { ptr @pwm_g12a_ee_parent_names, i32 4 }, align 4
@pwm_g12a_ao_ab_data = internal constant %struct.meson_pwm_data { ptr @pwm_g12a_ao_ab_parent_names, i32 4 }, align 4
@pwm_g12a_ao_cd_data = internal constant %struct.meson_pwm_data { ptr @pwm_g12a_ao_cd_parent_names, i32 2 }, align 4
@pwm_meson8b_parent_names = internal constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 4
@.str = private unnamed_addr constant [5 x i8] c"xtal\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"vid_pll\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fclk_div4\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fclk_div3\00", align 1
@pwm_gxbb_parent_names = internal constant [4 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"hdmi_pll\00", align 1
@pwm_gxbb_ao_parent_names = internal constant [2 x ptr] [ptr @.str, ptr @.str.5], align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"clk81\00", align 1
@pwm_axg_ee_parent_names = internal constant [4 x ptr] [ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.3], align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"fclk_div5\00", align 1
@pwm_axg_ao_parent_names = internal constant [4 x ptr] [ptr @.str.7, ptr @.str, ptr @.str.2, ptr @.str.6], align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"aoclk81\00", align 1
@pwm_g12a_ee_parent_names = internal constant [4 x ptr] [ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.3], align 4
@pwm_g12a_ao_ab_parent_names = internal constant [4 x ptr] [ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.6], align 4
@pwm_g12a_ao_cd_parent_names = internal constant [2 x ptr] [ptr @.str, ptr @.str.7], align 4
@meson_pwm_driver = internal global %struct.platform_driver { ptr @meson_pwm_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_pwm_matches, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.8 = private unnamed_addr constant [10 x i8] c"meson-pwm\00", align 1
@meson_pwm_ops = internal constant %struct.pwm_ops { ptr @meson_pwm_request, ptr @meson_pwm_free, ptr null, ptr @meson_pwm_apply, ptr @meson_pwm_get_state, ptr @__this_module, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"failed to register PWM chip: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"failed to set parent %s for %s: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to enable clock %s: %d\0A\00", align 1
@meson_pwm_per_channel_data = internal unnamed_addr constant [2 x %struct.meson_pwm_channel_data] [%struct.meson_pwm_channel_data { i8 0, i8 4, i8 8, i32 32768, i32 1 }, %struct.meson_pwm_channel_data { i8 4, i8 6, i8 16, i32 8388608, i32 2 }], align 4
@.str.12 = private unnamed_addr constant [32 x i8] c"invalid source clock frequency\0A\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"unable to get period pre_div\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"unable to get period cnt\0A\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"unable to get duty cycle\0A\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%s#mux%u\00", align 1
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to register %s: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"clkin%u\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_license193], section "llvm.metadata"

@__mod_of__meson_pwm_matches_device_table = dso_local alias [9 x %struct.of_device_id], ptr @meson_pwm_matches

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_pwm_driver, ptr noundef nonnull @__this_module) #7
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_pwm_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pwm_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.clk_init_data, align 4
  %3 = alloca [255 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 152, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %74, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #7
  %9 = getelementptr inbounds %struct.meson_pwm, ptr %5, i32 0, i32 3
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %74

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.meson_pwm, ptr %5, i32 0, i32 4
  store i32 0, ptr %14, align 4
  store ptr %4, ptr %5, align 4
  %15 = getelementptr inbounds %struct.pwm_chip, ptr %5, i32 0, i32 1
  store ptr @meson_pwm_ops, ptr %15, align 4
  %16 = getelementptr inbounds %struct.pwm_chip, ptr %5, i32 0, i32 3
  store i32 2, ptr %16, align 4
  %17 = tail call ptr @of_device_get_match_data(ptr noundef %4) #7
  %18 = getelementptr inbounds %struct.meson_pwm, ptr %5, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %2) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %2, i8 0, i32 28, i1 false) #7, !annotation !8
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(255) %3, i8 0, i32 255, i1 false) #7, !annotation !8
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %20 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 1
  %21 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 6
  %22 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 2
  %23 = getelementptr inbounds %struct.clk_init_data, ptr %2, i32 0, i32 5
  br label %28

24:                                               ; preds = %59
  %25 = add nuw i32 %29, 1
  %26 = load i32, ptr %16, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24, %13
  %29 = phi i32 [ 0, %13 ], [ %25, %24 ]
  %30 = load ptr, ptr %19, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 4
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi ptr [ %33, %32 ], [ %30, %28 ]
  %36 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull @.str.16, ptr noundef %35, i32 noundef %29) #7
  store ptr %3, ptr %2, align 4
  store ptr @clk_mux_ops, ptr %20, align 4
  store i32 0, ptr %21, align 4
  %37 = load ptr, ptr %18, align 4
  %38 = load ptr, ptr %37, align 4
  store ptr %38, ptr %22, align 4
  %39 = getelementptr inbounds %struct.meson_pwm_data, ptr %37, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = trunc i32 %40 to i8
  store i8 %41, ptr %23, align 4
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  %44 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4
  %45 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 1
  store ptr %43, ptr %45, align 4
  %46 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %29, i32 1
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 4
  store i8 %47, ptr %48, align 4
  %49 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 3
  store i32 3, ptr %49, align 4
  %50 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 5
  store i8 0, ptr %50, align 1
  %51 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 6
  store ptr %14, ptr %51, align 4
  %52 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 4, i32 2
  store ptr null, ptr %52, align 4
  %53 = getelementptr inbounds %struct.clk_hw, ptr %44, i32 0, i32 2
  store ptr %2, ptr %53, align 4
  %54 = call ptr @devm_clk_register(ptr noundef %4, ptr noundef %44) #7
  %55 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 5
  store ptr %54, ptr %55, align 4
  %56 = icmp ugt ptr %54, inttoptr (i32 -4096 to ptr)
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = ptrtoint ptr %54 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17, ptr noundef nonnull %3, i32 noundef %58) #8
  br label %67

59:                                               ; preds = %34
  %60 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull @.str.18, i32 noundef %29) #7
  %61 = call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef nonnull %3) #7
  %62 = getelementptr %struct.meson_pwm, ptr %5, i32 0, i32 2, i32 %29, i32 3
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %24

64:                                               ; preds = %59
  %65 = ptrtoint ptr %61 to i32
  br label %67

66:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  br label %70

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %65, %64 ], [ %58, %57 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %2) #7
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %67, %66
  %71 = call i32 @devm_pwmchip_add(ptr noundef %4, ptr noundef nonnull %5) #7
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9, i32 noundef %71) #8
  br label %74

74:                                               ; preds = %73, %70, %67, %11, %1
  %75 = phi i32 [ %12, %11 ], [ %71, %73 ], [ -12, %1 ], [ %68, %67 ], [ 0, %70 ]
  ret i32 %75
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pwmchip_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pwm_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %40

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %8
  %10 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %8, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %6
  %14 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %8, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = tail call i32 @clk_set_parent(ptr noundef %15, ptr noundef nonnull %11) #7
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load ptr, ptr %10, align 4
  %20 = tail call ptr @__clk_get_name(ptr noundef %19) #7
  %21 = load ptr, ptr %14, align 4
  %22 = tail call ptr @__clk_get_name(ptr noundef %21) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, ptr noundef %20, ptr noundef %22, i32 noundef %16) #8
  br label %40

23:                                               ; preds = %13, %6
  %24 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %8, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = tail call i32 @clk_enable(ptr noundef %25) #7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #7
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi i32 [ %26, %23 ], [ %29, %31 ]
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load ptr, ptr %24, align 4
  %37 = tail call ptr @__clk_get_name(ptr noundef %36) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %37, i32 noundef %33) #8
  br label %40

38:                                               ; preds = %32, %28
  %39 = tail call i32 @pwm_set_chip_data(ptr noundef %1, ptr noundef %9) #7
  br label %40

40:                                               ; preds = %38, %35, %18, %2
  %41 = phi i32 [ %16, %18 ], [ %33, %35 ], [ %39, %38 ], [ 0, %2 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_pwm_free(ptr nocapture noundef readnone %0, ptr noundef %1) #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.meson_pwm_channel, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @meson_pwm_apply(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) #2 {
  %4 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %5 = icmp eq ptr %2, null
  br i1 %5, label %93, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %8 = load i8, ptr %7, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.meson_pwm_channel, ptr %4, i32 0, i32 2
  store i8 0, ptr %15, align 4
  store i32 -1, ptr %4, align 4
  %16 = getelementptr inbounds %struct.meson_pwm_channel, ptr %4, i32 0, i32 1
  store i32 0, ptr %16, align 4
  tail call fastcc void @meson_pwm_enable(ptr noundef %0, ptr noundef %1)
  br label %93

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.meson_pwm, ptr %0, i32 0, i32 4
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.meson_pwm, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !11
  %24 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %25, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %23, %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !12
  tail call void @arm_heavy_mb() #7
  %30 = load ptr, ptr %20, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %19) #7
  br label %93

32:                                               ; preds = %6
  %33 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %34 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %2, align 8
  %38 = trunc i64 %37 to i32
  %39 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 2
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 1
  %42 = sub i32 %38, %36
  %43 = select i1 %41, i32 %42, i32 %36
  %44 = getelementptr inbounds %struct.meson_pwm_channel, ptr %33, i32 0, i32 5
  %45 = load ptr, ptr %44, align 4
  %46 = tail call i32 @clk_get_rate(ptr noundef %45) #7
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.12) #8
  br label %93

50:                                               ; preds = %32
  %51 = zext i32 %46 to i64
  %52 = and i64 %37, 4294967295
  %53 = mul nuw i64 %52, %51
  %54 = tail call i64 @div64_u64(i64 noundef %53, i64 noundef 65535000000000) #7
  %55 = trunc i64 %54 to i32
  %56 = icmp ugt i32 %55, 127
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.13) #8
  br label %93

59:                                               ; preds = %50
  %60 = mul i32 %55, 1000000000
  %61 = add i32 %60, 1000000000
  %62 = zext i32 %61 to i64
  %63 = tail call i64 @div64_u64(i64 noundef %53, i64 noundef %62) #7
  %64 = trunc i64 %63 to i32
  %65 = icmp ugt i32 %64, 65535
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.14) #8
  br label %93

68:                                               ; preds = %59
  %69 = icmp eq i32 %43, %38
  br i1 %69, label %70, label %73

70:                                               ; preds = %68
  %71 = trunc i64 %54 to i8
  %72 = getelementptr inbounds %struct.meson_pwm_channel, ptr %33, i32 0, i32 2
  store i8 %71, ptr %72, align 4
  store i32 %64, ptr %33, align 4
  br label %90

73:                                               ; preds = %68
  %74 = icmp eq i32 %43, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = trunc i64 %54 to i8
  %77 = getelementptr inbounds %struct.meson_pwm_channel, ptr %33, i32 0, i32 2
  store i8 %76, ptr %77, align 4
  store i32 0, ptr %33, align 4
  br label %90

78:                                               ; preds = %73
  %79 = zext i32 %43 to i64
  %80 = mul nuw i64 %51, %79
  %81 = tail call i64 @div64_u64(i64 noundef %80, i64 noundef %62) #7
  %82 = trunc i64 %81 to i32
  %83 = icmp ugt i32 %82, 65535
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.15) #8
  br label %93

86:                                               ; preds = %78
  %87 = trunc i64 %54 to i8
  %88 = getelementptr inbounds %struct.meson_pwm_channel, ptr %33, i32 0, i32 2
  store i8 %87, ptr %88, align 4
  store i32 %82, ptr %33, align 4
  %89 = sub nsw i32 %64, %82
  br label %90

90:                                               ; preds = %86, %75, %70
  %91 = phi i32 [ %89, %86 ], [ %64, %75 ], [ 0, %70 ]
  %92 = getelementptr inbounds %struct.meson_pwm_channel, ptr %33, i32 0, i32 1
  store i32 %91, ptr %92, align 4
  tail call fastcc void @meson_pwm_enable(ptr noundef %0, ptr noundef %1)
  br label %93

93:                                               ; preds = %90, %84, %66, %57, %48, %17, %14, %3
  %94 = phi i32 [ -22, %3 ], [ 0, %14 ], [ 0, %17 ], [ 0, %90 ], [ -22, %48 ], [ -22, %57 ], [ -22, %66 ], [ -22, %84 ]
  ret i32 %94
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @meson_pwm_get_state(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #2 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %7
  %9 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %7
  %10 = getelementptr inbounds %struct.meson_pwm, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !14
  %14 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %7, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %7, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  %19 = and i32 %18, %13
  %20 = icmp eq i32 %19, %18
  %21 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 3
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 4
  %23 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %7, i32 2
  %24 = load i8, ptr %23, align 2
  %25 = zext i8 %24 to i32
  %26 = lshr i32 %13, %25
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 127
  %29 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %7, i32 2
  store i8 %28, ptr %29, align 4
  %30 = load ptr, ptr %10, align 4
  %31 = load i8, ptr %9, align 4
  %32 = zext i8 %31 to i32
  %33 = getelementptr i8, ptr %30, i32 %32
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %35 = and i32 %34, 65535
  %36 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %7, i32 1
  store i32 %35, ptr %36, align 4
  %37 = lshr i32 %34, 16
  store i32 %37, ptr %8, align 4
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %5
  %40 = load i32, ptr %6, align 8
  %41 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %40, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = tail call i32 @clk_get_rate(ptr noundef %42) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = udiv i32 1000000000, %43
  %47 = mul i32 %46, %37
  %48 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %40, i32 2
  %49 = load i8, ptr %48, align 4
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, 1
  %52 = mul i32 %47, %51
  br label %53

53:                                               ; preds = %45, %39
  %54 = phi i32 [ %52, %45 ], [ 0, %39 ]
  %55 = zext i32 %54 to i64
  store i64 %55, ptr %2, align 8
  %56 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %55, ptr %56, align 8
  br label %96

57:                                               ; preds = %5
  %58 = icmp ult i32 %35, %37
  br i1 %58, label %95, label %59

59:                                               ; preds = %57
  %60 = load i32, ptr %6, align 8
  %61 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %60, i32 5
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @clk_get_rate(ptr noundef %62) #7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %59
  %66 = add nuw nsw i32 %35, %37
  %67 = udiv i32 1000000000, %63
  %68 = mul i32 %67, %66
  %69 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %60, i32 2
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = add nuw nsw i32 %71, 1
  %73 = mul i32 %68, %72
  br label %74

74:                                               ; preds = %65, %59
  %75 = phi i32 [ %73, %65 ], [ 0, %59 ]
  %76 = zext i32 %75 to i64
  store i64 %76, ptr %2, align 8
  %77 = load i32, ptr %8, align 4
  %78 = load i32, ptr %6, align 8
  %79 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %78, i32 5
  %80 = load ptr, ptr %79, align 4
  %81 = tail call i32 @clk_get_rate(ptr noundef %80) #7
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %74
  %84 = udiv i32 1000000000, %81
  %85 = mul i32 %84, %77
  %86 = getelementptr %struct.meson_pwm, ptr %0, i32 0, i32 2, i32 %78, i32 2
  %87 = load i8, ptr %86, align 4
  %88 = zext i8 %87 to i32
  %89 = add nuw nsw i32 %88, 1
  %90 = mul i32 %85, %89
  br label %91

91:                                               ; preds = %83, %74
  %92 = phi i32 [ %90, %83 ], [ 0, %74 ]
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.pwm_state, ptr %2, i32 0, i32 1
  store i64 %93, ptr %94, align 8
  br label %96

95:                                               ; preds = %57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br label %96

96:                                               ; preds = %95, %91, %53, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwm_get_chip_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_set_chip_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @meson_pwm_enable(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @pwm_get_chip_data(ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.pwm_device, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 8
  %6 = getelementptr inbounds %struct.meson_pwm, ptr %0, i32 0, i32 4
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #7
  %8 = getelementptr inbounds %struct.meson_pwm, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %9, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !16
  %12 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %5, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = zext i8 %13 to i32
  %15 = shl i32 127, %14
  %16 = xor i32 %15, -1
  %17 = and i32 %11, %16
  %18 = getelementptr inbounds %struct.meson_pwm_channel, ptr %3, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, %14
  %22 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %5, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %21, %23
  %25 = or i32 %24, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %8, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #7, !srcloc !13
  %28 = load i32, ptr %3, align 4
  %29 = getelementptr inbounds %struct.meson_pwm_channel, ptr %3, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %28, 16
  %32 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %5
  %33 = and i32 %30, 65535
  %34 = or i32 %33, %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %8, align 4
  %36 = load i8, ptr %32, align 4
  %37 = zext i8 %36 to i32
  %38 = getelementptr i8, ptr %35, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %34) #7, !srcloc !13
  %39 = load ptr, ptr %8, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #7, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !19
  %42 = getelementptr [2 x %struct.meson_pwm_channel_data], ptr @meson_pwm_per_channel_data, i32 0, i32 %5, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = or i32 %43, %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %45 = load ptr, ptr %8, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #7, !srcloc !13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 2914490}
!11 = !{i64 2151700629}
!12 = !{i64 2151700820}
!13 = !{i64 2914072}
!14 = !{i64 2151701306}
!15 = !{i64 2151719171}
!16 = !{i64 2151618366}
!17 = !{i64 2151618562}
!18 = !{i64 2151699119}
!19 = !{i64 2151699611}
!20 = !{i64 2151699802}
