; ModuleID = '/llk/IR/drivers/pinctrl/sunxi/pinctrl-sunxi.c_pt.bc'
source_filename = "../drivers/pinctrl/sunxi/pinctrl-sunxi.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.sunxi_pinctrl = type { ptr, ptr, ptr, ptr, [9 x %struct.sunxi_pinctrl_regulator], ptr, ptr, i32, ptr, i32, ptr, ptr, %struct.raw_spinlock, ptr, i32 }
%struct.sunxi_pinctrl_regulator = type { ptr, %struct.refcount_struct }
%struct.sunxi_pinctrl_desc = type { ptr, i32, i32, i32, ptr, i8, i8, i32 }
%struct.sunxi_desc_pin = type { %struct.pinctrl_pin_desc, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sunxi_pinctrl_group = type { ptr, i32 }
%struct.sunxi_desc_function = type { i32, ptr, i8, i8, i8 }
%struct.sunxi_pinctrl_function = type { ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.72, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.72 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.71 }
%union.anon.71 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [21 x i8] c"dt probe failed: %d\0A\00", align 1
@sunxi_pconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @sunxi_pconf_get, ptr @sunxi_pconf_set, ptr @sunxi_pconf_group_get, ptr @sunxi_pconf_group_set, ptr null, ptr null, ptr null }, align 4
@sunxi_pctrl_ops = internal constant %struct.pinctrl_ops { ptr @sunxi_pctrl_get_groups_count, ptr @sunxi_pctrl_get_group_name, ptr @sunxi_pctrl_get_group_pins, ptr null, ptr @sunxi_pctrl_dt_node_to_map, ptr @sunxi_pctrl_dt_free_map }, align 4
@sunxi_pmx_ops = internal constant %struct.pinmux_ops { ptr @sunxi_pmx_request, ptr @sunxi_pmx_free, ptr @sunxi_pmx_get_funcs_cnt, ptr @sunxi_pmx_get_func_name, ptr @sunxi_pmx_get_func_groups, ptr @sunxi_pmx_set_mux, ptr null, ptr null, ptr @sunxi_pmx_gpio_set_direction, i8 1 }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"couldn't register pinctrl driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"apb\00", align 1
@sunxi_pinctrl_irq_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_of_xlate, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Couldn't register IRQ domain\0A\00", align 1
@sunxi_pinctrl_edge_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_ack, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_unmask, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_set_type, ptr @sunxi_pinctrl_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_request_resources, ptr @sunxi_pinctrl_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"initialized sunXi PIO driver\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"drivers/pinctrl/sunxi/pinctrl-sunxi.c\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"missing function property in node %pOFn\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"missing pins property in node %pOFn\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"unknown pin %s\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"unsupported function %s on pin %s\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"allwinner,function\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"allwinner,pins\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"drive-strength\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"allwinner,drive\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"bias-pull-up\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"bias-pull-down\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"bias-disable\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"allwinner,pull\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"vcc-p%c\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Couldn't get bank P%c regulator\0A\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"Couldn't enable bank P%c regulator\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"gpio_in\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"gpio_out\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"sunxi_pio_edge\00", align 1
@sunxi_pinctrl_level_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.27, ptr null, ptr null, ptr @sunxi_pinctrl_irq_ack_unmask, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_mask, ptr null, ptr @sunxi_pinctrl_irq_unmask, ptr @sunxi_pinctrl_irq_ack, ptr null, ptr null, ptr @sunxi_pinctrl_irq_set_type, ptr @sunxi_pinctrl_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_pinctrl_irq_request_resources, ptr @sunxi_pinctrl_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 70 }, align 4
@.str.27 = private unnamed_addr constant [16 x i8] c"sunxi_pio_level\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"input-debounce\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"losc\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"hosc\00", align 1
@switch.table.sunxi_pconf_get = private unnamed_addr constant [9 x i32] [i32 28, i32 20, i32 28, i32 20, i32 28, i32 20, i32 20, i32 20, i32 20], align 4
@switch.table.sunxi_pinctrl_irq_set_type = private unnamed_addr constant [8 x i32] [i32 0, i32 1, i32 4, i32 2, i32 0, i32 0, i32 0, i32 3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @sunxi_pinctrl_init_with_variant(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 128, i32 noundef 3520) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %559, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %10, align 8
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 12
  store i32 0, ptr %11, align 4
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #14
  store ptr %12, ptr %7, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = ptrtoint ptr %12 to i32
  br label %559

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 3
  store ptr %4, ptr %17, align 4
  %18 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 2
  store ptr %1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 14
  store i32 %2, ptr %19, align 4
  %20 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %1, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = shl i32 %21, 5
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 4) #14
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %25, label %27, !prof !8

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 11
  store ptr null, ptr %26, align 4
  br label %559

27:                                               ; preds = %16
  %28 = extractvalue { i32, i1 } %23, 0
  %29 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %28, i32 noundef 3520) #14
  %30 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 11
  store ptr %29, ptr %30, align 4
  %31 = icmp eq ptr %29, null
  br i1 %31, label %559, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 8
  %34 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %35, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 8) #14
  %39 = extractvalue { i32, i1 } %38, 1
  br i1 %39, label %40, label %42, !prof !8

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 8
  store ptr null, ptr %41, align 4
  br label %294

42:                                               ; preds = %32
  %43 = extractvalue { i32, i1 } %38, 0
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %43, i32 noundef 3520) #14
  %45 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 8
  store ptr %44, ptr %45, align 4
  %46 = icmp eq ptr %44, null
  br i1 %46, label %294, label %47

47:                                               ; preds = %42
  %48 = load ptr, ptr %34, align 4
  %49 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %48, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  %52 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 9
  br i1 %51, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, ptr %52, align 4
  br label %90

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 14
  %57 = load i32, ptr %52, align 4
  br label %58

58:                                               ; preds = %88, %55
  %59 = phi ptr [ %48, %55 ], [ %82, %88 ]
  %60 = phi i32 [ %57, %55 ], [ %83, %88 ]
  %61 = phi ptr [ %44, %55 ], [ %89, %88 ]
  %62 = phi i32 [ 0, %55 ], [ %84, %88 ]
  %63 = load ptr, ptr %59, align 4
  %64 = getelementptr %struct.sunxi_desc_pin, ptr %63, i32 %62
  %65 = getelementptr %struct.sunxi_pinctrl_group, ptr %61, i32 %60
  %66 = getelementptr %struct.sunxi_desc_pin, ptr %63, i32 %62, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %58
  %70 = load i32, ptr %56, align 4
  %71 = and i32 %70, %67
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %69, %58
  %74 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %64, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr %75, ptr %65, align 4
  %76 = load i32, ptr %64, align 4
  %77 = getelementptr %struct.sunxi_pinctrl_group, ptr %61, i32 %60, i32 1
  store i32 %76, ptr %77, align 4
  %78 = load i32, ptr %52, align 4
  %79 = add i32 %78, 1
  store i32 %79, ptr %52, align 4
  %80 = load ptr, ptr %34, align 4
  br label %81

81:                                               ; preds = %73, %69
  %82 = phi ptr [ %59, %69 ], [ %80, %73 ]
  %83 = phi i32 [ %60, %69 ], [ %79, %73 ]
  %84 = add nuw nsw i32 %62, 1
  %85 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %82, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %81
  %89 = load ptr, ptr %45, align 4
  br label %58

90:                                               ; preds = %81, %53
  %91 = phi i32 [ %54, %53 ], [ %83, %81 ]
  %92 = shl i32 %91, 2
  %93 = add i32 %92, 4
  %94 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %93, i32 12) #14
  %95 = extractvalue { i32, i1 } %94, 1
  br i1 %95, label %96, label %98, !prof !8

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 6
  store ptr null, ptr %97, align 4
  br label %294

98:                                               ; preds = %90
  %99 = extractvalue { i32, i1 } %94, 0
  %100 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %99, i32 noundef 3520) #15
  %101 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 6
  store ptr %100, ptr %101, align 4
  %102 = icmp eq ptr %100, null
  br i1 %102, label %294, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr %34, align 4
  %105 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %104, i32 0, i32 1
  %106 = load i32, ptr %105, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %194

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 14
  %110 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 11
  %111 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 7
  br label %112

112:                                              ; preds = %186, %108
  %113 = phi ptr [ %104, %108 ], [ %187, %186 ]
  %114 = phi i32 [ 0, %108 ], [ %188, %186 ]
  %115 = load ptr, ptr %113, align 4
  %116 = getelementptr %struct.sunxi_desc_pin, ptr %115, i32 %114
  %117 = getelementptr %struct.sunxi_desc_pin, ptr %115, i32 %114, i32 1
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %112
  %121 = load i32, ptr %109, align 4
  %122 = and i32 %121, %118
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %186, label %124

124:                                              ; preds = %120, %112
  %125 = getelementptr %struct.sunxi_desc_pin, ptr %115, i32 %114, i32 2
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr inbounds %struct.sunxi_desc_function, ptr %126, i32 0, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, null
  br i1 %129, label %186, label %130

130:                                              ; preds = %179, %124
  %131 = phi ptr [ %182, %179 ], [ %128, %124 ]
  %132 = phi ptr [ %181, %179 ], [ %127, %124 ]
  %133 = phi ptr [ %180, %179 ], [ %126, %124 ]
  %134 = load i32, ptr %133, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %130
  %137 = load i32, ptr %109, align 4
  %138 = and i32 %137, %134
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %179, label %140

140:                                              ; preds = %136, %130
  %141 = tail call i32 @strcmp(ptr noundef nonnull %131, ptr noundef nonnull dereferenceable(4) @.str.5) #14
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.sunxi_desc_function, ptr %133, i32 0, i32 4
  %145 = load i8, ptr %144, align 2
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds %struct.sunxi_desc_function, ptr %133, i32 0, i32 3
  %148 = load i8, ptr %147, align 1
  %149 = zext i8 %148 to i32
  %150 = shl nuw nsw i32 %149, 5
  %151 = add nuw nsw i32 %150, %146
  %152 = load i32, ptr %116, align 4
  %153 = load ptr, ptr %110, align 4
  %154 = getelementptr i32, ptr %153, i32 %151
  store i32 %152, ptr %154, align 4
  %155 = load ptr, ptr %132, align 4
  br label %156

156:                                              ; preds = %143, %140
  %157 = phi ptr [ %155, %143 ], [ %131, %140 ]
  %158 = load ptr, ptr %101, align 4
  %159 = load ptr, ptr %158, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %172, label %161

161:                                              ; preds = %168, %156
  %162 = phi ptr [ %170, %168 ], [ %159, %156 ]
  %163 = phi ptr [ %169, %168 ], [ %158, %156 ]
  %164 = tail call i32 @strcmp(ptr noundef nonnull %162, ptr noundef %157) #14
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.sunxi_pinctrl_function, ptr %163, i32 0, i32 2
  br label %175

168:                                              ; preds = %161
  %169 = getelementptr %struct.sunxi_pinctrl_function, ptr %163, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %161

172:                                              ; preds = %168, %156
  %173 = phi ptr [ %158, %156 ], [ %169, %168 ]
  store ptr %157, ptr %173, align 4
  %174 = getelementptr inbounds %struct.sunxi_pinctrl_function, ptr %173, i32 0, i32 2
  store i32 1, ptr %174, align 4
  br label %175

175:                                              ; preds = %172, %166
  %176 = phi ptr [ %111, %172 ], [ %167, %166 ]
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, 1
  store i32 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %136
  %180 = getelementptr %struct.sunxi_desc_function, ptr %133, i32 1
  %181 = getelementptr %struct.sunxi_desc_function, ptr %133, i32 1, i32 1
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %130

184:                                              ; preds = %179
  %185 = load ptr, ptr %34, align 4
  br label %186

186:                                              ; preds = %184, %124, %120
  %187 = phi ptr [ %185, %184 ], [ %113, %124 ], [ %113, %120 ]
  %188 = add nuw nsw i32 %114, 1
  %189 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %187, i32 0, i32 1
  %190 = load i32, ptr %189, align 4
  %191 = icmp slt i32 %188, %190
  br i1 %191, label %112, label %192

192:                                              ; preds = %186
  %193 = load ptr, ptr %101, align 4
  br label %194

194:                                              ; preds = %192, %103
  %195 = phi ptr [ %193, %192 ], [ %100, %103 ]
  %196 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 7
  %197 = load i32, ptr %196, align 4
  %198 = mul i32 %197, 12
  %199 = tail call noalias ptr @krealloc(ptr noundef %195, i32 noundef %198, i32 noundef 3264) #16
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %194
  %202 = load ptr, ptr %101, align 4
  tail call void @kfree(ptr noundef %202) #14
  store ptr null, ptr %101, align 4
  br label %294

203:                                              ; preds = %194
  store ptr %199, ptr %101, align 4
  %204 = load ptr, ptr %34, align 4
  %205 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %204, i32 0, i32 1
  %206 = load i32, ptr %205, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %296

208:                                              ; preds = %203
  %209 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %33, i32 0, i32 14
  br label %210

210:                                              ; preds = %288, %208
  %211 = phi ptr [ %204, %208 ], [ %289, %288 ]
  %212 = phi i32 [ 0, %208 ], [ %290, %288 ]
  %213 = load ptr, ptr %211, align 4
  %214 = getelementptr %struct.sunxi_desc_pin, ptr %213, i32 %212, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %221, label %217

217:                                              ; preds = %210
  %218 = load i32, ptr %209, align 4
  %219 = and i32 %218, %215
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %288, label %221

221:                                              ; preds = %217, %210
  %222 = getelementptr %struct.sunxi_desc_pin, ptr %213, i32 %212, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr inbounds %struct.sunxi_desc_function, ptr %223, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = icmp eq ptr %225, null
  br i1 %226, label %288, label %227

227:                                              ; preds = %221
  %228 = getelementptr %struct.sunxi_desc_pin, ptr %213, i32 %212, i32 0, i32 1
  br label %229

229:                                              ; preds = %281, %227
  %230 = phi ptr [ %225, %227 ], [ %284, %281 ]
  %231 = phi ptr [ %223, %227 ], [ %282, %281 ]
  %232 = load i32, ptr %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %229
  %235 = load i32, ptr %209, align 4
  %236 = and i32 %235, %232
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %281, label %238

238:                                              ; preds = %234, %229
  %239 = load ptr, ptr %101, align 4
  %240 = load i32, ptr %196, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %255, label %245

242:                                              ; preds = %250
  %243 = add nuw i32 %246, 1
  %244 = icmp eq i32 %243, %240
  br i1 %244, label %255, label %245

245:                                              ; preds = %242, %238
  %246 = phi i32 [ %243, %242 ], [ 0, %238 ]
  %247 = getelementptr %struct.sunxi_pinctrl_function, ptr %239, i32 %246
  %248 = load ptr, ptr %247, align 4
  %249 = icmp eq ptr %248, null
  br i1 %249, label %255, label %250

250:                                              ; preds = %245
  %251 = tail call i32 @strcmp(ptr noundef nonnull %248, ptr noundef nonnull %230) #14
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %242

253:                                              ; preds = %250
  %254 = icmp eq ptr %247, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %253, %245, %242, %238
  tail call void @kfree(ptr noundef %239) #14
  br label %294

256:                                              ; preds = %253
  %257 = getelementptr %struct.sunxi_pinctrl_function, ptr %239, i32 %246, i32 1
  %258 = load ptr, ptr %257, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %268, %256
  %261 = phi ptr [ %258, %256 ], [ %270, %268 ]
  br label %274

262:                                              ; preds = %256
  %263 = getelementptr %struct.sunxi_pinctrl_function, ptr %239, i32 %246, i32 2
  %264 = load i32, ptr %263, align 4
  %265 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %264, i32 4) #14
  %266 = extractvalue { i32, i1 } %265, 1
  br i1 %266, label %267, label %268, !prof !8

267:                                              ; preds = %262
  store ptr null, ptr %257, align 4
  br label %272

268:                                              ; preds = %262
  %269 = extractvalue { i32, i1 } %265, 0
  %270 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %269, i32 noundef 3520) #14
  store ptr %270, ptr %257, align 4
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %260

272:                                              ; preds = %268, %267
  %273 = load ptr, ptr %101, align 4
  tail call void @kfree(ptr noundef %273) #14
  br label %294

274:                                              ; preds = %274, %260
  %275 = phi ptr [ %278, %274 ], [ %261, %260 ]
  %276 = load ptr, ptr %275, align 4
  %277 = icmp eq ptr %276, null
  %278 = getelementptr ptr, ptr %275, i32 1
  br i1 %277, label %279, label %274

279:                                              ; preds = %274
  %280 = load ptr, ptr %228, align 4
  store ptr %280, ptr %275, align 4
  br label %281

281:                                              ; preds = %279, %234
  %282 = getelementptr %struct.sunxi_desc_function, ptr %231, i32 1
  %283 = getelementptr %struct.sunxi_desc_function, ptr %231, i32 1, i32 1
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  br i1 %285, label %286, label %229

286:                                              ; preds = %281
  %287 = load ptr, ptr %34, align 4
  br label %288

288:                                              ; preds = %286, %221, %217
  %289 = phi ptr [ %287, %286 ], [ %211, %221 ], [ %211, %217 ]
  %290 = add nuw nsw i32 %212, 1
  %291 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %289, i32 0, i32 1
  %292 = load i32, ptr %291, align 4
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %210, label %296

294:                                              ; preds = %272, %255, %201, %98, %96, %42, %40
  %295 = phi i32 [ -12, %272 ], [ -22, %255 ], [ -12, %96 ], [ -12, %40 ], [ -12, %98 ], [ -12, %42 ], [ -12, %201 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str, i32 noundef %295) #17
  br label %559

296:                                              ; preds = %288, %203
  %297 = load ptr, ptr %18, align 4
  %298 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %297, i32 0, i32 1
  %299 = load i32, ptr %298, align 4
  %300 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %299, i32 12) #14
  %301 = extractvalue { i32, i1 } %300, 1
  br i1 %301, label %559, label %302, !prof !8

302:                                              ; preds = %296
  %303 = extractvalue { i32, i1 } %300, 0
  %304 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %303, i32 noundef 3520) #14
  %305 = icmp eq ptr %304, null
  br i1 %305, label %559, label %306

306:                                              ; preds = %302
  %307 = load ptr, ptr %18, align 4
  %308 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %307, i32 0, i32 1
  %309 = load i32, ptr %308, align 4
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %333

311:                                              ; preds = %328, %306
  %312 = phi i32 [ %329, %328 ], [ %309, %306 ]
  %313 = phi i32 [ %330, %328 ], [ 0, %306 ]
  %314 = phi i32 [ %331, %328 ], [ 0, %306 ]
  %315 = load ptr, ptr %307, align 4
  %316 = getelementptr %struct.sunxi_desc_pin, ptr %315, i32 %314
  %317 = getelementptr %struct.sunxi_desc_pin, ptr %315, i32 %314, i32 1
  %318 = load i32, ptr %317, align 4
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %324, label %320

320:                                              ; preds = %311
  %321 = load i32, ptr %19, align 4
  %322 = and i32 %321, %318
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %328, label %324

324:                                              ; preds = %320, %311
  %325 = add i32 %313, 1
  %326 = getelementptr %struct.pinctrl_pin_desc, ptr %304, i32 %313
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %326, ptr noundef align 4 dereferenceable(12) %316, i32 12, i1 false)
  %327 = load i32, ptr %308, align 4
  br label %328

328:                                              ; preds = %324, %320
  %329 = phi i32 [ %327, %324 ], [ %312, %320 ]
  %330 = phi i32 [ %325, %324 ], [ %313, %320 ]
  %331 = add nuw nsw i32 %314, 1
  %332 = icmp slt i32 %331, %329
  br i1 %332, label %311, label %333

333:                                              ; preds = %328, %306
  %334 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 44, i32 noundef 3520) #14
  %335 = icmp eq ptr %334, null
  br i1 %335, label %559, label %336

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, null
  br i1 %339, label %340, label %342

340:                                              ; preds = %336
  %341 = load ptr, ptr %4, align 4
  br label %342

342:                                              ; preds = %340, %336
  %343 = phi ptr [ %341, %340 ], [ %338, %336 ]
  store ptr %343, ptr %334, align 4
  %344 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 6
  store ptr null, ptr %344, align 4
  %345 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 1
  store ptr %304, ptr %345, align 4
  %346 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 9
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 2
  store i32 %347, ptr %348, align 4
  %349 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 5
  store ptr @sunxi_pconf_ops, ptr %349, align 4
  %350 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 3
  store ptr @sunxi_pctrl_ops, ptr %350, align 4
  %351 = tail call ptr @devm_kmemdup(ptr noundef %4, ptr noundef nonnull @sunxi_pmx_ops, i32 noundef 40, i32 noundef 3264) #14
  %352 = icmp eq ptr %351, null
  br i1 %352, label %559, label %353

353:                                              ; preds = %342
  %354 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %1, i32 0, i32 6
  %355 = load i8, ptr %354, align 1, !range !9
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.pinmux_ops, ptr %351, i32 0, i32 9
  store i8 0, ptr %358, align 4
  br label %359

359:                                              ; preds = %357, %353
  %360 = getelementptr inbounds %struct.pinctrl_desc, ptr %334, i32 0, i32 4
  store ptr %351, ptr %360, align 4
  %361 = tail call ptr @devm_pinctrl_register(ptr noundef %4, ptr noundef nonnull %334, ptr noundef nonnull %7) #14
  %362 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 13
  store ptr %361, ptr %362, align 4
  %363 = icmp ugt ptr %361, inttoptr (i32 -4096 to ptr)
  br i1 %363, label %364, label %367

364:                                              ; preds = %359
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #17
  %365 = load ptr, ptr %362, align 4
  %366 = ptrtoint ptr %365 to i32
  br label %559

367:                                              ; preds = %359
  %368 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 304, i32 noundef 3520) #14
  %369 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 1
  store ptr %368, ptr %369, align 4
  %370 = icmp eq ptr %368, null
  br i1 %370, label %559, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr %18, align 4
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %372, i32 0, i32 1
  %375 = load i32, ptr %374, align 4
  %376 = add i32 %375, -1
  %377 = getelementptr %struct.sunxi_desc_pin, ptr %373, i32 %376
  %378 = load i32, ptr %377, align 4
  %379 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 4
  store ptr null, ptr %379, align 4
  %380 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 5
  store ptr @gpiochip_generic_request, ptr %380, align 4
  %381 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 6
  store ptr @gpiochip_generic_free, ptr %381, align 4
  %382 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 14
  store ptr @gpiochip_generic_config, ptr %382, align 4
  %383 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 8
  store ptr @sunxi_pinctrl_gpio_direction_input, ptr %383, align 4
  %384 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 9
  store ptr @sunxi_pinctrl_gpio_direction_output, ptr %384, align 4
  %385 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 10
  store ptr @sunxi_pinctrl_gpio_get, ptr %385, align 4
  %386 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 12
  store ptr @sunxi_pinctrl_gpio_set, ptr %386, align 4
  %387 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 41
  store ptr @sunxi_pinctrl_gpio_of_xlate, ptr %387, align 4
  %388 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 15
  store ptr @sunxi_pinctrl_gpio_to_irq, ptr %388, align 4
  %389 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 40
  store i32 3, ptr %389, align 4
  %390 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 23
  store i8 0, ptr %390, align 4
  %391 = add i32 %378, 65535
  %392 = or i32 %391, 31
  %393 = add i32 %392, 1
  %394 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %372, i32 0, i32 2
  %395 = load i32, ptr %394, align 4
  %396 = sub i32 %393, %395
  %397 = trunc i32 %396 to i16
  %398 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 20
  store i16 %397, ptr %398, align 4
  %399 = load ptr, ptr %337, align 4
  %400 = icmp eq ptr %399, null
  br i1 %400, label %401, label %403

401:                                              ; preds = %371
  %402 = load ptr, ptr %4, align 4
  br label %403

403:                                              ; preds = %401, %371
  %404 = phi ptr [ %402, %401 ], [ %399, %371 ]
  store ptr %404, ptr %368, align 4
  %405 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 2
  store ptr %4, ptr %405, align 4
  %406 = load i32, ptr %394, align 4
  %407 = getelementptr inbounds %struct.gpio_chip, ptr %368, i32 0, i32 19
  store i32 %406, ptr %407, align 4
  %408 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %368, ptr noundef nonnull %7, ptr noundef null, ptr noundef null) #14
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %559

410:                                              ; preds = %403
  %411 = load ptr, ptr %18, align 4
  %412 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %411, i32 0, i32 1
  %413 = load i32, ptr %412, align 4
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %421, label %439

415:                                              ; preds = %431
  %416 = add nuw nsw i32 %423, 1
  %417 = load ptr, ptr %18, align 4
  %418 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %417, i32 0, i32 1
  %419 = load i32, ptr %418, align 4
  %420 = icmp slt i32 %416, %419
  br i1 %420, label %421, label %439

421:                                              ; preds = %415, %410
  %422 = phi ptr [ %417, %415 ], [ %411, %410 ]
  %423 = phi i32 [ %416, %415 ], [ 0, %410 ]
  %424 = load ptr, ptr %422, align 4
  %425 = getelementptr %struct.sunxi_desc_pin, ptr %424, i32 %423
  %426 = load ptr, ptr %369, align 4
  %427 = load ptr, ptr %337, align 4
  %428 = icmp eq ptr %427, null
  br i1 %428, label %429, label %431

429:                                              ; preds = %421
  %430 = load ptr, ptr %4, align 4
  br label %431

431:                                              ; preds = %429, %421
  %432 = phi ptr [ %430, %429 ], [ %427, %421 ]
  %433 = load i32, ptr %425, align 4
  %434 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %422, i32 0, i32 2
  %435 = load i32, ptr %434, align 4
  %436 = sub i32 %433, %435
  %437 = tail call i32 @gpiochip_add_pin_range(ptr noundef %426, ptr noundef %432, i32 noundef %436, i32 noundef %433, i32 noundef 1) #14
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %415, label %556

439:                                              ; preds = %415, %410
  %440 = tail call i32 @of_clk_get_parent_count(ptr noundef %6) #14
  %441 = icmp eq i32 %440, 1
  %442 = select i1 %441, ptr null, ptr @.str.2
  %443 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef %442) #14
  %444 = icmp ugt ptr %443, inttoptr (i32 -4096 to ptr)
  br i1 %444, label %445, label %447

445:                                              ; preds = %439
  %446 = ptrtoint ptr %443 to i32
  br label %556

447:                                              ; preds = %439
  %448 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %443)
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %556

450:                                              ; preds = %447
  %451 = load ptr, ptr %18, align 4
  %452 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %451, i32 0, i32 3
  %453 = load i32, ptr %452, align 4
  %454 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %453, i32 4) #14
  %455 = extractvalue { i32, i1 } %454, 1
  br i1 %455, label %456, label %458, !prof !8

456:                                              ; preds = %450
  %457 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 10
  store ptr null, ptr %457, align 4
  br label %554

458:                                              ; preds = %450
  %459 = extractvalue { i32, i1 } %454, 0
  %460 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %459, i32 noundef 3520) #14
  %461 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 10
  store ptr %460, ptr %461, align 4
  %462 = icmp eq ptr %460, null
  br i1 %462, label %554, label %463

463:                                              ; preds = %458
  %464 = load ptr, ptr %18, align 4
  %465 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %464, i32 0, i32 3
  %466 = load i32, ptr %465, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %485, label %474

468:                                              ; preds = %474
  %469 = add nuw i32 %475, 1
  %470 = load ptr, ptr %18, align 4
  %471 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %470, i32 0, i32 3
  %472 = load i32, ptr %471, align 4
  %473 = icmp ult i32 %469, %472
  br i1 %473, label %474, label %483

474:                                              ; preds = %468, %463
  %475 = phi i32 [ %469, %468 ], [ 0, %463 ]
  %476 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %475) #14
  %477 = load ptr, ptr %461, align 4
  %478 = getelementptr i32, ptr %477, i32 %475
  store i32 %476, ptr %478, align 4
  %479 = load ptr, ptr %461, align 4
  %480 = getelementptr i32, ptr %479, i32 %475
  %481 = load i32, ptr %480, align 4
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %554, label %468

483:                                              ; preds = %468
  %484 = shl i32 %472, 5
  br label %485

485:                                              ; preds = %483, %463
  %486 = phi i32 [ 0, %463 ], [ %484, %483 ]
  %487 = icmp eq ptr %6, null
  %488 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 3
  %489 = select i1 %487, ptr null, ptr %488
  %490 = tail call ptr @__irq_domain_add(ptr noundef %489, i32 noundef %486, i32 noundef %486, i32 noundef 0, ptr noundef nonnull @sunxi_pinctrl_irq_domain_ops, ptr noundef %7) #14
  %491 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %7, i32 0, i32 5
  store ptr %490, ptr %491, align 4
  %492 = icmp eq ptr %490, null
  br i1 %492, label %499, label %493

493:                                              ; preds = %485
  %494 = load ptr, ptr %18, align 4
  %495 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %494, i32 0, i32 3
  %496 = load i32, ptr %495, align 4
  %497 = and i32 %496, 134217727
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %500, label %503

499:                                              ; preds = %485
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #17
  br label %554

500:                                              ; preds = %503, %493
  %501 = phi i32 [ %496, %493 ], [ %511, %503 ]
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %553, label %516

503:                                              ; preds = %514, %493
  %504 = phi ptr [ %515, %514 ], [ %490, %493 ]
  %505 = phi i32 [ %508, %514 ], [ 0, %493 ]
  %506 = tail call i32 @irq_create_mapping_affinity(ptr noundef %504, i32 noundef %505, ptr noundef null) #14
  tail call void @irq_set_chip_and_handler_name(i32 noundef %506, ptr noundef nonnull @sunxi_pinctrl_edge_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #14
  %507 = tail call i32 @irq_set_chip_data(i32 noundef %506, ptr noundef nonnull %7) #14
  %508 = add nuw i32 %505, 1
  %509 = load ptr, ptr %18, align 4
  %510 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %509, i32 0, i32 3
  %511 = load i32, ptr %510, align 4
  %512 = shl i32 %511, 5
  %513 = icmp ult i32 %508, %512
  br i1 %513, label %514, label %500

514:                                              ; preds = %503
  %515 = load ptr, ptr %491, align 4
  br label %503

516:                                              ; preds = %540, %500
  %517 = phi i32 [ %548, %540 ], [ 0, %500 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !10
  tail call void @arm_heavy_mb() #14
  %518 = load ptr, ptr %7, align 4
  %519 = load ptr, ptr %18, align 4
  %520 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %519, i32 0, i32 4
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, null
  %523 = and i32 %517, 255
  br i1 %522, label %527, label %524

524:                                              ; preds = %516
  %525 = getelementptr i32, ptr %521, i32 %523
  %526 = load i32, ptr %525, align 4
  br label %527

527:                                              ; preds = %524, %516
  %528 = phi i32 [ %526, %524 ], [ %523, %516 ]
  %529 = shl i32 %528, 5
  %530 = add i32 %529, 528
  %531 = getelementptr i8, ptr %518, i32 %530
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %531, i32 0) #14, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !12
  tail call void @arm_heavy_mb() #14
  %532 = load ptr, ptr %7, align 4
  %533 = load ptr, ptr %18, align 4
  %534 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %533, i32 0, i32 4
  %535 = load ptr, ptr %534, align 4
  %536 = icmp eq ptr %535, null
  br i1 %536, label %540, label %537

537:                                              ; preds = %527
  %538 = getelementptr i32, ptr %535, i32 %523
  %539 = load i32, ptr %538, align 4
  br label %540

540:                                              ; preds = %537, %527
  %541 = phi i32 [ %539, %537 ], [ %523, %527 ]
  %542 = shl i32 %541, 5
  %543 = add i32 %542, 532
  %544 = getelementptr i8, ptr %532, i32 %543
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %544, i32 -1) #14, !srcloc !11
  %545 = load ptr, ptr %461, align 4
  %546 = getelementptr i32, ptr %545, i32 %517
  %547 = load i32, ptr %546, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %547, ptr noundef nonnull @sunxi_pinctrl_irq_handler, ptr noundef nonnull %7) #14
  %548 = add nuw i32 %517, 1
  %549 = load ptr, ptr %18, align 4
  %550 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %549, i32 0, i32 3
  %551 = load i32, ptr %550, align 4
  %552 = icmp ult i32 %548, %551
  br i1 %552, label %516, label %553

553:                                              ; preds = %540, %500
  tail call fastcc void @sunxi_pinctrl_setup_debounce(ptr noundef nonnull %7, ptr noundef %6)
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.4) #17
  br label %559

554:                                              ; preds = %499, %474, %458, %456
  %555 = phi i32 [ -12, %499 ], [ -12, %458 ], [ -12, %456 ], [ %481, %474 ]
  tail call void @clk_disable(ptr noundef %443) #14
  tail call void @clk_unprepare(ptr noundef %443) #14
  br label %556

556:                                              ; preds = %554, %447, %445, %431
  %557 = phi i32 [ %446, %445 ], [ %448, %447 ], [ %555, %554 ], [ %437, %431 ]
  %558 = load ptr, ptr %369, align 4
  tail call void @gpiochip_remove(ptr noundef %558) #14
  br label %559

559:                                              ; preds = %556, %553, %403, %367, %364, %342, %333, %302, %296, %294, %27, %25, %14, %3
  %560 = phi i32 [ %15, %14 ], [ %295, %294 ], [ %366, %364 ], [ %557, %556 ], [ 0, %553 ], [ -12, %3 ], [ -12, %27 ], [ -12, %302 ], [ -12, %333 ], [ -12, %342 ], [ -12, %367 ], [ %408, %403 ], [ -12, %25 ], [ -12, %296 ]
  ret i32 %560
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 13
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %1
  %9 = tail call i32 @sunxi_pmx_gpio_set_direction(ptr noundef %5, ptr noundef null, i32 noundef %8, i1 noundef zeroext true)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %6 = lshr i32 %1, 5
  %7 = and i32 %6, 255
  %8 = mul nuw nsw i32 %7, 36
  %9 = add nuw nsw i32 %8, 16
  %10 = and i32 %1, 31
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 12
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #14
  %13 = load ptr, ptr %5, align 4
  %14 = getelementptr i8, ptr %13, i32 %9
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  %16 = icmp eq i32 %2, 0
  %17 = shl nuw i32 1, %10
  %18 = or i32 %15, %17
  %19 = xor i32 %17, -1
  %20 = and i32 %15, %19
  %21 = select i1 %16, i32 %20, i32 %18
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !15
  tail call void @arm_heavy_mb() #14
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #14
  %24 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 13
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %1
  %29 = tail call i32 @sunxi_pmx_gpio_set_direction(ptr noundef %25, ptr noundef null, i32 noundef %28, i1 noundef zeroext false)
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %4 = lshr i32 %1, 5
  %5 = and i32 %4, 255
  %6 = mul nuw nsw i32 %5, 36
  %7 = add nuw nsw i32 %6, 16
  %8 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %9, i32 0, i32 5
  %11 = load i8, ptr %10, align 4, !range !9
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %1
  br label %49

17:                                               ; preds = %2
  %18 = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %0, i32 noundef %1) #14
  %19 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %1
  br i1 %18, label %22, label %49

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 13
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %24) #14
  %26 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %25, i32 0, i32 12
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #14
  %28 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %25, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %29, i32 0, i32 2
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %21, %31
  %33 = load ptr, ptr %25, align 4
  %34 = lshr i32 %32, 5
  %35 = and i32 %34, 255
  %36 = mul nuw nsw i32 %35, 36
  %37 = lshr i32 %32, 1
  %38 = and i32 %37, 12
  %39 = add nuw nsw i32 %36, %38
  %40 = getelementptr i8, ptr %33, i32 %39
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %42 = shl i32 %32, 2
  %43 = and i32 %42, 28
  %44 = shl nuw i32 15, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !17
  tail call void @arm_heavy_mb() #14
  %45 = xor i32 %44, -1
  %46 = and i32 %41, %45
  %47 = load ptr, ptr %25, align 4
  %48 = getelementptr i8, ptr %47, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #14
  br label %49

49:                                               ; preds = %22, %17, %13
  %50 = phi i32 [ %16, %13 ], [ %21, %22 ], [ %21, %17 ]
  %51 = phi i1 [ false, %13 ], [ true, %22 ], [ false, %17 ]
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr i8, ptr %52, i32 %7
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !18
  br i1 %51, label %55, label %84

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 13
  %57 = load ptr, ptr %56, align 4
  %58 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %57) #14
  %59 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %58, i32 0, i32 12
  %60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %59) #14
  %61 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %58, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %62, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %50, %64
  %66 = load ptr, ptr %58, align 4
  %67 = lshr i32 %65, 5
  %68 = and i32 %67, 255
  %69 = mul nuw nsw i32 %68, 36
  %70 = lshr i32 %65, 1
  %71 = and i32 %70, 12
  %72 = add nuw nsw i32 %69, %71
  %73 = getelementptr i8, ptr %66, i32 %72
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %75 = shl i32 %65, 2
  %76 = and i32 %75, 28
  %77 = shl nuw i32 15, %76
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !17
  tail call void @arm_heavy_mb() #14
  %78 = xor i32 %77, -1
  %79 = and i32 %74, %78
  %80 = shl nuw nsw i32 6, %76
  %81 = or i32 %79, %80
  %82 = load ptr, ptr %58, align 4
  %83 = getelementptr i8, ptr %82, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 %81) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %59, i32 noundef %60) #14
  br label %84

84:                                               ; preds = %55, %49
  %85 = and i32 %1, 31
  %86 = lshr i32 %54, %85
  %87 = and i32 %86, 1
  ret i32 %87
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = lshr i32 %1, 5
  %6 = and i32 %5, 255
  %7 = mul nuw nsw i32 %6, 36
  %8 = add nuw nsw i32 %7, 16
  %9 = and i32 %1, 31
  %10 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 12
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #14
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 %8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !14
  %15 = icmp eq i32 %2, 0
  %16 = shl nuw i32 1, %9
  %17 = or i32 %14, %16
  %18 = xor i32 %16, -1
  %19 = and i32 %14, %18
  %20 = select i1 %15, i32 %19, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !15
  tail call void @arm_heavy_mb() #14
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #14
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = shl i32 %5, 5
  %7 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %6, %8
  %10 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = icmp sgt i32 %9, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = icmp eq ptr %2, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %14
  %17 = getelementptr %struct.of_phandle_args, ptr %1, i32 0, i32 2, i32 2
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr %2, align 4
  br label %19

19:                                               ; preds = %16, %14, %3
  %20 = phi i32 [ -22, %3 ], [ %9, %16 ], [ %9, %14 ]
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_gpio_to_irq(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.gpio_chip, ptr %0, i32 0, i32 20
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %9, label %62

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %11, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %1
  %19 = load ptr, ptr %11, align 4
  %20 = and i32 %18, 65535
  br label %21

21:                                               ; preds = %42, %15
  %22 = phi i32 [ 0, %15 ], [ %43, %42 ]
  %23 = getelementptr %struct.sunxi_desc_pin, ptr %19, i32 %22
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, %20
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = getelementptr %struct.sunxi_desc_pin, ptr %19, i32 %22, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.sunxi_desc_function, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %37, %26
  %33 = phi ptr [ %40, %37 ], [ %30, %26 ]
  %34 = phi ptr [ %38, %37 ], [ %28, %26 ]
  %35 = tail call i32 @strcmp(ptr noundef nonnull %33, ptr noundef nonnull dereferenceable(4) @.str.5) #14
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = getelementptr %struct.sunxi_desc_function, ptr %34, i32 1
  %39 = getelementptr %struct.sunxi_desc_function, ptr %34, i32 1, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %32

42:                                               ; preds = %37, %26, %21
  %43 = add nuw nsw i32 %22, 1
  %44 = icmp eq i32 %43, %13
  br i1 %44, label %62, label %21

45:                                               ; preds = %32
  %46 = icmp eq ptr %34, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.sunxi_desc_function, ptr %34, i32 0, i32 3
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 5
  %52 = getelementptr inbounds %struct.sunxi_desc_function, ptr %34, i32 0, i32 4
  %53 = load i8, ptr %52, align 2
  %54 = zext i8 %53 to i32
  %55 = add nuw nsw i32 %51, %54
  %56 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !19
  %58 = call ptr @__irq_resolve_mapping(ptr noundef %57, i32 noundef %55, ptr noundef nonnull %3) #14
  %59 = icmp eq ptr %58, null
  %60 = load i32, ptr %3, align 4
  %61 = select i1 %59, i32 0, i32 %60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %62

62:                                               ; preds = %47, %45, %42, %9, %2
  %63 = phi i32 [ %61, %47 ], [ -6, %2 ], [ -22, %45 ], [ -22, %9 ], [ -22, %42 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #6 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #14
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #14
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_handler(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  %9 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 10
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %22, %14
  %18 = phi i32 [ 0, %14 ], [ %23, %22 ]
  %19 = getelementptr i32, ptr %16, i32 %18
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %4, %20
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = add nuw i32 %18, 1
  %24 = icmp eq i32 %23, %12
  br i1 %24, label %28, label %17

25:                                               ; preds = %17, %1
  %26 = phi i32 [ 0, %1 ], [ %18, %17 ]
  %27 = icmp eq i32 %26, %12
  br i1 %27, label %28, label %30, !prof !8

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %26, %25 ], [ %12, %22 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1155, i32 noundef 9, ptr noundef null) #14
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ %26, %25 ]
  %32 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %37(ptr noundef %40) #14
  br label %49

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %43(ptr noundef %44) #14
  %45 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void %46(ptr noundef %44) #14
  br label %49

49:                                               ; preds = %48, %41, %39, %30
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  %54 = and i32 %31, 255
  br i1 %53, label %58, label %55

55:                                               ; preds = %49
  %56 = getelementptr i32, ptr %52, i32 %54
  %57 = load i32, ptr %56, align 4
  br label %58

58:                                               ; preds = %55, %49
  %59 = phi i32 [ %57, %55 ], [ %54, %49 ]
  %60 = shl i32 %59, 5
  %61 = add i32 %60, 532
  %62 = load ptr, ptr %8, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !20
  store i32 %64, ptr %2, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %58
  %67 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef 0) #14
  %68 = icmp slt i32 %67, 32
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 5
  %71 = shl i32 %31, 5
  br label %72

72:                                               ; preds = %72, %69
  %73 = phi i32 [ %67, %69 ], [ %78, %72 ]
  %74 = load ptr, ptr %70, align 4
  %75 = add i32 %73, %71
  %76 = call i32 @generic_handle_domain_irq(ptr noundef %74, i32 noundef %75) #14
  %77 = add nsw i32 %73, 1
  %78 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef 32, i32 noundef %77) #14
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %72, label %80

80:                                               ; preds = %72, %66, %58
  %81 = load ptr, ptr %32, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %85 = load ptr, ptr %84, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi ptr [ %85, %83 ], [ %81, %80 ]
  %88 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %87(ptr noundef %88) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sunxi_pinctrl_setup_debounce(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = tail call i32 @of_clk_get_parent_count(ptr noundef %1) #14
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %152

6:                                                ; preds = %2
  %7 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef null) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %152, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call ptr @devm_clk_get(ptr noundef %11, ptr noundef nonnull @.str.30) #14
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %152, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr %10, align 4
  %16 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.31) #14
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %152, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %152, label %24

24:                                               ; preds = %146, %18
  %25 = phi i32 [ %147, %146 ], [ 0, %18 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !annotation !19
  %26 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.29, i32 noundef %25, ptr noundef nonnull %3) #14
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %145

28:                                               ; preds = %24
  %29 = load i32, ptr %3, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %146, label %31

31:                                               ; preds = %28
  %32 = lshr i32 %29, 1
  %33 = add nuw i32 %32, 1000000
  %34 = udiv i32 %33, %29
  %35 = call i32 @clk_get_rate(ptr noundef %12) #14
  %36 = sub i32 %34, %35
  %37 = call i32 @llvm.abs.i32(i32 %36, i1 false) #14
  %38 = lshr i32 %35, 1
  %39 = sub i32 %34, %38
  %40 = call i32 @llvm.abs.i32(i32 %39, i1 false) #14
  %41 = icmp ult i32 %40, %37
  %42 = zext i1 %41 to i32
  %43 = call i32 @llvm.umin.i32(i32 %40, i32 %37) #14
  %44 = lshr i32 %35, 2
  %45 = sub i32 %34, %44
  %46 = call i32 @llvm.abs.i32(i32 %45, i1 false) #14
  %47 = icmp ult i32 %46, %43
  %48 = select i1 %47, i32 2, i32 %42
  %49 = call i32 @llvm.umin.i32(i32 %46, i32 %43) #14
  %50 = lshr i32 %35, 3
  %51 = sub i32 %34, %50
  %52 = call i32 @llvm.abs.i32(i32 %51, i1 false) #14
  %53 = icmp ult i32 %52, %49
  %54 = select i1 %53, i32 3, i32 %48
  %55 = call i32 @llvm.umin.i32(i32 %52, i32 %49) #14
  %56 = lshr i32 %35, 4
  %57 = sub i32 %34, %56
  %58 = call i32 @llvm.abs.i32(i32 %57, i1 false) #14
  %59 = icmp ult i32 %58, %55
  %60 = select i1 %59, i32 4, i32 %54
  %61 = call i32 @llvm.umin.i32(i32 %58, i32 %55) #14
  %62 = lshr i32 %35, 5
  %63 = sub i32 %34, %62
  %64 = call i32 @llvm.abs.i32(i32 %63, i1 false) #14
  %65 = icmp ult i32 %64, %61
  %66 = select i1 %65, i32 5, i32 %60
  %67 = call i32 @llvm.umin.i32(i32 %64, i32 %61) #14
  %68 = lshr i32 %35, 6
  %69 = sub i32 %34, %68
  %70 = call i32 @llvm.abs.i32(i32 %69, i1 false) #14
  %71 = icmp ult i32 %70, %67
  %72 = select i1 %71, i32 6, i32 %66
  %73 = call i32 @llvm.umin.i32(i32 %70, i32 %67) #14
  %74 = lshr i32 %35, 7
  %75 = sub i32 %34, %74
  %76 = call i32 @llvm.abs.i32(i32 %75, i1 false) #14
  %77 = icmp ult i32 %76, %73
  %78 = select i1 %77, i32 7, i32 %72
  %79 = call i32 @llvm.umin.i32(i32 %76, i32 %73) #14
  %80 = call i32 @clk_get_rate(ptr noundef %16) #14
  %81 = sub i32 %34, %80
  %82 = call i32 @llvm.abs.i32(i32 %81, i1 false) #14
  %83 = lshr i32 %80, 1
  %84 = sub i32 %34, %83
  %85 = call i32 @llvm.abs.i32(i32 %84, i1 false) #14
  %86 = icmp ult i32 %85, %82
  %87 = zext i1 %86 to i32
  %88 = call i32 @llvm.umin.i32(i32 %85, i32 %82) #14
  %89 = lshr i32 %80, 2
  %90 = sub i32 %34, %89
  %91 = call i32 @llvm.abs.i32(i32 %90, i1 false) #14
  %92 = icmp ult i32 %91, %88
  %93 = select i1 %92, i32 2, i32 %87
  %94 = call i32 @llvm.umin.i32(i32 %91, i32 %88) #14
  %95 = lshr i32 %80, 3
  %96 = sub i32 %34, %95
  %97 = call i32 @llvm.abs.i32(i32 %96, i1 false) #14
  %98 = icmp ult i32 %97, %94
  %99 = select i1 %98, i32 3, i32 %93
  %100 = call i32 @llvm.umin.i32(i32 %97, i32 %94) #14
  %101 = lshr i32 %80, 4
  %102 = sub i32 %34, %101
  %103 = call i32 @llvm.abs.i32(i32 %102, i1 false) #14
  %104 = icmp ult i32 %103, %100
  %105 = select i1 %104, i32 4, i32 %99
  %106 = call i32 @llvm.umin.i32(i32 %103, i32 %100) #14
  %107 = lshr i32 %80, 5
  %108 = sub i32 %34, %107
  %109 = call i32 @llvm.abs.i32(i32 %108, i1 false) #14
  %110 = icmp ult i32 %109, %106
  %111 = select i1 %110, i32 5, i32 %105
  %112 = call i32 @llvm.umin.i32(i32 %109, i32 %106) #14
  %113 = lshr i32 %80, 6
  %114 = sub i32 %34, %113
  %115 = call i32 @llvm.abs.i32(i32 %114, i1 false) #14
  %116 = icmp ult i32 %115, %112
  %117 = select i1 %116, i32 6, i32 %111
  %118 = call i32 @llvm.umin.i32(i32 %115, i32 %112) #14
  %119 = lshr i32 %80, 7
  %120 = sub i32 %34, %119
  %121 = call i32 @llvm.abs.i32(i32 %120, i1 false) #14
  %122 = icmp ult i32 %121, %118
  %123 = select i1 %122, i32 7, i32 %117
  %124 = call i32 @llvm.umin.i32(i32 %121, i32 %118) #14
  %125 = icmp ult i32 %124, %79
  %126 = select i1 %125, i32 %123, i32 %78
  %127 = zext i1 %125 to i32
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !21
  call void @arm_heavy_mb() #14
  %128 = shl nuw nsw i32 %126, 4
  %129 = and i32 %128, 4080
  %130 = or i32 %129, %127
  %131 = load ptr, ptr %0, align 4
  %132 = load ptr, ptr %19, align 4
  %133 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %132, i32 0, i32 4
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  %136 = and i32 %25, 255
  br i1 %135, label %140, label %137

137:                                              ; preds = %31
  %138 = getelementptr i32, ptr %134, i32 %136
  %139 = load i32, ptr %138, align 4
  br label %140

140:                                              ; preds = %137, %31
  %141 = phi i32 [ %139, %137 ], [ %136, %31 ]
  %142 = shl i32 %141, 5
  %143 = add i32 %142, 536
  %144 = getelementptr i8, ptr %131, i32 %143
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %130) #14, !srcloc !11
  br label %146

145:                                              ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  br label %152

146:                                              ; preds = %140, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  %147 = add nuw i32 %25, 1
  %148 = load ptr, ptr %19, align 4
  %149 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %148, i32 0, i32 3
  %150 = load i32, ptr %149, align 4
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %24, label %152

152:                                              ; preds = %146, %145, %18, %14, %9, %6, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = sub i32 %1, %10
  %12 = trunc i32 %5 to i8
  %13 = add i8 %12, -1
  %14 = icmp ult i8 %13, 9
  br i1 %14, label %15, label %53

15:                                               ; preds = %3
  %16 = zext i8 %13 to i16
  %17 = lshr i16 277, %16
  %18 = and i16 %17, 1
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %15
  %21 = sext i8 %13 to i32
  %22 = getelementptr inbounds [9 x i32], ptr @switch.table.sunxi_pconf_get, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %11, 5
  %25 = and i32 %24, 255
  %26 = mul nuw nsw i32 %25, 36
  %27 = lshr i32 %11, 2
  %28 = and i32 %27, 4
  %29 = add nuw nsw i32 %26, %28
  %30 = add nuw nsw i32 %29, %23
  %31 = shl i32 %11, 1
  %32 = and i32 %31, 30
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr i8, ptr %33, i32 %30
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !22
  %36 = lshr i32 %35, %32
  %37 = and i32 %36, 3
  %38 = load i32, ptr %2, align 4
  %39 = trunc i32 %38 to i8
  switch i8 %39, label %49 [
    i8 9, label %40
    i8 5, label %43
    i8 3, label %45
    i8 1, label %47
  ]

40:                                               ; preds = %20
  %41 = mul nuw nsw i32 %37, 2560
  %42 = add nuw nsw i32 %41, 2560
  br label %50

43:                                               ; preds = %20
  %44 = icmp eq i32 %37, 1
  br i1 %44, label %50, label %53

45:                                               ; preds = %20
  %46 = icmp eq i32 %37, 2
  br i1 %46, label %50, label %53

47:                                               ; preds = %20
  %48 = icmp eq i32 %37, 0
  br i1 %48, label %50, label %53

49:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 521, i32 noundef 9, ptr noundef null) #14
  br label %53

50:                                               ; preds = %47, %45, %43, %40
  %51 = phi i32 [ %42, %40 ], [ 256, %43 ], [ 256, %45 ], [ 0, %47 ]
  %52 = or i32 %51, %6
  store i32 %52, ptr %2, align 4
  br label %53

53:                                               ; preds = %50, %49, %47, %45, %43, %15, %3
  %54 = phi i32 [ -524, %49 ], [ 0, %50 ], [ -22, %43 ], [ -22, %45 ], [ -22, %47 ], [ -524, %3 ], [ -524, %15 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %53, label %7

7:                                                ; preds = %4
  %8 = lshr i32 %1, 5
  %9 = and i32 %8, 255
  %10 = mul nuw nsw i32 %9, 36
  %11 = lshr i32 %1, 2
  %12 = and i32 %11, 4
  %13 = add nuw nsw i32 %12, 28
  %14 = add nuw nsw i32 %12, 20
  %15 = shl i32 %1, 1
  %16 = and i32 %15, 30
  %17 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 12
  %18 = shl nuw i32 3, %16
  %19 = xor i32 %18, -1
  br label %20

20:                                               ; preds = %38, %7
  %21 = phi i32 [ 0, %7 ], [ %51, %38 ]
  %22 = getelementptr i32, ptr %2, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %23 to i8
  switch i8 %25, label %53 [
    i8 9, label %26
    i8 3, label %36
    i8 1, label %38
    i8 5, label %34
  ]

26:                                               ; preds = %20
  %27 = add nsw i32 %24, -41
  %28 = icmp ult i32 %27, -31
  br i1 %28, label %53, label %29

29:                                               ; preds = %26
  %30 = trunc i32 %24 to i8
  %31 = udiv i8 %30, 10
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %32, -1
  br label %38

34:                                               ; preds = %20
  %35 = icmp ult i32 %23, 256
  br i1 %35, label %53, label %38

36:                                               ; preds = %20
  %37 = icmp ult i32 %23, 256
  br i1 %37, label %53, label %38

38:                                               ; preds = %36, %34, %29, %20
  %39 = phi i32 [ %14, %29 ], [ %13, %34 ], [ %13, %36 ], [ %13, %20 ]
  %40 = phi i32 [ %33, %29 ], [ 1, %34 ], [ 2, %36 ], [ 0, %20 ]
  %41 = add nuw nsw i32 %39, %10
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #14
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i8, ptr %43, i32 %41
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !23
  %46 = and i32 %45, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !24
  tail call void @arm_heavy_mb() #14
  %47 = shl nuw i32 %40, %16
  %48 = or i32 %46, %47
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr i8, ptr %49, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %42) #14
  %51 = add nuw i32 %21, 1
  %52 = icmp eq i32 %51, %3
  br i1 %52, label %53, label %20

53:                                               ; preds = %38, %36, %34, %26, %20, %4
  %54 = phi i32 [ 0, %4 ], [ 0, %38 ], [ -22, %26 ], [ -22, %34 ], [ -22, %36 ], [ -524, %20 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_group_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.sunxi_pinctrl_group, ptr %6, i32 %1, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @sunxi_pconf_get(ptr noundef %0, i32 noundef %8, ptr noundef %2)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pconf_group_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sunxi_pinctrl_group, ptr %7, i32 %1, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @sunxi_pconf_set(ptr noundef %0, i32 noundef %9, ptr noundef %2, i32 noundef %3)
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %2, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sunxi_pctrl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.sunxi_pinctrl_group, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sunxi_pinctrl_group, ptr %7, i32 %1, i32 1
  store ptr %8, ptr %2, align 4
  store i32 1, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pctrl_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 4
  %8 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  store ptr null, ptr %2, align 4
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #14
  store ptr null, ptr %7, align 4, !annotation !19
  %9 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %7) #14
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = call i32 @of_property_read_string(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %7) #14
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  br label %18

15:                                               ; preds = %11, %4
  %16 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #14
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15, %14
  %19 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 3
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7, ptr noundef %1) #17
  br label %251

21:                                               ; preds = %15
  %22 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0) #14
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.8, ptr noundef %1) #17
  br label %251

30:                                               ; preds = %24, %21
  %31 = phi i32 [ %22, %21 ], [ %25, %24 ]
  %32 = phi ptr [ @.str.13, %21 ], [ @.str.14, %24 ]
  %33 = shl nuw i32 %31, 1
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 28) #14
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %36, label %37, !prof !8

36:                                               ; preds = %30
  store ptr null, ptr %2, align 4
  br label %251

37:                                               ; preds = %30
  %38 = extractvalue { i32, i1 } %34, 0
  %39 = call noalias align 64 ptr @__kmalloc(i32 noundef %38, i32 noundef 3264) #15
  store ptr %39, ptr %2, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %251, label %41

41:                                               ; preds = %37
  %42 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef null) #14
  %46 = icmp eq ptr %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i1 [ false, %44 ], [ true, %47 ]
  %50 = phi i32 [ 1, %44 ], [ 2, %47 ]
  %51 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #14
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #14
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #14
  %61 = icmp ne ptr %60, null
  %62 = or i1 %49, %61
  %63 = select i1 %61, i32 %50, i32 1
  br i1 %62, label %64, label %146

64:                                               ; preds = %59, %56, %53, %48
  %65 = phi i32 [ %63, %59 ], [ %50, %56 ], [ %50, %53 ], [ %50, %48 ]
  %66 = shl nuw nsw i32 %65, 2
  %67 = call noalias align 64 ptr @__kmalloc(i32 noundef %66, i32 noundef 3520) #15
  %68 = icmp eq ptr %67, null
  br i1 %68, label %142, label %69

69:                                               ; preds = %64
  %70 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null) #14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef null) #14
  %74 = icmp eq ptr %73, null
  br i1 %74, label %100, label %75

75:                                               ; preds = %72, %69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #14
  store i32 0, ptr %6, align 4, !annotation !19
  %76 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #14
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, ptr %6, align 4
  %80 = icmp ult i32 %79, 10
  br i1 %80, label %90, label %81

81:                                               ; preds = %78
  %82 = call i32 @llvm.umin.i32(i32 %79, i32 40) #14
  %83 = trunc i32 %82 to i8
  %84 = urem i8 %83, 10
  %85 = zext i8 %84 to i32
  %86 = sub nuw nsw i32 %82, %85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %96

87:                                               ; preds = %75
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #14
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %91, label %90

90:                                               ; preds = %87, %78
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  br label %135

91:                                               ; preds = %87
  %92 = load i32, ptr %6, align 4
  %93 = mul i32 %92, 10
  %94 = add i32 %93, 10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #14
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %135, label %96

96:                                               ; preds = %91, %81
  %97 = phi i32 [ %86, %81 ], [ %94, %91 ]
  %98 = shl i32 %97, 8
  %99 = or i32 %98, 9
  store i32 %99, ptr %67, align 64
  br label %100

100:                                              ; preds = %96, %72
  %101 = phi i32 [ 1, %96 ], [ 0, %72 ]
  %102 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #14
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null) #14
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #14
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef null) #14
  %112 = icmp eq ptr %111, null
  br i1 %112, label %138, label %113

113:                                              ; preds = %110, %107, %104, %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #14
  store i32 0, ptr %5, align 4, !annotation !19
  %114 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef null) #14
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %128

116:                                              ; preds = %113
  %117 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef null) #14
  %118 = icmp eq ptr %117, null
  br i1 %118, label %119, label %128

119:                                              ; preds = %116
  %120 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef null) #14
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %130

122:                                              ; preds = %119
  %123 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %5, i32 noundef 1, i32 noundef 0) #14
  %124 = icmp sgt i32 %123, -1
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i32, ptr %5, align 4
  switch i32 %126, label %134 [
    i32 0, label %130
    i32 1, label %128
    i32 2, label %127
  ]

127:                                              ; preds = %125
  br label %128

128:                                              ; preds = %127, %125, %116, %113
  %129 = phi i32 [ 259, %127 ], [ 261, %113 ], [ 259, %116 ], [ 261, %125 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %131

130:                                              ; preds = %125, %119
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %131

131:                                              ; preds = %130, %128
  %132 = phi i32 [ %129, %128 ], [ 1, %130 ]
  %133 = getelementptr i32, ptr %67, i32 %101
  store i32 %132, ptr %133, align 4
  br label %138

134:                                              ; preds = %125, %122
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #14
  br label %135

135:                                              ; preds = %134, %91, %90
  %136 = phi i32 [ -22, %134 ], [ -22, %90 ], [ %94, %91 ]
  call void @kfree(ptr noundef nonnull %67) #14
  %137 = inttoptr i32 %136 to ptr
  br label %138

138:                                              ; preds = %135, %131, %110
  %139 = phi i32 [ 0, %135 ], [ %65, %131 ], [ %65, %110 ]
  %140 = phi ptr [ %137, %135 ], [ %67, %131 ], [ %67, %110 ]
  %141 = icmp ugt ptr %140, inttoptr (i32 -4096 to ptr)
  br i1 %141, label %142, label %146

142:                                              ; preds = %138, %64
  %143 = phi ptr [ %140, %138 ], [ inttoptr (i32 -12 to ptr), %64 ]
  %144 = ptrtoint ptr %143 to i32
  %145 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %145) #14
  store ptr null, ptr %2, align 4
  br label %251

146:                                              ; preds = %138, %59
  %147 = phi ptr [ %140, %138 ], [ null, %59 ]
  %148 = phi i32 [ %139, %138 ], [ 0, %59 ]
  %149 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull %32, ptr noundef null) #14
  %150 = call ptr @of_prop_next_string(ptr noundef %149, ptr noundef null) #14
  %151 = icmp eq ptr %150, null
  br i1 %151, label %244, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 9
  %154 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 8
  %155 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 2
  %156 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 14
  %157 = icmp eq ptr %147, null
  %158 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %8, i32 0, i32 3
  br label %159

159:                                              ; preds = %240, %152
  %160 = phi i32 [ 0, %152 ], [ %241, %240 ]
  %161 = phi ptr [ %150, %152 ], [ %242, %240 ]
  %162 = load i32, ptr %153, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %177, label %164

164:                                              ; preds = %159
  %165 = load ptr, ptr %154, align 4
  br label %169

166:                                              ; preds = %169
  %167 = add nuw i32 %170, 1
  %168 = icmp eq i32 %167, %162
  br i1 %168, label %177, label %169

169:                                              ; preds = %166, %164
  %170 = phi i32 [ 0, %164 ], [ %167, %166 ]
  %171 = getelementptr %struct.sunxi_pinctrl_group, ptr %165, i32 %170
  %172 = load ptr, ptr %171, align 4
  %173 = call i32 @strcmp(ptr noundef %172, ptr noundef nonnull %161) #14
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %166

175:                                              ; preds = %169
  %176 = icmp eq ptr %171, null
  br i1 %176, label %177, label %179

177:                                              ; preds = %175, %166, %159
  %178 = load ptr, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %178, ptr noundef nonnull @.str.9, ptr noundef nonnull %161) #17
  br label %240

179:                                              ; preds = %175
  %180 = load ptr, ptr %155, align 4
  %181 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %180, i32 0, i32 1
  %182 = load i32, ptr %181, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %220

184:                                              ; preds = %179
  %185 = load ptr, ptr %180, align 4
  br label %186

186:                                              ; preds = %215, %184
  %187 = phi i32 [ 0, %184 ], [ %216, %215 ]
  %188 = getelementptr %struct.sunxi_desc_pin, ptr %185, i32 %187, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = call i32 @strcmp(ptr noundef %189, ptr noundef %172) #14
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %186
  %193 = getelementptr %struct.sunxi_desc_pin, ptr %185, i32 %187, i32 2
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.sunxi_desc_function, ptr %194, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  %197 = icmp eq ptr %196, null
  br i1 %197, label %215, label %198

198:                                              ; preds = %210, %192
  %199 = phi ptr [ %213, %210 ], [ %196, %192 ]
  %200 = phi ptr [ %211, %210 ], [ %194, %192 ]
  %201 = call i32 @strcmp(ptr noundef nonnull %199, ptr noundef nonnull %16) #14
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %210

203:                                              ; preds = %198
  %204 = load i32, ptr %200, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %203
  %207 = load i32, ptr %156, align 4
  %208 = and i32 %207, %204
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %206, %198
  %211 = getelementptr %struct.sunxi_desc_function, ptr %200, i32 1
  %212 = getelementptr %struct.sunxi_desc_function, ptr %200, i32 1, i32 1
  %213 = load ptr, ptr %212, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %198

215:                                              ; preds = %210, %192, %186
  %216 = add nuw nsw i32 %187, 1
  %217 = icmp eq i32 %216, %182
  br i1 %217, label %220, label %186

218:                                              ; preds = %206, %203
  %219 = icmp eq ptr %200, null
  br i1 %219, label %220, label %222

220:                                              ; preds = %218, %215, %179
  %221 = load ptr, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %221, ptr noundef nonnull @.str.10, ptr noundef nonnull %16, ptr noundef nonnull %161) #17
  br label %240

222:                                              ; preds = %218
  %223 = load ptr, ptr %2, align 4
  %224 = getelementptr %struct.pinctrl_map, ptr %223, i32 %160, i32 2
  store i32 2, ptr %224, align 4
  %225 = load ptr, ptr %2, align 4
  %226 = getelementptr %struct.pinctrl_map, ptr %225, i32 %160, i32 4
  store ptr %161, ptr %226, align 4
  %227 = load ptr, ptr %2, align 4
  %228 = getelementptr %struct.pinctrl_map, ptr %227, i32 %160, i32 4, i32 0, i32 1
  store ptr %16, ptr %228, align 4
  %229 = add i32 %160, 1
  br i1 %157, label %240, label %230

230:                                              ; preds = %222
  %231 = load ptr, ptr %2, align 4
  %232 = getelementptr %struct.pinctrl_map, ptr %231, i32 %229, i32 2
  store i32 4, ptr %232, align 4
  %233 = load ptr, ptr %2, align 4
  %234 = getelementptr %struct.pinctrl_map, ptr %233, i32 %229, i32 4
  store ptr %161, ptr %234, align 4
  %235 = load ptr, ptr %2, align 4
  %236 = getelementptr %struct.pinctrl_map, ptr %235, i32 %229, i32 4, i32 0, i32 1
  store ptr %147, ptr %236, align 4
  %237 = load ptr, ptr %2, align 4
  %238 = getelementptr %struct.pinctrl_map, ptr %237, i32 %229, i32 4, i32 0, i32 2
  store i32 %148, ptr %238, align 4
  %239 = add i32 %160, 2
  br label %240

240:                                              ; preds = %230, %222, %220, %177
  %241 = phi i32 [ %160, %220 ], [ %160, %177 ], [ %239, %230 ], [ %229, %222 ]
  %242 = call ptr @of_prop_next_string(ptr noundef %149, ptr noundef nonnull %161) #14
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %159

244:                                              ; preds = %240, %146
  %245 = phi i32 [ 0, %146 ], [ %241, %240 ]
  store i32 %245, ptr %3, align 4
  %246 = load ptr, ptr %2, align 4
  %247 = mul i32 %245, 28
  %248 = call noalias ptr @krealloc(ptr noundef %246, i32 noundef %247, i32 noundef 3264) #16
  store ptr %248, ptr %2, align 4
  %249 = icmp eq ptr %248, null
  %250 = select i1 %249, i32 -12, i32 0
  br label %251

251:                                              ; preds = %244, %142, %37, %36, %27, %18
  %252 = phi i32 [ %144, %142 ], [ -22, %27 ], [ -22, %18 ], [ -12, %37 ], [ %250, %244 ], [ -12, %36 ]
  ret i32 %252
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pctrl_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp ugt i32 %2, 1
  br i1 %4, label %5, label %16

5:                                                ; preds = %13, %3
  %6 = phi i32 [ %14, %13 ], [ 1, %3 ]
  %7 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 4, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #14
  br label %16

13:                                               ; preds = %5
  %14 = add nuw i32 %6, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %5

16:                                               ; preds = %13, %10, %3
  tail call void @kfree(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca [16 x i8], align 1
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = lshr i32 %1, 5
  %6 = and i32 %5, 65535
  %7 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %8, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 5
  %12 = sub nsw i32 %5, %11
  %13 = and i32 %12, 65535
  %14 = getelementptr %struct.sunxi_pinctrl, ptr %4, i32 0, i32 4, i32 %13
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %3, i8 0, i32 16, i1 false), !annotation !19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = getelementptr %struct.sunxi_pinctrl, ptr %4, i32 0, i32 4, i32 %13, i32 1
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %18) #14, !srcloc !25
  %19 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #14, !srcloc !26
  %20 = extractvalue { i32, i32, i32 } %19, 0
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22, !prof !8

22:                                               ; preds = %17
  %23 = add i32 %20, 1
  %24 = or i32 %23, %20
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %99, label %26, !prof !27

26:                                               ; preds = %22, %17
  %27 = phi i32 [ 2, %17 ], [ 1, %22 ]
  tail call void @refcount_warn_saturate(ptr noundef %18, i32 noundef %27) #14
  br label %99

28:                                               ; preds = %2
  %29 = add nuw nsw i32 %6, 97
  %30 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %3, i32 noundef 16, ptr noundef nonnull @.str.21, i32 noundef %29)
  %31 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = call ptr @regulator_get(ptr noundef %32, ptr noundef nonnull %3) #14
  %34 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load ptr, ptr %31, align 4
  %37 = add nuw nsw i32 %6, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.22, i32 noundef %37) #17
  %38 = ptrtoint ptr %33 to i32
  br label %99

39:                                               ; preds = %28
  %40 = call i32 @regulator_enable(ptr noundef %33) #14
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %31, align 4
  %44 = add nuw nsw i32 %6, 65
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.23, i32 noundef %44) #17
  %45 = load ptr, ptr %14, align 4
  call void @regulator_put(ptr noundef %45) #14
  br label %99

46:                                               ; preds = %39
  %47 = load ptr, ptr %7, align 4
  %48 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %47, i32 0, i32 7
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %97, label %51

51:                                               ; preds = %46
  %52 = call i32 @regulator_get_voltage(ptr noundef %33) #14
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %97, label %54

54:                                               ; preds = %51
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %55, i32 0, i32 7
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %97 [
    i32 1, label %58
    i32 2, label %82
  ]

58:                                               ; preds = %54
  %59 = icmp ult i32 %52, 1800001
  br i1 %59, label %67, label %60

60:                                               ; preds = %58
  %61 = icmp ult i32 %52, 2500001
  br i1 %61, label %67, label %62

62:                                               ; preds = %60
  %63 = icmp ult i32 %52, 2800001
  br i1 %63, label %67, label %64

64:                                               ; preds = %62
  %65 = icmp ult i32 %52, 3000001
  %66 = select i1 %65, i32 10, i32 13
  br label %67

67:                                               ; preds = %64, %62, %60, %58
  %68 = phi i32 [ 0, %58 ], [ 6, %60 ], [ 9, %62 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %55, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = sub i32 %1, %70
  %72 = load ptr, ptr %4, align 4
  %73 = lshr i32 %71, 3
  %74 = and i32 %73, 1020
  %75 = add nuw nsw i32 %74, 768
  %76 = getelementptr i8, ptr %72, i32 %75
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #14, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !28
  %78 = and i32 %77, -16
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !29
  call void @arm_heavy_mb() #14
  %79 = or i32 %78, %68
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 %75
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %79) #14, !srcloc !11
  br label %97

82:                                               ; preds = %54
  %83 = icmp ult i32 %52, 1800001
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 12
  %86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #14
  %87 = load ptr, ptr %4, align 4
  %88 = getelementptr i8, ptr %87, i32 832
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #14, !srcloc !13
  call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !30
  %90 = shl nuw i32 1, %6
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !31
  call void @arm_heavy_mb() #14
  %93 = shl nuw i32 %84, %6
  %94 = or i32 %92, %93
  %95 = load ptr, ptr %4, align 4
  %96 = getelementptr i8, ptr %95, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %96, i32 %94) #14, !srcloc !11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #14
  br label %97

97:                                               ; preds = %82, %67, %54, %51, %46
  store ptr %33, ptr %14, align 4
  %98 = getelementptr %struct.sunxi_pinctrl, ptr %4, i32 0, i32 4, i32 %13, i32 1
  store volatile i32 1, ptr %98, align 4
  br label %99

99:                                               ; preds = %97, %42, %35, %26, %22
  %100 = phi i32 [ %38, %35 ], [ %40, %42 ], [ 0, %97 ], [ 0, %22 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  ret i32 %100
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %4 = lshr i32 %1, 5
  %5 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = sub nsw i32 %4, %9
  %11 = and i32 %10, 65535
  %12 = getelementptr %struct.sunxi_pinctrl, ptr %3, i32 0, i32 4, i32 %11, i32 1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %12) #14, !srcloc !25
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %12, ptr %12, i32 1, ptr elementtype(i32) %12) #14, !srcloc !33
  %14 = extractvalue { i32, i32, i32 } %13, 0
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = icmp sgt i32 %14, 0
  br i1 %17, label %24, label %18, !prof !27

18:                                               ; preds = %16
  tail call void @refcount_warn_saturate(ptr noundef %12, i32 noundef 3) #14
  br label %24

19:                                               ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #14, !srcloc !34
  %20 = getelementptr %struct.sunxi_pinctrl, ptr %3, i32 0, i32 4, i32 %11
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @regulator_disable(ptr noundef %21) #14
  %23 = load ptr, ptr %20, align 4
  tail call void @regulator_put(ptr noundef %23) #14
  store ptr null, ptr %20, align 4
  br label %24

24:                                               ; preds = %19, %18, %16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_get_funcs_cnt(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %2, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sunxi_pmx_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.sunxi_pinctrl_function, ptr %5, i32 %1
  %7 = load ptr, ptr %6, align 4
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.sunxi_pinctrl_function, ptr %7, i32 %1, i32 1
  %9 = load ptr, ptr %8, align 4
  store ptr %9, ptr %2, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr %struct.sunxi_pinctrl_function, ptr %10, i32 %1, i32 2
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %5 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr %struct.sunxi_pinctrl_group, ptr %6, i32 %2
  %8 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.sunxi_pinctrl_function, ptr %9, i32 %1
  %11 = load ptr, ptr %7, align 4
  %12 = load ptr, ptr %10, align 4
  %13 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %87

18:                                               ; preds = %3
  %19 = load ptr, ptr %14, align 4
  %20 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 14
  br label %21

21:                                               ; preds = %50, %18
  %22 = phi i32 [ 0, %18 ], [ %51, %50 ]
  %23 = getelementptr %struct.sunxi_desc_pin, ptr %19, i32 %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @strcmp(ptr noundef %24, ptr noundef %11) #14
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %21
  %28 = getelementptr %struct.sunxi_desc_pin, ptr %19, i32 %22, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.sunxi_desc_function, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %45, %27
  %34 = phi ptr [ %48, %45 ], [ %31, %27 ]
  %35 = phi ptr [ %46, %45 ], [ %29, %27 ]
  %36 = tail call i32 @strcmp(ptr noundef nonnull %34, ptr noundef %12) #14
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i32, ptr %35, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %20, align 4
  %43 = and i32 %42, %39
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41, %33
  %46 = getelementptr %struct.sunxi_desc_function, ptr %35, i32 1
  %47 = getelementptr %struct.sunxi_desc_function, ptr %35, i32 1, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %33

50:                                               ; preds = %45, %27, %21
  %51 = add nuw nsw i32 %22, 1
  %52 = icmp eq i32 %51, %16
  br i1 %52, label %87, label %21

53:                                               ; preds = %41, %38
  %54 = icmp eq ptr %35, null
  br i1 %54, label %87, label %55

55:                                               ; preds = %53
  %56 = getelementptr %struct.sunxi_pinctrl_group, ptr %6, i32 %2, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr inbounds %struct.sunxi_desc_function, ptr %35, i32 0, i32 2
  %59 = load i8, ptr %58, align 4
  %60 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %61 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %60, i32 0, i32 12
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #14
  %63 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %60, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %64, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = sub i32 %57, %66
  %68 = load ptr, ptr %60, align 4
  %69 = lshr i32 %67, 5
  %70 = and i32 %69, 255
  %71 = mul nuw nsw i32 %70, 36
  %72 = lshr i32 %67, 1
  %73 = and i32 %72, 12
  %74 = add nuw nsw i32 %71, %73
  %75 = getelementptr i8, ptr %68, i32 %74
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %77 = shl i32 %67, 2
  %78 = and i32 %77, 28
  %79 = shl nuw i32 15, %78
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !17
  tail call void @arm_heavy_mb() #14
  %80 = xor i32 %79, -1
  %81 = and i32 %76, %80
  %82 = zext i8 %59 to i32
  %83 = shl i32 %82, %78
  %84 = or i32 %81, %83
  %85 = load ptr, ptr %60, align 4
  %86 = getelementptr i8, ptr %85, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %62) #14
  br label %87

87:                                               ; preds = %55, %53, %50, %3
  %88 = phi i32 [ 0, %55 ], [ -22, %53 ], [ -22, %3 ], [ -22, %50 ]
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pmx_gpio_set_direction(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2, i1 noundef zeroext %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %6 = select i1 %3, ptr @.str.24, ptr @.str.25
  %7 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %5, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %71

12:                                               ; preds = %4
  %13 = load ptr, ptr %8, align 4
  %14 = and i32 %2, 65535
  br label %15

15:                                               ; preds = %36, %12
  %16 = phi i32 [ 0, %12 ], [ %37, %36 ]
  %17 = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %14
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = getelementptr %struct.sunxi_desc_pin, ptr %13, i32 %16, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.sunxi_desc_function, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %31, %20
  %27 = phi ptr [ %34, %31 ], [ %24, %20 ]
  %28 = phi ptr [ %32, %31 ], [ %22, %20 ]
  %29 = tail call i32 @strcmp(ptr noundef nonnull %27, ptr noundef nonnull %6) #14
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %26
  %32 = getelementptr %struct.sunxi_desc_function, ptr %28, i32 1
  %33 = getelementptr %struct.sunxi_desc_function, ptr %28, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %26

36:                                               ; preds = %31, %20, %15
  %37 = add nuw nsw i32 %16, 1
  %38 = icmp eq i32 %37, %10
  br i1 %38, label %71, label %15

39:                                               ; preds = %26
  %40 = icmp eq ptr %28, null
  br i1 %40, label %71, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.sunxi_desc_function, ptr %28, i32 0, i32 2
  %43 = load i8, ptr %42, align 4
  %44 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #14
  %45 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %44, i32 0, i32 12
  %46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %45) #14
  %47 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %44, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %48, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = sub i32 %2, %50
  %52 = load ptr, ptr %44, align 4
  %53 = lshr i32 %51, 5
  %54 = and i32 %53, 255
  %55 = mul nuw nsw i32 %54, 36
  %56 = lshr i32 %51, 1
  %57 = and i32 %56, 12
  %58 = add nuw nsw i32 %55, %57
  %59 = getelementptr i8, ptr %52, i32 %58
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %61 = shl i32 %51, 2
  %62 = and i32 %61, 28
  %63 = shl nuw i32 15, %62
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !17
  tail call void @arm_heavy_mb() #14
  %64 = xor i32 %63, -1
  %65 = and i32 %60, %64
  %66 = zext i8 %43 to i32
  %67 = shl i32 %66, %62
  %68 = or i32 %65, %67
  %69 = load ptr, ptr %44, align 4
  %70 = getelementptr i8, ptr %69, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %68) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %45, i32 noundef %46) #14
  br label %71

71:                                               ; preds = %41, %39, %36, %4
  %72 = phi i32 [ 0, %41 ], [ -22, %39 ], [ -22, %4 ], [ -22, %36 ]
  ret i32 %72
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #11

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #13 {
  %7 = icmp ult i32 %3, 3
  br i1 %7, label %64, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %10, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %12, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = load i32, ptr %2, align 4
  %20 = shl i32 %19, 5
  %21 = add i32 %20, %18
  %22 = getelementptr i32, ptr %2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = load ptr, ptr %12, align 4
  %26 = and i32 %24, 65535
  br label %27

27:                                               ; preds = %48, %16
  %28 = phi i32 [ 0, %16 ], [ %49, %48 ]
  %29 = getelementptr %struct.sunxi_desc_pin, ptr %25, i32 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, %26
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = getelementptr %struct.sunxi_desc_pin, ptr %25, i32 %28, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.sunxi_desc_function, ptr %34, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %43, %32
  %39 = phi ptr [ %46, %43 ], [ %36, %32 ]
  %40 = phi ptr [ %44, %43 ], [ %34, %32 ]
  %41 = tail call i32 @strcmp(ptr noundef nonnull %39, ptr noundef nonnull dereferenceable(4) @.str.5) #14
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = getelementptr %struct.sunxi_desc_function, ptr %40, i32 1
  %45 = getelementptr %struct.sunxi_desc_function, ptr %40, i32 1, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %38

48:                                               ; preds = %43, %32, %27
  %49 = add nuw nsw i32 %28, 1
  %50 = icmp eq i32 %49, %14
  br i1 %50, label %64, label %27

51:                                               ; preds = %38
  %52 = icmp eq ptr %40, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.sunxi_desc_function, ptr %40, i32 0, i32 3
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 5
  %58 = getelementptr inbounds %struct.sunxi_desc_function, ptr %40, i32 0, i32 4
  %59 = load i8, ptr %58, align 2
  %60 = zext i8 %59 to i32
  %61 = add nuw nsw i32 %57, %60
  store i32 %61, ptr %4, align 4
  %62 = getelementptr i32, ptr %2, i32 2
  %63 = load i32, ptr %62, align 4
  store i32 %63, ptr %5, align 4
  br label %64

64:                                               ; preds = %53, %51, %48, %8, %6
  %65 = phi i32 [ 0, %53 ], [ -22, %6 ], [ -22, %51 ], [ -22, %8 ], [ -22, %48 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = and i32 %8, 255
  br i1 %11, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %10, i32 %12
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %12, %1 ]
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 532
  %20 = and i32 %7, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !35
  tail call void @arm_heavy_mb() #14
  %21 = shl nuw i32 1, %20
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #14, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = and i32 %8, 255
  br i1 %11, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %10, i32 %12
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %12, %1 ]
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 528
  %20 = and i32 %7, 31
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 12
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 %19
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !37
  tail call void @arm_heavy_mb() #14
  %26 = shl nuw i32 1, %20
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = and i32 %8, 255
  br i1 %11, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %10, i32 %12
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %12, %1 ]
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 528
  %20 = and i32 %7, 31
  %21 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 12
  %22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %21) #14
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 %19
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !39
  tail call void @arm_heavy_mb() #14
  %26 = shl nuw i32 1, %20
  %27 = or i32 %25, %26
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %21, i32 noundef %22) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_set_type(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = lshr i32 %8, 5
  %10 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %6, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  %13 = and i32 %9, 255
  br i1 %12, label %17, label %14

14:                                               ; preds = %2
  %15 = getelementptr i32, ptr %11, i32 %13
  %16 = load i32, ptr %15, align 4
  br label %17

17:                                               ; preds = %14, %2
  %18 = phi i32 [ %16, %14 ], [ %13, %2 ]
  %19 = lshr i32 %8, 1
  %20 = and i32 %19, 12
  %21 = shl i32 %18, 5
  %22 = add i32 %21, 512
  %23 = or i32 %22, %20
  %24 = shl i32 %8, 2
  %25 = and i32 %24, 28
  %26 = add i32 %1, -1
  %27 = icmp ult i32 %26, 8
  br i1 %27, label %28, label %57

28:                                               ; preds = %17
  %29 = trunc i32 %26 to i8
  %30 = lshr i8 -113, %29
  %31 = and i8 %30, 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %57, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds [8 x i32], ptr @switch.table.sunxi_pinctrl_irq_set_type, i32 0, i32 %26
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 12
  %37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %36) #14
  %38 = and i32 %1, 12
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.irq_desc, ptr %41, i32 0, i32 3
  %43 = select i1 %39, ptr @handle_edge_irq, ptr @handle_fasteoi_irq
  %44 = select i1 %39, ptr @sunxi_pinctrl_edge_irq_chip, ptr @sunxi_pinctrl_level_irq_chip
  store ptr %43, ptr %42, align 4
  %45 = getelementptr inbounds %struct.irq_desc, ptr %41, i32 0, i32 33
  store ptr null, ptr %45, align 16
  %46 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 4
  store ptr %44, ptr %46, align 4
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 %23
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !40
  %50 = shl nuw i32 15, %25
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !41
  tail call void @arm_heavy_mb() #14
  %53 = shl nuw nsw i32 %35, %25
  %54 = or i32 %52, %53
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %36, i32 noundef %37) #14
  br label %57

57:                                               ; preds = %33, %28, %17
  %58 = phi i32 [ 0, %33 ], [ -22, %17 ], [ -22, %28 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = lshr i32 %6, 5
  %8 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %4, i32 0, i32 10
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %7, 255
  %11 = getelementptr i32, ptr %9, i32 %10
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @irq_set_irq_wake(i32 noundef %12, i32 noundef %1) #14
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_pinctrl_irq_request_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr i32, ptr %5, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %11, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %92

15:                                               ; preds = %1
  %16 = load ptr, ptr %11, align 4
  %17 = and i32 %9, 65535
  br label %18

18:                                               ; preds = %39, %15
  %19 = phi i32 [ 0, %15 ], [ %40, %39 ]
  %20 = getelementptr %struct.sunxi_desc_pin, ptr %16, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %17
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = getelementptr %struct.sunxi_desc_pin, ptr %16, i32 %19, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.sunxi_desc_function, ptr %25, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %34, %23
  %30 = phi ptr [ %37, %34 ], [ %27, %23 ]
  %31 = phi ptr [ %35, %34 ], [ %25, %23 ]
  %32 = tail call i32 @strcmp(ptr noundef nonnull %30, ptr noundef nonnull dereferenceable(4) @.str.5) #14
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %29
  %35 = getelementptr %struct.sunxi_desc_function, ptr %31, i32 1
  %36 = getelementptr %struct.sunxi_desc_function, ptr %31, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %29

39:                                               ; preds = %34, %23, %18
  %40 = add nuw nsw i32 %19, 1
  %41 = icmp eq i32 %40, %13
  br i1 %41, label %92, label %18

42:                                               ; preds = %29
  %43 = icmp eq ptr %31, null
  br i1 %43, label %92, label %44

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %11, i32 0, i32 2
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 %9, %48
  %50 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %46, i32 noundef %49) #14
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = load i32, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.28, i32 noundef %55) #17
  br label %92

56:                                               ; preds = %44
  %57 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 13
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = load i32, ptr %6, align 4
  %61 = getelementptr i32, ptr %59, i32 %60
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr inbounds %struct.sunxi_desc_function, ptr %31, i32 0, i32 2
  %64 = load i8, ptr %63, align 4
  %65 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %58) #14
  %66 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %65, i32 0, i32 12
  %67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %66) #14
  %68 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %65, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %69, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = sub i32 %62, %71
  %73 = load ptr, ptr %65, align 4
  %74 = lshr i32 %72, 5
  %75 = and i32 %74, 255
  %76 = mul nuw nsw i32 %75, 36
  %77 = lshr i32 %72, 1
  %78 = and i32 %77, 12
  %79 = add nuw nsw i32 %76, %78
  %80 = getelementptr i8, ptr %73, i32 %79
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !16
  %82 = shl i32 %72, 2
  %83 = and i32 %82, 28
  %84 = shl nuw i32 15, %83
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !17
  tail call void @arm_heavy_mb() #14
  %85 = xor i32 %84, -1
  %86 = and i32 %81, %85
  %87 = zext i8 %64 to i32
  %88 = shl i32 %87, %83
  %89 = or i32 %86, %88
  %90 = load ptr, ptr %65, align 4
  %91 = getelementptr i8, ptr %90, i32 %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %89) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %66, i32 noundef %67) #14
  br label %92

92:                                               ; preds = %56, %52, %42, %39, %1
  %93 = phi i32 [ %50, %52 ], [ 0, %56 ], [ -22, %42 ], [ -22, %1 ], [ -22, %39 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_release_resources(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr i32, ptr %7, i32 %9
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %13, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %11, %15
  tail call void @gpiochip_unlock_as_irq(ptr noundef %5, i32 noundef %16) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_pinctrl_irq_ack_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 5
  %9 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %5, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  %12 = and i32 %8, 255
  br i1 %11, label %16, label %13

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %10, i32 %12
  %15 = load i32, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %12, %1 ]
  %18 = shl i32 %17, 5
  %19 = add i32 %18, 532
  %20 = and i32 %7, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !35
  tail call void @arm_heavy_mb() #14
  %21 = shl nuw i32 1, %20
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #14, !srcloc !11
  %24 = load ptr, ptr %2, align 4
  %25 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %24, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %6, align 4
  %28 = lshr i32 %27, 5
  %29 = getelementptr inbounds %struct.sunxi_pinctrl_desc, ptr %26, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  %32 = and i32 %28, 255
  br i1 %31, label %36, label %33

33:                                               ; preds = %16
  %34 = getelementptr i32, ptr %30, i32 %32
  %35 = load i32, ptr %34, align 4
  br label %36

36:                                               ; preds = %33, %16
  %37 = phi i32 [ %35, %33 ], [ %32, %16 ]
  %38 = shl i32 %37, 5
  %39 = add i32 %38, 528
  %40 = and i32 %27, 31
  %41 = getelementptr inbounds %struct.sunxi_pinctrl, ptr %24, i32 0, i32 12
  %42 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %41) #14
  %43 = load ptr, ptr %24, align 4
  %44 = getelementptr i8, ptr %43, i32 %39
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #14, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #14, !srcloc !38
  tail call void asm sideeffect "dsb st", "~{memory}"() #14, !srcloc !39
  tail call void @arm_heavy_mb() #14
  %46 = shl nuw i32 1, %40
  %47 = or i32 %45, %46
  %48 = load ptr, ptr %24, align 4
  %49 = getelementptr i8, ptr %48, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #14, !srcloc !11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %41, i32 noundef %42) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly nofree nounwind willreturn writeonly }
attributes #12 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { cold nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2153752750}
!11 = !{i64 398382}
!12 = !{i64 2153753167}
!13 = !{i64 398800}
!14 = !{i64 2153729503}
!15 = !{i64 2153729851}
!16 = !{i64 2153726549}
!17 = !{i64 2153726800}
!18 = !{i64 2153728921}
!19 = !{!"auto-init"}
!20 = !{i64 2153736551}
!21 = !{i64 2153748743}
!22 = !{i64 2153721035}
!23 = !{i64 2153722655}
!24 = !{i64 2153722860}
!25 = !{i64 633641, i64 2148123612, i64 2148123638, i64 2148123685, i64 2148123707, i64 2148123735, i64 2148123755}
!26 = !{i64 2148136485, i64 2148136517, i64 2148136546, i64 2148136580, i64 2148136611, i64 2148136634}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2153723674}
!29 = !{i64 2153724563}
!30 = !{i64 2153725315}
!31 = !{i64 2153725524}
!32 = !{i64 2148236683}
!33 = !{i64 2148138842, i64 2148138874, i64 2148138903, i64 2148138937, i64 2148138968, i64 2148138991}
!34 = !{i64 2149674389}
!35 = !{i64 2153733154}
!36 = !{i64 2153733891}
!37 = !{i64 2153734092}
!38 = !{i64 2153735067}
!39 = !{i64 2153735267}
!40 = !{i64 2153732294}
!41 = !{i64 2153732534}
