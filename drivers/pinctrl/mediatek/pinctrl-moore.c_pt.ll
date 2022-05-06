; ModuleID = '/llk/IR/drivers/pinctrl/mediatek/pinctrl-moore.c_pt.bc'
source_filename = "../drivers/pinctrl/mediatek/pinctrl-moore.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mtk_pinctrl = type { ptr, ptr, i8, ptr, %struct.gpio_chip, ptr, ptr, ptr, ptr, %struct.spinlock, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.mtk_pin_soc = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, i8, i8, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pin_desc = type { i32, ptr, %struct.mtk_eint_desc, i8, ptr }
%struct.mtk_eint_desc = type { i16, i16 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.function_desc = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [51 x i8] c"SoC should be assigned at least one register base\0A\00", align 1
@mtk_desc = internal global %struct.pinctrl_desc { ptr @.str.5, ptr null, i32 0, ptr @mtk_pctlops, ptr @mtk_pmxops, ptr @mtk_confops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@mtk_custom_bindings = internal constant [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.6, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.7, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.8, i32 130, i32 1 }, %struct.pinconf_generic_params { ptr @.str.9, i32 131, i32 1 }], align 4
@mtk_conf_items = internal constant [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.10, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.11, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.12, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.13, ptr null, i8 1 }], align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to build groups\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to build functions\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Failed to add EINT, but pinctrl still can work\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Failed to add gpio_chip\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"pinctrl_moore\00", align 1
@mtk_pctlops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinconf_generic_dt_free_map }, align 4
@mtk_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @mtk_pinmux_set_mux, ptr @mtk_pinmux_gpio_request_enable, ptr null, ptr @mtk_pinmux_gpio_set_direction, i8 1 }, align 4
@mtk_confops = internal constant %struct.pinconf_ops { i8 1, ptr @mtk_pinconf_get, ptr @mtk_pinconf_set, ptr @mtk_pinconf_group_get, ptr @mtk_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"mediatek,tdsel\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"mediatek,rdsel\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"mediatek,pull-up-adv\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"mediatek,pull-down-adv\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"tdsel\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"rdsel\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"pu-adv\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"pd-adv\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Failed to register group %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Failed to register function %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Failed to set gpio %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mtk_moore_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 344, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %159, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  store ptr %1, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 3
  store ptr %3, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mtk_pin_soc, ptr %1, i32 0, i32 12
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  br label %159

13:                                               ; preds = %6
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 4) #6
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %16, label %18, !prof !8

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  store ptr null, ptr %17, align 4
  br label %159

18:                                               ; preds = %13
  %19 = extractvalue { i32, i1 } %14, 0
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %19, i32 noundef 3264) #6
  %21 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %159, label %23

23:                                               ; preds = %18
  %24 = load i32, ptr %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %50, label %32

26:                                               ; preds = %32
  %27 = add nuw i32 %35, 1
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.mtk_pin_soc, ptr %28, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26, %23
  %33 = phi ptr [ %42, %26 ], [ %20, %23 ]
  %34 = phi ptr [ %28, %26 ], [ %1, %23 ]
  %35 = phi i32 [ %27, %26 ], [ 0, %23 ]
  %36 = getelementptr inbounds %struct.mtk_pin_soc, ptr %34, i32 0, i32 11
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr ptr, ptr %37, i32 %35
  %39 = load ptr, ptr %38, align 4
  %40 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %0, ptr noundef %39) #6
  %41 = getelementptr ptr, ptr %33, i32 %35
  store ptr %40, ptr %41, align 4
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr ptr, ptr %42, i32 %35
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %26

46:                                               ; preds = %32
  %47 = ptrtoint ptr %44 to i32
  br label %159

48:                                               ; preds = %26
  %49 = trunc i32 %30 to i8
  br label %50

50:                                               ; preds = %48, %23
  %51 = phi ptr [ %1, %23 ], [ %28, %48 ]
  %52 = phi i8 [ 0, %23 ], [ %49, %48 ]
  %53 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 2
  store i8 %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 9
  store i32 0, ptr %54, align 4
  %55 = getelementptr inbounds %struct.mtk_pin_soc, ptr %51, i32 0, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %56, i32 12) #6
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %159, label %59, !prof !8

59:                                               ; preds = %50
  %60 = extractvalue { i32, i1 } %57, 0
  %61 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %60, i32 noundef 3264) #6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %159, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %55, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.mtk_pin_soc, ptr %51, i32 0, i32 1
  br label %68

68:                                               ; preds = %68, %66
  %69 = phi i32 [ 0, %66 ], [ %78, %68 ]
  %70 = load ptr, ptr %67, align 4
  %71 = getelementptr %struct.mtk_pin_desc, ptr %70, i32 %69
  %72 = load i32, ptr %71, align 4
  %73 = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %69
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %67, align 4
  %75 = getelementptr %struct.mtk_pin_desc, ptr %74, i32 %69, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr %struct.pinctrl_pin_desc, ptr %61, i32 %69, i32 1
  store ptr %76, ptr %77, align 4
  %78 = add nuw i32 %69, 1
  %79 = load i32, ptr %55, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %68, label %81

81:                                               ; preds = %68, %63
  %82 = phi i32 [ 0, %63 ], [ %79, %68 ]
  store ptr %61, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 1), align 4
  store i32 %82, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 2), align 4
  store i32 4, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 7), align 4
  store ptr @mtk_custom_bindings, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 8), align 4
  store ptr @mtk_conf_items, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @mtk_desc, i32 0, i32 9), align 4
  %83 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %3, ptr noundef nonnull @mtk_desc, ptr noundef nonnull %4, ptr noundef nonnull %4) #6
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %159

85:                                               ; preds = %81
  %86 = load ptr, ptr %7, align 4
  %87 = getelementptr inbounds %struct.mtk_pin_soc, ptr %86, i32 0, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %115, label %96

90:                                               ; preds = %96
  %91 = add nuw i32 %98, 1
  %92 = load ptr, ptr %7, align 4
  %93 = getelementptr inbounds %struct.mtk_pin_soc, ptr %92, i32 0, i32 4
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %90, %85
  %97 = phi ptr [ %92, %90 ], [ %86, %85 ]
  %98 = phi i32 [ %91, %90 ], [ 0, %85 ]
  %99 = getelementptr inbounds %struct.mtk_pin_soc, ptr %97, i32 0, i32 3
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr %struct.group_desc, ptr %100, i32 %98
  %102 = load ptr, ptr %4, align 4
  %103 = load ptr, ptr %101, align 4
  %104 = getelementptr %struct.group_desc, ptr %100, i32 %98, i32 1
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr %struct.group_desc, ptr %100, i32 %98, i32 2
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr %struct.group_desc, ptr %100, i32 %98, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = tail call i32 @pinctrl_generic_add_group(ptr noundef %102, ptr noundef %103, ptr noundef %105, i32 noundef %107, ptr noundef %109) #6
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %90

112:                                              ; preds = %96
  %113 = load ptr, ptr %8, align 4
  %114 = load ptr, ptr %101, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.14, ptr noundef %114) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %159

115:                                              ; preds = %90, %85
  %116 = phi ptr [ %86, %85 ], [ %92, %90 ]
  %117 = getelementptr inbounds %struct.mtk_pin_soc, ptr %116, i32 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %145, label %126

120:                                              ; preds = %126
  %121 = add nuw i32 %128, 1
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr inbounds %struct.mtk_pin_soc, ptr %122, i32 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %120, %115
  %127 = phi ptr [ %122, %120 ], [ %116, %115 ]
  %128 = phi i32 [ %121, %120 ], [ 0, %115 ]
  %129 = getelementptr inbounds %struct.mtk_pin_soc, ptr %127, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = getelementptr %struct.function_desc, ptr %130, i32 %128
  %132 = load ptr, ptr %4, align 4
  %133 = load ptr, ptr %131, align 4
  %134 = getelementptr %struct.function_desc, ptr %130, i32 %128, i32 1
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr %struct.function_desc, ptr %130, i32 %128, i32 2
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.function_desc, ptr %130, i32 %128, i32 3
  %139 = load ptr, ptr %138, align 4
  %140 = tail call i32 @pinmux_generic_add_function(ptr noundef %132, ptr noundef %133, ptr noundef %135, i32 noundef %137, ptr noundef %139) #6
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %120

142:                                              ; preds = %126
  %143 = load ptr, ptr %8, align 4
  %144 = load ptr, ptr %131, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.15, ptr noundef %144) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  br label %159

145:                                              ; preds = %120, %115
  %146 = load ptr, ptr %4, align 4
  %147 = tail call i32 @pinctrl_enable(ptr noundef %146) #6
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %145
  %150 = tail call i32 @mtk_build_eint(ptr noundef nonnull %4, ptr noundef %0) #6
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %149
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.3) #7
  br label %153

153:                                              ; preds = %152, %149
  %154 = tail call fastcc i32 @mtk_build_gpiochip(ptr noundef nonnull %4)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #7
  br label %159

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %158, align 8
  br label %159

159:                                              ; preds = %157, %156, %145, %142, %112, %81, %59, %50, %46, %18, %16, %12, %2
  %160 = phi i32 [ %47, %46 ], [ %110, %112 ], [ %140, %142 ], [ %154, %156 ], [ 0, %157 ], [ -22, %12 ], [ -12, %2 ], [ -12, %18 ], [ -12, %59 ], [ %83, %81 ], [ %147, %145 ], [ -12, %16 ], [ -12, %50 ]
  ret i32 %160
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_build_eint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mtk_build_gpiochip(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4
  store ptr @.str.5, ptr %2, align 4
  %3 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 2
  store ptr %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 5
  store ptr @gpiochip_generic_request, ptr %6, align 4
  %7 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 6
  store ptr @gpiochip_generic_free, ptr %7, align 4
  %8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 8
  store ptr @mtk_gpio_direction_input, ptr %8, align 4
  %9 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 9
  store ptr @mtk_gpio_direction_output, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 10
  store ptr @mtk_gpio_get, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 12
  store ptr @mtk_gpio_set, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 15
  store ptr @mtk_gpio_to_irq, ptr %12, align 4
  %13 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 14
  store ptr @mtk_gpio_set_config, ptr %13, align 4
  %14 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 19
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.mtk_pin_soc, ptr %16, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 20
  store i16 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mtk_pinctrl, ptr %0, i32 0, i32 4, i32 40
  store i32 2, ptr %21, align 4
  %22 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %2, ptr noundef %0, ptr noundef null, ptr noundef null) #6
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %1
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = tail call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = phi ptr [ %36, %35 ], [ %33, %30 ]
  %39 = load i16, ptr %20, align 4
  %40 = zext i16 %39 to i32
  %41 = tail call i32 @gpiochip_add_pin_range(ptr noundef %2, ptr noundef %38, i32 noundef 0, i32 noundef 0, i32 noundef %40) #6
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  tail call void @gpiochip_remove(ptr noundef %2) #6
  br label %44

44:                                               ; preds = %43, %37, %24, %1
  %45 = phi i32 [ %41, %43 ], [ %22, %1 ], [ 0, %37 ], [ 0, %24 ]
  ret i32 %45
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %1) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %2) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.group_desc, ptr %8, i32 0, i32 1
  %12 = getelementptr inbounds %struct.group_desc, ptr %8, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %17 = getelementptr inbounds %struct.group_desc, ptr %8, i32 0, i32 3
  br label %18

18:                                               ; preds = %29, %15
  %19 = phi i32 [ 0, %15 ], [ %35, %29 ]
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i32, ptr %20, i32 %19
  %22 = load i32, ptr %21, align 4
  %23 = load ptr, ptr %16, align 4
  %24 = getelementptr inbounds %struct.mtk_pin_soc, ptr %23, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.mtk_pin_desc, ptr %25, i32 %22, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %18
  %30 = getelementptr %struct.mtk_pin_desc, ptr %25, i32 %22
  %31 = load ptr, ptr %17, align 4
  %32 = getelementptr i32, ptr %31, i32 %19
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @mtk_hw_set_value(ptr noundef %4, ptr noundef %30, i32 noundef 0, i32 noundef %33) #6
  %35 = add nuw nsw i32 %19, 1
  %36 = load i32, ptr %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %18, label %38

38:                                               ; preds = %29, %18, %10, %7, %3
  %39 = phi i32 [ -22, %3 ], [ -22, %7 ], [ 0, %10 ], [ 0, %29 ], [ -524, %18 ]
  ret i32 %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_gpio_request_enable(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %2, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %2
  %14 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 9
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = tail call i32 @mtk_hw_set_value(ptr noundef %4, ptr noundef %13, i32 noundef 0, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i32 [ %17, %12 ], [ -524, %3 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinmux_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %2, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %2
  %15 = xor i1 %3, true
  %16 = zext i1 %15 to i32
  %17 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %14, i32 noundef 1, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %13, %4
  %19 = phi i32 [ %17, %13 ], [ -524, %4 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_set_value(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %8 = load i32, ptr %2, align 4
  %9 = and i32 %8, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store i32 0, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 1, ptr %6, align 4
  %10 = getelementptr inbounds %struct.mtk_pinctrl, ptr %7, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.mtk_pin_desc, ptr %13, i32 %1
  %15 = getelementptr %struct.mtk_pin_desc, ptr %13, i32 %1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %97, label %18

18:                                               ; preds = %3
  %19 = trunc i32 %8 to i8
  switch i8 %19, label %97 [
    i8 1, label %20
    i8 5, label %27
    i8 3, label %34
    i8 24, label %41
    i8 12, label %47
    i8 18, label %47
    i8 14, label %59
    i8 9, label %71
    i8 -128, label %78
    i8 -127, label %78
    i8 -126, label %85
    i8 -125, label %85
  ]

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %97, label %24

24:                                               ; preds = %20
  %25 = call i32 %22(ptr noundef %7, ptr noundef %14, ptr noundef nonnull %6) #6
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %93, label %97

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 19
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %97, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef %7, ptr noundef %14, i1 noundef zeroext true, ptr noundef nonnull %6) #6
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %93, label %97

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 19
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %97, label %38

38:                                               ; preds = %34
  %39 = call i32 %36(ptr noundef %7, ptr noundef %14, i1 noundef zeroext false, ptr noundef nonnull %6) #6
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %93, label %97

41:                                               ; preds = %18
  %42 = call i32 @mtk_hw_get_value(ptr noundef %7, ptr noundef %14, i32 noundef 4, ptr noundef nonnull %4) #6
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %97

44:                                               ; preds = %41
  %45 = load i32, ptr %4, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %97, label %93

47:                                               ; preds = %18, %18
  %48 = call i32 @mtk_hw_get_value(ptr noundef %7, ptr noundef %14, i32 noundef 1, ptr noundef nonnull %4) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = load i32, ptr %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = icmp eq i32 %9, 12
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %97, label %55

55:                                               ; preds = %50
  %56 = icmp eq i32 %51, 0
  %57 = icmp eq i32 %9, 18
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %97, label %93

59:                                               ; preds = %18
  %60 = call i32 @mtk_hw_get_value(ptr noundef %7, ptr noundef %14, i32 noundef 1, ptr noundef nonnull %4) #6
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %97

62:                                               ; preds = %59
  %63 = call i32 @mtk_hw_get_value(ptr noundef %7, ptr noundef %14, i32 noundef 5, ptr noundef nonnull %5) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load i32, ptr %4, align 4
  %67 = icmp eq i32 %66, 0
  %68 = load i32, ptr %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %93, label %97

71:                                               ; preds = %18
  %72 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 23
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %71
  %76 = call i32 %73(ptr noundef %7, ptr noundef %14, ptr noundef nonnull %6) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %93, label %97

78:                                               ; preds = %18, %18
  %79 = icmp eq i32 %9, 128
  %80 = select i1 %79, i32 10, i32 11
  %81 = call i32 @mtk_hw_get_value(ptr noundef %7, ptr noundef %14, i32 noundef %80, ptr noundef nonnull %4) #6
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = load i32, ptr %4, align 4
  store i32 %84, ptr %6, align 4
  br label %93

85:                                               ; preds = %18, %18
  %86 = getelementptr inbounds %struct.mtk_pin_soc, ptr %11, i32 0, i32 25
  %87 = load ptr, ptr %86, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = icmp eq i32 %9, 130
  %91 = call i32 %87(ptr noundef %7, ptr noundef %14, i1 noundef zeroext %90, ptr noundef nonnull %6) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89, %83, %75, %71, %65, %55, %44, %38, %31, %24
  %94 = load i32, ptr %6, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %95, %9
  store i32 %96, ptr %2, align 4
  br label %97

97:                                               ; preds = %93, %89, %85, %78, %75, %65, %62, %59, %55, %50, %47, %44, %41, %38, %34, %31, %27, %24, %20, %18, %3
  %98 = phi i32 [ 0, %93 ], [ %91, %89 ], [ -524, %3 ], [ %25, %24 ], [ -524, %20 ], [ %32, %31 ], [ -524, %27 ], [ %39, %38 ], [ -524, %34 ], [ %42, %41 ], [ -22, %44 ], [ %48, %47 ], [ -22, %55 ], [ -22, %50 ], [ %60, %59 ], [ %63, %62 ], [ -22, %65 ], [ %76, %75 ], [ %81, %78 ], [ -524, %85 ], [ -524, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.mtk_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mtk_pin_soc, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %1
  %11 = getelementptr %struct.mtk_pin_desc, ptr %9, i32 %1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %108, label %14

14:                                               ; preds = %4
  %15 = icmp eq i32 %3, 0
  br i1 %15, label %108, label %16

16:                                               ; preds = %104, %14
  %17 = phi i32 [ %106, %104 ], [ 0, %14 ]
  %18 = getelementptr i32, ptr %2, i32 %17
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 255
  %21 = lshr i32 %19, 8
  %22 = trunc i32 %19 to i8
  switch i8 %22, label %104 [
    i8 1, label %23
    i8 5, label %31
    i8 3, label %39
    i8 18, label %47
    i8 12, label %53
    i8 24, label %63
    i8 17, label %66
    i8 14, label %72
    i8 9, label %82
    i8 -128, label %90
    i8 -127, label %90
    i8 -126, label %95
    i8 -125, label %95
  ]

23:                                               ; preds = %16
  %24 = load ptr, ptr %6, align 4
  %25 = getelementptr inbounds %struct.mtk_pin_soc, ptr %24, i32 0, i32 16
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %108, label %28

28:                                               ; preds = %23
  %29 = tail call i32 %26(ptr noundef %5, ptr noundef %10) #6
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %104, label %108

31:                                               ; preds = %16
  %32 = load ptr, ptr %6, align 4
  %33 = getelementptr inbounds %struct.mtk_pin_soc, ptr %32, i32 0, i32 18
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %108, label %36

36:                                               ; preds = %31
  %37 = tail call i32 %34(ptr noundef %5, ptr noundef %10, i1 noundef zeroext true) #6
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %104, label %108

39:                                               ; preds = %16
  %40 = load ptr, ptr %6, align 4
  %41 = getelementptr inbounds %struct.mtk_pin_soc, ptr %40, i32 0, i32 18
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %108, label %44

44:                                               ; preds = %39
  %45 = tail call i32 %42(ptr noundef %5, ptr noundef %10, i1 noundef zeroext false) #6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %104, label %108

47:                                               ; preds = %16
  %48 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 5, i32 noundef 0) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %108

50:                                               ; preds = %47
  %51 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 1, i32 noundef 1) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %104, label %108

53:                                               ; preds = %16
  %54 = load ptr, ptr %6, align 4
  %55 = getelementptr inbounds %struct.mtk_pin_soc, ptr %54, i32 0, i32 10
  %56 = load i8, ptr %55, align 1, !range !10
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 16, i32 noundef 1) #6
  br label %60

60:                                               ; preds = %58, %53
  %61 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 1, i32 noundef 0) #6
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %104, label %108

63:                                               ; preds = %16
  %64 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 4, i32 noundef %21) #6
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %104, label %108

66:                                               ; preds = %16
  %67 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 1, i32 noundef 1) #6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %108

69:                                               ; preds = %66
  %70 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 3, i32 noundef %21) #6
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %108

72:                                               ; preds = %16
  %73 = icmp ult i32 %19, 256
  %74 = select i1 %73, i32 1, i32 2
  %75 = and i32 %74, 1
  %76 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 1, i32 noundef %75) #6
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %108

78:                                               ; preds = %72
  %79 = lshr i32 %74, 1
  %80 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef 5, i32 noundef %79) #6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %104, label %108

82:                                               ; preds = %16
  %83 = load ptr, ptr %6, align 4
  %84 = getelementptr inbounds %struct.mtk_pin_soc, ptr %83, i32 0, i32 22
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %104, label %87

87:                                               ; preds = %82
  %88 = tail call i32 %85(ptr noundef %5, ptr noundef %10, i32 noundef %21) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %104, label %108

90:                                               ; preds = %16, %16
  %91 = icmp eq i32 %20, 128
  %92 = select i1 %91, i32 10, i32 11
  %93 = tail call i32 @mtk_hw_set_value(ptr noundef %5, ptr noundef %10, i32 noundef %92, i32 noundef %21) #6
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %104, label %108

95:                                               ; preds = %16, %16
  %96 = load ptr, ptr %6, align 4
  %97 = getelementptr inbounds %struct.mtk_pin_soc, ptr %96, i32 0, i32 24
  %98 = load ptr, ptr %97, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = icmp eq i32 %20, 130
  %102 = tail call i32 %98(ptr noundef %5, ptr noundef %10, i1 noundef zeroext %101, i32 noundef %21) #6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100, %90, %87, %82, %78, %69, %63, %60, %50, %44, %36, %28, %16
  %105 = phi i32 [ 0, %100 ], [ 0, %90 ], [ 0, %87 ], [ 0, %78 ], [ 0, %69 ], [ 0, %63 ], [ 0, %60 ], [ 0, %50 ], [ 0, %44 ], [ 0, %36 ], [ 0, %28 ], [ -524, %82 ], [ -524, %16 ]
  %106 = add nuw i32 %17, 1
  %107 = icmp eq i32 %106, %3
  br i1 %107, label %108, label %16

108:                                              ; preds = %104, %100, %95, %90, %87, %78, %72, %69, %66, %63, %60, %50, %47, %44, %39, %36, %31, %28, %23, %14, %4
  %109 = phi i32 [ -524, %4 ], [ 0, %14 ], [ %102, %100 ], [ %29, %28 ], [ -524, %23 ], [ %37, %36 ], [ -524, %31 ], [ %45, %44 ], [ -524, %39 ], [ %88, %87 ], [ -524, %95 ], [ %105, %104 ], [ %93, %90 ], [ %80, %78 ], [ %76, %72 ], [ %70, %69 ], [ %67, %66 ], [ %64, %63 ], [ %61, %60 ], [ %51, %50 ], [ %48, %47 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  store ptr null, ptr %4, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store i32 0, ptr %5, align 4, !annotation !9
  %6 = call i32 @pinctrl_generic_get_group_pins(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %3
  %9 = load i32, ptr %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %29, label %11

11:                                               ; preds = %24, %8
  %12 = phi i32 [ %25, %24 ], [ 0, %8 ]
  %13 = phi i32 [ %26, %24 ], [ 0, %8 ]
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr i32, ptr %14, i32 %13
  %16 = load i32, ptr %15, align 4
  %17 = call i32 @mtk_pinconf_get(ptr noundef %0, i32 noundef %16, ptr noundef %2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = icmp eq i32 %13, 0
  %21 = load i32, ptr %2, align 4
  br i1 %20, label %24, label %22

22:                                               ; preds = %19
  %23 = icmp eq i32 %12, %21
  br i1 %23, label %24, label %29

24:                                               ; preds = %22, %19
  %25 = phi i32 [ %12, %22 ], [ %21, %19 ]
  %26 = add nuw i32 %13, 1
  %27 = load i32, ptr %5, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %11, label %29

29:                                               ; preds = %24, %22, %11, %8, %3
  %30 = phi i32 [ %6, %3 ], [ 0, %8 ], [ -524, %11 ], [ -524, %22 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_pinconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  store ptr null, ptr %5, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #6
  store i32 0, ptr %6, align 4, !annotation !9
  %7 = call i32 @pinctrl_generic_get_group_pins(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %4
  %10 = load i32, ptr %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %16

12:                                               ; preds = %16
  %13 = add nuw i32 %17, 1
  %14 = load i32, ptr %6, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %12, %9
  %17 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %18 = load ptr, ptr %5, align 4
  %19 = getelementptr i32, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = call i32 @mtk_pinconf_set(ptr noundef %0, i32 noundef %20, ptr noundef %2, i32 noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %12, label %23

23:                                               ; preds = %16, %12, %9, %4
  %24 = phi i32 [ %7, %4 ], [ 0, %9 ], [ %21, %16 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_hw_get_value(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_input(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  %6 = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %5) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %1) #7
  br label %20

15:                                               ; preds = %3
  %16 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1
  %17 = icmp ne i32 %2, 0
  %18 = zext i1 %17 to i32
  %19 = tail call i32 @mtk_hw_set_value(ptr noundef %4, ptr noundef %16, i32 noundef 3, i32 noundef %18) #6
  br label %20

20:                                               ; preds = %15, %12
  %21 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, %1
  %24 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %23) #6
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !9
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1
  %14 = call i32 @mtk_hw_get_value(ptr noundef %4, ptr noundef %13, i32 noundef 2, ptr noundef nonnull %3) #6
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i32
  br label %20

20:                                               ; preds = %16, %12, %2
  %21 = phi i32 [ %19, %16 ], [ -524, %2 ], [ %14, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mtk_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.17, i32 noundef %1) #7
  br label %20

15:                                               ; preds = %3
  %16 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1
  %17 = icmp ne i32 %2, 0
  %18 = zext i1 %17 to i32
  %19 = tail call i32 @mtk_hw_set_value(ptr noundef %4, ptr noundef %16, i32 noundef 3, i32 noundef %18) #6
  br label %20

20:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.mtk_pinctrl, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mtk_pin_soc, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.mtk_pin_desc, ptr %11, i32 %1, i32 2, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = icmp eq i16 %13, -1
  br i1 %14, label %18, label %15

15:                                               ; preds = %7
  %16 = zext i16 %13 to i32
  %17 = tail call i32 @mtk_eint_find_irq(ptr noundef nonnull %5, i32 noundef %16) #6
  br label %18

18:                                               ; preds = %15, %7, %2
  %19 = phi i32 [ %17, %15 ], [ -524, %2 ], [ -524, %7 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mtk_gpio_set_config(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.mtk_pin_soc, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.mtk_pinctrl, ptr %4, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %14, null
  %16 = and i32 %2, 255
  %17 = icmp eq i32 %16, 11
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = getelementptr %struct.mtk_pin_desc, ptr %8, i32 %1, i32 2, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = icmp eq i16 %21, -1
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = lshr i32 %2, 8
  %25 = zext i16 %21 to i32
  %26 = tail call i32 @mtk_eint_set_debounce(ptr noundef nonnull %14, i32 noundef %25, i32 noundef %24) #6
  br label %27

27:                                               ; preds = %23, %19, %12, %3
  %28 = phi i32 [ %26, %23 ], [ -524, %3 ], [ -524, %19 ], [ -524, %12 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_find_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_eint_set_debounce(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i8 0, i8 2}
