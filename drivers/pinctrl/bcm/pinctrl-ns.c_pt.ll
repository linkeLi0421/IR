; ModuleID = '/llk/IR/drivers/pinctrl/bcm/pinctrl-ns.c_pt.bc'
source_filename = "../drivers/pinctrl/bcm/pinctrl-ns.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.ns_pinctrl_group = type { ptr, ptr, i32, i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.ns_pinctrl = type { ptr, i32, ptr, ptr, %struct.pinctrl_desc }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_ns__206_301_ns_pinctrl_driver_init6 = internal global ptr @ns_pinctrl_driver_init, section ".initcall6.init", align 4
@ns_pinctrl_driver = internal global %struct.platform_driver { ptr @ns_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ns_pinctrl_of_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_ns_pinctrl_driver_exit = internal global ptr @ns_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author207 = internal constant [34 x i8] c"pinctrl_ns.author=Rafa\C5\82 Mi\C5\82ecki\00", section ".modinfo", align 1
@__UNIQUE_ID_file208 = internal constant [47 x i8] c"pinctrl_ns.file=drivers/pinctrl/bcm/pinctrl-ns\00", section ".modinfo", align 1
@__UNIQUE_ID_license209 = internal constant [26 x i8] c"pinctrl_ns.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"ns-pinmux\00", align 1
@ns_pinctrl_of_match_table = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4708-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm4709-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm53012-pinmux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"cru_gpio_control\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Failed to map pinctrl regs\0A\00", align 1
@ns_pinctrl_desc = internal unnamed_addr constant %struct.pinctrl_desc { ptr @.str.4, ptr null, i32 0, ptr @ns_pinctrl_ops, ptr @ns_pinctrl_pmxops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, align 4
@ns_pinctrl_pins = internal unnamed_addr constant [20 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.5, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.6, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.7, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.8, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.9, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.10, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.11, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.12, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.13, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.14, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.15, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.16, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.17, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.18, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.19, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.20, ptr inttoptr (i32 14 to ptr) }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.21, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.22, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.23, ptr inttoptr (i32 12 to ptr) }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.24, ptr inttoptr (i32 12 to ptr) }], align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to register pinctrl\0A\00", align 1
@ns_pinctrl_groups = internal unnamed_addr constant [11 x %struct.ns_pinctrl_group] [%struct.ns_pinctrl_group { ptr @.str.25, ptr @spi_pins, i32 4, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.26, ptr @i2c_pins, i32 2, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.27, ptr @mdio_pins, i32 2, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.28, ptr @pwm0_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.29, ptr @pwm1_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.30, ptr @pwm2_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.31, ptr @pwm3_pins, i32 1, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.32, ptr @uart1_pins, i32 4, i32 14 }, %struct.ns_pinctrl_group { ptr @.str.33, ptr @uart2_pins, i32 2, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.34, ptr @sdio_pwr_pins, i32 1, i32 12 }, %struct.ns_pinctrl_group { ptr @.str.35, ptr @sdio_1p8v_pins, i32 1, i32 12 }], align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"pinctrl-ns\00", align 1
@ns_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinconf_generic_dt_free_map }, align 4
@ns_pinctrl_pmxops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @ns_pinctrl_set_mux, ptr null, ptr null, ptr null, i8 0 }, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"spi_clk\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"spi_ss\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"spi_mosi\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"spi_miso\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"i2c_scl\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"i2c_sda\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"mdc\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"mdio\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"pwm0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pwm1\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"pwm2\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"pwm3\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"uart1_rx\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"uart1_tx\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"uart1_cts\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"uart1_rts\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"uart2_rx\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"uart2_tx\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"sdio_pwr\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"sdio_en_1p8v\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"spi_grp\00", align 1
@spi_pins = internal global [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.26 = private unnamed_addr constant [8 x i8] c"i2c_grp\00", align 1
@i2c_pins = internal global [2 x i32] [i32 4, i32 5], align 4
@.str.27 = private unnamed_addr constant [9 x i8] c"mdio_grp\00", align 1
@mdio_pins = internal global [2 x i32] [i32 6, i32 7], align 4
@.str.28 = private unnamed_addr constant [9 x i8] c"pwm0_grp\00", align 1
@pwm0_pins = internal global [1 x i32] [i32 8], align 4
@.str.29 = private unnamed_addr constant [9 x i8] c"pwm1_grp\00", align 1
@pwm1_pins = internal global [1 x i32] [i32 9], align 4
@.str.30 = private unnamed_addr constant [9 x i8] c"pwm2_grp\00", align 1
@pwm2_pins = internal global [1 x i32] [i32 10], align 4
@.str.31 = private unnamed_addr constant [9 x i8] c"pwm3_grp\00", align 1
@pwm3_pins = internal global [1 x i32] [i32 11], align 4
@.str.32 = private unnamed_addr constant [10 x i8] c"uart1_grp\00", align 1
@uart1_pins = internal global [4 x i32] [i32 12, i32 13, i32 14, i32 15], align 4
@.str.33 = private unnamed_addr constant [10 x i8] c"uart2_grp\00", align 1
@uart2_pins = internal global [2 x i32] [i32 16, i32 17], align 4
@.str.34 = private unnamed_addr constant [13 x i8] c"sdio_pwr_grp\00", align 1
@sdio_pwr_pins = internal global [1 x i32] [i32 22], align 4
@.str.35 = private unnamed_addr constant [14 x i8] c"sdio_1p8v_grp\00", align 1
@sdio_1p8v_pins = internal global [1 x i32] [i32 23], align 4
@.str.36 = private unnamed_addr constant [4 x i8] c"spi\00", align 1
@spi_groups = internal constant [1 x ptr] [ptr @.str.25], align 4
@.str.37 = private unnamed_addr constant [4 x i8] c"i2c\00", align 1
@i2c_groups = internal constant [1 x ptr] [ptr @.str.26], align 4
@mdio_groups = internal constant [1 x ptr] [ptr @.str.27], align 4
@.str.38 = private unnamed_addr constant [4 x i8] c"pwm\00", align 1
@pwm_groups = internal constant [4 x ptr] [ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 4
@.str.39 = private unnamed_addr constant [6 x i8] c"uart1\00", align 1
@uart1_groups = internal constant [1 x ptr] [ptr @.str.32], align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"uart2\00", align 1
@uart2_groups = internal constant [1 x ptr] [ptr @.str.33], align 4
@.str.41 = private unnamed_addr constant [5 x i8] c"sdio\00", align 1
@sdio_groups = internal constant [2 x ptr] [ptr @.str.34, ptr @.str.35], align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_file208, ptr @__UNIQUE_ID_license209, ptr @__exitcall_ns_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_ns__206_301_ns_pinctrl_driver_init6, ptr @ns_pinctrl_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @ns_pinctrl_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @ns_pinctrl_driver, ptr noundef null) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @ns_pinctrl_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @ns_pinctrl_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns_pinctrl_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 60, i32 noundef 3520) #6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %121, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  store ptr %2, ptr %3, align 4
  %8 = tail call ptr @of_match_device(ptr noundef nonnull @ns_pinctrl_of_match_table, ptr noundef %2) #6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %121, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.of_device_id, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  %15 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.1) #6
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %15) #6
  %17 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 3
  store ptr %16, ptr %17, align 4
  %18 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %22

19:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #7
  %20 = load ptr, ptr %17, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %121

22:                                               ; preds = %10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %6, ptr noundef nonnull align 4 dereferenceable(44) @ns_pinctrl_desc, i32 44, i1 false)
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 240, i32 noundef 3520) #6
  %24 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 4, i32 1
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %121, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 4, i32 2
  br label %28

28:                                               ; preds = %42, %26
  %29 = phi i32 [ 0, %26 ], [ %44, %42 ]
  %30 = phi ptr [ %23, %26 ], [ %43, %42 ]
  %31 = getelementptr [20 x %struct.pinctrl_pin_desc], ptr @ns_pinctrl_pins, i32 0, i32 %29, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = load i32, ptr %14, align 4
  %35 = and i32 %34, %33
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = getelementptr [20 x %struct.pinctrl_pin_desc], ptr @ns_pinctrl_pins, i32 0, i32 %29
  %39 = getelementptr %struct.pinctrl_pin_desc, ptr %30, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %30, ptr noundef align 4 dereferenceable(12) %38, i32 12, i1 false)
  %40 = load i32, ptr %27, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %27, align 4
  br label %42

42:                                               ; preds = %37, %28
  %43 = phi ptr [ %39, %37 ], [ %30, %28 ]
  %44 = add nuw nsw i32 %29, 1
  %45 = icmp eq i32 %44, 20
  br i1 %45, label %46, label %28

46:                                               ; preds = %42
  %47 = tail call ptr @devm_pinctrl_register(ptr noundef %2, ptr noundef %6, ptr noundef nonnull %3) #6
  %48 = getelementptr inbounds %struct.ns_pinctrl, ptr %3, i32 0, i32 2
  store ptr %47, ptr %48, align 4
  %49 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #7
  %51 = load ptr, ptr %48, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %121

53:                                               ; preds = %69, %46
  %54 = phi i32 [ %70, %69 ], [ 0, %46 ]
  %55 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %54, i32 3
  %56 = load i32, ptr %55, align 4
  %57 = load i32, ptr %14, align 4
  %58 = and i32 %57, %56
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %53
  %61 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %54
  %62 = load ptr, ptr %48, align 4
  %63 = load ptr, ptr %61, align 4
  %64 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %54, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr [11 x %struct.ns_pinctrl_group], ptr @ns_pinctrl_groups, i32 0, i32 %54, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = tail call i32 @pinctrl_generic_add_group(ptr noundef %62, ptr noundef %63, ptr noundef %65, i32 noundef %67, ptr noundef null) #6
  br label %69

69:                                               ; preds = %60, %53
  %70 = add nuw nsw i32 %54, 1
  %71 = icmp eq i32 %70, 11
  br i1 %71, label %72, label %53

72:                                               ; preds = %69
  %73 = load i32, ptr %14, align 4
  %74 = and i32 %73, 14
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %48, align 4
  %78 = tail call i32 @pinmux_generic_add_function(ptr noundef %77, ptr noundef nonnull @.str.36, ptr noundef nonnull @spi_groups, i32 noundef 1, ptr noundef null) #6
  %79 = load i32, ptr %14, align 4
  %80 = and i32 %79, 14
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %48, align 4
  %84 = tail call i32 @pinmux_generic_add_function(ptr noundef %83, ptr noundef nonnull @.str.37, ptr noundef nonnull @i2c_groups, i32 noundef 1, ptr noundef null) #6
  %85 = load i32, ptr %14, align 4
  br label %86

86:                                               ; preds = %82, %76, %72
  %87 = phi i32 [ %85, %82 ], [ %79, %76 ], [ %73, %72 ]
  %88 = and i32 %87, 12
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr %48, align 4
  %92 = tail call i32 @pinmux_generic_add_function(ptr noundef %91, ptr noundef nonnull @.str.12, ptr noundef nonnull @mdio_groups, i32 noundef 1, ptr noundef null) #6
  %93 = load i32, ptr %14, align 4
  br label %94

94:                                               ; preds = %90, %86
  %95 = phi i32 [ %93, %90 ], [ %87, %86 ]
  %96 = and i32 %95, 14
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %48, align 4
  %100 = tail call i32 @pinmux_generic_add_function(ptr noundef %99, ptr noundef nonnull @.str.38, ptr noundef nonnull @pwm_groups, i32 noundef 4, ptr noundef null) #6
  %101 = load i32, ptr %14, align 4
  %102 = and i32 %101, 14
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %48, align 4
  %106 = tail call i32 @pinmux_generic_add_function(ptr noundef %105, ptr noundef nonnull @.str.39, ptr noundef nonnull @uart1_groups, i32 noundef 1, ptr noundef null) #6
  %107 = load i32, ptr %14, align 4
  br label %108

108:                                              ; preds = %104, %98, %94
  %109 = phi i32 [ %107, %104 ], [ %101, %98 ], [ %95, %94 ]
  %110 = and i32 %109, 12
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %108
  %113 = load ptr, ptr %48, align 4
  %114 = tail call i32 @pinmux_generic_add_function(ptr noundef %113, ptr noundef nonnull @.str.40, ptr noundef nonnull @uart2_groups, i32 noundef 1, ptr noundef null) #6
  %115 = load i32, ptr %14, align 4
  %116 = and i32 %115, 12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  %119 = load ptr, ptr %48, align 4
  %120 = tail call i32 @pinmux_generic_add_function(ptr noundef %119, ptr noundef nonnull @.str.41, ptr noundef nonnull @sdio_groups, i32 noundef 2, ptr noundef null) #6
  br label %121

121:                                              ; preds = %118, %112, %108, %50, %22, %19, %5, %1
  %122 = phi i32 [ %21, %19 ], [ %52, %50 ], [ -12, %1 ], [ -22, %5 ], [ -12, %22 ], [ 0, %118 ], [ 0, %112 ], [ 0, %108 ]
  ret i32 %122
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5 {
  %5 = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 4) #6
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ns_pinctrl_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #6
  %5 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %2) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.group_desc, ptr %5, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.group_desc, ptr %5, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %20, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %21, %14 ]
  %17 = getelementptr i32, ptr %13, i32 %16
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = or i32 %19, %15
  %21 = add nuw nsw i32 %16, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %14

23:                                               ; preds = %14
  %24 = xor i32 %20, -1
  br label %25

25:                                               ; preds = %23, %7
  %26 = phi i32 [ -1, %7 ], [ %24, %23 ]
  %27 = getelementptr inbounds %struct.ns_pinctrl, ptr %4, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #6, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !9
  %30 = and i32 %29, %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !10
  tail call void @arm_heavy_mb() #6
  %31 = load ptr, ptr %27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %30) #6, !srcloc !11
  br label %32

32:                                               ; preds = %25, %3
  %33 = phi i32 [ 0, %25 ], [ -22, %3 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 369043}
!9 = !{i64 2152244977}
!10 = !{i64 2152245161}
!11 = !{i64 368625}
