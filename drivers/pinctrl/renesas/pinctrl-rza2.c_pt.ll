; ModuleID = '/llk/IR/drivers/pinctrl/renesas/pinctrl-rza2.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/pinctrl-rza2.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.63, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.63 = type { ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.rza2_pinctrl_priv = type { ptr, ptr, ptr, %struct.pinctrl_desc, ptr, %struct.pinctrl_gpio_range, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.group_desc = type { ptr, ptr, i32, ptr }

@__initcall__kmod_pinctrl_rza2__206_513_rza2_pinctrl_init1 = internal global ptr @rza2_pinctrl_init, section ".initcall1.init", align 4
@__UNIQUE_ID_author207 = internal constant [60 x i8] c"pinctrl_rza2.author=Chris Brandt <chris.brandt@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description208 = internal constant [70 x i8] c"pinctrl_rza2.description=Pin and gpio controller driver for RZ/A2 SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_file209 = internal constant [55 x i8] c"pinctrl_rza2.file=drivers/pinctrl/renesas/pinctrl-rza2\00", section ".modinfo", align 1
@__UNIQUE_ID_license210 = internal constant [28 x i8] c"pinctrl_rza2.license=GPL v2\00", section ".modinfo", align 1
@rza2_pinctrl_driver = internal global %struct.platform_driver { ptr @rza2_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rza2_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [13 x i8] c"pinctrl-rza2\00", align 1
@rza2_pinctrl_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,r7s9210-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 22 to ptr) }, %struct.of_device_id zeroinitializer], align 4
@rza2_pinctrl_ops = internal constant %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @rza2_dt_node_to_map, ptr @rza2_dt_free_map }, align 4
@rza2_pinmux_ops = internal constant %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @rza2_set_mux, ptr null, ptr null, ptr null, i8 1 }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Registered ports P0 - P%c\0A\00", align 1
@port_names = internal unnamed_addr constant [23 x i8] c"0123456789ABCDEFGHJKLM\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Missing pinmux property\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Unable to parse DT node %s\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@rza2_gpio_names = internal constant [176 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183], align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"pinctrl registration failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"pinctrl enable failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"GPIO registration failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"P0_0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"P0_1\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"P0_2\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"P0_3\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"P0_4\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"P0_5\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"P0_6\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"P0_7\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"P1_0\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"P1_1\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"P1_2\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"P1_3\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"P1_4\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"P1_5\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"P1_6\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"P1_7\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"P2_0\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"P2_1\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"P2_2\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"P2_3\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"P2_4\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"P2_5\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"P2_6\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"P2_7\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"P3_0\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"P3_1\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"P3_2\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"P3_3\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"P3_4\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"P3_5\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"P3_6\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"P3_7\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"P4_0\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"P4_1\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"P4_2\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"P4_3\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"P4_4\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"P4_5\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"P4_6\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"P4_7\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"P5_0\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"P5_1\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"P5_2\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"P5_3\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"P5_4\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"P5_5\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"P5_6\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"P5_7\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"P6_0\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"P6_1\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"P6_2\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"P6_3\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"P6_4\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"P6_5\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"P6_6\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"P6_7\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"P7_0\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"P7_1\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"P7_2\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"P7_3\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"P7_4\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"P7_5\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"P7_6\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"P7_7\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"P8_0\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"P8_1\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"P8_2\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"P8_3\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"P8_4\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"P8_5\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"P8_6\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"P8_7\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"P9_0\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"P9_1\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"P9_2\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"P9_3\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"P9_4\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"P9_5\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"P9_6\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"P9_7\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"PA_0\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"PA_1\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"PA_2\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"PA_3\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"PA_4\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"PA_5\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"PA_6\00", align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"PA_7\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"PB_0\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"PB_1\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"PB_2\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"PB_3\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"PB_4\00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"PB_5\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"PB_6\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"PB_7\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"PC_0\00", align 1
@.str.105 = private unnamed_addr constant [5 x i8] c"PC_1\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"PC_2\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"PC_3\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"PC_4\00", align 1
@.str.109 = private unnamed_addr constant [5 x i8] c"PC_5\00", align 1
@.str.110 = private unnamed_addr constant [5 x i8] c"PC_6\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c"PC_7\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"PD_0\00", align 1
@.str.113 = private unnamed_addr constant [5 x i8] c"PD_1\00", align 1
@.str.114 = private unnamed_addr constant [5 x i8] c"PD_2\00", align 1
@.str.115 = private unnamed_addr constant [5 x i8] c"PD_3\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"PD_4\00", align 1
@.str.117 = private unnamed_addr constant [5 x i8] c"PD_5\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"PD_6\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"PD_7\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"PE_0\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"PE_1\00", align 1
@.str.122 = private unnamed_addr constant [5 x i8] c"PE_2\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"PE_3\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"PE_4\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"PE_5\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"PE_6\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"PE_7\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"PF_0\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"PF_1\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c"PF_2\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"PF_3\00", align 1
@.str.132 = private unnamed_addr constant [5 x i8] c"PF_4\00", align 1
@.str.133 = private unnamed_addr constant [5 x i8] c"PF_5\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"PF_6\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"PF_7\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"PG_0\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"PG_1\00", align 1
@.str.138 = private unnamed_addr constant [5 x i8] c"PG_2\00", align 1
@.str.139 = private unnamed_addr constant [5 x i8] c"PG_3\00", align 1
@.str.140 = private unnamed_addr constant [5 x i8] c"PG_4\00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"PG_5\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"PG_6\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"PG_7\00", align 1
@.str.144 = private unnamed_addr constant [5 x i8] c"PH_0\00", align 1
@.str.145 = private unnamed_addr constant [5 x i8] c"PH_1\00", align 1
@.str.146 = private unnamed_addr constant [5 x i8] c"PH_2\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"PH_3\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"PH_4\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"PH_5\00", align 1
@.str.150 = private unnamed_addr constant [5 x i8] c"PH_6\00", align 1
@.str.151 = private unnamed_addr constant [5 x i8] c"PH_7\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"PJ_0\00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"PJ_1\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"PJ_2\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"PJ_3\00", align 1
@.str.156 = private unnamed_addr constant [5 x i8] c"PJ_4\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"PJ_5\00", align 1
@.str.158 = private unnamed_addr constant [5 x i8] c"PJ_6\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"PJ_7\00", align 1
@.str.160 = private unnamed_addr constant [5 x i8] c"PK_0\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"PK_1\00", align 1
@.str.162 = private unnamed_addr constant [5 x i8] c"PK_2\00", align 1
@.str.163 = private unnamed_addr constant [5 x i8] c"PK_3\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"PK_4\00", align 1
@.str.165 = private unnamed_addr constant [5 x i8] c"PK_5\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"PK_6\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"PK_7\00", align 1
@.str.168 = private unnamed_addr constant [5 x i8] c"PL_0\00", align 1
@.str.169 = private unnamed_addr constant [5 x i8] c"PL_1\00", align 1
@.str.170 = private unnamed_addr constant [5 x i8] c"PL_2\00", align 1
@.str.171 = private unnamed_addr constant [5 x i8] c"PL_3\00", align 1
@.str.172 = private unnamed_addr constant [5 x i8] c"PL_4\00", align 1
@.str.173 = private unnamed_addr constant [5 x i8] c"PL_5\00", align 1
@.str.174 = private unnamed_addr constant [5 x i8] c"PL_6\00", align 1
@.str.175 = private unnamed_addr constant [5 x i8] c"PL_7\00", align 1
@.str.176 = private unnamed_addr constant [5 x i8] c"PM_0\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"PM_1\00", align 1
@.str.178 = private unnamed_addr constant [5 x i8] c"PM_2\00", align 1
@.str.179 = private unnamed_addr constant [5 x i8] c"PM_3\00", align 1
@.str.180 = private unnamed_addr constant [5 x i8] c"PM_4\00", align 1
@.str.181 = private unnamed_addr constant [5 x i8] c"PM_5\00", align 1
@.str.182 = private unnamed_addr constant [5 x i8] c"PM_6\00", align 1
@.str.183 = private unnamed_addr constant [5 x i8] c"PM_7\00", align 1
@.str.184 = private unnamed_addr constant [6 x i8] c"%pOFn\00", align 1
@chip = internal global %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rza2_chip_get_direction, ptr @rza2_chip_direction_input, ptr @rza2_chip_direction_output, ptr @rza2_chip_get, ptr null, ptr @rza2_chip_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 0, i16 0, ptr @rza2_gpio_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, align 4
@.str.185 = private unnamed_addr constant [12 x i8] c"gpio-ranges\00", align 1
@.str.186 = private unnamed_addr constant [29 x i8] c"Unable to parse gpio-ranges\0A\00", align 1
@.str.187 = private unnamed_addr constant [41 x i8] c"gpio-ranges does not match selected SOC\0A\00", align 1
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_author207, ptr @__UNIQUE_ID_description208, ptr @__UNIQUE_ID_file209, ptr @__UNIQUE_ID_license210, ptr @__initcall__kmod_pinctrl_rza2__206_513_rza2_pinctrl_init1], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rza2_pinctrl_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rza2_pinctrl_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_pinctrl_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 100, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %105, label %6

6:                                                ; preds = %1
  store ptr %3, ptr %4, align 4
  %7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #8
  %8 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 1
  store ptr %7, ptr %8, align 4
  %9 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = ptrtoint ptr %7 to i32
  br label %105

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %13, align 8
  %14 = tail call ptr @of_device_get_match_data(ptr noundef %3) #8
  %15 = ptrtoint ptr %14 to i32
  %16 = shl i32 %15, 3
  %17 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 6
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3
  store ptr @.str, ptr %18, align 4
  %19 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3, i32 3
  store ptr @rza2_pinctrl_ops, ptr %19, align 4
  %20 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3, i32 4
  store ptr @rza2_pinmux_ops, ptr %20, align 4
  %21 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3, i32 6
  store ptr null, ptr %21, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 12) #8
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %105, label %24, !prof !8

24:                                               ; preds = %12
  %25 = load ptr, ptr %4, align 4
  %26 = extractvalue { i32, i1 } %22, 0
  %27 = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef %26, i32 noundef 3520) #8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %105, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 2
  store ptr %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3, i32 1
  store ptr %27, ptr %31, align 4
  %32 = load i32, ptr %17, align 4
  %33 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 3, i32 2
  store i32 %32, ptr %33, align 4
  %34 = icmp eq i32 %32, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %35, %29
  %36 = phi i32 [ %41, %35 ], [ 0, %29 ]
  %37 = getelementptr %struct.pinctrl_pin_desc, ptr %27, i32 %36
  store i32 %36, ptr %37, align 4
  %38 = getelementptr [176 x ptr], ptr @rza2_gpio_names, i32 0, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr %struct.pinctrl_pin_desc, ptr %27, i32 %36, i32 1
  store ptr %39, ptr %40, align 4
  %41 = add nuw i32 %36, 1
  %42 = icmp eq i32 %41, %32
  br i1 %42, label %43, label %35

43:                                               ; preds = %35, %29
  %44 = load ptr, ptr %4, align 4
  %45 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 4
  %46 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %44, ptr noundef %18, ptr noundef %4, ptr noundef %45) #8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.5) #9
  br label %105

50:                                               ; preds = %43
  %51 = load ptr, ptr %45, align 4
  %52 = tail call i32 @pinctrl_enable(ptr noundef %51) #8
  %53 = icmp eq i32 %52, 0
  %54 = load ptr, ptr %4, align 4
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.6) #9
  br label %105

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 25
  %58 = load ptr, ptr %57, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !9
  %59 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %54, i32 noundef 3264, ptr noundef nonnull @.str.184, ptr noundef %58) #8
  store ptr %59, ptr @chip, align 4
  %60 = load ptr, ptr %4, align 4
  store ptr %60, ptr getelementptr inbounds (%struct.gpio_chip, ptr @chip, i32 0, i32 2), align 4
  %61 = load i32, ptr %17, align 4
  %62 = trunc i32 %61 to i16
  store i16 %62, ptr getelementptr inbounds (%struct.gpio_chip, ptr @chip, i32 0, i32 20), align 4
  %63 = call i32 @__of_parse_phandle_with_args(ptr noundef %58, ptr noundef nonnull @.str.185, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %2) #8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %89

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, 0
  %69 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 1
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %68, i1 %71, i1 false
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.of_phandle_args, ptr %2, i32 0, i32 2, i32 2
  %75 = load i32, ptr %74, align 4
  %76 = load i32, ptr %17, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 2
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 3
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 4
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 5
  store i32 %75, ptr %82, align 4
  %83 = load ptr, ptr @chip, align 4
  %84 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 1
  store ptr %83, ptr %84, align 4
  %85 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5, i32 7
  store ptr @chip, ptr %85, align 4
  %86 = load ptr, ptr %4, align 4
  %87 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %86, ptr noundef nonnull @chip, ptr noundef %4, ptr noundef null, ptr noundef null) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %93

89:                                               ; preds = %73, %65, %56
  %90 = phi ptr [ @.str.186, %56 ], [ @.str.187, %73 ], [ @.str.187, %65 ]
  %91 = phi i32 [ %63, %56 ], [ -22, %73 ], [ -22, %65 ]
  %92 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull %90) #9
  br label %93

93:                                               ; preds = %89, %78
  %94 = phi i32 [ %87, %78 ], [ %91, %89 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %95 = load ptr, ptr %4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.7) #9
  br label %105

96:                                               ; preds = %78
  %97 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 5
  %98 = load ptr, ptr %45, align 4
  call void @pinctrl_add_gpio_range(ptr noundef %98, ptr noundef %97) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %99 = load i32, ptr %33, align 4
  %100 = lshr i32 %99, 3
  %101 = add nsw i32 %100, -1
  %102 = getelementptr [23 x i8], ptr @port_names, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %104) #9
  br label %105

105:                                              ; preds = %96, %93, %55, %48, %24, %12, %10, %1
  %106 = phi i32 [ %11, %10 ], [ 0, %96 ], [ -12, %1 ], [ -12, %12 ], [ -12, %24 ], [ %94, %93 ], [ %52, %55 ], [ %46, %48 ]
  ret i32 %106
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_dt_node_to_map(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3) #2 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %7 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.3) #9
  br label %68

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.property, ptr %7, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 2
  %15 = and i32 %13, -4
  %16 = load ptr, ptr %6, align 4
  %17 = tail call noalias ptr @devm_kmalloc(ptr noundef %16, i32 noundef %15, i32 noundef 3520) #8
  %18 = load ptr, ptr %6, align 4
  %19 = tail call noalias ptr @devm_kmalloc(ptr noundef %18, i32 noundef %15, i32 noundef 3520) #8
  %20 = load ptr, ptr %6, align 4
  %21 = tail call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 4, i32 noundef 3520) #8
  %22 = icmp ne ptr %17, null
  %23 = icmp ne ptr %19, null
  %24 = select i1 %22, i1 %23, i1 false
  %25 = icmp ne ptr %21, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %68

27:                                               ; preds = %11
  %28 = icmp ult i32 %13, 4
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = call i32 @llvm.umax.i32(i32 %14, i32 1)
  br label %31

31:                                               ; preds = %36, %29
  %32 = phi i32 [ %42, %36 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  store i32 0, ptr %5, align 4, !annotation !9
  %33 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef %32, ptr noundef nonnull %5) #8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  br label %68

36:                                               ; preds = %31
  %37 = load i32, ptr %5, align 4
  %38 = and i32 %37, 65535
  %39 = getelementptr i32, ptr %17, i32 %32
  store i32 %38, ptr %39, align 4
  %40 = lshr i32 %37, 16
  %41 = getelementptr i32, ptr %19, i32 %32
  store i32 %40, ptr %41, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  %42 = add nuw nsw i32 %32, 1
  %43 = icmp eq i32 %42, %30
  br i1 %43, label %44, label %31

44:                                               ; preds = %36, %27
  %45 = load ptr, ptr %1, align 4
  %46 = call i32 @pinctrl_generic_add_group(ptr noundef %0, ptr noundef %45, ptr noundef nonnull %17, i32 noundef %14, ptr noundef null) #8
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 4
  store ptr %49, ptr %21, align 4
  %50 = call i32 @pinmux_generic_add_function(ptr noundef %0, ptr noundef %49, ptr noundef nonnull %21, i32 noundef 1, ptr noundef nonnull %19) #8
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  store i32 0, ptr %3, align 4
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %54 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 28) #10
  store ptr %54, ptr %2, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @pinmux_generic_remove_function(ptr noundef %0, i32 noundef %50) #8
  br label %63

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.pinctrl_map, ptr %54, i32 0, i32 2
  store i32 2, ptr %59, align 8
  %60 = load ptr, ptr %1, align 4
  %61 = getelementptr inbounds %struct.pinctrl_map, ptr %54, i32 0, i32 4
  store ptr %60, ptr %61, align 8
  %62 = getelementptr inbounds %struct.pinctrl_map, ptr %54, i32 0, i32 4, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store i32 1, ptr %3, align 4
  br label %68

63:                                               ; preds = %56, %48
  %64 = phi i32 [ -12, %56 ], [ %50, %48 ]
  %65 = call i32 @pinctrl_generic_remove_group(ptr noundef %0, i32 noundef %46) #8
  %66 = load ptr, ptr %6, align 4
  %67 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.4, ptr noundef %67) #9
  br label %68

68:                                               ; preds = %63, %58, %44, %35, %11, %9
  %69 = phi i32 [ %33, %35 ], [ %64, %63 ], [ 0, %58 ], [ -2, %9 ], [ -12, %11 ], [ %46, %44 ]
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rza2_dt_free_map(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) #2 {
  tail call void @kfree(ptr noundef %1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_remove_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_remove_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_set_mux(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %0) #8
  %5 = tail call ptr @pinctrl_generic_get_group(ptr noundef %0, i32 noundef %2) #8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @pinmux_generic_get_function(ptr noundef %0, i32 noundef %1) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.function_desc, ptr %8, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.group_desc, ptr %5, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %59, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.group_desc, ptr %5, i32 0, i32 1
  br label %19

19:                                               ; preds = %19, %16
  %20 = phi i32 [ 0, %16 ], [ %56, %19 ]
  %21 = load ptr, ptr %17, align 4
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr i32, ptr %22, i32 %20
  %24 = load i32, ptr %23, align 4
  %25 = freeze i32 %24
  %26 = sdiv i32 %25, 8
  %27 = mul i32 %26, 8
  %28 = sub i32 %25, %27
  %29 = getelementptr i32, ptr %12, i32 %20
  %30 = load i32, ptr %29, align 4
  %31 = trunc i32 %30 to i8
  %32 = and i32 %26, 255
  %33 = shl nuw nsw i32 %32, 1
  %34 = getelementptr i8, ptr %21, i32 %33
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %34) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !11
  %36 = and i32 %28, 255
  %37 = shl nuw nsw i32 %36, 1
  %38 = shl i32 3, %37
  %39 = trunc i32 %38 to i16
  %40 = xor i16 %39, -1
  %41 = and i16 %35, %40
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %34, i16 %41) #8, !srcloc !13
  %42 = add nuw nsw i32 %32, 128
  %43 = getelementptr i8, ptr %21, i32 %42
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !15
  %45 = shl nuw i32 1, %36
  %46 = trunc i32 %45 to i8
  %47 = xor i8 %46, -1
  %48 = and i8 %44, %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 %48) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %49 = getelementptr i8, ptr %21, i32 767
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 0) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 64) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  tail call void @arm_heavy_mb() #8
  %50 = shl nuw nsw i32 %32, 3
  %51 = or i32 %36, 512
  %52 = add nuw nsw i32 %51, %50
  %53 = getelementptr i8, ptr %21, i32 %52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %31) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 0) #8, !srcloc !17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !22
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %49, i8 -128) #8, !srcloc !17
  %54 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %43) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  %55 = or i8 %54, %46
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !24
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %43, i8 %55) #8, !srcloc !17
  %56 = add nuw i32 %20, 1
  %57 = load i32, ptr %13, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %19, label %59

59:                                               ; preds = %19, %10, %7, %3
  %60 = phi i32 [ -22, %3 ], [ -22, %7 ], [ 0, %10 ], [ 0, %19 ]
  ret i32 %60
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_chip_get_direction(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 2
  %7 = and i32 %6, 510
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  %10 = zext i16 %9 to i32
  %11 = shl i32 %1, 1
  %12 = and i32 %11, 14
  %13 = lshr i32 %10, %12
  %14 = and i32 %13, 3
  switch i32 %14, label %16 [
    i32 3, label %27
    i32 2, label %15
  ]

15:                                               ; preds = %2
  br label %27

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 %7
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %20 = shl nuw nsw i32 3, %12
  %21 = shl nuw nsw i32 2, %12
  %22 = trunc i32 %20 to i16
  %23 = xor i16 %22, -1
  %24 = and i16 %19, %23
  %25 = trunc i32 %21 to i16
  %26 = or i16 %24, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 %26) #8, !srcloc !13
  br label %27

27:                                               ; preds = %16, %15, %2
  %28 = phi i32 [ 1, %15 ], [ 1, %16 ], [ 0, %2 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_chip_direction_input(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = lshr i32 %1, 2
  %7 = and i32 %6, 510
  %8 = getelementptr i8, ptr %5, i32 %7
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %10 = shl i32 %1, 1
  %11 = and i32 %10, 14
  %12 = shl nuw nsw i32 3, %11
  %13 = shl nuw nsw i32 2, %11
  %14 = trunc i32 %12 to i16
  %15 = xor i16 %14, -1
  %16 = and i16 %9, %15
  %17 = trunc i32 %13 to i16
  %18 = or i16 %16, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %8, i16 %18) #8, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_chip_direction_output(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %6 = lshr i32 %1, 3
  %7 = trunc i32 %1 to i8
  %8 = and i8 %7, 7
  %9 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %5, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = and i32 %6, 255
  %12 = add nuw nsw i32 %11, 64
  %13 = getelementptr i8, ptr %10, i32 %12
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %15 = icmp eq i32 %2, 0
  %16 = shl nuw i8 1, %8
  %17 = or i8 %14, %16
  %18 = xor i8 %16, -1
  %19 = and i8 %14, %18
  %20 = select i1 %15, i8 %19, i8 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %21 = load ptr, ptr %9, align 4
  %22 = getelementptr i8, ptr %21, i32 %12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 %20) #8, !srcloc !17
  %23 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = lshr i32 %1, 2
  %26 = and i32 %25, 510
  %27 = getelementptr i8, ptr %24, i32 %26
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %27) #8, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  %29 = shl i32 %1, 1
  %30 = and i32 %29, 14
  %31 = shl nuw nsw i32 3, %30
  %32 = trunc i32 %31 to i16
  %33 = or i16 %28, %32
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !27
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %33) #8, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rza2_chip_get(ptr noundef %0, i32 noundef %1) #2 {
  %3 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %4 = lshr i32 %1, 3
  %5 = and i32 %1, 7
  %6 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = and i32 %4, 255
  %9 = add nuw nsw i32 %8, 96
  %10 = getelementptr i8, ptr %7, i32 %9
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %10) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !30
  %12 = zext i8 %11 to i32
  %13 = lshr i32 %12, %5
  %14 = and i32 %13, 1
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rza2_chip_set(ptr noundef %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = tail call ptr @gpiochip_get_data(ptr noundef %0) #8
  %5 = lshr i32 %1, 3
  %6 = trunc i32 %1 to i8
  %7 = and i8 %6, 7
  %8 = getelementptr inbounds %struct.rza2_pinctrl_priv, ptr %4, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %5, 255
  %11 = add nuw nsw i32 %10, 64
  %12 = getelementptr i8, ptr %9, i32 %11
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %12) #8, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  %14 = icmp eq i32 %2, 0
  %15 = shl nuw i8 1, %7
  %16 = or i8 %13, %15
  %17 = xor i8 %15, -1
  %18 = and i8 %13, %17
  %19 = select i1 %14, i8 %18, i8 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !29
  tail call void @arm_heavy_mb() #8
  %20 = load ptr, ptr %8, align 4
  %21 = getelementptr i8, ptr %20, i32 %11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 %19) #8, !srcloc !17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
!10 = !{i64 3686754}
!11 = !{i64 2152376549}
!12 = !{i64 2152376785}
!13 = !{i64 3686554}
!14 = !{i64 3687372}
!15 = !{i64 2152377187}
!16 = !{i64 2152377486}
!17 = !{i64 3686977}
!18 = !{i64 2152377748}
!19 = !{i64 2152378102}
!20 = !{i64 2152378437}
!21 = !{i64 2152378715}
!22 = !{i64 2152378964}
!23 = !{i64 2152379272}
!24 = !{i64 2152379571}
!25 = !{i64 2152381014}
!26 = !{i64 2152380126}
!27 = !{i64 2152380372}
!28 = !{i64 2152381772}
!29 = !{i64 2152382155}
!30 = !{i64 2152381365}
