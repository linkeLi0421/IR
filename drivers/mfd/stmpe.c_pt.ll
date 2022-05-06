; ModuleID = '/llk/IR/drivers/mfd/stmpe.c_pt.bc'
source_filename = "../drivers/mfd/stmpe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_enable\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_disable\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_reg_read\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_reg_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_reg_write\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_reg_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_block_read\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_block_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_block_write\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_block_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe_set_altfunc:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe_set_altfunc\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe_set_altfunc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stmpe811_adc_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22stmpe811_adc_common_init\22\09\09\09\09\09"
module asm "__kstrtabns_stmpe811_adc_common_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type {}
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stmpe_variant_info = type { ptr, i16, i16, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stmpe_variant_block = type { ptr, i32, i32 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.stmpe_client_info = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.stmpe_platform_data = type { i32, i32, i32, i8, i8, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__kstrtab_stmpe_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_enable to i32), ptr @__kstrtab_stmpe_enable, ptr @__kstrtabns_stmpe_enable }, section "___ksymtab_gpl+stmpe_enable", align 4
@__kstrtab_stmpe_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_disable to i32), ptr @__kstrtab_stmpe_disable, ptr @__kstrtabns_stmpe_disable }, section "___ksymtab_gpl+stmpe_disable", align 4
@__kstrtab_stmpe_reg_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_reg_read = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_reg_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_reg_read to i32), ptr @__kstrtab_stmpe_reg_read, ptr @__kstrtabns_stmpe_reg_read }, section "___ksymtab_gpl+stmpe_reg_read", align 4
@__kstrtab_stmpe_reg_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_reg_write = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_reg_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_reg_write to i32), ptr @__kstrtab_stmpe_reg_write, ptr @__kstrtabns_stmpe_reg_write }, section "___ksymtab_gpl+stmpe_reg_write", align 4
@__kstrtab_stmpe_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_set_bits to i32), ptr @__kstrtab_stmpe_set_bits, ptr @__kstrtabns_stmpe_set_bits }, section "___ksymtab_gpl+stmpe_set_bits", align 4
@__kstrtab_stmpe_block_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_block_read = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_block_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_block_read to i32), ptr @__kstrtab_stmpe_block_read, ptr @__kstrtabns_stmpe_block_read }, section "___ksymtab_gpl+stmpe_block_read", align 4
@__kstrtab_stmpe_block_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_block_write = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_block_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_block_write to i32), ptr @__kstrtab_stmpe_block_write, ptr @__kstrtabns_stmpe_block_write }, section "___ksymtab_gpl+stmpe_block_write", align 4
@__kstrtab_stmpe_set_altfunc = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe_set_altfunc = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe_set_altfunc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe_set_altfunc to i32), ptr @__kstrtab_stmpe_set_altfunc, ptr @__kstrtabns_stmpe_set_altfunc }, section "___ksymtab_gpl+stmpe_set_altfunc", align 4
@.str = private unnamed_addr constant [21 x i8] c"Could not setup ADC\0A\00", align 1
@__kstrtab_stmpe811_adc_common_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_stmpe811_adc_common_init = external dso_local constant [0 x i8], align 1
@__ksymtab_stmpe811_adc_common_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stmpe811_adc_common_init to i32), ptr @__kstrtab_stmpe811_adc_common_init, ptr @__kstrtabns_stmpe811_adc_common_init }, section "___ksymtab_gpl+stmpe811_adc_common_init", align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@stmpe_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"&stmpe->irq_lock\00", align 1
@stmpe_probe.__key.3 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"&stmpe->lock\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"st,sample-time\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"st,mod-12b\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"st,ref-sel\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"st,adc-freq\00", align 1
@stmpe_variant_info = internal unnamed_addr constant [8 x ptr] [ptr @stmpe610, ptr @stmpe801, ptr @stmpe811, ptr @stmpe1600, ptr @stmpe1601, ptr @stmpe1801, ptr @stmpe2401, ptr @stmpe2403], align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"failed to enable VCC supply\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"vio\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to enable VIO supply\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"stmpe\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to request IRQ GPIO: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"%s configured in no-irq mode by platform data\0A\00", align 1
@stmpe_noirq_variant_info = internal unnamed_addr constant [8 x ptr] [ptr null, ptr @stmpe801_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], align 4
@.str.16 = private unnamed_addr constant [34 x i8] c"%s does not support no-irq mode!\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"failed to request IRQ: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"failed to add children\0A\00", align 1
@stmpe_dev_pm_ops = dso_local local_unnamed_addr constant %struct.dev_pm_ops { ptr null, ptr null, ptr @stmpe_suspend, ptr @stmpe_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"failed to read reg %#x: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to write reg %#x: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"failed to read regs %#x: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"failed to write regs %#x: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"stmpe-i2c\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"irq-gpio\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"st,autosleep-timeout\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"stmpe_gpio\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"stmpe_keypad\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"stmpe_touchscreen\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"stmpe_adc\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"stmpe_pwm\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"stmpe_rotator\00", align 1
@stmpe610 = internal global %struct.stmpe_variant_info { ptr @.str.34, i16 2065, i16 -1, i32 6, i32 1, ptr @stmpe811_regs, ptr @stmpe811_blocks, i32 3, i32 8, ptr @stmpe811_enable, ptr @stmpe811_get_altfunc, ptr null }, align 4
@stmpe801 = internal global %struct.stmpe_variant_info { ptr @.str.45, i16 264, i16 -1, i32 8, i32 0, ptr @stmpe801_regs, ptr @stmpe801_blocks, i32 1, i32 1, ptr @stmpe801_enable, ptr null, ptr null }, align 4
@stmpe811 = internal global %struct.stmpe_variant_info { ptr @.str.46, i16 2065, i16 -1, i32 8, i32 1, ptr @stmpe811_regs, ptr @stmpe811_blocks, i32 3, i32 8, ptr @stmpe811_enable, ptr @stmpe811_get_altfunc, ptr null }, align 4
@stmpe1600 = internal global %struct.stmpe_variant_info { ptr @.str.47, i16 22, i16 -1, i32 16, i32 0, ptr @stmpe1600_regs, ptr @stmpe1600_blocks, i32 1, i32 16, ptr @stmpe1600_enable, ptr null, ptr null }, align 4
@stmpe1601 = internal global %struct.stmpe_variant_info { ptr @.str.48, i16 528, i16 -16, i32 16, i32 2, ptr @stmpe1601_regs, ptr @stmpe1601_blocks, i32 3, i32 9, ptr @stmpe1601_enable, ptr @stmpe1601_get_altfunc, ptr @stmpe1601_autosleep }, align 4
@stmpe1801 = internal global %struct.stmpe_variant_info { ptr @.str.59, i16 -16112, i16 -16, i32 18, i32 0, ptr @stmpe1801_regs, ptr @stmpe1801_blocks, i32 2, i32 5, ptr @stmpe1801_enable, ptr null, ptr null }, align 4
@stmpe2401 = internal global %struct.stmpe_variant_info { ptr @.str.60, i16 257, i16 -1, i32 24, i32 2, ptr @stmpe24xx_regs, ptr @stmpe24xx_blocks, i32 3, i32 9, ptr @stmpe24xx_enable, ptr @stmpe24xx_get_altfunc, ptr null }, align 4
@stmpe2403 = internal global %struct.stmpe_variant_info { ptr @.str.61, i16 288, i16 -1, i32 24, i32 2, ptr @stmpe24xx_regs, ptr @stmpe24xx_blocks, i32 3, i32 9, ptr @stmpe24xx_enable, ptr @stmpe24xx_get_altfunc, ptr @stmpe1601_autosleep }, align 4
@.str.34 = private unnamed_addr constant [9 x i8] c"stmpe610\00", align 1
@stmpe811_regs = internal constant [38 x i8] c"\00\03\04\09\0A\00\00\0B\12\00\00\10\00\00\11\00\00\13\00\00\14\00\00\15\00\00\16\00\00\00\00\17\0C\00\00\00\00\0D", align 1
@stmpe811_blocks = internal global [3 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 7, i32 1 }, %struct.stmpe_variant_block { ptr @stmpe_ts_cell, i32 0, i32 4 }, %struct.stmpe_variant_block { ptr @stmpe_adc_cell, i32 5, i32 8 }], align 4
@stmpe_gpio_cell = internal constant %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 1, ptr @stmpe_gpio_resources, i8 0, i8 0, ptr null, i32 0 }, align 8
@stmpe_ts_cell = internal constant %struct.mfd_cell { ptr @.str.37, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.38, i64 0, i8 0, ptr null, i32 2, ptr @stmpe_ts_resources, i8 0, i8 0, ptr null, i32 0 }, align 8
@stmpe_adc_cell = internal constant %struct.mfd_cell { ptr @.str.41, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.42, i64 0, i8 0, ptr null, i32 2, ptr @stmpe_adc_resources, i8 0, i8 0, ptr null, i32 0 }, align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"stmpe-gpio\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"st,stmpe-gpio\00", align 1
@stmpe_gpio_resources = internal global [1 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.37 = private unnamed_addr constant [9 x i8] c"stmpe-ts\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"st,stmpe-ts\00", align 1
@stmpe_ts_resources = internal global [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.39, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.40, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.39 = private unnamed_addr constant [10 x i8] c"TOUCH_DET\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"FIFO_TH\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"stmpe-adc\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"st,stmpe-adc\00", align 1
@stmpe_adc_resources = internal global [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.43, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.44, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.43 = private unnamed_addr constant [16 x i8] c"STMPE_TEMP_SENS\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"STMPE_ADC\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"stmpe801\00", align 1
@stmpe801_regs = internal constant [38 x i8] c"\00\00\00\04\00\00\00\00\10\00\00\11\00\00\11\00\00\12\00\00\00\00\00\00\00\00\00\00\00\00\00\00\08\00\00\00\00\09", align 1
@stmpe801_blocks = internal global [1 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 0, i32 1 }], align 4
@.str.46 = private unnamed_addr constant [9 x i8] c"stmpe811\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"stmpe1600\00", align 1
@stmpe1600_regs = internal constant [36 x i8] c"\00\03\00\03\00\00\00\00\10\11\00\12\13\00\12\13\00\14\15\00\00\00\00\00\00\00\00\00\00\00\00\00\08\09\00\0A", align 1
@stmpe1600_blocks = internal global [1 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 0, i32 1 }], align 4
@.str.48 = private unnamed_addr constant [10 x i8] c"stmpe1601\00", align 1
@stmpe1601_regs = internal constant [38 x i8] c"\80\02\03\11\13\12\00\14\87\86\00\83\82\00\85\84\00\89\88\00\8B\8A\00\8D\8C\00\8F\8E\00\91\00\92\17\16\00\00\00\18", align 1
@stmpe1601_blocks = internal global [3 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 8, i32 1 }, %struct.stmpe_variant_block { ptr @stmpe_keypad_cell, i32 1, i32 2 }, %struct.stmpe_variant_block { ptr @stmpe_pwm_cell, i32 4, i32 16 }], align 4
@stmpe_keypad_cell = internal constant %struct.mfd_cell { ptr @.str.49, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.50, i64 0, i8 0, ptr null, i32 2, ptr @stmpe_keypad_resources, i8 0, i8 0, ptr null, i32 0 }, align 8
@stmpe_pwm_cell = internal constant %struct.mfd_cell { ptr @.str.53, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.54, i64 0, i8 0, ptr null, i32 3, ptr @stmpe_pwm_resources, i8 0, i8 0, ptr null, i32 0 }, align 8
@.str.49 = private unnamed_addr constant [13 x i8] c"stmpe-keypad\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"st,stmpe-keypad\00", align 1
@stmpe_keypad_resources = internal global [2 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.51, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.52, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.51 = private unnamed_addr constant [7 x i8] c"KEYPAD\00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c"KEYPAD_OVER\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"stmpe-pwm\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"st,stmpe-pwm\00", align 1
@stmpe_pwm_resources = internal global [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr @.str.55, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.56, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr @.str.57, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.55 = private unnamed_addr constant [5 x i8] c"PWM0\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"PWM1\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"PWM2\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"invalid timeout\0A\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"stmpe1801\00", align 1
@stmpe1801_regs = internal constant [38 x i8] c"\00\02\00\04\06\00\08\00\16\17\18\10\11\12\13\14\15\19\1A\1B\00\00\00\1C\1D\1E\1F !\22\00\00\0A\0B\0C\00\00\0F", align 1
@stmpe1801_blocks = internal global [2 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 3, i32 1 }, %struct.stmpe_variant_block { ptr @stmpe_keypad_cell, i32 1, i32 2 }], align 4
@.str.60 = private unnamed_addr constant [10 x i8] c"stmpe2401\00", align 1
@stmpe24xx_regs = internal constant [38 x i8] c"\80\02\03\11\13\12\00\14\A4\A3\A2\85\84\83\88\87\86\8B\8A\89\8E\8D\8C\91\90\8F\94\93\92\97\9A\9B\18\17\16\00\00\19", align 1
@stmpe24xx_blocks = internal global [3 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell, i32 8, i32 1 }, %struct.stmpe_variant_block { ptr @stmpe_keypad_cell, i32 1, i32 2 }, %struct.stmpe_variant_block { ptr @stmpe_pwm_cell, i32 5, i32 16 }], align 4
@.str.61 = private unnamed_addr constant [10 x i8] c"stmpe2403\00", align 1
@stmpe801_noirq = internal global %struct.stmpe_variant_info { ptr @.str.45, i16 264, i16 -1, i32 8, i32 0, ptr @stmpe801_regs, ptr @stmpe801_blocks_noirq, i32 1, i32 0, ptr @stmpe801_enable, ptr null, ptr null }, align 4
@stmpe801_blocks_noirq = internal global [1 x %struct.stmpe_variant_block] [%struct.stmpe_variant_block { ptr @stmpe_gpio_cell_noirq, i32 0, i32 1 }], align 4
@stmpe_gpio_cell_noirq = internal constant %struct.mfd_cell { ptr @.str.35, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr @.str.36, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, align 8
@.str.62 = private unnamed_addr constant [22 x i8] c"unknown chip id: %#x\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"%s detected, chip id: %#x\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@stmpe_irq_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @stmpe_irq_map, ptr @stmpe_irq_unmap, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.64 = private unnamed_addr constant [28 x i8] c"Failed to create irqdomain\0A\00", align 1
@stmpe_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_irq_mask, ptr null, ptr @stmpe_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_irq_lock, ptr @stmpe_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.65 = private unnamed_addr constant [51 x i8] c"platform wants blocks (%#x) not present on variant\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_stmpe811_adc_common_init, ptr @__ksymtab_stmpe_block_read, ptr @__ksymtab_stmpe_block_write, ptr @__ksymtab_stmpe_disable, ptr @__ksymtab_stmpe_enable, ptr @__ksymtab_stmpe_reg_read, ptr @__ksymtab_stmpe_reg_write, ptr @__ksymtab_stmpe_set_altfunc, ptr @__ksymtab_stmpe_set_bits], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_enable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe_variant_info, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_disable(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe_variant_info, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #8
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_reg_read(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %3) #8
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe_client_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i8 noundef zeroext %1) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, i32 noundef %13, i32 noundef %8) #9
  br label %14

14:                                               ; preds = %10, %2
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_reg_write(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stmpe_client_info, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %9) #9
  br label %15

15:                                               ; preds = %11, %3
  tail call void @mutex_unlock(ptr noundef %4) #8
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_set_bits(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmpe_client_info, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i8 noundef zeroext %1) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.19, i32 noundef %15, i32 noundef %10) #9
  br label %31

16:                                               ; preds = %4
  %17 = zext i8 %2 to i32
  %18 = xor i32 %17, -1
  %19 = and i32 %10, %18
  %20 = trunc i32 %19 to i8
  %21 = or i8 %20, %3
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr inbounds %struct.stmpe_client_info, ptr %22, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 %24(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %21) #8
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.20, i32 noundef %30, i32 noundef %25) #9
  br label %31

31:                                               ; preds = %27, %16, %12
  %32 = phi i32 [ %10, %12 ], [ %25, %16 ], [ %25, %27 ]
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_block_read(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmpe_client_info, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.21, i32 noundef %15, i32 noundef %10) #9
  br label %16

16:                                               ; preds = %12, %4
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_block_write(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %5) #8
  %6 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmpe_client_info, ptr %7, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef %3) #8
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.24, i32 noundef %15, i32 noundef %10) #9
  br label %16

16:                                               ; preds = %12, %4
  tail call void @mutex_unlock(ptr noundef %5) #8
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_set_altfunc(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 31
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.stmpe_variant_info, ptr %6, i32 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 12
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, %12
  %16 = add i32 %15, 7
  %17 = sdiv i32 %16, 8
  %18 = shl nsw i32 -1, %12
  %19 = xor i32 %18, -1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !8
  %20 = getelementptr inbounds %struct.stmpe_variant_info, ptr %6, i32 0, i32 10
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %87, label %23

23:                                               ; preds = %3
  %24 = sdiv i32 8, %12
  %25 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %25) #8
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr inbounds %struct.stmpe_variant_info, ptr %26, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 %28(ptr noundef %0, i32 noundef 1, i1 noundef zeroext true) #8
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %85, label %31

31:                                               ; preds = %23
  %32 = trunc i32 %17 to i8
  %33 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.stmpe_client_info, ptr %34, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = call i32 %36(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %32, ptr noundef nonnull %4) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef %42, i32 noundef %37) #9
  br label %85

43:                                               ; preds = %31
  %44 = load ptr, ptr %20, align 4
  %45 = call i32 %44(ptr noundef %0, i32 noundef %2) #8
  %46 = icmp eq i32 %1, 0
  br i1 %46, label %75, label %47

47:                                               ; preds = %43
  %48 = trunc i32 %24 to i8
  %49 = sdiv i8 8, %48
  %50 = sext i8 %49 to i32
  br label %51

51:                                               ; preds = %51, %47
  %52 = phi i32 [ %1, %47 ], [ %73, %51 ]
  %53 = call i32 @llvm.cttz.i32(i32 %52, i1 true) #8, !range !9
  %54 = freeze i32 %53
  %55 = freeze i32 %24
  %56 = sdiv i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = add i32 %17, %57
  %59 = mul i32 %56, %55
  %60 = sub i32 %54, %59
  %61 = mul nsw i32 %60, %50
  %62 = shl i32 %19, %61
  %63 = getelementptr [8 x i8], ptr %4, i32 0, i32 %58
  %64 = load i8, ptr %63, align 1
  %65 = trunc i32 %62 to i8
  %66 = xor i8 %65, -1
  %67 = and i8 %64, %66
  %68 = shl i32 %45, %61
  %69 = trunc i32 %68 to i8
  %70 = or i8 %67, %69
  store i8 %70, ptr %63, align 1
  %71 = shl nuw i32 1, %53
  %72 = xor i32 %71, -1
  %73 = and i32 %52, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %51

75:                                               ; preds = %51, %43
  %76 = load ptr, ptr %33, align 4
  %77 = getelementptr inbounds %struct.stmpe_client_info, ptr %76, i32 0, i32 7
  %78 = load ptr, ptr %77, align 4
  %79 = call i32 %78(ptr noundef %0, i8 noundef zeroext %10, i8 noundef zeroext %32, ptr noundef nonnull %4) #8
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %83 = load ptr, ptr %82, align 4
  %84 = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.24, i32 noundef %84, i32 noundef %79) #9
  br label %85

85:                                               ; preds = %81, %75, %39, %23
  %86 = phi i32 [ %29, %23 ], [ %37, %39 ], [ %79, %75 ], [ %79, %81 ]
  call void @mutex_unlock(ptr noundef %25) #8
  br label %87

87:                                               ; preds = %85, %3
  %88 = phi i32 [ %86, %85 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret i32 %88
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe811_adc_common_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 16
  %3 = load i8, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 17
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 18
  %7 = load i8, ptr %6, align 2
  %8 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.stmpe_client_info, ptr %10, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i8 noundef zeroext 32) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.19, i32 noundef 32, i32 noundef %13) #9
  br label %65

18:                                               ; preds = %1
  %19 = shl i8 %3, 4
  %20 = shl i8 %5, 3
  %21 = and i8 %20, 8
  %22 = or i8 %21, %19
  %23 = shl i8 %7, 1
  %24 = and i8 %23, 2
  %25 = or i8 %22, %24
  %26 = trunc i32 %13 to i8
  %27 = and i8 %26, 5
  %28 = or i8 %27, %25
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr inbounds %struct.stmpe_client_info, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i8 noundef zeroext 32, i8 noundef zeroext %28) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef 32, i32 noundef %32) #9
  br label %65

37:                                               ; preds = %18
  tail call void @mutex_unlock(ptr noundef %8) #8
  %38 = icmp eq i32 %32, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 19
  %41 = load i8, ptr %40, align 1
  tail call void @mutex_lock(ptr noundef %8) #8
  %42 = load ptr, ptr %9, align 4
  %43 = getelementptr inbounds %struct.stmpe_client_info, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 %44(ptr noundef %0, i8 noundef zeroext 33) #8
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %49 = load ptr, ptr %48, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.19, i32 noundef 33, i32 noundef %45) #9
  br label %65

50:                                               ; preds = %39
  %51 = and i8 %41, 3
  %52 = trunc i32 %45 to i8
  %53 = and i8 %52, -4
  %54 = or i8 %53, %51
  %55 = load ptr, ptr %9, align 4
  %56 = getelementptr inbounds %struct.stmpe_client_info, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 %57(ptr noundef %0, i8 noundef zeroext 33, i8 noundef zeroext %54) #8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %62 = load ptr, ptr %61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.20, i32 noundef 33, i32 noundef %58) #9
  br label %65

63:                                               ; preds = %50
  tail call void @mutex_unlock(ptr noundef %8) #8
  %64 = icmp eq i32 %58, 0
  br i1 %64, label %71, label %67

65:                                               ; preds = %60, %47, %34, %15
  %66 = phi i32 [ %32, %34 ], [ %13, %15 ], [ %58, %60 ], [ %45, %47 ]
  tail call void @mutex_unlock(ptr noundef %8) #8
  br label %67

67:                                               ; preds = %65, %63, %37
  %68 = phi i32 [ %32, %37 ], [ %58, %63 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %70 = load ptr, ptr %69, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str) #9
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i32 [ 0, %63 ], [ %68, %67 ]
  ret i32 %72
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @stmpe_probe(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.stmpe_client_info, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %9 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 24, i32 noundef 3520) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %426, label %11

11:                                               ; preds = %2
  %12 = tail call i32 @of_alias_get_id(ptr noundef %8, ptr noundef nonnull @.str.25) #8
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 -1) #8
  store i32 %13, ptr %9, align 4
  %14 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 2
  %15 = tail call i32 @of_get_named_gpio_flags(ptr noundef %8, ptr noundef nonnull @.str.26, i32 noundef 0, ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 5
  store i32 %15, ptr %16, align 4
  %17 = icmp ult i32 %15, 2048
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 4
  store i8 1, ptr %19, align 1
  br label %21

20:                                               ; preds = %11
  store i32 0, ptr %14, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 6
  %23 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.27, ptr noundef %22, i32 noundef 1, i32 noundef 0) #8
  %24 = load i32, ptr %22, align 4
  %25 = icmp ne i32 %24, 0
  %26 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 3
  %27 = zext i1 %25 to i8
  store i8 %27, ptr %26, align 4
  %28 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef null) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %52, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 1
  br label %32

32:                                               ; preds = %49, %30
  %33 = phi ptr [ %28, %30 ], [ %50, %49 ]
  %34 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.28) #8
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.29) #8
  br i1 %36, label %45, label %37

37:                                               ; preds = %35
  %38 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.30) #8
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.31) #8
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.32) #8
  br i1 %42, label %45, label %43

43:                                               ; preds = %41
  %44 = tail call zeroext i1 @of_node_name_eq(ptr noundef nonnull %33, ptr noundef nonnull @.str.33) #8
  br i1 %44, label %45, label %49

45:                                               ; preds = %43, %41, %39, %37, %35, %32
  %46 = phi i32 [ 1, %32 ], [ 2, %35 ], [ 4, %37 ], [ 8, %39 ], [ 16, %41 ], [ 32, %43 ]
  %47 = load i32, ptr %31, align 4
  %48 = or i32 %47, %46
  store i32 %48, ptr %31, align 4
  br label %49

49:                                               ; preds = %45, %43
  %50 = tail call ptr @of_get_next_available_child(ptr noundef %8, ptr noundef nonnull %33) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %32

52:                                               ; preds = %49, %21
  %53 = tail call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.stmpe_client_info, ptr %0, i32 0, i32 1
  store i32 -1, ptr %56, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load ptr, ptr %5, align 4
  %59 = tail call noalias ptr @devm_kmalloc(ptr noundef %58, i32 noundef 96, i32 noundef 3520) #8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %426, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef nonnull @stmpe_probe.__key) #8
  %63 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %63, ptr noundef nonnull @.str.4, ptr noundef nonnull @stmpe_probe.__key.3) #8
  %64 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.5, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, ptr %4, align 4
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 16
  store i8 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %66, %61
  %71 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, ptr %4, align 4
  %75 = trunc i32 %74 to i8
  %76 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 17
  store i8 %75, ptr %76, align 1
  br label %77

77:                                               ; preds = %73, %70
  %78 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.7, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %79 = icmp sgt i32 %78, -1
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, ptr %4, align 4
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 18
  store i8 %82, ptr %83, align 2
  br label %84

84:                                               ; preds = %80, %77
  %85 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.8, ptr noundef nonnull %4, i32 noundef 1, i32 noundef 0) #8
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, ptr %4, align 4
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 19
  store i8 %89, ptr %90, align 1
  br label %91

91:                                               ; preds = %87, %84
  %92 = load ptr, ptr %5, align 4
  %93 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 4
  store ptr %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.stmpe_client_info, ptr %0, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 6
  store ptr %95, ptr %96, align 4
  %97 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 15
  store ptr %9, ptr %97, align 4
  %98 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 7
  store ptr %0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 8
  store i32 %1, ptr %99, align 4
  %100 = getelementptr [8 x ptr], ptr @stmpe_variant_info, i32 0, i32 %1
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 9
  store ptr %101, ptr %102, align 4
  %103 = getelementptr inbounds %struct.stmpe_variant_info, ptr %101, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 10
  store ptr %104, ptr %105, align 4
  %106 = getelementptr inbounds %struct.stmpe_variant_info, ptr %101, i32 0, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 12
  store i32 %107, ptr %108, align 4
  %109 = call ptr @devm_regulator_get_optional(ptr noundef %92, ptr noundef nonnull @.str.9) #8
  store ptr %109, ptr %59, align 4
  %110 = icmp ugt ptr %109, inttoptr (i32 -4096 to ptr)
  br i1 %110, label %116, label %111

111:                                              ; preds = %91
  %112 = call i32 @regulator_enable(ptr noundef %109) #8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.10) #9
  br label %116

116:                                              ; preds = %114, %111, %91
  %117 = load ptr, ptr %5, align 4
  %118 = call ptr @devm_regulator_get_optional(ptr noundef %117, ptr noundef nonnull @.str.11) #8
  %119 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  %120 = icmp ugt ptr %118, inttoptr (i32 -4096 to ptr)
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = call i32 @regulator_enable(ptr noundef %118) #8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %125, ptr noundef nonnull @.str.12) #9
  br label %126

126:                                              ; preds = %124, %121, %116
  %127 = load ptr, ptr %93, align 4
  %128 = getelementptr inbounds %struct.device, ptr %127, i32 0, i32 8
  store ptr %59, ptr %128, align 8
  %129 = getelementptr inbounds %struct.stmpe_client_info, ptr %0, i32 0, i32 8
  %130 = load ptr, ptr %129, align 4
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  call void %130(ptr noundef nonnull %59) #8
  br label %133

133:                                              ; preds = %132, %126
  %134 = getelementptr inbounds %struct.stmpe_platform_data, ptr %9, i32 0, i32 4
  %135 = load i8, ptr %134, align 1, !range !10
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %133
  %138 = load ptr, ptr %5, align 4
  %139 = load i32, ptr %16, align 4
  %140 = call i32 @devm_gpio_request_one(ptr noundef %138, i32 noundef %139, i32 noundef 1, ptr noundef nonnull @.str.13) #8
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.14, i32 noundef %140) #9
  br label %426

144:                                              ; preds = %137
  %145 = load i32, ptr %16, align 4
  %146 = call ptr @gpio_to_desc(i32 noundef %145) #8
  %147 = call i32 @gpiod_to_irq(ptr noundef %146) #8
  br label %151

148:                                              ; preds = %133
  %149 = getelementptr inbounds %struct.stmpe_client_info, ptr %0, i32 0, i32 1
  %150 = load i32, ptr %149, align 4
  br label %151

151:                                              ; preds = %148, %144
  %152 = phi i32 [ %150, %148 ], [ %147, %144 ]
  %153 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 11
  store i32 %152, ptr %153, align 4
  %154 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 11
  %155 = icmp slt i32 %152, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %151
  %157 = load ptr, ptr %93, align 4
  %158 = load ptr, ptr %102, align 4
  %159 = load ptr, ptr %158, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %157, ptr noundef nonnull @.str.15, ptr noundef %159) #9
  %160 = load i32, ptr %99, align 4
  %161 = and i32 %160, 1073741823
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %167, label %163

163:                                              ; preds = %156
  %164 = load ptr, ptr %93, align 4
  %165 = load ptr, ptr %102, align 4
  %166 = load ptr, ptr %165, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.16, ptr noundef %166) #9
  br label %426

167:                                              ; preds = %156
  %168 = getelementptr [8 x ptr], ptr @stmpe_noirq_variant_info, i32 0, i32 %160
  %169 = load ptr, ptr %168, align 4
  store ptr %169, ptr %102, align 4
  br label %183

170:                                              ; preds = %151
  %171 = load i32, ptr %14, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %170
  %174 = call ptr @irq_get_irq_data(i32 noundef %152) #8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %181, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.irq_data, ptr %174, i32 0, i32 3
  %178 = load ptr, ptr %177, align 4
  %179 = load i32, ptr %178, align 4
  %180 = and i32 %179, 15
  br label %181

181:                                              ; preds = %176, %173
  %182 = phi i32 [ %180, %176 ], [ 0, %173 ]
  store i32 %182, ptr %14, align 4
  br label %183

183:                                              ; preds = %181, %170, %167
  %184 = load ptr, ptr %97, align 4
  %185 = getelementptr inbounds %struct.stmpe_platform_data, ptr %184, i32 0, i32 2
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds %struct.stmpe_platform_data, ptr %184, i32 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = load ptr, ptr %102, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %190 = load ptr, ptr %105, align 4
  %191 = load i8, ptr %190, align 1
  call void @mutex_lock(ptr noundef %63) #8
  %192 = load ptr, ptr %98, align 4
  %193 = getelementptr inbounds %struct.stmpe_client_info, ptr %192, i32 0, i32 6
  %194 = load ptr, ptr %193, align 4
  %195 = call i32 %194(ptr noundef nonnull %59, i8 noundef zeroext %191, i8 noundef zeroext 2, ptr noundef nonnull %3) #8
  %196 = icmp slt i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %183
  %198 = load ptr, ptr %93, align 4
  %199 = zext i8 %191 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %198, ptr noundef nonnull @.str.21, i32 noundef %199, i32 noundef %195) #9
  call void @mutex_unlock(ptr noundef %63) #8
  br label %311

200:                                              ; preds = %183
  call void @mutex_unlock(ptr noundef %63) #8
  %201 = load i8, ptr %3, align 2
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 8
  %204 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %205 = load i8, ptr %204, align 1
  %206 = zext i8 %205 to i32
  %207 = or i32 %203, %206
  %208 = getelementptr inbounds %struct.stmpe_variant_info, ptr %189, i32 0, i32 2
  %209 = load i16, ptr %208, align 2
  %210 = zext i16 %209 to i32
  %211 = and i32 %207, %210
  %212 = getelementptr inbounds %struct.stmpe_variant_info, ptr %189, i32 0, i32 1
  %213 = load i16, ptr %212, align 4
  %214 = zext i16 %213 to i32
  %215 = icmp eq i32 %211, %214
  %216 = load ptr, ptr %93, align 4
  br i1 %215, label %218, label %217

217:                                              ; preds = %200
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %216, ptr noundef nonnull @.str.62, i32 noundef %207) #9
  br label %311

218:                                              ; preds = %200
  %219 = load ptr, ptr %189, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %216, ptr noundef nonnull @.str.63, ptr noundef %219, i32 noundef %207) #9
  call void @mutex_lock(ptr noundef %63) #8
  %220 = load ptr, ptr %102, align 4
  %221 = getelementptr inbounds %struct.stmpe_variant_info, ptr %220, i32 0, i32 9
  %222 = load ptr, ptr %221, align 4
  %223 = call i32 %222(ptr noundef nonnull %59, i32 noundef -1, i1 noundef zeroext false) #8
  call void @mutex_unlock(ptr noundef %63) #8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %311

225:                                              ; preds = %218
  %226 = load ptr, ptr %102, align 4
  %227 = getelementptr inbounds %struct.stmpe_variant_info, ptr %226, i32 0, i32 1
  %228 = load i16, ptr %227, align 4
  %229 = load ptr, ptr %105, align 4
  %230 = getelementptr i8, ptr %229, i32 1
  %231 = load i8, ptr %230, align 1
  %232 = load ptr, ptr %98, align 4
  %233 = getelementptr inbounds %struct.stmpe_client_info, ptr %232, i32 0, i32 4
  %234 = load ptr, ptr %233, align 4
  %235 = call i32 %234(ptr noundef nonnull %59, i8 noundef zeroext %231) #8
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %225
  %238 = load ptr, ptr %93, align 4
  %239 = zext i8 %231 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %238, ptr noundef nonnull @.str.19, i32 noundef %239, i32 noundef %235) #9
  br label %311

240:                                              ; preds = %225
  %241 = icmp eq i16 %228, 2065
  %242 = select i1 %241, i8 2, i8 -128
  %243 = zext i8 %242 to i32
  %244 = xor i32 %243, -1
  %245 = and i32 %235, %244
  %246 = trunc i32 %245 to i8
  %247 = or i8 %242, %246
  %248 = load ptr, ptr %98, align 4
  %249 = getelementptr inbounds %struct.stmpe_client_info, ptr %248, i32 0, i32 5
  %250 = load ptr, ptr %249, align 4
  %251 = call i32 %250(ptr noundef nonnull %59, i8 noundef zeroext %231, i8 noundef zeroext %247) #8
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %240
  %254 = load ptr, ptr %93, align 4
  %255 = zext i8 %231 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %254, ptr noundef nonnull @.str.20, i32 noundef %255, i32 noundef %251) #9
  br label %311

256:                                              ; preds = %240
  call void @msleep(i32 noundef 10) #8
  %257 = load volatile i32, ptr @jiffies, align 64
  %258 = sub i32 -10, %257
  %259 = load volatile i32, ptr @jiffies, align 64
  %260 = add i32 %258, %259
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %311

262:                                              ; preds = %277, %256
  %263 = load ptr, ptr %105, align 4
  %264 = getelementptr i8, ptr %263, i32 1
  %265 = load i8, ptr %264, align 1
  %266 = load ptr, ptr %98, align 4
  %267 = getelementptr inbounds %struct.stmpe_client_info, ptr %266, i32 0, i32 4
  %268 = load ptr, ptr %267, align 4
  %269 = call i32 %268(ptr noundef %59, i8 noundef zeroext %265) #8
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %262
  %272 = load ptr, ptr %93, align 4
  %273 = zext i8 %265 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %272, ptr noundef nonnull @.str.19, i32 noundef %273, i32 noundef %269) #9
  br label %311

274:                                              ; preds = %262
  %275 = and i32 %269, %243
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #8
  %278 = load volatile i32, ptr @jiffies, align 64
  %279 = add i32 %278, %258
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %262, label %311

281:                                              ; preds = %274
  %282 = load i32, ptr %154, align 4
  %283 = icmp sgt i32 %282, -1
  br i1 %283, label %284, label %302

284:                                              ; preds = %281
  %285 = icmp eq i32 %207, 264
  %286 = icmp eq i32 %207, 22
  %287 = or i1 %285, %286
  %288 = select i1 %287, i8 4, i8 1
  %289 = trunc i32 %207 to i16
  switch i16 %289, label %290 [
    i16 264, label %295
    i16 22, label %295
  ]

290:                                              ; preds = %284
  %291 = add i32 %186, -1
  %292 = icmp ult i32 %291, 2
  %293 = or i8 %288, 2
  %294 = select i1 %292, i8 %293, i8 %288
  br label %295

295:                                              ; preds = %290, %284, %284
  %296 = phi i8 [ %288, %284 ], [ %288, %284 ], [ %294, %290 ]
  switch i32 %186, label %302 [
    i32 4, label %297
    i32 1, label %297
  ]

297:                                              ; preds = %295, %295
  switch i16 %289, label %300 [
    i16 264, label %298
    i16 22, label %298
  ]

298:                                              ; preds = %297, %297
  %299 = or i8 %296, 1
  br label %302

300:                                              ; preds = %297
  %301 = or i8 %296, 4
  br label %302

302:                                              ; preds = %300, %298, %295, %281
  %303 = phi i8 [ %299, %298 ], [ %301, %300 ], [ %296, %295 ], [ 0, %281 ]
  %304 = load ptr, ptr %97, align 4
  %305 = getelementptr inbounds %struct.stmpe_platform_data, ptr %304, i32 0, i32 3
  %306 = load i8, ptr %305, align 4, !range !10
  %307 = icmp eq i8 %306, 0
  br i1 %307, label %313, label %308

308:                                              ; preds = %302
  %309 = call fastcc i32 @stmpe_autosleep(ptr noundef %59, i32 noundef %188) #8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %308, %277, %271, %256, %253, %237, %218, %217, %197
  %312 = phi i32 [ %195, %197 ], [ %309, %308 ], [ %223, %218 ], [ -22, %217 ], [ -5, %256 ], [ %235, %237 ], [ %251, %253 ], [ %269, %271 ], [ -5, %277 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br label %426

313:                                              ; preds = %308, %302
  %314 = load ptr, ptr %105, align 4
  %315 = getelementptr i8, ptr %314, i32 3
  %316 = load i8, ptr %315, align 1
  %317 = call i32 @stmpe_reg_write(ptr noundef %59, i8 noundef zeroext %316, i8 noundef zeroext %303) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %426

319:                                              ; preds = %313
  %320 = load i32, ptr %154, align 4
  %321 = icmp sgt i32 %320, -1
  br i1 %321, label %322, label %343

322:                                              ; preds = %319
  %323 = load ptr, ptr %102, align 4
  %324 = getelementptr inbounds %struct.stmpe_variant_info, ptr %323, i32 0, i32 8
  %325 = load i32, ptr %324, align 4
  %326 = icmp eq ptr %8, null
  %327 = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 3
  %328 = select i1 %326, ptr null, ptr %327
  %329 = call ptr @irq_domain_create_simple(ptr noundef %328, i32 noundef %325, i32 noundef 0, ptr noundef nonnull @stmpe_irq_ops, ptr noundef %59) #8
  %330 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 5
  store ptr %329, ptr %330, align 4
  %331 = icmp eq ptr %329, null
  br i1 %331, label %332, label %334

332:                                              ; preds = %322
  %333 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.64) #9
  br label %426

334:                                              ; preds = %322
  %335 = load ptr, ptr %5, align 4
  %336 = load i32, ptr %154, align 4
  %337 = load i32, ptr %14, align 4
  %338 = or i32 %337, 8192
  %339 = call i32 @devm_request_threaded_irq(ptr noundef %335, i32 noundef %336, ptr noundef null, ptr noundef nonnull @stmpe_irq, i32 noundef %338, ptr noundef nonnull @.str.13, ptr noundef nonnull %59) #8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %343, label %341

341:                                              ; preds = %334
  %342 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %342, ptr noundef nonnull @.str.17, i32 noundef %339) #9
  br label %426

343:                                              ; preds = %334, %319
  %344 = load ptr, ptr %102, align 4
  %345 = load ptr, ptr %97, align 4
  %346 = getelementptr inbounds %struct.stmpe_platform_data, ptr %345, i32 0, i32 1
  %347 = load i32, ptr %346, align 4
  %348 = getelementptr inbounds %struct.stmpe_variant_info, ptr %344, i32 0, i32 7
  %349 = load i32, ptr %348, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %414

351:                                              ; preds = %343
  %352 = getelementptr inbounds %struct.stmpe_variant_info, ptr %344, i32 0, i32 6
  %353 = getelementptr inbounds %struct.stmpe, ptr %59, i32 0, i32 5
  br label %354

354:                                              ; preds = %408, %351
  %355 = phi i32 [ %349, %351 ], [ %409, %408 ]
  %356 = phi i32 [ 0, %351 ], [ %412, %408 ]
  %357 = phi i32 [ -22, %351 ], [ %411, %408 ]
  %358 = phi i32 [ %347, %351 ], [ %410, %408 ]
  %359 = load ptr, ptr %352, align 4
  %360 = getelementptr %struct.stmpe_variant_block, ptr %359, i32 %356
  %361 = getelementptr %struct.stmpe_variant_block, ptr %359, i32 %356, i32 2
  %362 = load i32, ptr %361, align 4
  %363 = and i32 %362, %358
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %408, label %365

365:                                              ; preds = %354
  %366 = load ptr, ptr %360, align 4
  %367 = getelementptr inbounds %struct.mfd_cell, ptr %366, i32 0, i32 14
  %368 = load i32, ptr %367, align 8
  %369 = icmp sgt i32 %368, 0
  br i1 %369, label %370, label %395

370:                                              ; preds = %365
  %371 = getelementptr %struct.stmpe_variant_block, ptr %359, i32 %356, i32 1
  br label %372

372:                                              ; preds = %387, %370
  %373 = phi ptr [ %366, %370 ], [ %388, %387 ]
  %374 = phi i32 [ 0, %370 ], [ %389, %387 ]
  %375 = getelementptr inbounds %struct.mfd_cell, ptr %373, i32 0, i32 15
  %376 = load ptr, ptr %375, align 4
  %377 = getelementptr %struct.resource, ptr %376, i32 %374, i32 3
  %378 = load i32, ptr %377, align 4
  %379 = and i32 %378, 1024
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %387, label %381

381:                                              ; preds = %372
  %382 = getelementptr %struct.resource, ptr %376, i32 %374
  %383 = load i32, ptr %371, align 4
  %384 = add i32 %383, %374
  %385 = getelementptr %struct.resource, ptr %376, i32 %374, i32 1
  store i32 %384, ptr %385, align 4
  store i32 %384, ptr %382, align 4
  %386 = load ptr, ptr %360, align 4
  br label %387

387:                                              ; preds = %381, %372
  %388 = phi ptr [ %386, %381 ], [ %373, %372 ]
  %389 = add nuw nsw i32 %374, 1
  %390 = getelementptr inbounds %struct.mfd_cell, ptr %388, i32 0, i32 14
  %391 = load i32, ptr %390, align 8
  %392 = icmp slt i32 %389, %391
  br i1 %392, label %372, label %393

393:                                              ; preds = %387
  %394 = load i32, ptr %361, align 4
  br label %395

395:                                              ; preds = %393, %365
  %396 = phi i32 [ %362, %365 ], [ %394, %393 ]
  %397 = phi ptr [ %366, %365 ], [ %388, %393 ]
  %398 = load ptr, ptr %93, align 4
  %399 = load ptr, ptr %97, align 4
  %400 = load i32, ptr %399, align 4
  %401 = load ptr, ptr %353, align 4
  %402 = call i32 @mfd_add_devices(ptr noundef %398, i32 noundef %400, ptr noundef %397, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef %401) #8
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %422

404:                                              ; preds = %395
  %405 = xor i32 %396, -1
  %406 = and i32 %358, %405
  %407 = load i32, ptr %348, align 4
  br label %408

408:                                              ; preds = %404, %354
  %409 = phi i32 [ %355, %354 ], [ %407, %404 ]
  %410 = phi i32 [ %358, %354 ], [ %406, %404 ]
  %411 = phi i32 [ %357, %354 ], [ 0, %404 ]
  %412 = add nuw nsw i32 %356, 1
  %413 = icmp slt i32 %412, %409
  br i1 %413, label %354, label %414

414:                                              ; preds = %408, %343
  %415 = phi i32 [ %347, %343 ], [ %410, %408 ]
  %416 = phi i32 [ -22, %343 ], [ %411, %408 ]
  %417 = icmp eq i32 %415, 0
  br i1 %417, label %420, label %418

418:                                              ; preds = %414
  %419 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %419, ptr noundef nonnull @.str.65, i32 noundef %415) #9
  br label %420

420:                                              ; preds = %418, %414
  %421 = icmp eq i32 %416, 0
  br i1 %421, label %426, label %422

422:                                              ; preds = %420, %395
  %423 = phi i32 [ %416, %420 ], [ %402, %395 ]
  %424 = load ptr, ptr %93, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %424, ptr noundef nonnull @.str.18) #9
  %425 = load ptr, ptr %93, align 4
  call void @mfd_remove_devices(ptr noundef %425) #8
  br label %426

426:                                              ; preds = %422, %420, %341, %332, %313, %311, %163, %142, %57, %2
  %427 = phi i32 [ %140, %142 ], [ %339, %341 ], [ %423, %422 ], [ -19, %163 ], [ -12, %2 ], [ -12, %57 ], [ %317, %313 ], [ -38, %332 ], [ 0, %420 ], [ %312, %311 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %427
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i8], align 1
  %6 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmpe_variant_info, ptr %7, i32 0, i32 8
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 7
  %11 = sdiv i32 %10, 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %5) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %5, i8 0, i32 3, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.stmpe_variant_info, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 4
  switch i16 %13, label %21 [
    i16 264, label %14
    i16 22, label %14
    i16 -16112, label %22
  ]

14:                                               ; preds = %2, %2
  %15 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  store i32 0, ptr %4, align 4, !annotation !8
  %17 = call ptr @__irq_resolve_mapping(ptr noundef %16, i32 noundef 0, ptr noundef nonnull %4) #8
  %18 = icmp eq ptr %17, null
  %19 = load i32, ptr %4, align 4
  %20 = select i1 %18, i32 0, i32 %19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  call void @handle_nested_irq(i32 noundef %20) #8
  br label %86

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %2
  %23 = phi i32 [ 7, %21 ], [ 6, %2 ]
  %24 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 %23
  %27 = load i8, ptr %26, align 1
  %28 = trunc i32 %11 to i8
  %29 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %29) #8
  %30 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 7
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.stmpe_client_info, ptr %31, i32 0, i32 6
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 %33(ptr noundef %1, i8 noundef zeroext %27, i8 noundef zeroext %28, ptr noundef nonnull %5) #8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 4
  %38 = load ptr, ptr %37, align 4
  %39 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef %39, i32 noundef %34) #9
  call void @mutex_unlock(ptr noundef %29) #8
  br label %86

40:                                               ; preds = %22
  call void @mutex_unlock(ptr noundef %29) #8
  %41 = icmp sgt i32 %10, 7
  br i1 %41, label %42, label %86

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 5
  %44 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 4
  br label %45

45:                                               ; preds = %83, %42
  %46 = phi i32 [ 0, %42 ], [ %84, %83 ]
  %47 = xor i32 %46, -1
  %48 = add nsw i32 %11, %47
  %49 = getelementptr [3 x i8], ptr %5, i32 0, i32 %46
  %50 = load i8, ptr %49, align 1
  %51 = getelementptr %struct.stmpe, ptr %1, i32 0, i32 13, i32 %48
  %52 = load i8, ptr %51, align 1
  %53 = and i8 %52, %50
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %83, label %55

55:                                               ; preds = %45
  %56 = shl i32 %48, 3
  br label %57

57:                                               ; preds = %57, %55
  %58 = phi i8 [ %53, %55 ], [ %69, %57 ]
  %59 = call i8 @llvm.cttz.i8(i8 %58, i1 true), !range !11
  %60 = zext i8 %59 to i32
  %61 = or i32 %56, %60
  %62 = load ptr, ptr %43, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %63 = call ptr @__irq_resolve_mapping(ptr noundef %62, i32 noundef %61, ptr noundef nonnull %3) #8
  %64 = icmp eq ptr %63, null
  %65 = load i32, ptr %3, align 4
  %66 = select i1 %64, i32 0, i32 %65
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  call void @handle_nested_irq(i32 noundef %66) #8
  %67 = shl nuw i8 1, %59
  %68 = xor i8 %67, -1
  %69 = and i8 %58, %68
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %57

71:                                               ; preds = %57
  %72 = trunc i32 %46 to i8
  %73 = add i8 %27, %72
  call void @mutex_lock(ptr noundef %29) #8
  %74 = load ptr, ptr %30, align 4
  %75 = getelementptr inbounds %struct.stmpe_client_info, ptr %74, i32 0, i32 5
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 %76(ptr noundef %1, i8 noundef zeroext %73, i8 noundef zeroext %53) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load ptr, ptr %44, align 4
  %81 = zext i8 %73 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.20, i32 noundef %81, i32 noundef %77) #9
  br label %82

82:                                               ; preds = %79, %71
  call void @mutex_unlock(ptr noundef %29) #8
  br label %83

83:                                               ; preds = %82, %45
  %84 = add nuw nsw i32 %46, 1
  %85 = icmp eq i32 %84, %11
  br i1 %85, label %86, label %45

86:                                               ; preds = %83, %40, %36, %14
  %87 = phi i32 [ 1, %14 ], [ 0, %36 ], [ 1, %40 ], [ 1, %83 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %5) #8
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @stmpe_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @regulator_disable(ptr noundef %3) #8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr %0, align 4
  %9 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @regulator_disable(ptr noundef %8) #8
  br label %12

12:                                               ; preds = %10, %7
  %13 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.stmpe_variant_info, ptr %14, i32 0, i32 9
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 %16(ptr noundef %0, i32 noundef 8, i1 noundef zeroext false) #8
  %18 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call void @mfd_remove_devices(ptr noundef %19) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 1) #8
  br label %18

18:                                               ; preds = %16, %12, %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 11
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = and i16 %9, 1
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #8
  br label %18

18:                                               ; preds = %16, %12, %7, %1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe811_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmpe_client_info, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i8 noundef zeroext %7) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %12) #9
  br label %42

18:                                               ; preds = %3
  %19 = lshr i32 %1, 1
  %20 = and i32 %19, 2
  %21 = lshr i32 %1, 3
  %22 = and i32 %21, 1
  %23 = shl i32 %1, 2
  %24 = and i32 %23, 4
  %25 = or i32 %22, %24
  %26 = or i32 %25, %20
  %27 = trunc i32 %26 to i8
  %28 = select i1 %2, i8 0, i8 %27
  %29 = xor i32 %26, -1
  %30 = and i32 %12, %29
  %31 = trunc i32 %30 to i8
  %32 = or i8 %28, %31
  %33 = load ptr, ptr %8, align 4
  %34 = getelementptr inbounds %struct.stmpe_client_info, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, i8 noundef zeroext %7, i8 noundef zeroext %32) #8
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %18
  %39 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %40 = load ptr, ptr %39, align 4
  %41 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.20, i32 noundef %41, i32 noundef %36) #9
  br label %42

42:                                               ; preds = %38, %18, %14
  %43 = phi i32 [ %12, %14 ], [ %36, %18 ], [ %36, %38 ]
  ret i32 %43
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmpe811_get_altfunc(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp ne i32 %1, 4
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmpe801_enable(ptr nocapture noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) #6 {
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmpe1600_enable(ptr nocapture noundef readnone %0, i32 noundef %1, i1 noundef zeroext %2) #6 {
  %4 = and i32 %1, 1
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %5, i32 -22, i32 0
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe1601_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmpe_client_info, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i8 noundef zeroext %7) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %12) #9
  br label %41

18:                                               ; preds = %3
  %19 = lshr i32 %1, 4
  %20 = and i32 %19, 1
  %21 = and i32 %1, 2
  %22 = shl i32 %1, 3
  %23 = and i32 %22, 8
  %24 = or i32 %23, %21
  %25 = or i32 %24, %20
  %26 = trunc i32 %25 to i8
  %27 = select i1 %2, i8 %26, i8 0
  %28 = xor i32 %25, -1
  %29 = and i32 %12, %28
  %30 = trunc i32 %29 to i8
  %31 = or i8 %27, %30
  %32 = load ptr, ptr %8, align 4
  %33 = getelementptr inbounds %struct.stmpe_client_info, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = tail call i32 %34(ptr noundef %0, i8 noundef zeroext %7, i8 noundef zeroext %31) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %18
  %38 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.20, i32 noundef %40, i32 noundef %35) #9
  br label %41

41:                                               ; preds = %37, %18, %14
  %42 = phi i32 [ %12, %14 ], [ %35, %18 ], [ %35, %37 ]
  ret i32 %42
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmpe1601_get_altfunc(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = icmp eq i32 %1, 2
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 16
  %6 = select i1 %5, i32 2, i32 %4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe1601_autosleep(ptr noundef %0, i32 noundef %1) #0 {
  %3 = icmp sgt i32 %1, 4
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = icmp ugt i32 %1, 16
  br i1 %5, label %6, label %21

6:                                                ; preds = %4
  %7 = icmp ugt i32 %1, 32
  br i1 %7, label %8, label %21

8:                                                ; preds = %6
  %9 = icmp ugt i32 %1, 64
  br i1 %9, label %10, label %21

10:                                               ; preds = %8
  %11 = icmp ugt i32 %1, 128
  br i1 %11, label %12, label %21

12:                                               ; preds = %10
  %13 = icmp ugt i32 %1, 256
  br i1 %13, label %14, label %21

14:                                               ; preds = %12
  %15 = icmp ugt i32 %1, 512
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = icmp ugt i32 %1, 1024
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.58) #9
  br label %75

21:                                               ; preds = %16, %14, %12, %10, %8, %6, %4, %2
  %22 = phi i8 [ 7, %16 ], [ 6, %14 ], [ 5, %12 ], [ 4, %10 ], [ 3, %8 ], [ 2, %6 ], [ 1, %4 ], [ 0, %2 ]
  %23 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 10
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 2
  %26 = load i8, ptr %25, align 1
  %27 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.stmpe_client_info, ptr %28, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0, i8 noundef zeroext %26) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.19, i32 noundef %36, i32 noundef %31) #9
  br label %75

37:                                               ; preds = %21
  %38 = trunc i32 %31 to i8
  %39 = and i8 %38, -8
  %40 = or i8 %39, %22
  %41 = load ptr, ptr %27, align 4
  %42 = getelementptr inbounds %struct.stmpe_client_info, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 %43(ptr noundef %0, i8 noundef zeroext %26, i8 noundef zeroext %40) #8
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  %49 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.20, i32 noundef %49, i32 noundef %44) #9
  br label %75

50:                                               ; preds = %37
  %51 = load ptr, ptr %23, align 4
  %52 = getelementptr i8, ptr %51, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr inbounds %struct.stmpe_client_info, ptr %54, i32 0, i32 4
  %56 = load ptr, ptr %55, align 4
  %57 = tail call i32 %56(ptr noundef %0, i8 noundef zeroext %53) #8
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  %62 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.19, i32 noundef %62, i32 noundef %57) #9
  br label %75

63:                                               ; preds = %50
  %64 = trunc i32 %57 to i8
  %65 = or i8 %64, 8
  %66 = load ptr, ptr %27, align 4
  %67 = getelementptr inbounds %struct.stmpe_client_info, ptr %66, i32 0, i32 5
  %68 = load ptr, ptr %67, align 4
  %69 = tail call i32 %68(ptr noundef %0, i8 noundef zeroext %53, i8 noundef zeroext %65) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = zext i8 %53 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.20, i32 noundef %74, i32 noundef %69) #9
  br label %75

75:                                               ; preds = %71, %63, %59, %46, %33, %18
  %76 = phi i32 [ -22, %18 ], [ %57, %59 ], [ %69, %63 ], [ %69, %71 ], [ %44, %46 ], [ %31, %33 ]
  ret i32 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe1801_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe_client_info, ptr %5, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 %7(ptr noundef %0, i8 noundef zeroext 6) #8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19, i32 noundef 6, i32 noundef %8) #9
  br label %32

13:                                               ; preds = %3
  %14 = and i32 %1, 2
  %15 = shl i32 %1, 3
  %16 = and i32 %15, 8
  %17 = or i32 %16, %14
  %18 = trunc i32 %17 to i8
  %19 = select i1 %2, i8 %18, i8 0
  %20 = xor i32 %17, -1
  %21 = and i32 %8, %20
  %22 = trunc i32 %21 to i8
  %23 = or i8 %19, %22
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.stmpe_client_info, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %26(ptr noundef %0, i8 noundef zeroext 6, i8 noundef zeroext %23) #8
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.20, i32 noundef 6, i32 noundef %27) #9
  br label %32

32:                                               ; preds = %29, %13, %10
  %33 = phi i32 [ %8, %10 ], [ %27, %13 ], [ %27, %29 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe24xx_enable(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 10
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.stmpe_client_info, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef %0, i8 noundef zeroext %7) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %12) #9
  br label %38

18:                                               ; preds = %3
  %19 = and i32 %1, 2
  %20 = shl i32 %1, 3
  %21 = and i32 %20, 8
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  %24 = select i1 %2, i8 %23, i8 0
  %25 = xor i32 %22, -1
  %26 = and i32 %12, %25
  %27 = trunc i32 %26 to i8
  %28 = or i8 %24, %27
  %29 = load ptr, ptr %8, align 4
  %30 = getelementptr inbounds %struct.stmpe_client_info, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  %32 = tail call i32 %31(ptr noundef %0, i8 noundef zeroext %7, i8 noundef zeroext %28) #8
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = zext i8 %7 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.20, i32 noundef %37, i32 noundef %32) #9
  br label %38

38:                                               ; preds = %34, %18, %14
  %39 = phi i32 [ %12, %14 ], [ %32, %18 ], [ %32, %34 ]
  ret i32 %39
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @stmpe24xx_get_altfunc(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  switch i32 %1, label %4 [
    i32 32, label %5
    i32 2, label %3
    i32 16, label %3
  ]

3:                                                ; preds = %2, %2
  br label %5

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4, %3, %2
  %6 = phi i32 [ 0, %4 ], [ 1, %3 ], [ 2, %2 ]
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @stmpe_autosleep(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 9
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stmpe_variant_info, ptr %4, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.stmpe, ptr %0, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %9) #8
  %10 = load ptr, ptr %3, align 4
  %11 = getelementptr inbounds %struct.stmpe_variant_info, ptr %10, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 %12(ptr noundef %0, i32 noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %9) #8
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi i32 [ %13, %8 ], [ -38, %2 ]
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @stmpe_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe, ptr %5, i32 0, i32 9
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.stmpe_variant_info, ptr %7, i32 0, i32 1
  %9 = load i16, ptr %8, align 4
  %10 = icmp eq i16 %9, 264
  %11 = select i1 %10, ptr null, ptr @stmpe_irq_chip
  %12 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #8
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef %11, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #8
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #8
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmpe_irq_unmap(ptr nocapture noundef readnone %0, i32 noundef %1) #0 {
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #8
  %3 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef null) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmpe_irq_mask(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = and i32 %5, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = getelementptr %struct.stmpe, ptr %3, i32 0, i32 13, i32 %6
  %10 = load i8, ptr %9, align 1
  %11 = trunc i32 %8 to i8
  %12 = xor i8 %11, -1
  %13 = and i8 %10, %12
  store i8 %13, ptr %9, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @stmpe_irq_unmask(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sdiv i32 %5, 8
  %7 = and i32 %5, 7
  %8 = shl nuw nsw i32 1, %7
  %9 = getelementptr %struct.stmpe, ptr %3, i32 0, i32 13, i32 %6
  %10 = load i8, ptr %9, align 1
  %11 = trunc i32 %8 to i8
  %12 = or i8 %10, %11
  store i8 %12, ptr %9, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmpe_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @stmpe_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.stmpe_variant_info, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 7
  %9 = sdiv i32 %8, 8
  %10 = icmp sgt i32 %8, 7
  br i1 %10, label %11, label %40

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 10
  %13 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 2
  %14 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 7
  %15 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 4
  br label %16

16:                                               ; preds = %37, %11
  %17 = phi i32 [ 0, %11 ], [ %38, %37 ]
  %18 = getelementptr %struct.stmpe, ptr %3, i32 0, i32 13, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr %struct.stmpe, ptr %3, i32 0, i32 14, i32 %17
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %16
  store i8 %19, ptr %20, align 1
  %24 = load ptr, ptr %12, align 4
  %25 = add nuw nsw i32 %17, 4
  %26 = getelementptr i8, ptr %24, i32 %25
  %27 = load i8, ptr %26, align 1
  tail call void @mutex_lock(ptr noundef %13) #8
  %28 = load ptr, ptr %14, align 4
  %29 = getelementptr inbounds %struct.stmpe_client_info, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %3, i8 noundef zeroext %27, i8 noundef zeroext %19) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load ptr, ptr %15, align 4
  %35 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.20, i32 noundef %35, i32 noundef %31) #9
  br label %36

36:                                               ; preds = %33, %23
  tail call void @mutex_unlock(ptr noundef %13) #8
  br label %37

37:                                               ; preds = %36, %16
  %38 = add nuw nsw i32 %17, 1
  %39 = icmp eq i32 %38, %9
  br i1 %39, label %40, label %16

40:                                               ; preds = %37, %1
  %41 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %41) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{i32 0, i32 33}
!10 = !{i8 0, i8 2}
!11 = !{i8 0, i8 9}
