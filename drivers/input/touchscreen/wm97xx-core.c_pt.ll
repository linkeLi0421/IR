; ModuleID = '/llk/IR/drivers/input/touchscreen/wm97xx-core.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wm97xx-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_read_aux_adc:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_read_aux_adc\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_read_aux_adc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_get_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_get_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_get_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_set_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_set_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_set_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_config_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_config_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_config_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_set_suspend_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_set_suspend_mode\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_set_suspend_mode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_register_mach_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_register_mach_ops\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_register_mach_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm97xx_unregister_mach_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22wm97xx_unregister_mach_ops\22\09\09\09\09\09"
module asm "__kstrtabns_wm97xx_unregister_mach_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.60 }
%union.anon.60 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.wm97xx_codec_drv = type { i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wm97xx = type { [3 x i16], i16, [6 x i16], i16, [3 x i16], ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.delayed_work, i32, i32, i32, ptr, %struct.work_struct, i16, i16, i8, i16, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.69, i8, i8, %struct.device, ptr, [2 x ptr] }
%union.anon.69 = type { i32, [28 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wm97xx_platform_data = type { ptr, ptr, ptr }
%struct.wm97xx_mach_ops = type { i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.wm97xx_data = type { i32, i32, i32 }

@__param_str_abs_x = internal constant [6 x i8] c"abs_x\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_abs_x = internal constant %struct.kparam_array { i32 3, i32 4, ptr null, ptr @param_ops_int, ptr @abs_x }, align 4
@__param_abs_x = internal constant %struct.kernel_param { ptr @__param_str_abs_x, ptr @__this_module, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_abs_x } }, section "__param", align 4
@__UNIQUE_ID_abs_xtype230 = internal constant [28 x i8] c"parmtype=abs_x:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_abs_x231 = internal constant [49 x i8] c"parm=abs_x:Touchscreen absolute X min, max, fuzz\00", section ".modinfo", align 1
@__param_str_abs_y = internal constant [6 x i8] c"abs_y\00", align 1
@__param_arr_abs_y = internal constant %struct.kparam_array { i32 3, i32 4, ptr null, ptr @param_ops_int, ptr @abs_y }, align 4
@__param_abs_y = internal constant %struct.kernel_param { ptr @__param_str_abs_y, ptr @__this_module, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_abs_y } }, section "__param", align 4
@__UNIQUE_ID_abs_ytype232 = internal constant [28 x i8] c"parmtype=abs_y:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_abs_y233 = internal constant [49 x i8] c"parm=abs_y:Touchscreen absolute Y min, max, fuzz\00", section ".modinfo", align 1
@__param_str_abs_p = internal constant [6 x i8] c"abs_p\00", align 1
@__param_arr_abs_p = internal constant %struct.kparam_array { i32 3, i32 4, ptr null, ptr @param_ops_int, ptr @abs_p }, align 4
@__param_abs_p = internal constant %struct.kernel_param { ptr @__param_str_abs_p, ptr @__this_module, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.60 { ptr @__param_arr_abs_p } }, section "__param", align 4
@__UNIQUE_ID_abs_ptype234 = internal constant [28 x i8] c"parmtype=abs_p:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_abs_p235 = internal constant [56 x i8] c"parm=abs_p:Touchscreen absolute Pressure min, max, fuzz\00", section ".modinfo", align 1
@__kstrtab_wm97xx_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_reg_read to i32), ptr @__kstrtab_wm97xx_reg_read, ptr @__kstrtabns_wm97xx_reg_read }, section "___ksymtab_gpl+wm97xx_reg_read", align 4
@__kstrtab_wm97xx_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_reg_write to i32), ptr @__kstrtab_wm97xx_reg_write, ptr @__kstrtabns_wm97xx_reg_write }, section "___ksymtab_gpl+wm97xx_reg_write", align 4
@.str = private unnamed_addr constant [48 x i8] c"timeout reading auxadc %d, disabling digitiser\0A\00", align 1
@__kstrtab_wm97xx_read_aux_adc = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_read_aux_adc = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_read_aux_adc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_read_aux_adc to i32), ptr @__kstrtab_wm97xx_read_aux_adc, ptr @__kstrtabns_wm97xx_read_aux_adc }, section "___ksymtab_gpl+wm97xx_read_aux_adc", align 4
@__kstrtab_wm97xx_get_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_get_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_get_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_get_gpio to i32), ptr @__kstrtab_wm97xx_get_gpio, ptr @__kstrtabns_wm97xx_get_gpio }, section "___ksymtab_gpl+wm97xx_get_gpio", align 4
@__kstrtab_wm97xx_set_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_set_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_set_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_set_gpio to i32), ptr @__kstrtab_wm97xx_set_gpio, ptr @__kstrtabns_wm97xx_set_gpio }, section "___ksymtab_gpl+wm97xx_set_gpio", align 4
@__kstrtab_wm97xx_config_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_config_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_config_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_config_gpio to i32), ptr @__kstrtab_wm97xx_config_gpio, ptr @__kstrtabns_wm97xx_config_gpio }, section "___ksymtab_gpl+wm97xx_config_gpio", align 4
@__kstrtab_wm97xx_set_suspend_mode = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_set_suspend_mode = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_set_suspend_mode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_set_suspend_mode to i32), ptr @__kstrtab_wm97xx_set_suspend_mode, ptr @__kstrtabns_wm97xx_set_suspend_mode }, section "___ksymtab_gpl+wm97xx_set_suspend_mode", align 4
@__kstrtab_wm97xx_register_mach_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_register_mach_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_register_mach_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_register_mach_ops to i32), ptr @__kstrtab_wm97xx_register_mach_ops, ptr @__kstrtabns_wm97xx_register_mach_ops }, section "___ksymtab_gpl+wm97xx_register_mach_ops", align 4
@__kstrtab_wm97xx_unregister_mach_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm97xx_unregister_mach_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_wm97xx_unregister_mach_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm97xx_unregister_mach_ops to i32), ptr @__kstrtab_wm97xx_unregister_mach_ops, ptr @__kstrtabns_wm97xx_unregister_mach_ops }, section "___ksymtab_gpl+wm97xx_unregister_mach_ops", align 4
@__UNIQUE_ID_author236 = internal constant [43 x i8] c"author=Liam Girdwood <lrg@slimlogic.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [63 x i8] c"description=WM97xx Core - Touch Screen / AUX ADC / GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@abs_x = internal global [3 x i32] [i32 150, i32 4000, i32 5], align 4
@abs_y = internal global [3 x i32] [i32 200, i32 4000, i32 40], align 4
@abs_p = internal global [3 x i32] [i32 0, i32 150, i32 4], align 4
@wm97xx_mfd_driver = internal global %struct.platform_driver { ptr @wm97xx_mfd_probe, ptr @wm97xx_mfd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm97xx_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"wm97xx-ts\00", align 1
@wm97xx_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @wm97xx_suspend, ptr @wm97xx_resume, ptr @wm97xx_suspend, ptr @wm97xx_resume, ptr @wm97xx_suspend, ptr @wm97xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@_wm97xx_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&wm->codec_mutex\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Device with vendor %04x is not a wm97xx\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"detected a wm97%02x codec\0A\00", align 1
@wm9705_codec = external dso_local global %struct.wm97xx_codec_drv, align 4
@wm9712_codec = external dso_local global %struct.wm97xx_codec_drv, align 4
@wm9713_codec = external dso_local global %struct.wm97xx_codec_drv, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Support for wm97%02x not compiled in.\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"wm97xx touchscreen\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"wm97xx\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"wm97xx-touch\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"kwm97xx\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to create workqueue\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"No IRQ specified\0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"wm97xx-pen\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"Failed to register pen down interrupt, polling\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"wm97xx-battery\00", align 1
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_abs_p235, ptr @__UNIQUE_ID_abs_ptype234, ptr @__UNIQUE_ID_abs_x231, ptr @__UNIQUE_ID_abs_xtype230, ptr @__UNIQUE_ID_abs_y233, ptr @__UNIQUE_ID_abs_ytype232, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_license238, ptr @__ksymtab_wm97xx_config_gpio, ptr @__ksymtab_wm97xx_get_gpio, ptr @__ksymtab_wm97xx_read_aux_adc, ptr @__ksymtab_wm97xx_reg_read, ptr @__ksymtab_wm97xx_reg_write, ptr @__ksymtab_wm97xx_register_mach_ops, ptr @__ksymtab_wm97xx_set_gpio, ptr @__ksymtab_wm97xx_set_suspend_mode, ptr @__ksymtab_wm97xx_unregister_mach_ops, ptr @__param_abs_p, ptr @__param_abs_x, ptr @__param_abs_y], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm97xx_reg_read(ptr nocapture noundef readonly %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.snd_ac97, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %9, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = tail call zeroext i16 %11(ptr noundef nonnull %4, i16 noundef zeroext %1) #6
  %13 = zext i16 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ %13, %6 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm97xx_reg_write(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = zext i16 %1 to i32
  %5 = add i16 %1, -116
  %6 = icmp ult i16 %5, 5
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = add nsw i32 %4, -116
  %9 = ashr i32 %8, 1
  %10 = getelementptr [3 x i16], ptr %0, i32 0, i32 %9
  store i16 %2, ptr %10, align 2
  br label %22

11:                                               ; preds = %3
  %12 = add i16 %1, -76
  %13 = icmp ult i16 %12, 11
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = add nsw i32 %4, -76
  %16 = ashr i32 %15, 1
  %17 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 %16
  store i16 %2, ptr %17, align 2
  br label %22

18:                                               ; preds = %11
  %19 = icmp eq i16 %1, 90
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 3
  store i16 %2, ptr %21, align 4
  br label %22

22:                                               ; preds = %20, %18, %14, %7
  %23 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.snd_ac97, ptr %24, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %30, align 4
  tail call void %31(ptr noundef nonnull %24, i16 noundef zeroext %1, i16 noundef zeroext %2) #6
  br label %32

32:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm97xx_read_aux_adc(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = icmp eq i16 %6, 19475
  br i1 %7, label %8, label %30

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %30, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.snd_ac97, ptr %10, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call zeroext i16 %17(ptr noundef nonnull %10, i16 noundef zeroext 60) #6
  %19 = icmp sgt i16 %18, -1
  br i1 %19, label %30, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr %9, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = and i16 %18, 32767
  %25 = getelementptr inbounds %struct.snd_ac97, ptr %21, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %27, i32 0, i32 2
  %29 = load ptr, ptr %28, align 4
  tail call void %29(ptr noundef nonnull %21, i16 noundef zeroext 60, i16 noundef zeroext %24) #6
  br label %30

30:                                               ; preds = %23, %20, %12, %8, %2
  %31 = phi i1 [ true, %12 ], [ true, %2 ], [ false, %20 ], [ false, %23 ], [ false, %8 ]
  %32 = phi i16 [ %18, %12 ], [ 0, %2 ], [ %18, %20 ], [ %18, %23 ], [ -1, %8 ]
  %33 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %34, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef %0) #6
  %37 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 21
  %38 = load i8, ptr %37, align 4
  %39 = or i8 %38, 4
  store i8 %39, ptr %37, align 4
  %40 = zext i16 %1 to i32
  %41 = load ptr, ptr %33, align 4
  %42 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %41, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = call i32 %43(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %3) #6
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %70, label %46

46:                                               ; preds = %30
  %47 = load ptr, ptr %33, align 4
  %48 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = call i32 %49(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %3) #6
  %51 = icmp eq i32 %50, 2
  br i1 %51, label %70, label %52

52:                                               ; preds = %46
  %53 = load ptr, ptr %33, align 4
  %54 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %53, i32 0, i32 2
  %55 = load ptr, ptr %54, align 4
  %56 = call i32 %55(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %3) #6
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %70, label %58

58:                                               ; preds = %52
  %59 = load ptr, ptr %33, align 4
  %60 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %59, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 %61(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %3) #6
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %70, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %33, align 4
  %66 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = call i32 %67(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %3) #6
  %69 = icmp eq i32 %68, 2
  br label %70

70:                                               ; preds = %64, %58, %52, %46, %30
  %71 = phi i1 [ false, %58 ], [ false, %52 ], [ false, %46 ], [ false, %30 ], [ true, %64 ]
  %72 = phi i1 [ true, %58 ], [ true, %52 ], [ true, %46 ], [ true, %30 ], [ %69, %64 ]
  br i1 %31, label %84, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %75 = load ptr, ptr %74, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = or i16 %32, -32768
  %79 = getelementptr inbounds %struct.snd_ac97, ptr %75, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  call void %83(ptr noundef nonnull %75, i16 noundef zeroext 60, i16 noundef zeroext %78) #6
  br label %84

84:                                               ; preds = %77, %73, %70
  %85 = load ptr, ptr %33, align 4
  %86 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %85, i32 0, i32 7
  %87 = load ptr, ptr %86, align 4
  call void %87(ptr noundef %0) #6
  %88 = load i8, ptr %37, align 4
  %89 = and i8 %88, -5
  store i8 %89, ptr %37, align 4
  br i1 %71, label %90, label %96

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 8
  %92 = load ptr, ptr %91, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str, i32 noundef %40) #7
  %93 = load ptr, ptr %33, align 4
  %94 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %93, i32 0, i32 6
  %95 = load ptr, ptr %94, align 4
  call void %95(ptr noundef %0, i32 noundef 0) #6
  br label %96

96:                                               ; preds = %90, %84
  call void @mutex_unlock(ptr noundef %4) #6
  %97 = load i32, ptr %3, align 4
  %98 = and i32 %97, 4095
  %99 = select i1 %72, i32 %98, i32 -16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 %99
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm97xx_get_gpio(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.snd_ac97, ptr %5, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = tail call zeroext i16 %12(ptr noundef nonnull %5, i16 noundef zeroext 84) #6
  %14 = zext i16 %13 to i32
  br label %15

15:                                               ; preds = %7, %2
  %16 = phi i32 [ %14, %7 ], [ 65535, %2 ]
  %17 = and i32 %16, %1
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm97xx_set_gpio(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.snd_ac97, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %11, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i16 %13(ptr noundef nonnull %6, i16 noundef zeroext 84) #6
  %15 = zext i16 %14 to i32
  br label %16

16:                                               ; preds = %8, %3
  %17 = phi i32 [ %15, %8 ], [ -1, %3 ]
  %18 = icmp eq i32 %2, 0
  %19 = or i32 %17, %1
  %20 = xor i32 %1, -1
  %21 = and i32 %17, %20
  %22 = select i1 %18, i32 %19, i32 %21
  %23 = trunc i32 %22 to i16
  %24 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 19474
  br i1 %26, label %27, label %42

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 22
  %29 = load i16, ptr %28, align 2
  %30 = icmp eq i16 %29, 5651
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = shl i16 %23, 1
  %33 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 4
  store i16 %32, ptr %33, align 2
  %34 = load ptr, ptr %5, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.snd_ac97, ptr %34, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  tail call void %41(ptr noundef nonnull %34, i16 noundef zeroext 84, i16 noundef zeroext %32) #6
  br label %52

42:                                               ; preds = %27, %16
  %43 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 4
  store i16 %23, ptr %43, align 2
  %44 = load ptr, ptr %5, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.snd_ac97, ptr %44, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %49, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  tail call void %51(ptr noundef nonnull %44, i16 noundef zeroext 84, i16 noundef zeroext %23) #6
  br label %52

52:                                               ; preds = %46, %42, %36, %31
  tail call void @mutex_unlock(ptr noundef %4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm97xx_config_gpio(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.snd_ac97, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = tail call zeroext i16 %16(ptr noundef nonnull %9, i16 noundef zeroext 78) #6
  %18 = zext i16 %17 to i32
  %19 = load ptr, ptr %8, align 4
  br label %20

20:                                               ; preds = %11, %6
  %21 = phi ptr [ %19, %11 ], [ null, %6 ]
  %22 = phi i32 [ %18, %11 ], [ -1, %6 ]
  %23 = icmp eq i32 %3, 0
  %24 = or i32 %22, %1
  %25 = xor i32 %1, -1
  %26 = and i32 %22, %25
  %27 = select i1 %23, i32 %24, i32 %26
  %28 = trunc i32 %27 to i16
  %29 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 1
  store i16 %28, ptr %29, align 2
  %30 = icmp eq ptr %21, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.snd_ac97, ptr %21, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %34, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void %36(ptr noundef nonnull %21, i16 noundef zeroext 78, i16 noundef zeroext %28) #6
  %37 = load ptr, ptr %8, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %31, %20
  %40 = icmp eq i32 %4, 0
  %41 = trunc i32 %25 to i16
  %42 = select i1 %40, i16 -1, i16 %41
  %43 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 2
  store i16 %42, ptr %43, align 2
  br label %68

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.snd_ac97, ptr %37, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %47, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = tail call zeroext i16 %49(ptr noundef nonnull %37, i16 noundef zeroext 80) #6
  %51 = zext i16 %50 to i32
  %52 = load ptr, ptr %8, align 4
  %53 = icmp eq i32 %4, 0
  %54 = or i32 %51, %1
  %55 = and i32 %51, %25
  %56 = select i1 %53, i32 %54, i32 %55
  %57 = trunc i32 %56 to i16
  %58 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 2
  store i16 %57, ptr %58, align 2
  %59 = icmp eq ptr %52, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.snd_ac97, ptr %52, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %63, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  tail call void %65(ptr noundef nonnull %52, i16 noundef zeroext 80, i16 noundef zeroext %57) #6
  %66 = load ptr, ptr %8, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %60, %44, %39
  %69 = icmp eq i32 %5, 0
  %70 = trunc i32 %25 to i16
  %71 = select i1 %69, i16 -1, i16 %70
  %72 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 3
  store i16 %71, ptr %72, align 2
  br label %97

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.snd_ac97, ptr %66, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %76, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = tail call zeroext i16 %78(ptr noundef nonnull %66, i16 noundef zeroext 82) #6
  %80 = zext i16 %79 to i32
  %81 = load ptr, ptr %8, align 4
  %82 = icmp eq i32 %5, 0
  %83 = or i32 %80, %1
  %84 = and i32 %80, %25
  %85 = select i1 %82, i32 %83, i32 %84
  %86 = trunc i32 %85 to i16
  %87 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 3
  store i16 %86, ptr %87, align 2
  %88 = icmp eq ptr %81, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds %struct.snd_ac97, ptr %81, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef nonnull %81, i16 noundef zeroext 82, i16 noundef zeroext %86) #6
  %95 = load ptr, ptr %8, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %89, %73, %68
  %98 = icmp eq i32 %2, 0
  %99 = trunc i32 %25 to i16
  %100 = select i1 %98, i16 -1, i16 %99
  %101 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 0
  store i16 %100, ptr %101, align 2
  br label %124

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.snd_ac97, ptr %95, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = tail call zeroext i16 %107(ptr noundef nonnull %95, i16 noundef zeroext 76) #6
  %109 = zext i16 %108 to i32
  %110 = load ptr, ptr %8, align 4
  %111 = icmp eq i32 %2, 0
  %112 = or i32 %109, %1
  %113 = and i32 %109, %25
  %114 = select i1 %111, i32 %112, i32 %113
  %115 = trunc i32 %114 to i16
  %116 = getelementptr %struct.wm97xx, ptr %0, i32 0, i32 2, i32 0
  store i16 %115, ptr %116, align 2
  %117 = icmp eq ptr %110, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %102
  %119 = getelementptr inbounds %struct.snd_ac97, ptr %110, i32 0, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %121, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef nonnull %110, i16 noundef zeroext 76, i16 noundef zeroext %115) #6
  br label %124

124:                                              ; preds = %118, %102, %97
  tail call void @mutex_unlock(ptr noundef %7) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm97xx_set_suspend_mode(ptr nocapture noundef %0, i16 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 23
  store i16 %1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40
  %7 = icmp ne i16 %1, 0
  %8 = tail call i32 @device_init_wakeup(ptr noundef %6, i1 noundef zeroext %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wm97xx_register_mach_ops(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %3) #6
  %4 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi i32 [ 0, %7 ], [ -22, %2 ]
  tail call void @mutex_unlock(ptr noundef %3) #6
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @wm97xx_unregister_mach_ops(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 12
  tail call void @mutex_lock(ptr noundef %2) #6
  %3 = getelementptr inbounds %struct.wm97xx, ptr %0, i32 0, i32 11
  store ptr null, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %2) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #4 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm97xx_mfd_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #4 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm97xx_mfd_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_mfd_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 164, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %217, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 8
  store ptr %2, ptr %8, align 4
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 7
  store ptr %9, ptr %10, align 4
  %11 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef nonnull @_wm97xx_probe.__key) #6
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 8
  store ptr %5, ptr %13, align 8
  %14 = load ptr, ptr %10, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.snd_ac97, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = tail call zeroext i16 %21(ptr noundef nonnull %14, i16 noundef zeroext 124) #6
  %23 = zext i16 %22 to i32
  %24 = icmp eq i16 %22, 22349
  br i1 %24, label %28, label %25

25:                                               ; preds = %16, %7
  %26 = phi i32 [ %23, %16 ], [ -1, %7 ]
  %27 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.3, i32 noundef %26) #7
  br label %217

28:                                               ; preds = %16
  %29 = load ptr, ptr %10, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.snd_ac97, ptr %29, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %34, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  %37 = tail call zeroext i16 %36(ptr noundef nonnull %29, i16 noundef zeroext 126) #6
  %38 = zext i16 %37 to i32
  br label %39

39:                                               ; preds = %31, %28
  %40 = phi i32 [ %38, %31 ], [ -1, %28 ]
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 1
  store i16 %41, ptr %42, align 2
  %43 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 22
  store i16 0, ptr %43, align 2
  %44 = load ptr, ptr %8, align 4
  %45 = and i32 %40, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.4, i32 noundef %45) #7
  %46 = load i16, ptr %42, align 2
  %47 = trunc i16 %46 to i8
  switch i8 %47, label %50 [
    i8 5, label %54
    i8 18, label %48
    i8 19, label %49
  ]

48:                                               ; preds = %39
  br label %54

49:                                               ; preds = %39
  br label %54

50:                                               ; preds = %39
  %51 = and i16 %46, 255
  %52 = zext i16 %51 to i32
  %53 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.5, i32 noundef %52) #7
  br label %217

54:                                               ; preds = %49, %48, %39
  %55 = phi ptr [ @wm9713_codec, %49 ], [ @wm9712_codec, %48 ], [ @wm9705_codec, %39 ]
  %56 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 5
  store ptr %55, ptr %56, align 4
  %57 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %55, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef nonnull %5) #6
  %59 = load ptr, ptr %10, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 2
  store i16 -1, ptr %62, align 4
  br label %73

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.snd_ac97, ptr %59, i32 0, i32 3
  %65 = load ptr, ptr %64, align 4
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %66, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = tail call zeroext i16 %68(ptr noundef nonnull %59, i16 noundef zeroext 76) #6
  %70 = load ptr, ptr %10, align 4
  %71 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 2
  store i16 %69, ptr %71, align 4
  %72 = icmp eq ptr %70, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %63, %61
  %74 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 1
  store i16 -1, ptr %74, align 2
  %75 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 2
  store i16 -1, ptr %75, align 4
  br label %99

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.snd_ac97, ptr %70, i32 0, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %79, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = tail call zeroext i16 %81(ptr noundef nonnull %70, i16 noundef zeroext 78) #6
  %83 = load ptr, ptr %10, align 4
  %84 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 1
  store i16 %82, ptr %84, align 2
  %85 = icmp eq ptr %83, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 2
  store i16 -1, ptr %87, align 4
  %88 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 3
  store i16 -1, ptr %88, align 2
  br label %112

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.snd_ac97, ptr %83, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 4
  %95 = tail call zeroext i16 %94(ptr noundef nonnull %83, i16 noundef zeroext 80) #6
  %96 = load ptr, ptr %10, align 4
  %97 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 2
  store i16 %95, ptr %97, align 4
  %98 = icmp eq ptr %96, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %89, %73
  %100 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 3
  store i16 -1, ptr %100, align 2
  %101 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 4
  store i16 -1, ptr %101, align 4
  br label %131

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.snd_ac97, ptr %96, i32 0, i32 3
  %104 = load ptr, ptr %103, align 4
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = tail call zeroext i16 %107(ptr noundef nonnull %96, i16 noundef zeroext 82) #6
  %109 = load ptr, ptr %10, align 4
  %110 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 3
  store i16 %108, ptr %110, align 2
  %111 = icmp eq ptr %109, null
  br i1 %111, label %112, label %114

112:                                              ; preds = %102, %86
  %113 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 4
  store i16 -1, ptr %113, align 4
  br label %131

114:                                              ; preds = %102
  %115 = getelementptr inbounds %struct.snd_ac97, ptr %109, i32 0, i32 3
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %117, i32 0, i32 3
  %119 = load ptr, ptr %118, align 4
  %120 = tail call zeroext i16 %119(ptr noundef nonnull %109, i16 noundef zeroext 84) #6
  %121 = load ptr, ptr %10, align 4
  %122 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 4
  store i16 %120, ptr %122, align 4
  %123 = icmp eq ptr %121, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %114
  %125 = getelementptr inbounds %struct.snd_ac97, ptr %121, i32 0, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %127, i32 0, i32 3
  %129 = load ptr, ptr %128, align 4
  %130 = tail call zeroext i16 %129(ptr noundef nonnull %121, i16 noundef zeroext 86) #6
  br label %131

131:                                              ; preds = %124, %114, %112, %99
  %132 = phi i16 [ %130, %124 ], [ -1, %114 ], [ -1, %112 ], [ -1, %99 ]
  %133 = getelementptr %struct.wm97xx, ptr %5, i32 0, i32 2, i32 5
  store i16 %132, ptr %133, align 2
  %134 = load ptr, ptr %8, align 4
  %135 = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 7
  %136 = load ptr, ptr %135, align 4
  %137 = tail call ptr @devm_input_allocate_device(ptr noundef %134) #6
  %138 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 6
  store ptr %137, ptr %138, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %217, label %140

140:                                              ; preds = %131
  store ptr @.str.6, ptr %137, align 8
  %141 = load ptr, ptr %138, align 4
  %142 = getelementptr inbounds %struct.input_dev, ptr %141, i32 0, i32 1
  store ptr @.str.7, ptr %142, align 4
  %143 = load ptr, ptr %138, align 4
  %144 = getelementptr inbounds %struct.input_dev, ptr %143, i32 0, i32 31
  store ptr @wm97xx_ts_input_open, ptr %144, align 4
  %145 = load ptr, ptr %138, align 4
  %146 = getelementptr inbounds %struct.input_dev, ptr %145, i32 0, i32 32
  store ptr @wm97xx_ts_input_close, ptr %146, align 8
  %147 = load ptr, ptr %138, align 4
  %148 = getelementptr inbounds %struct.input_dev, ptr %147, i32 0, i32 5
  %149 = load i32, ptr %148, align 4
  %150 = or i32 %149, 8
  store i32 %150, ptr %148, align 4
  %151 = load ptr, ptr %138, align 4
  %152 = getelementptr inbounds %struct.input_dev, ptr %151, i32 0, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 2
  store i32 %154, ptr %152, align 4
  %155 = load ptr, ptr %138, align 4
  %156 = getelementptr %struct.input_dev, ptr %155, i32 0, i32 6, i32 10
  %157 = load i32, ptr %156, align 4
  %158 = or i32 %157, 1024
  store i32 %158, ptr %156, align 4
  %159 = load ptr, ptr %138, align 4
  %160 = load i32, ptr @abs_x, align 4
  %161 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_x, i32 0, i32 1), align 4
  %162 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_x, i32 0, i32 2), align 4
  tail call void @input_set_abs_params(ptr noundef %159, i32 noundef 0, i32 noundef %160, i32 noundef %161, i32 noundef %162, i32 noundef 0) #6
  %163 = load ptr, ptr %138, align 4
  %164 = load i32, ptr @abs_y, align 4
  %165 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_y, i32 0, i32 1), align 4
  %166 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_y, i32 0, i32 2), align 4
  tail call void @input_set_abs_params(ptr noundef %163, i32 noundef 1, i32 noundef %164, i32 noundef %165, i32 noundef %166, i32 noundef 0) #6
  %167 = load ptr, ptr %138, align 4
  %168 = load i32, ptr @abs_p, align 4
  %169 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_p, i32 0, i32 1), align 4
  %170 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_p, i32 0, i32 2), align 4
  tail call void @input_set_abs_params(ptr noundef %167, i32 noundef 24, i32 noundef %168, i32 noundef %169, i32 noundef %170, i32 noundef 0) #6
  %171 = load ptr, ptr %138, align 4
  %172 = getelementptr inbounds %struct.input_dev, ptr %171, i32 0, i32 40, i32 8
  store ptr %5, ptr %172, align 8
  %173 = load ptr, ptr %8, align 4
  %174 = load ptr, ptr %138, align 4
  %175 = getelementptr inbounds %struct.input_dev, ptr %174, i32 0, i32 40, i32 1
  store ptr %173, ptr %175, align 4
  %176 = load ptr, ptr %138, align 4
  %177 = tail call i32 @input_register_device(ptr noundef %176) #6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %217

179:                                              ; preds = %140
  %180 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.8, i32 noundef -1) #6
  %181 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 10
  store ptr %180, ptr %181, align 4
  %182 = icmp eq ptr %180, null
  br i1 %182, label %217, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.platform_device, ptr %180, i32 0, i32 3, i32 8
  store ptr %5, ptr %184, align 8
  %185 = load ptr, ptr %8, align 4
  %186 = load ptr, ptr %181, align 4
  %187 = getelementptr inbounds %struct.platform_device, ptr %186, i32 0, i32 3, i32 1
  store ptr %185, ptr %187, align 4
  %188 = load ptr, ptr %181, align 4
  %189 = getelementptr inbounds %struct.platform_device, ptr %188, i32 0, i32 3, i32 7
  store ptr %136, ptr %189, align 4
  %190 = load ptr, ptr %181, align 4
  %191 = tail call i32 @platform_device_add(ptr noundef %190) #6
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %183
  %194 = load ptr, ptr %181, align 4
  tail call void @platform_device_put(ptr noundef %194) #6
  br label %217

195:                                              ; preds = %183
  %196 = getelementptr inbounds %struct.wm97xx_platform_data, ptr %4, i32 0, i32 2
  %197 = load ptr, ptr %196, align 4
  %198 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.14, i32 noundef -1) #6
  %199 = getelementptr inbounds %struct.wm97xx, ptr %5, i32 0, i32 9
  store ptr %198, ptr %199, align 4
  %200 = icmp eq ptr %198, null
  br i1 %200, label %214, label %201

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.platform_device, ptr %198, i32 0, i32 3, i32 8
  store ptr %5, ptr %202, align 8
  %203 = load ptr, ptr %8, align 4
  %204 = load ptr, ptr %199, align 4
  %205 = getelementptr inbounds %struct.platform_device, ptr %204, i32 0, i32 3, i32 1
  store ptr %203, ptr %205, align 4
  %206 = load ptr, ptr %199, align 4
  %207 = getelementptr inbounds %struct.platform_device, ptr %206, i32 0, i32 3, i32 7
  store ptr %197, ptr %207, align 4
  %208 = load ptr, ptr %199, align 4
  %209 = tail call i32 @platform_device_add(ptr noundef %208) #6
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %201
  %212 = load ptr, ptr %199, align 4
  tail call void @platform_device_put(ptr noundef %212) #6
  %213 = icmp slt i32 %209, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %195
  %215 = phi i32 [ %209, %211 ], [ -12, %195 ]
  %216 = load ptr, ptr %181, align 4
  tail call void @platform_device_unregister(ptr noundef %216) #6
  br label %217

217:                                              ; preds = %214, %211, %201, %193, %179, %140, %131, %50, %25, %1
  %218 = phi i32 [ %215, %214 ], [ -12, %1 ], [ %209, %211 ], [ -12, %179 ], [ %177, %140 ], [ -12, %131 ], [ %191, %193 ], [ -19, %50 ], [ -19, %25 ], [ 0, %201 ]
  ret i32 %218
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_mfd_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @platform_device_unregister(ptr noundef %5) #6
  %6 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  tail call void @platform_device_unregister(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_ts_input_open(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.9, i32 noundef 655362, i32 noundef 1) #6
  %5 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 17
  store ptr %4, ptr %5, align 4
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10) #7
  br label %128

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %12, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %19, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 %21(ptr noundef %3, i32 noundef 1) #6
  br label %23

23:                                               ; preds = %17, %14, %10
  %24 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %3, i32 noundef 1) #6
  %28 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13
  store i32 -32, ptr %28, align 4
  %29 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13, i32 0, i32 1
  store volatile ptr %29, ptr %29, align 4
  %30 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13, i32 0, i32 1, i32 1
  store ptr %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13, i32 0, i32 2
  store ptr @wm97xx_ts_reader, ptr %31, align 4
  %32 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %32, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #6
  %33 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 18
  store i32 -32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 18, i32 1
  store volatile ptr %34, ptr %34, align 4
  %35 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 18, i32 1, i32 1
  store ptr %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 18, i32 2
  store ptr @wm97xx_pen_irq_worker, ptr %36, align 4
  %37 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 15
  store i32 1, ptr %37, align 4
  %38 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 14
  store i32 1, ptr %38, align 4
  %39 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 21
  %40 = load i8, ptr %39, align 4
  %41 = and i8 %40, -2
  store i8 %41, ptr %39, align 4
  %42 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 16
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %118, label %45

45:                                               ; preds = %23
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !9

50:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/wm97xx-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 379, 0\0A.popsection", ""() #6, !srcloc !10
  unreachable

51:                                               ; preds = %45
  %52 = tail call i32 @request_threaded_irq(i32 noundef %43, ptr noundef nonnull @wm97xx_pen_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.12, ptr noundef %3) #6
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 8
  %56 = load ptr, ptr %55, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.13) #7
  store i32 0, ptr %42, align 4
  br label %124

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = icmp eq i16 %59, 19461
  br i1 %60, label %121, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %11, align 4
  %63 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %62, i32 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67, !prof !9

66:                                               ; preds = %61
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/wm97xx-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 391, 0\0A.popsection", ""() #6, !srcloc !11
  unreachable

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 7
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = trunc i32 %64 to i16
  %73 = xor i16 %72, -1
  %74 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 5
  store i16 %73, ptr %74, align 2
  br label %99

75:                                               ; preds = %67
  %76 = getelementptr inbounds %struct.snd_ac97, ptr %69, i32 0, i32 3
  %77 = load ptr, ptr %76, align 4
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %78, i32 0, i32 3
  %80 = load ptr, ptr %79, align 4
  %81 = tail call zeroext i16 %80(ptr noundef nonnull %69, i16 noundef zeroext 86) #6
  %82 = load ptr, ptr %11, align 4
  %83 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %82, i32 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = load ptr, ptr %68, align 4
  %86 = trunc i32 %84 to i16
  %87 = xor i16 %86, -1
  %88 = and i16 %81, %87
  %89 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 5
  store i16 %88, ptr %89, align 2
  %90 = icmp eq ptr %85, null
  br i1 %90, label %99, label %91

91:                                               ; preds = %75
  %92 = getelementptr inbounds %struct.snd_ac97, ptr %85, i32 0, i32 3
  %93 = load ptr, ptr %92, align 4
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  tail call void %96(ptr noundef nonnull %85, i16 noundef zeroext 86, i16 noundef zeroext %88) #6
  %97 = load ptr, ptr %68, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %91, %75, %71
  %100 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 3
  store i16 -2, ptr %100, align 4
  br label %121

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.snd_ac97, ptr %97, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %104, i32 0, i32 3
  %106 = load ptr, ptr %105, align 4
  %107 = tail call zeroext i16 %106(ptr noundef nonnull %97, i16 noundef zeroext 90) #6
  %108 = load ptr, ptr %68, align 4
  %109 = and i16 %107, -2
  %110 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 3
  store i16 %109, ptr %110, align 4
  %111 = icmp eq ptr %108, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.snd_ac97, ptr %108, i32 0, i32 3
  %114 = load ptr, ptr %113, align 4
  %115 = load ptr, ptr %114, align 4
  %116 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  tail call void %117(ptr noundef nonnull %108, i16 noundef zeroext 90, i16 noundef zeroext %109) #6
  br label %121

118:                                              ; preds = %23
  %119 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 8
  %120 = load ptr, ptr %119, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.11) #7
  br label %121

121:                                              ; preds = %118, %112, %101, %99, %57
  %122 = load i32, ptr %42, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121, %54
  %125 = load ptr, ptr %5, align 4
  %126 = load i32, ptr %38, align 4
  %127 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %125, ptr noundef %28, i32 noundef %126) #6
  br label %128

128:                                              ; preds = %124, %121, %7
  %129 = phi i32 [ -22, %7 ], [ 0, %124 ], [ 0, %121 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm97xx_ts_input_close(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 40, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %48, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 1
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 19461
  br i1 %10, label %45, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 11
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %11
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/wm97xx-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 552, 0\0A.popsection", ""() #6, !srcloc !12
  unreachable

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 5
  store i16 -1, ptr %23, align 2
  br label %45

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.snd_ac97, ptr %20, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %27, i32 0, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = tail call zeroext i16 %29(ptr noundef nonnull %20, i16 noundef zeroext 86) #6
  %31 = load ptr, ptr %12, align 4
  %32 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %31, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = load ptr, ptr %19, align 4
  %35 = trunc i32 %33 to i16
  %36 = or i16 %30, %35
  %37 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 5
  store i16 %36, ptr %37, align 2
  %38 = icmp eq ptr %34, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %24
  %40 = getelementptr inbounds %struct.snd_ac97, ptr %34, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %42, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  tail call void %44(ptr noundef nonnull %34, i16 noundef zeroext 86, i16 noundef zeroext %36) #6
  br label %45

45:                                               ; preds = %39, %24, %22, %7
  %46 = load i32, ptr %4, align 4
  %47 = tail call ptr @free_irq(i32 noundef %46, ptr noundef %3) #6
  br label %48

48:                                               ; preds = %45, %1
  %49 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 21
  %50 = load i8, ptr %49, align 4
  %51 = and i8 %50, -2
  store i8 %51, ptr %49, align 4
  %52 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 18
  %53 = tail call zeroext i1 @cancel_work_sync(ptr noundef %52) #6
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 11
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  tail call void %58(ptr noundef %3, i32 noundef 1) #6
  br label %59

59:                                               ; preds = %54, %48
  %60 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13
  %61 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %60) #6
  %62 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 17
  %63 = load ptr, ptr %62, align 4
  tail call void @destroy_workqueue(ptr noundef %63) #6
  %64 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  tail call void %67(ptr noundef %3, i32 noundef 0) #6
  %68 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 11
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %59
  %72 = load i32, ptr %69, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %64, align 4
  %76 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %75, i32 0, i32 4
  %77 = load ptr, ptr %76, align 4
  %78 = tail call i32 %77(ptr noundef %3, i32 noundef 0) #6
  br label %79

79:                                               ; preds = %74, %71, %59
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm97xx_ts_reader(ptr noundef %0) #0 {
  %2 = alloca %struct.wm97xx_data, align 4
  %3 = getelementptr i8, ptr %0, i32 -76
  %4 = getelementptr i8, ptr %0, i32 -48
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !9

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 -20
  %9 = getelementptr i8, ptr %0, i32 -24
  %10 = getelementptr i8, ptr %0, i32 80
  %11 = getelementptr i8, ptr %0, i32 -44
  %12 = getelementptr i8, ptr %0, i32 44
  %13 = getelementptr inbounds %struct.wm97xx_data, ptr %2, i32 0, i32 1
  %14 = getelementptr inbounds %struct.wm97xx_data, ptr %2, i32 0, i32 2
  %15 = getelementptr i8, ptr %0, i32 48
  br label %17

16:                                               ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/touchscreen/wm97xx-core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 477, 0\0A.popsection", ""() #6, !srcloc !13
  unreachable

17:                                               ; preds = %92, %7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #6, !annotation !8
  call void @mutex_lock(ptr noundef %8) #6
  %18 = load ptr, ptr %9, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %18, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 %25(ptr noundef %3) #6
  br label %32

27:                                               ; preds = %20, %17
  %28 = load ptr, ptr %4, align 4
  %29 = getelementptr inbounds %struct.wm97xx_codec_drv, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 %30(ptr noundef %3, ptr noundef nonnull %2) #6
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i32 [ %26, %23 ], [ %31, %27 ]
  %34 = and i32 %33, 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %53, label %36

36:                                               ; preds = %32
  %37 = load i8, ptr %10, align 4
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = and i8 %37, -2
  store i8 %41, ptr %10, align 4
  %42 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %42, i32 noundef 3, i32 noundef 24, i32 noundef 0) #6
  %43 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %43, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  %44 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %44, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %92

45:                                               ; preds = %36
  %46 = and i32 %33, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %92

48:                                               ; preds = %45
  %49 = load i32, ptr %12, align 4
  %50 = icmp ult i32 %49, 10
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = add nuw nsw i32 %49, 1
  store i32 %52, ptr %12, align 4
  br label %92

53:                                               ; preds = %32
  %54 = and i32 %33, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr @abs_x, align 4
  %58 = load i32, ptr %2, align 4
  %59 = and i32 %58, 4095
  %60 = icmp sgt i32 %57, %59
  %61 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_x, i32 0, i32 1), align 4
  %62 = icmp slt i32 %61, %59
  %63 = select i1 %60, i1 true, i1 %62
  br i1 %63, label %92, label %64

64:                                               ; preds = %56
  %65 = load i32, ptr @abs_y, align 4
  %66 = load i32, ptr %13, align 4
  %67 = and i32 %66, 4095
  %68 = icmp sgt i32 %65, %67
  %69 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @abs_y, i32 0, i32 1), align 4
  %70 = icmp slt i32 %69, %67
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %92, label %72

72:                                               ; preds = %64
  %73 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %73, i32 noundef 3, i32 noundef 0, i32 noundef %59) #6
  %74 = load ptr, ptr %11, align 4
  %75 = load i32, ptr %13, align 4
  %76 = and i32 %75, 4095
  call void @input_event(ptr noundef %74, i32 noundef 3, i32 noundef 1, i32 noundef %76) #6
  %77 = load ptr, ptr %11, align 4
  %78 = load i32, ptr %14, align 4
  %79 = and i32 %78, 4095
  call void @input_event(ptr noundef %77, i32 noundef 3, i32 noundef 24, i32 noundef %79) #6
  %80 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %80, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %81 = load ptr, ptr %11, align 4
  call void @input_event(ptr noundef %81, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %82 = load i8, ptr %10, align 4
  %83 = or i8 %82, 1
  store i8 %83, ptr %10, align 4
  %84 = load i32, ptr %15, align 4
  store i32 %84, ptr %12, align 4
  br label %92

85:                                               ; preds = %53
  %86 = and i32 %33, 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i8, ptr %10, align 4
  %90 = or i8 %89, 1
  store i8 %90, ptr %10, align 4
  %91 = load i32, ptr %15, align 4
  store i32 %91, ptr %12, align 4
  br label %92

92:                                               ; preds = %88, %85, %72, %64, %56, %51, %48, %45, %40
  %93 = phi i32 [ %33, %40 ], [ %33, %45 ], [ %33, %51 ], [ %33, %48 ], [ %33, %72 ], [ %33, %88 ], [ %33, %85 ], [ 1, %64 ], [ 1, %56 ]
  call void @mutex_unlock(ptr noundef %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #6
  %94 = and i32 %93, 1
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %17

96:                                               ; preds = %92
  %97 = load i8, ptr %10, align 4
  %98 = and i8 %97, 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = getelementptr i8, ptr %0, i32 52
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100, %96
  %105 = getelementptr i8, ptr %0, i32 56
  %106 = load ptr, ptr %105, align 4
  %107 = load i32, ptr %12, align 4
  %108 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %106, ptr noundef %0, i32 noundef %107) #6
  br label %109

109:                                              ; preds = %104, %100
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wm97xx_pen_irq_worker(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -136
  %3 = getelementptr i8, ptr %0, i32 20
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = getelementptr i8, ptr %0, i32 -130
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 19461
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %0, i32 -100
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.snd_ac97, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = tail call zeroext i16 %18(ptr noundef nonnull %11, i16 noundef zeroext 122) #6
  %20 = icmp sgt i16 %19, -1
  %21 = load i8, ptr %3, align 4
  br i1 %20, label %25, label %22

22:                                               ; preds = %13, %9
  %23 = phi i8 [ %4, %9 ], [ %21, %13 ]
  %24 = or i8 %23, 1
  store i8 %24, ptr %3, align 4
  br label %116

25:                                               ; preds = %13
  %26 = and i8 %21, -2
  store i8 %26, ptr %3, align 4
  br label %116

27:                                               ; preds = %1
  %28 = getelementptr i8, ptr %0, i32 -80
  tail call void @mutex_lock(ptr noundef %28) #6
  %29 = getelementptr i8, ptr %0, i32 -100
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.snd_ac97, ptr %30, i32 0, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %35, i32 0, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = tail call zeroext i16 %37(ptr noundef nonnull %30, i16 noundef zeroext 84) #6
  %39 = zext i16 %38 to i32
  %40 = load ptr, ptr %29, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.snd_ac97, ptr %40, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = tail call zeroext i16 %47(ptr noundef nonnull %40, i16 noundef zeroext 78) #6
  %49 = zext i16 %48 to i32
  br label %50

50:                                               ; preds = %42, %32, %27
  %51 = phi i32 [ %39, %42 ], [ %39, %32 ], [ -1, %27 ]
  %52 = phi i32 [ %49, %42 ], [ -1, %32 ], [ -1, %27 ]
  %53 = and i32 %51, 8192
  %54 = and i32 %53, %52
  %55 = icmp eq i32 %54, 0
  %56 = load i8, ptr %3, align 4
  br i1 %55, label %70, label %57

57:                                               ; preds = %50
  %58 = or i8 %56, 1
  store i8 %58, ptr %3, align 4
  %59 = trunc i32 %52 to i16
  %60 = and i16 %59, -8193
  %61 = getelementptr i8, ptr %0, i32 -126
  store i16 %60, ptr %61, align 2
  %62 = load ptr, ptr %29, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.snd_ac97, ptr %62, i32 0, i32 3
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  tail call void %69(ptr noundef nonnull %62, i16 noundef zeroext 78, i16 noundef zeroext %60) #6
  br label %83

70:                                               ; preds = %50
  %71 = and i8 %56, -2
  store i8 %71, ptr %3, align 4
  %72 = trunc i32 %52 to i16
  %73 = or i16 %72, 8192
  %74 = getelementptr i8, ptr %0, i32 -126
  store i16 %73, ptr %74, align 2
  %75 = load ptr, ptr %29, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.snd_ac97, ptr %75, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = load ptr, ptr %79, align 4
  %81 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %80, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  tail call void %82(ptr noundef nonnull %75, i16 noundef zeroext 78, i16 noundef zeroext %73) #6
  br label %83

83:                                               ; preds = %77, %70, %64, %57
  %84 = load i16, ptr %6, align 2
  %85 = icmp eq i16 %84, 19474
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = getelementptr i8, ptr %0, i32 22
  %88 = load i16, ptr %87, align 2
  %89 = icmp eq i16 %88, 5651
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = trunc i32 %51 to i16
  %92 = shl i16 %91, 1
  %93 = and i16 %92, -16386
  %94 = getelementptr i8, ptr %0, i32 -120
  store i16 %93, ptr %94, align 2
  %95 = load ptr, ptr %29, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %115, label %97

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.snd_ac97, ptr %95, i32 0, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %100, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  tail call void %102(ptr noundef nonnull %95, i16 noundef zeroext 84, i16 noundef zeroext %93) #6
  br label %115

103:                                              ; preds = %86, %83
  %104 = trunc i32 %51 to i16
  %105 = and i16 %104, -8193
  %106 = getelementptr i8, ptr %0, i32 -120
  store i16 %105, ptr %106, align 2
  %107 = load ptr, ptr %29, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.snd_ac97, ptr %107, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  tail call void %114(ptr noundef nonnull %107, i16 noundef zeroext 84, i16 noundef zeroext %105) #6
  br label %115

115:                                              ; preds = %109, %103, %97, %90
  tail call void @mutex_unlock(ptr noundef %28) #6
  br label %116

116:                                              ; preds = %115, %25, %22
  %117 = getelementptr i8, ptr %0, i32 -84
  %118 = load ptr, ptr %117, align 4
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %118, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i8, ptr %3, align 4
  br label %146

127:                                              ; preds = %121, %116
  %128 = load i8, ptr %3, align 4
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = icmp ne i8 %5, 0
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %127
  %134 = getelementptr i8, ptr %0, i32 -4
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr i8, ptr %0, i32 -60
  %137 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %135, ptr noundef %136, i32 noundef 1) #6
  %138 = load i8, ptr %3, align 4
  br label %139

139:                                              ; preds = %133, %127
  %140 = phi i8 [ %138, %133 ], [ %128, %127 ]
  %141 = and i8 %140, 1
  %142 = icmp eq i8 %141, 0
  %143 = select i1 %142, i1 %131, i1 false
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = or i8 %140, 1
  store i8 %145, ptr %3, align 4
  br label %146

146:                                              ; preds = %144, %139, %125
  %147 = phi i8 [ %126, %125 ], [ %140, %139 ], [ %145, %144 ]
  %148 = and i8 %147, 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = load ptr, ptr %117, align 4
  %152 = load i32, ptr %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %151, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  tail call void %156(ptr noundef %2) #6
  br label %157

157:                                              ; preds = %154, %150, %146
  %158 = load ptr, ptr %117, align 4
  %159 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %158, i32 0, i32 5
  %160 = load ptr, ptr %159, align 4
  tail call void %160(ptr noundef %2, i32 noundef 1) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_pen_interrupt(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wm97xx, ptr %1, i32 0, i32 18
  %4 = load volatile i32, ptr %3, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.wm97xx, ptr %1, i32 0, i32 11
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.wm97xx_mach_ops, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  tail call void %11(ptr noundef %1, i32 noundef 0) #6
  %12 = getelementptr inbounds %struct.wm97xx, ptr %1, i32 0, i32 17
  %13 = load ptr, ptr %12, align 4
  %14 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %13, ptr noundef %3) #6
  br label %15

15:                                               ; preds = %7, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 11, i32 1
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 11, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 23
  %16 = load i16, ptr %15, align 4
  %17 = zext i16 %16 to i32
  br label %18

18:                                               ; preds = %14, %10, %1
  %19 = phi i32 [ %17, %14 ], [ 0, %10 ], [ 0, %1 ]
  %20 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %20) #6
  %21 = load ptr, ptr %4, align 4
  %22 = tail call zeroext i1 @input_device_enabled(ptr noundef %21) #6
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13
  %25 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %24) #6
  br label %26

26:                                               ; preds = %23, %18
  %27 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.snd_ac97, ptr %28, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = tail call zeroext i16 %35(ptr noundef nonnull %28, i16 noundef zeroext 120) #6
  %37 = and i16 %36, 16383
  br label %38

38:                                               ; preds = %30, %26
  %39 = phi i16 [ %37, %30 ], [ 16383, %26 ]
  %40 = load ptr, ptr %4, align 4
  %41 = tail call zeroext i1 @input_device_enabled(ptr noundef %40) #6
  %42 = trunc i32 %19 to i16
  %43 = select i1 %41, i16 %42, i16 0
  %44 = or i16 %43, %39
  %45 = load ptr, ptr %27, align 4
  %46 = getelementptr inbounds %struct.snd_ac97, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  tail call void %50(ptr noundef %45, i16 noundef zeroext 120, i16 noundef zeroext %44) #6
  %51 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 1
  %52 = load i16, ptr %51, align 2
  %53 = icmp eq i16 %52, 19475
  br i1 %53, label %54, label %78

54:                                               ; preds = %38
  %55 = load ptr, ptr %4, align 4
  %56 = tail call zeroext i1 @input_device_enabled(ptr noundef %55) #6
  %57 = icmp ne i32 %19, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load ptr, ptr %27, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %78, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.snd_ac97, ptr %60, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = tail call zeroext i16 %67(ptr noundef nonnull %60, i16 noundef zeroext 60) #6
  %69 = load ptr, ptr %27, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = or i16 %68, -32768
  %73 = getelementptr inbounds %struct.snd_ac97, ptr %69, i32 0, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  tail call void %77(ptr noundef nonnull %69, i16 noundef zeroext 60, i16 noundef zeroext %72) #6
  br label %78

78:                                               ; preds = %71, %62, %59, %54, %38
  %79 = load ptr, ptr %4, align 4
  %80 = getelementptr inbounds %struct.input_dev, ptr %79, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %80) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wm97xx_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 37
  tail call void @mutex_lock(ptr noundef %6) #6
  %7 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = icmp eq i16 %8, 19475
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 7
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %10
  %15 = load i16, ptr %3, align 4
  %16 = getelementptr inbounds %struct.snd_ac97, ptr %12, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void %20(ptr noundef nonnull %12, i16 noundef zeroext 116, i16 noundef zeroext %15) #6
  %21 = load ptr, ptr %11, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 3
  %25 = load i16, ptr %24, align 4
  %26 = getelementptr inbounds %struct.snd_ac97, ptr %21, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef nonnull %21, i16 noundef zeroext 90, i16 noundef zeroext %25) #6
  br label %31

31:                                               ; preds = %23, %14, %10
  %32 = load ptr, ptr %4, align 4
  %33 = tail call zeroext i1 @input_device_enabled(ptr noundef %32) #6
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load ptr, ptr %11, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.snd_ac97, ptr %35, i32 0, i32 3
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %40, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = tail call zeroext i16 %42(ptr noundef nonnull %35, i16 noundef zeroext 60) #6
  %44 = load ptr, ptr %11, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %53, label %46

46:                                               ; preds = %37
  %47 = and i16 %43, 32767
  %48 = getelementptr inbounds %struct.snd_ac97, ptr %44, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  tail call void %52(ptr noundef nonnull %44, i16 noundef zeroext 60, i16 noundef zeroext %47) #6
  br label %53

53:                                               ; preds = %46, %37, %34, %31, %1
  %54 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 7
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %135, label %57

57:                                               ; preds = %53
  %58 = getelementptr [3 x i16], ptr %3, i32 0, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = getelementptr inbounds %struct.snd_ac97, ptr %55, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void %64(ptr noundef nonnull %55, i16 noundef zeroext 118, i16 noundef zeroext %59) #6
  %65 = load ptr, ptr %54, align 4
  %66 = icmp eq ptr %65, null
  br i1 %66, label %135, label %67

67:                                               ; preds = %57
  %68 = getelementptr [3 x i16], ptr %3, i32 0, i32 2
  %69 = load i16, ptr %68, align 4
  %70 = getelementptr inbounds %struct.snd_ac97, ptr %65, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef nonnull %65, i16 noundef zeroext 120, i16 noundef zeroext %69) #6
  %75 = load ptr, ptr %54, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %135, label %77

77:                                               ; preds = %67
  %78 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2
  %79 = load i16, ptr %78, align 4
  %80 = getelementptr inbounds %struct.snd_ac97, ptr %75, i32 0, i32 3
  %81 = load ptr, ptr %80, align 4
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %82, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  tail call void %84(ptr noundef nonnull %75, i16 noundef zeroext 76, i16 noundef zeroext %79) #6
  %85 = load ptr, ptr %54, align 4
  %86 = icmp eq ptr %85, null
  br i1 %86, label %135, label %87

87:                                               ; preds = %77
  %88 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 1
  %89 = load i16, ptr %88, align 2
  %90 = getelementptr inbounds %struct.snd_ac97, ptr %85, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef nonnull %85, i16 noundef zeroext 78, i16 noundef zeroext %89) #6
  %95 = load ptr, ptr %54, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %135, label %97

97:                                               ; preds = %87
  %98 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 2
  %99 = load i16, ptr %98, align 4
  %100 = getelementptr inbounds %struct.snd_ac97, ptr %95, i32 0, i32 3
  %101 = load ptr, ptr %100, align 4
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 4
  tail call void %104(ptr noundef nonnull %95, i16 noundef zeroext 80, i16 noundef zeroext %99) #6
  %105 = load ptr, ptr %54, align 4
  %106 = icmp eq ptr %105, null
  br i1 %106, label %135, label %107

107:                                              ; preds = %97
  %108 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 3
  %109 = load i16, ptr %108, align 2
  %110 = getelementptr inbounds %struct.snd_ac97, ptr %105, i32 0, i32 3
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %112, i32 0, i32 2
  %114 = load ptr, ptr %113, align 4
  tail call void %114(ptr noundef nonnull %105, i16 noundef zeroext 82, i16 noundef zeroext %109) #6
  %115 = load ptr, ptr %54, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %135, label %117

117:                                              ; preds = %107
  %118 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 4
  %119 = load i16, ptr %118, align 4
  %120 = getelementptr inbounds %struct.snd_ac97, ptr %115, i32 0, i32 3
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %121, align 4
  %123 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %122, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  tail call void %124(ptr noundef nonnull %115, i16 noundef zeroext 84, i16 noundef zeroext %119) #6
  %125 = load ptr, ptr %54, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %135, label %127

127:                                              ; preds = %117
  %128 = getelementptr %struct.wm97xx, ptr %3, i32 0, i32 2, i32 5
  %129 = load i16, ptr %128, align 2
  %130 = getelementptr inbounds %struct.snd_ac97, ptr %125, i32 0, i32 3
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr inbounds %struct.snd_ac97_bus_ops, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  tail call void %134(ptr noundef nonnull %125, i16 noundef zeroext 86, i16 noundef zeroext %129) #6
  br label %135

135:                                              ; preds = %127, %117, %107, %97, %87, %77, %67, %57, %53
  %136 = load ptr, ptr %4, align 4
  %137 = tail call zeroext i1 @input_device_enabled(ptr noundef %136) #6
  br i1 %137, label %138, label %150

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 16
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 15
  %144 = load i32, ptr %143, align 4
  %145 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 14
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 17
  %147 = load ptr, ptr %146, align 4
  %148 = getelementptr inbounds %struct.wm97xx, ptr %3, i32 0, i32 13
  %149 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %147, ptr noundef %148, i32 noundef %144) #6
  br label %150

150:                                              ; preds = %142, %138, %135
  %151 = load ptr, ptr %4, align 4
  %152 = getelementptr inbounds %struct.input_dev, ptr %151, i32 0, i32 37
  tail call void @mutex_unlock(ptr noundef %152) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153205018, i64 2153205522, i64 2153205055, i64 2153205111, i64 2153205145, i64 2153205169, i64 2153205210, i64 2153205231, i64 2153205259, i64 2153205293}
!11 = !{i64 2153206811, i64 2153207315, i64 2153206848, i64 2153206904, i64 2153206938, i64 2153206962, i64 2153207003, i64 2153207024, i64 2153207052, i64 2153207086}
!12 = !{i64 2153215606, i64 2153216110, i64 2153215643, i64 2153215699, i64 2153215733, i64 2153215757, i64 2153215798, i64 2153215819, i64 2153215847, i64 2153215881}
!13 = !{i64 2153211709, i64 2153212213, i64 2153211746, i64 2153211802, i64 2153211836, i64 2153211860, i64 2153211901, i64 2153211922, i64 2153211950, i64 2153211984}
