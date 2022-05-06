; ModuleID = '/llk/IR/drivers/pinctrl/actions/pinctrl-owl.c_pt.bc'
source_filename = "../drivers/pinctrl/actions/pinctrl-owl.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
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
%struct.owl_pinctrl = type { ptr, ptr, %struct.gpio_chip, %struct.raw_spinlock, ptr, ptr, ptr, %struct.irq_chip, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.owl_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.owl_gpio_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.owl_pingroup = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.owl_pinmux_func = type { ptr, ptr, i32 }
%struct.owl_padinfo = type { i32, ptr, ptr }
%struct.owl_pullctl = type { i32, i32, i32 }
%struct.owl_st = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.callback_head = type { ptr, ptr }

@.str = private unnamed_addr constant [18 x i8] c"no clock defined\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clk enable failed\0A\00", align 1
@owl_pinctrl_desc = internal global %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @owl_pinctrl_ops, ptr @owl_pinmux_ops, ptr @owl_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not register Actions OWL pinmux driver\0A\00", align 1
@owl_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @owl_get_groups_count, ptr @owl_get_group_name, ptr @owl_get_group_pins, ptr @owl_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, align 4
@owl_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @owl_get_funcs_count, ptr @owl_get_func_name, ptr @owl_get_func_groups, ptr @owl_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@owl_pinconf_ops = internal constant %struct.pinconf_ops { i8 1, ptr @owl_pin_config_get, ptr @owl_pin_config_set, ptr @owl_group_config_get, ptr @owl_group_config_set, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"drivers/pinctrl/actions/pinctrl-owl.c\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to register gpiochip\0A\00", align 1
@switch.table.owl_group_config_get = private unnamed_addr constant [4 x i32] [i32 512, i32 1024, i32 2048, i32 3072], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @owl_pinctrl_probe(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 472, i32 noundef 3520) #6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %166, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %8 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %166

12:                                               ; preds = %6
  %13 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef null) #6
  %14 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 4
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str) #7
  %17 = load ptr, ptr %14, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %166

19:                                               ; preds = %12
  %20 = tail call i32 @clk_prepare(ptr noundef %13) #6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = tail call i32 @clk_enable(ptr noundef %13) #6
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %13) #6
  br label %26

26:                                               ; preds = %25, %19
  %27 = phi i32 [ %23, %25 ], [ %20, %19 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #7
  br label %166

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  store i32 0, ptr %29, align 4
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %3, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = phi ptr [ %34, %33 ], [ %31, %28 ]
  store ptr %36, ptr @owl_pinctrl_desc, align 4
  %37 = load ptr, ptr %1, align 4
  store ptr %37, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @owl_pinctrl_desc, i32 0, i32 1), align 4
  %38 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  store i32 %39, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @owl_pinctrl_desc, i32 0, i32 2), align 4
  %40 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 8
  store ptr @owl_gpio_direction_input, ptr %40, align 4
  %41 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 9
  store ptr @owl_gpio_direction_output, ptr %41, align 4
  %42 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 10
  store ptr @owl_gpio_get, ptr %42, align 4
  %43 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 12
  store ptr @owl_gpio_set, ptr %43, align 4
  %44 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 5
  store ptr @owl_gpio_request, ptr %44, align 4
  %45 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 6
  store ptr @owl_gpio_free, ptr %45, align 4
  %46 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  store ptr %1, ptr %46, align 4
  store ptr %3, ptr %4, align 4
  %47 = tail call ptr @devm_pinctrl_register(ptr noundef %3, ptr noundef nonnull @owl_pinctrl_desc, ptr noundef nonnull %4) #6
  %48 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 1
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #7
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %163

53:                                               ; preds = %35
  %54 = tail call i32 @platform_irq_count(ptr noundef %0) #6
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %163, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 8
  store i32 %54, ptr %57, align 4
  %58 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %54, i32 4) #6
  %59 = extractvalue { i32, i1 } %58, 1
  br i1 %59, label %60, label %62, !prof !8

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 9
  store ptr null, ptr %61, align 4
  br label %163

62:                                               ; preds = %56
  %63 = extractvalue { i32, i1 } %58, 0
  %64 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %63, i32 noundef 3520) #6
  %65 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 9
  store ptr %64, ptr %65, align 4
  %66 = icmp eq ptr %64, null
  br i1 %66, label %163, label %67

67:                                               ; preds = %62
  %68 = load i32, ptr %57, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %74, %67
  %71 = phi i32 [ %77, %74 ], [ 0, %67 ]
  %72 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %71) #6
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %163, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %65, align 4
  %76 = getelementptr i32, ptr %75, i32 %71
  store i32 %72, ptr %76, align 4
  %77 = add nuw i32 %71, 1
  %78 = load i32, ptr %57, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %70, label %80

80:                                               ; preds = %74, %67
  %81 = phi i32 [ 0, %67 ], [ %78, %74 ]
  %82 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2
  %83 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 19
  store i32 -1, ptr %83, align 4
  %84 = load ptr, ptr %46, align 4
  %85 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %84, i32 0, i32 7
  %86 = load i32, ptr %85, align 4
  %87 = trunc i32 %86 to i16
  %88 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 20
  store i16 %87, ptr %88, align 4
  %89 = load ptr, ptr %4, align 4
  %90 = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %80
  %94 = load ptr, ptr %89, align 4
  br label %95

95:                                               ; preds = %93, %80
  %96 = phi ptr [ %94, %93 ], [ %91, %80 ]
  store ptr %96, ptr %82, align 4
  %97 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 2
  store ptr %89, ptr %97, align 4
  %98 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 4
  store ptr null, ptr %98, align 4
  %99 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 39
  %100 = load ptr, ptr %99, align 4
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7
  %103 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7, i32 1
  store ptr %101, ptr %103, align 4
  %104 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7, i32 6
  store ptr @owl_gpio_irq_ack, ptr %104, align 4
  %105 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7, i32 7
  store ptr @owl_gpio_irq_mask, ptr %105, align 4
  %106 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7, i32 9
  store ptr @owl_gpio_irq_unmask, ptr %106, align 4
  %107 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 7, i32 13
  store ptr @owl_gpio_irq_set_type, ptr %107, align 4
  %108 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37
  store ptr %102, ptr %108, align 4
  %109 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 9
  store ptr @handle_simple_irq, ptr %109, align 4
  %110 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 10
  store i32 0, ptr %110, align 4
  %111 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 13
  store ptr @owl_gpio_irq_handler, ptr %111, align 4
  %112 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 14
  store ptr %4, ptr %112, align 4
  %113 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 15
  store i32 %81, ptr %113, align 4
  %114 = load ptr, ptr %65, align 4
  %115 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 16
  store ptr %114, ptr %115, align 4
  %116 = shl i32 %86, 2
  %117 = and i32 %116, 262140
  %118 = tail call noalias ptr @devm_kmalloc(ptr noundef %89, i32 noundef %117, i32 noundef 3520) #6
  %119 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 17
  store ptr %118, ptr %119, align 4
  %120 = icmp eq ptr %118, null
  br i1 %120, label %163, label %121

121:                                              ; preds = %95
  %122 = load ptr, ptr %46, align 4
  %123 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %122, i32 0, i32 9
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %156, label %126

126:                                              ; preds = %148, %121
  %127 = phi ptr [ %149, %148 ], [ %122, %121 ]
  %128 = phi i32 [ %151, %148 ], [ 0, %121 ]
  %129 = phi i32 [ %152, %148 ], [ 0, %121 ]
  %130 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %127, i32 0, i32 8
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr %struct.owl_gpio_port, ptr %131, i32 %129, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %148, label %135

135:                                              ; preds = %135, %126
  %136 = phi i32 [ %143, %135 ], [ 0, %126 ]
  %137 = load ptr, ptr %115, align 4
  %138 = getelementptr i32, ptr %137, i32 %129
  %139 = load i32, ptr %138, align 4
  %140 = load ptr, ptr %119, align 4
  %141 = add i32 %136, %128
  %142 = getelementptr i32, ptr %140, i32 %141
  store i32 %139, ptr %142, align 4
  %143 = add nuw i32 %136, 1
  %144 = load i32, ptr %132, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %135, label %146

146:                                              ; preds = %135
  %147 = load ptr, ptr %46, align 4
  br label %148

148:                                              ; preds = %146, %126
  %149 = phi ptr [ %127, %126 ], [ %147, %146 ]
  %150 = phi i32 [ 0, %126 ], [ %144, %146 ]
  %151 = add i32 %150, %128
  %152 = add nuw i32 %129, 1
  %153 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %149, i32 0, i32 9
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %152, %154
  br i1 %155, label %126, label %156

156:                                              ; preds = %148, %121
  %157 = tail call i32 @gpiochip_add_data_with_key(ptr noundef %82, ptr noundef %4, ptr noundef null, ptr noundef null) #6
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.5) #7
  br label %163

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %162, align 8
  br label %166

163:                                              ; preds = %159, %95, %70, %62, %60, %53, %50
  %164 = phi i32 [ %52, %50 ], [ %54, %53 ], [ -12, %62 ], [ -12, %60 ], [ -12, %95 ], [ %157, %159 ], [ %72, %70 ]
  %165 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %165) #6
  tail call void @clk_unprepare(ptr noundef %165) #6
  br label %166

166:                                              ; preds = %163, %161, %26, %16, %10, %2
  %167 = phi i32 [ %11, %10 ], [ %18, %16 ], [ %27, %26 ], [ %164, %163 ], [ 0, %161 ], [ -12, %2 ]
  ret i32 %167
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gpio_direction_input(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = phi i32 [ 0, %9 ], [ %18, %21 ]
  %15 = icmp ule i32 %14, %1
  %16 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %14
  %19 = icmp ugt i32 %18, %1
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %12

24:                                               ; preds = %12
  %25 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %24, %21, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 627, i32 noundef 9, ptr noundef null) #6
  br label %48

28:                                               ; preds = %24
  %29 = sub i32 %1, %14
  %30 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %25, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 3
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #6
  %36 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !9
  %40 = shl nuw i32 1, %29
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %42) #6, !srcloc !10
  %43 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %33, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  %47 = or i32 %46, %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  br label %48

48:                                               ; preds = %28, %27
  %49 = phi i32 [ -19, %27 ], [ 0, %28 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gpio_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %22, %10
  %14 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %15 = phi i32 [ 0, %10 ], [ %19, %22 ]
  %16 = icmp ule i32 %15, %1
  %17 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %15
  %20 = icmp ugt i32 %19, %1
  %21 = select i1 %16, i1 %20, i1 false
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = add nuw i32 %14, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %28, label %13

25:                                               ; preds = %13
  %26 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %25, %22, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 649, i32 noundef 9, ptr noundef null) #6
  br label %57

29:                                               ; preds = %25
  %30 = sub i32 %1, %15
  %31 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %26, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #6
  %37 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !9
  %41 = shl nuw i32 1, %30
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %43) #6, !srcloc !10
  %44 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %34, i32 %45
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #6, !srcloc !9
  %48 = or i32 %47, %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %48) #6, !srcloc !10
  %49 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 4
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr i8, ptr %34, i32 %50
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !9
  %53 = icmp eq i32 %2, 0
  %54 = or i32 %52, %41
  %55 = and i32 %52, %42
  %56 = select i1 %53, i32 %55, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %56) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #6
  br label %57

57:                                               ; preds = %29, %28
  %58 = phi i32 [ -19, %28 ], [ 0, %29 ]
  ret i32 %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gpio_get(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = phi i32 [ 0, %9 ], [ %18, %21 ]
  %15 = icmp ule i32 %14, %1
  %16 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %14
  %19 = icmp ugt i32 %18, %1
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %12

24:                                               ; preds = %12
  %25 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %24, %21, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 589, i32 noundef 9, ptr noundef null) #6
  br label %42

28:                                               ; preds = %24
  %29 = sub i32 %1, %14
  %30 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %25, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 3
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #6
  %36 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  %40 = lshr i32 %39, %29
  %41 = and i32 %40, 1
  br label %42

42:                                               ; preds = %28, %27
  %43 = phi i32 [ -19, %27 ], [ %41, %28 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %6, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %6, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %22, %10
  %14 = phi i32 [ 0, %10 ], [ %23, %22 ]
  %15 = phi i32 [ 0, %10 ], [ %19, %22 ]
  %16 = icmp ule i32 %15, %1
  %17 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %15
  %20 = icmp ugt i32 %19, %1
  %21 = select i1 %16, i1 %20, i1 false
  br i1 %21, label %25, label %22

22:                                               ; preds = %13
  %23 = add nuw i32 %14, 1
  %24 = icmp eq i32 %23, %8
  br i1 %24, label %28, label %13

25:                                               ; preds = %13
  %26 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29, !prof !8

28:                                               ; preds = %25, %22, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 609, i32 noundef 9, ptr noundef null) #6
  br label %47

29:                                               ; preds = %25
  %30 = sub i32 %1, %15
  %31 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = load i32, ptr %26, align 4
  %34 = getelementptr i8, ptr %32, i32 %33
  %35 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %36 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %35) #6
  %37 = getelementptr %struct.owl_gpio_port, ptr %12, i32 %14, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr i8, ptr %34, i32 %38
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #6, !srcloc !9
  %41 = icmp eq i32 %2, 0
  %42 = shl nuw i32 1, %30
  %43 = or i32 %40, %42
  %44 = xor i32 %42, -1
  %45 = and i32 %40, %44
  %46 = select i1 %41, i32 %45, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %46) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %35, i32 noundef %36) #6
  br label %47

47:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gpio_request(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = phi i32 [ 0, %9 ], [ %18, %21 ]
  %15 = icmp ule i32 %14, %1
  %16 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %14
  %19 = icmp ugt i32 %18, %1
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %12

24:                                               ; preds = %12
  %25 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %24, %21, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 542, i32 noundef 9, ptr noundef null) #6
  br label %42

28:                                               ; preds = %24
  %29 = sub i32 %1, %14
  %30 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %25, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 3
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #6
  %36 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !9
  %40 = shl nuw i32 1, %29
  %41 = or i32 %39, %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %41) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  br label %42

42:                                               ; preds = %28, %27
  %43 = phi i32 [ -19, %27 ], [ 0, %28 ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_free(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %21, %9
  %13 = phi i32 [ 0, %9 ], [ %22, %21 ]
  %14 = phi i32 [ 0, %9 ], [ %18, %21 ]
  %15 = icmp ule i32 %14, %1
  %16 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %14
  %19 = icmp ugt i32 %18, %1
  %20 = select i1 %15, i1 %19, i1 false
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = add nuw i32 %13, 1
  %23 = icmp eq i32 %22, %7
  br i1 %23, label %27, label %12

24:                                               ; preds = %12
  %25 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !8

27:                                               ; preds = %24, %21, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 566, i32 noundef 9, ptr noundef null) #6
  br label %48

28:                                               ; preds = %24
  %29 = sub i32 %1, %14
  %30 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %25, align 4
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 3
  %35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %34) #6
  %36 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %33, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !9
  %40 = shl nuw i32 1, %29
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %42) #6, !srcloc !10
  %43 = getelementptr %struct.owl_gpio_port, ptr %11, i32 %13, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %33, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  %47 = and i32 %46, %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %47) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %34, i32 noundef %35) #6
  br label %48

48:                                               ; preds = %28, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_get_groups_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.owl_pinctrl, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_get_group_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.owl_pingroup, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_get_group_pins(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.owl_pingroup, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_pin_dbg_show(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %12) #6
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_get_funcs_count(ptr noundef %0) #0 {
  %2 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %3 = getelementptr inbounds %struct.owl_pinctrl, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @owl_get_func_name(ptr noundef %0, i32 noundef %1) #0 {
  %3 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %4 = getelementptr inbounds %struct.owl_pinctrl, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.owl_pinmux_func, ptr %7, i32 %1
  %9 = load ptr, ptr %8, align 4
  ret ptr %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_get_func_groups(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.owl_pinmux_func, ptr %9, i32 %1, i32 1
  %11 = load ptr, ptr %10, align 4
  store ptr %11, ptr %2, align 4
  %12 = load ptr, ptr %6, align 4
  %13 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr %struct.owl_pinmux_func, ptr %14, i32 %1, i32 2
  %16 = load i32, ptr %15, align 4
  store i32 %16, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.owl_pingroup, ptr %8, i32 %2, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %3
  %13 = getelementptr %struct.owl_pingroup, ptr %8, i32 %2, i32 3
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %20, %12
  %16 = phi i32 [ 0, %12 ], [ %21, %20 ]
  %17 = getelementptr i32, ptr %14, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = add nuw i32 %16, 1
  %22 = icmp eq i32 %21, %10
  br i1 %22, label %26, label %15

23:                                               ; preds = %15, %3
  %24 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %25 = icmp eq i32 %24, %10
  br i1 %25, label %26, label %27, !prof !8

26:                                               ; preds = %23, %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 178, i32 noundef 9, ptr noundef null) #6
  br label %51

27:                                               ; preds = %23
  %28 = getelementptr %struct.owl_pingroup, ptr %8, i32 %2, i32 7
  %29 = load i32, ptr %28, align 4
  %30 = shl nuw i32 1, %29
  %31 = icmp ugt i32 %24, %30
  %32 = select i1 %31, i32 %30, i32 0
  %33 = sub i32 %24, %32
  %34 = add i32 %30, -1
  %35 = getelementptr %struct.owl_pingroup, ptr %8, i32 %2, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = shl i32 %34, %36
  %38 = shl i32 %33, %36
  %39 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %39) #6
  %41 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.owl_pingroup, ptr %8, i32 %2, i32 5
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i8, ptr %42, i32 %44
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #6, !srcloc !9
  %47 = xor i32 %37, -1
  %48 = and i32 %46, %47
  %49 = and i32 %38, %37
  %50 = or i32 %48, %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %50) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %39, i32 noundef %40) #6
  br label %51

51:                                               ; preds = %27, %26
  %52 = phi i32 [ 0, %27 ], [ -22, %26 ]
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pin_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = load i32, ptr %2, align 4
  %7 = and i32 %6, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #6
  %8 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr %struct.owl_padinfo, ptr %11, i32 %1
  %13 = trunc i32 %6 to i8
  switch i8 %13, label %54 [
    i8 0, label %14
    i8 2, label %14
    i8 3, label %14
    i8 5, label %14
    i8 14, label %21
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = getelementptr %struct.owl_padinfo, ptr %11, i32 %1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.owl_pullctl, ptr %16, i32 0, i32 1
  %20 = getelementptr inbounds %struct.owl_pullctl, ptr %16, i32 0, i32 2
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr %struct.owl_padinfo, ptr %11, i32 %1, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %54, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.owl_st, ptr %23, i32 0, i32 1
  %27 = getelementptr inbounds %struct.owl_st, ptr %23, i32 0, i32 2
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi ptr [ %23, %25 ], [ %16, %18 ]
  %30 = phi ptr [ %26, %25 ], [ %19, %18 ]
  %31 = phi ptr [ %27, %25 ], [ %20, %18 ]
  %32 = load i32, ptr %30, align 4
  %33 = load i32, ptr %29, align 4
  %34 = load i32, ptr %31, align 4
  %35 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr i8, ptr %36, i32 %33
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #6, !srcloc !9
  %39 = shl nsw i32 -1, %34
  %40 = xor i32 %39, -1
  %41 = lshr i32 %38, %32
  %42 = and i32 %41, %40
  store i32 %42, ptr %4, align 4
  %43 = load ptr, ptr %8, align 4
  %44 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %43, i32 0, i32 10
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %28
  %48 = call i32 %45(ptr noundef %12, i32 noundef %7, ptr noundef nonnull %4) #6
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i32, ptr %4, align 4
  %52 = shl i32 %51, 8
  %53 = or i32 %52, %7
  store i32 %53, ptr %2, align 4
  br label %54

54:                                               ; preds = %50, %47, %28, %21, %14, %3
  %55 = phi i32 [ 0, %50 ], [ -524, %28 ], [ %48, %47 ], [ -524, %3 ], [ -22, %21 ], [ -22, %14 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #6
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_pin_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #6
  %7 = getelementptr inbounds %struct.owl_pinctrl, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.owl_padinfo, ptr %10, i32 %1
  %12 = getelementptr %struct.owl_padinfo, ptr %10, i32 %1, i32 2
  %13 = icmp eq i32 %3, 0
  br i1 %13, label %67, label %14

14:                                               ; preds = %4
  %15 = getelementptr %struct.owl_padinfo, ptr %10, i32 %1, i32 1
  %16 = getelementptr inbounds %struct.owl_pinctrl, ptr %6, i32 0, i32 3
  %17 = getelementptr inbounds %struct.owl_pinctrl, ptr %6, i32 0, i32 6
  br label %18

18:                                               ; preds = %51, %14
  %19 = phi i32 [ 0, %14 ], [ %65, %51 ]
  %20 = getelementptr i32, ptr %2, i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 255
  %23 = lshr i32 %21, 8
  store i32 %23, ptr %5, align 4
  %24 = trunc i32 %21 to i8
  switch i8 %24, label %67 [
    i8 0, label %25
    i8 2, label %25
    i8 3, label %25
    i8 5, label %25
    i8 14, label %31
  ]

25:                                               ; preds = %18, %18, %18, %18
  %26 = load ptr, ptr %15, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %67, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.owl_pullctl, ptr %26, i32 0, i32 1
  %30 = getelementptr inbounds %struct.owl_pullctl, ptr %26, i32 0, i32 2
  br label %37

31:                                               ; preds = %18
  %32 = load ptr, ptr %12, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %67, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.owl_st, ptr %32, i32 0, i32 1
  %36 = getelementptr inbounds %struct.owl_st, ptr %32, i32 0, i32 2
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %32, %34 ], [ %26, %28 ]
  %39 = phi ptr [ %35, %34 ], [ %29, %28 ]
  %40 = phi ptr [ %36, %34 ], [ %30, %28 ]
  %41 = load i32, ptr %39, align 4
  %42 = load i32, ptr %38, align 4
  %43 = load i32, ptr %40, align 4
  %44 = load ptr, ptr %7, align 4
  %45 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %44, i32 0, i32 11
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %67, label %48

48:                                               ; preds = %37
  %49 = call i32 %46(ptr noundef %11, i32 noundef %22, ptr noundef nonnull %5) #6
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #6
  %53 = load i32, ptr %5, align 4
  %54 = shl nsw i32 -1, %43
  %55 = xor i32 %54, -1
  %56 = shl i32 %55, %41
  %57 = load ptr, ptr %17, align 4
  %58 = getelementptr i8, ptr %57, i32 %42
  %59 = shl i32 %53, %41
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #6, !srcloc !9
  %61 = xor i32 %56, -1
  %62 = and i32 %60, %61
  %63 = and i32 %59, %56
  %64 = or i32 %62, %63
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %64) #6, !srcloc !10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %52) #6
  %65 = add nuw i32 %19, 1
  %66 = icmp eq i32 %65, %3
  br i1 %66, label %67, label %18

67:                                               ; preds = %51, %48, %37, %31, %25, %18, %4
  %68 = phi i32 [ 0, %4 ], [ -524, %18 ], [ -22, %31 ], [ -22, %25 ], [ 0, %51 ], [ %49, %48 ], [ -524, %37 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #6
  ret i32 %68
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_group_config_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = load i32, ptr %2, align 4
  %6 = and i32 %5, 255
  %7 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = trunc i32 %5 to i8
  switch i8 %11, label %55 [
    i8 9, label %12
    i8 24, label %16
  ]

12:                                               ; preds = %3
  %13 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %55, label %20

16:                                               ; preds = %3
  %17 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 11
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %55, label %34

20:                                               ; preds = %12
  %21 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 9
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 10
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %14
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #6, !srcloc !9
  %29 = shl nsw i32 -1, %24
  %30 = xor i32 %29, -1
  %31 = lshr i32 %28, %22
  %32 = and i32 %31, %30
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %49, label %55

34:                                               ; preds = %16
  %35 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 12
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr %struct.owl_pingroup, ptr %10, i32 %1, i32 13
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr i8, ptr %40, i32 %18
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  %43 = shl nsw i32 -1, %38
  %44 = xor i32 %43, -1
  %45 = lshr i32 %42, %36
  %46 = and i32 %45, %44
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 0, i32 256
  br label %52

49:                                               ; preds = %20
  %50 = getelementptr inbounds [4 x i32], ptr @switch.table.owl_group_config_get, i32 0, i32 %32
  %51 = load i32, ptr %50, align 4
  br label %52

52:                                               ; preds = %49, %34
  %53 = phi i32 [ %48, %34 ], [ %51, %49 ]
  %54 = or i32 %53, %6
  store i32 %54, ptr %2, align 4
  br label %55

55:                                               ; preds = %52, %20, %16, %12, %3
  %56 = phi i32 [ 0, %52 ], [ -22, %20 ], [ -524, %3 ], [ -22, %16 ], [ -22, %12 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_group_config_set(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 11
  %11 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 8
  %12 = icmp eq i32 %3, 0
  br i1 %12, label %64, label %13

13:                                               ; preds = %4
  %14 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 12
  %15 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 13
  %16 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 9
  %17 = getelementptr %struct.owl_pingroup, ptr %9, i32 %1, i32 10
  %18 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 3
  %19 = getelementptr inbounds %struct.owl_pinctrl, ptr %5, i32 0, i32 6
  br label %20

20:                                               ; preds = %45, %13
  %21 = phi i32 [ 0, %13 ], [ %62, %45 ]
  %22 = getelementptr i32, ptr %2, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 8
  %25 = trunc i32 %23 to i8
  switch i8 %25, label %64 [
    i8 9, label %26
    i8 24, label %29
  ]

26:                                               ; preds = %20
  %27 = load i32, ptr %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %64, label %32

29:                                               ; preds = %20
  %30 = load i32, ptr %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %64, label %40

32:                                               ; preds = %26
  %33 = load i32, ptr %16, align 4
  %34 = load i32, ptr %17, align 4
  %35 = add nsw i32 %24, -2
  %36 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %35, i32 31) #6
  switch i32 %36, label %64 [
    i32 0, label %45
    i32 1, label %37
    i32 3, label %38
    i32 5, label %39
  ]

37:                                               ; preds = %32
  br label %45

38:                                               ; preds = %32
  br label %45

39:                                               ; preds = %32
  br label %45

40:                                               ; preds = %29
  %41 = load i32, ptr %14, align 4
  %42 = load i32, ptr %15, align 4
  %43 = icmp ugt i32 %23, 255
  %44 = zext i1 %43 to i32
  br label %45

45:                                               ; preds = %40, %39, %38, %37, %32
  %46 = phi i32 [ %34, %39 ], [ %34, %38 ], [ %34, %37 ], [ %34, %32 ], [ %42, %40 ]
  %47 = phi i32 [ %33, %39 ], [ %33, %38 ], [ %33, %37 ], [ %33, %32 ], [ %41, %40 ]
  %48 = phi i32 [ %27, %39 ], [ %27, %38 ], [ %27, %37 ], [ %27, %32 ], [ %30, %40 ]
  %49 = phi i32 [ 3, %39 ], [ 2, %38 ], [ 1, %37 ], [ %36, %32 ], [ %44, %40 ]
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %18) #6
  %51 = shl nsw i32 -1, %46
  %52 = xor i32 %51, -1
  %53 = shl i32 %52, %47
  %54 = load ptr, ptr %19, align 4
  %55 = getelementptr i8, ptr %54, i32 %48
  %56 = shl i32 %49, %47
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #6, !srcloc !9
  %58 = xor i32 %53, -1
  %59 = and i32 %57, %58
  %60 = and i32 %56, %53
  %61 = or i32 %59, %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %61) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %18, i32 noundef %50) #6
  %62 = add nuw i32 %21, 1
  %63 = icmp eq i32 %62, %3
  br i1 %63, label %64, label %20

64:                                               ; preds = %45, %32, %29, %26, %20, %4
  %65 = phi i32 [ 0, %4 ], [ -524, %20 ], [ -22, %29 ], [ -22, %26 ], [ -22, %32 ], [ 0, %45 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_irq_ack(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 15
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = tail call i32 @owl_gpio_get(ptr noundef %3, i32 noundef %6)
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1, i32 2
  tail call fastcc void @irq_set_type(ptr noundef %4, i32 noundef %6, i32 noundef %15)
  br label %16

16:                                               ; preds = %12, %1
  %17 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %18, i32 0, i32 9
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %18, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %34, %22
  %26 = phi i32 [ 0, %22 ], [ %35, %34 ]
  %27 = phi i32 [ 0, %22 ], [ %31, %34 ]
  %28 = icmp uge i32 %6, %27
  %29 = getelementptr %struct.owl_gpio_port, ptr %24, i32 %26, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %27
  %32 = icmp ult i32 %6, %31
  %33 = select i1 %28, i1 %32, i1 false
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = add nuw i32 %26, 1
  %36 = icmp eq i32 %35, %20
  br i1 %36, label %40, label %25

37:                                               ; preds = %25
  %38 = getelementptr %struct.owl_gpio_port, ptr %24, i32 %26
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %41, !prof !8

40:                                               ; preds = %37, %34, %16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 800, i32 noundef 9, ptr noundef null) #6
  br label %58

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = load i32, ptr %38, align 4
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %47 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %46) #6
  %48 = getelementptr %struct.owl_gpio_port, ptr %24, i32 %26, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %45, i32 %49
  %51 = getelementptr %struct.owl_gpio_port, ptr %24, i32 %26, i32 9
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %53, 5
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #6, !srcloc !9
  %56 = shl nuw i32 1, %54
  %57 = or i32 %56, %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %57) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %46, i32 noundef %47) #6
  br label %58

58:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %24, %12
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %17 = phi i32 [ 0, %12 ], [ %21, %24 ]
  %18 = icmp uge i32 %6, %17
  %19 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %17
  %22 = icmp ult i32 %6, %21
  %23 = select i1 %18, i1 %22, i1 false
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = add nuw i32 %16, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %30, label %15

27:                                               ; preds = %15
  %28 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %27, %24, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 732, i32 noundef 9, ptr noundef null) #6
  br label %63

31:                                               ; preds = %27
  %32 = sub i32 %6, %17
  %33 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %28, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #6
  %39 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 7
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  %43 = shl nuw i32 1, %32
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %45) #6, !srcloc !10
  %46 = load i32, ptr %39, align 4
  %47 = getelementptr i8, ptr %36, i32 %46
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #6, !srcloc !9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %31
  %51 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %36, i32 %52
  %54 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 9
  %55 = load i8, ptr %54, align 4
  %56 = zext i8 %55 to i32
  %57 = mul nuw nsw i32 %56, 5
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !9
  %59 = shl i32 2, %57
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %61) #6, !srcloc !10
  br label %62

62:                                               ; preds = %50, %31
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #6
  br label %63

63:                                               ; preds = %62, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %3) #6
  %5 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %8, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %24, %12
  %16 = phi i32 [ 0, %12 ], [ %25, %24 ]
  %17 = phi i32 [ 0, %12 ], [ %21, %24 ]
  %18 = icmp uge i32 %6, %17
  %19 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %17
  %22 = icmp ult i32 %6, %21
  %23 = select i1 %18, i1 %22, i1 false
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = add nuw i32 %16, 1
  %26 = icmp eq i32 %25, %10
  br i1 %26, label %30, label %15

27:                                               ; preds = %15
  %28 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %31, !prof !8

30:                                               ; preds = %27, %24, %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 761, i32 noundef 9, ptr noundef null) #6
  br label %57

31:                                               ; preds = %27
  %32 = sub i32 %6, %17
  %33 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %34 = load ptr, ptr %33, align 4
  %35 = load i32, ptr %28, align 4
  %36 = getelementptr i8, ptr %34, i32 %35
  %37 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 3
  %38 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %37) #6
  %39 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr i8, ptr %36, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #6, !srcloc !9
  %43 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 9
  %44 = load i8, ptr %43, align 4
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %45, 5
  %47 = shl i32 6, %46
  %48 = or i32 %47, %42
  %49 = load i32, ptr %39, align 4
  %50 = getelementptr i8, ptr %36, i32 %49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #6, !srcloc !10
  %51 = getelementptr %struct.owl_gpio_port, ptr %14, i32 %16, i32 7
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr i8, ptr %36, i32 %52
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #6, !srcloc !9
  %55 = shl nuw i32 1, %32
  %56 = or i32 %54, %55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %56) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %37, i32 noundef %38) #6
  br label %57

57:                                               ; preds = %31, %30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @owl_gpio_irq_set_type(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %4) #6
  %6 = and i32 %1, 12
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 3
  %11 = select i1 %7, ptr @handle_edge_irq, ptr @handle_level_irq
  store ptr %11, ptr %10, align 4
  %12 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  tail call fastcc void @irq_set_type(ptr noundef %5, i32 noundef %13, i32 noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @owl_gpio_irq_handler(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 2, i32 37, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !11
  %11 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 8
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %16(ptr noundef %19) #6
  br label %28

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %22(ptr noundef %23) #6
  %24 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 6
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  tail call void %25(ptr noundef %23) #6
  br label %28

28:                                               ; preds = %27, %20, %18, %1
  %29 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %30, i32 0, i32 9
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %86, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 6
  %36 = getelementptr inbounds %struct.owl_pinctrl, ptr %4, i32 0, i32 9
  br label %37

37:                                               ; preds = %78, %34
  %38 = phi ptr [ %30, %34 ], [ %82, %78 ]
  %39 = phi i32 [ 0, %34 ], [ %81, %78 ]
  %40 = phi i32 [ 0, %34 ], [ %80, %78 ]
  %41 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %38, i32 0, i32 8
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr %struct.owl_gpio_port, ptr %42, i32 %39
  %44 = load ptr, ptr %35, align 4
  %45 = load i32, ptr %43, align 4
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = load ptr, ptr %36, align 4
  %48 = getelementptr i32, ptr %47, i32 %39
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %10, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %37
  %52 = getelementptr %struct.owl_gpio_port, ptr %42, i32 %39, i32 1
  %53 = load i32, ptr %52, align 4
  br label %78

54:                                               ; preds = %37
  %55 = getelementptr %struct.owl_gpio_port, ptr %42, i32 %39, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr i8, ptr %46, i32 %56
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #6, !srcloc !9
  store i32 %58, ptr %2, align 4
  %59 = getelementptr %struct.owl_gpio_port, ptr %42, i32 %39, i32 1
  %60 = load i32, ptr %59, align 4
  %61 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %60, i32 noundef 0) #6
  %62 = load i32, ptr %59, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %64, %54
  %65 = phi i32 [ %75, %64 ], [ %61, %54 ]
  %66 = add i32 %65, %40
  %67 = call i32 @generic_handle_domain_irq(ptr noundef %8, i32 noundef %66) #6
  %68 = load i32, ptr %55, align 4
  %69 = getelementptr i8, ptr %46, i32 %68
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #6, !srcloc !9
  %71 = shl nuw i32 1, %65
  %72 = or i32 %70, %71
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %72) #6, !srcloc !10
  %73 = load i32, ptr %59, align 4
  %74 = add nuw i32 %65, 1
  %75 = call i32 @_find_next_bit_le(ptr noundef nonnull %2, i32 noundef %73, i32 noundef %74) #6
  %76 = load i32, ptr %59, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %64, label %78

78:                                               ; preds = %64, %54, %51
  %79 = phi i32 [ %53, %51 ], [ %62, %54 ], [ %76, %64 ]
  %80 = add i32 %79, %40
  %81 = add nuw i32 %39, 1
  %82 = load ptr, ptr %29, align 4
  %83 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %82, i32 0, i32 9
  %84 = load i32, ptr %83, align 4
  %85 = icmp ult i32 %81, %84
  br i1 %85, label %37, label %86

86:                                               ; preds = %78, %28
  %87 = load ptr, ptr %11, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.irq_chip, ptr %6, i32 0, i32 9
  %91 = load ptr, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi ptr [ %91, %89 ], [ %87, %86 ]
  %94 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  call void %93(ptr noundef %94) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @irq_set_type(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  switch i32 %2, label %12 [
    i32 3, label %4
    i32 1, label %9
    i32 2, label %10
    i32 8, label %11
  ]

4:                                                ; preds = %3
  %5 = getelementptr inbounds %struct.owl_pinctrl, ptr %0, i32 0, i32 2
  %6 = tail call i32 @owl_gpio_get(ptr noundef %5, i32 noundef %1)
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 2, i32 3
  br label %12

9:                                                ; preds = %3
  br label %12

10:                                               ; preds = %3
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %10, %9, %4, %3
  %13 = phi i32 [ 1, %11 ], [ 3, %10 ], [ 2, %9 ], [ %8, %4 ], [ 0, %3 ]
  %14 = getelementptr inbounds %struct.owl_pinctrl, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %15, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %15, i32 0, i32 8
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %31, %19
  %23 = phi i32 [ 0, %19 ], [ %32, %31 ]
  %24 = phi i32 [ 0, %19 ], [ %28, %31 ]
  %25 = icmp ule i32 %24, %1
  %26 = getelementptr %struct.owl_gpio_port, ptr %21, i32 %23, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %24
  %29 = icmp ugt i32 %28, %1
  %30 = select i1 %25, i1 %29, i1 false
  br i1 %30, label %34, label %31

31:                                               ; preds = %22
  %32 = add nuw i32 %23, 1
  %33 = icmp eq i32 %32, %17
  br i1 %33, label %37, label %22

34:                                               ; preds = %22
  %35 = getelementptr %struct.owl_gpio_port, ptr %21, i32 %23
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !8

37:                                               ; preds = %34, %31, %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 705, i32 noundef 9, ptr noundef null) #6
  br label %63

38:                                               ; preds = %34
  %39 = sub i32 %1, %24
  %40 = getelementptr inbounds %struct.owl_pinctrl, ptr %0, i32 0, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = load i32, ptr %35, align 4
  %43 = getelementptr i8, ptr %41, i32 %42
  %44 = getelementptr inbounds %struct.owl_pinctrl, ptr %0, i32 0, i32 3
  %45 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %44) #6
  %46 = icmp slt i32 %39, 16
  %47 = select i1 %46, i32 4, i32 0
  %48 = getelementptr %struct.owl_gpio_port, ptr %21, i32 %23, i32 8
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr i8, ptr %43, i32 %49
  %51 = getelementptr i8, ptr %50, i32 %47
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #6, !srcloc !9
  %53 = srem i32 %39, 16
  %54 = shl nsw i32 %53, 1
  %55 = shl i32 3, %54
  %56 = xor i32 %55, -1
  %57 = and i32 %52, %56
  %58 = shl i32 %13, %54
  %59 = or i32 %57, %58
  %60 = load i32, ptr %48, align 4
  %61 = getelementptr i8, ptr %43, i32 %60
  %62 = getelementptr i8, ptr %61, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #6, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %44, i32 noundef %45) #6
  br label %63

63:                                               ; preds = %38, %37
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!9 = !{i64 3728379}
!10 = !{i64 3727961}
!11 = !{!"auto-init"}
