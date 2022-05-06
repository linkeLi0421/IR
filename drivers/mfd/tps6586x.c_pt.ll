; ModuleID = '/llk/IR/drivers/mfd/tps6586x.c_pt.bc'
source_filename = "../drivers/mfd/tps6586x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_write:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_write\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_writes\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_writes:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_read:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_read\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_reads:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_reads\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_reads:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_set_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_set_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_clr_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_clr_bits\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_clr_bits:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_update:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_update\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_irq_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_irq_get_virq\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_irq_get_virq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tps6586x_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22tps6586x_get_version\22\09\09\09\09\09"
module asm "__kstrtabns_tps6586x_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.mfd_cell = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i64, i8, ptr, i32, ptr, i8, i8, ptr, i32 }
%struct.lock_class_key = type {}
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tps6586x_irq_data = type { i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.tps6586x = type { ptr, ptr, ptr, i32, i32, %struct.irq_chip, %struct.mutex, i32, i32, [5 x i8], ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.tps6586x_platform_data = type { i32, ptr, i32, i32, i8, [15 x ptr] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.tps6586x_subdev_info = type { i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_tps6586x_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_write = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_write to i32), ptr @__kstrtab_tps6586x_write, ptr @__kstrtabns_tps6586x_write }, section "___ksymtab_gpl+tps6586x_write", align 4
@__kstrtab_tps6586x_writes = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_writes = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_writes = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_writes to i32), ptr @__kstrtab_tps6586x_writes, ptr @__kstrtabns_tps6586x_writes }, section "___ksymtab_gpl+tps6586x_writes", align 4
@__kstrtab_tps6586x_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_read = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_read to i32), ptr @__kstrtab_tps6586x_read, ptr @__kstrtabns_tps6586x_read }, section "___ksymtab_gpl+tps6586x_read", align 4
@__kstrtab_tps6586x_reads = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_reads = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_reads = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_reads to i32), ptr @__kstrtab_tps6586x_reads, ptr @__kstrtabns_tps6586x_reads }, section "___ksymtab_gpl+tps6586x_reads", align 4
@__kstrtab_tps6586x_set_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_set_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_set_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_set_bits to i32), ptr @__kstrtab_tps6586x_set_bits, ptr @__kstrtabns_tps6586x_set_bits }, section "___ksymtab_gpl+tps6586x_set_bits", align 4
@__kstrtab_tps6586x_clr_bits = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_clr_bits = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_clr_bits = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_clr_bits to i32), ptr @__kstrtab_tps6586x_clr_bits, ptr @__kstrtabns_tps6586x_clr_bits }, section "___ksymtab_gpl+tps6586x_clr_bits", align 4
@__kstrtab_tps6586x_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_update = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_update to i32), ptr @__kstrtab_tps6586x_update, ptr @__kstrtabns_tps6586x_update }, section "___ksymtab_gpl+tps6586x_update", align 4
@__kstrtab_tps6586x_irq_get_virq = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_irq_get_virq = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_irq_get_virq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_irq_get_virq to i32), ptr @__kstrtab_tps6586x_irq_get_virq, ptr @__kstrtabns_tps6586x_irq_get_virq }, section "___ksymtab_gpl+tps6586x_irq_get_virq", align 4
@__kstrtab_tps6586x_get_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_tps6586x_get_version = external dso_local constant [0 x i8], align 1
@__ksymtab_tps6586x_get_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tps6586x_get_version to i32), ptr @__kstrtab_tps6586x_get_version, ptr @__kstrtabns_tps6586x_get_version }, section "___ksymtab_gpl+tps6586x_get_version", align 4
@__initcall__kmod_tps6586x__247_637_tps6586x_init4 = internal global ptr @tps6586x_init, section ".initcall4.init", align 4
@tps6586x_driver = internal global %struct.i2c_driver { i32 0, ptr @tps6586x_i2c_probe, ptr @tps6586x_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tps6586x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps6586x_pm_ops, ptr null, ptr null }, ptr @tps6586x_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@__exitcall_tps6586x_exit = internal global ptr @tps6586x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description248 = internal constant [42 x i8] c"tps6586x.description=TPS6586X core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author249 = internal constant [52 x i8] c"tps6586x.author=Mike Rapoport <mike@compulab.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [35 x i8] c"tps6586x.file=drivers/mfd/tps6586x\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [21 x i8] c"tps6586x.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"tps6586x\00", align 1
@tps6586x_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps6586x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@tps6586x_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @tps6586x_i2c_suspend, ptr @tps6586x_i2c_resume, ptr @tps6586x_i2c_suspend, ptr @tps6586x_i2c_resume, ptr @tps6586x_i2c_suspend, ptr @tps6586x_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@tps6586x_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tps6586x\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"tps6586x requires platform data\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Chip ID read failed: %d\0A\00", align 1
@tps6586x_regmap_config = internal constant %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 205, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"regmap init failed: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"IRQ init failed: %d\0A\00", align 1
@tps6586x_cell = internal constant [4 x %struct.mfd_cell] [%struct.mfd_cell { ptr @.str.20, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.21, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.22, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 1, ptr @tps6586x_rtc_resources, i8 0, i8 0, ptr null, i32 0 }, %struct.mfd_cell { ptr @.str.23, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, i64 0, i8 0, ptr null, i32 0, ptr null, i8 0, i8 0, ptr null, i32 0 }], align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"mfd_add_devices failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"add devices failed: %d\0A\00", align 1
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@tps6586x_dev = internal unnamed_addr global ptr null, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"ti,system-power-controller\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"TPS658621A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"TPS658621C/D\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"TPS658623\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"TPS658640\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"TPS658643\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"TPS6586X\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Found %s, VERSIONCRC is %02x\0A\00", align 1
@tps6586x_irq_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"&tps6586x->irq_lock\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Failed to alloc IRQs: %d\0A\00", align 1
@tps6586x_domain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @tps6586x_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.17 = private unnamed_addr constant [29 x i8] c"Failed to create IRQ domain\0A\00", align 1
@tps6586x_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr @tps6586x_irq_enable, ptr @tps6586x_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tps6586x_irq_set_wake, ptr @tps6586x_irq_lock, ptr @tps6586x_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@tps6586x_irqs = internal unnamed_addr constant [27 x %struct.tps6586x_irq_data] [%struct.tps6586x_irq_data { i8 0, i8 1 }, %struct.tps6586x_irq_data { i8 0, i8 2 }, %struct.tps6586x_irq_data { i8 0, i8 4 }, %struct.tps6586x_irq_data { i8 0, i8 8 }, %struct.tps6586x_irq_data { i8 0, i8 16 }, %struct.tps6586x_irq_data { i8 0, i8 32 }, %struct.tps6586x_irq_data { i8 0, i8 64 }, %struct.tps6586x_irq_data { i8 0, i8 -128 }, %struct.tps6586x_irq_data { i8 3, i8 1 }, %struct.tps6586x_irq_data { i8 1, i8 2 }, %struct.tps6586x_irq_data { i8 1, i8 4 }, %struct.tps6586x_irq_data { i8 1, i8 8 }, %struct.tps6586x_irq_data { i8 1, i8 16 }, %struct.tps6586x_irq_data { i8 1, i8 32 }, %struct.tps6586x_irq_data { i8 1, i8 64 }, %struct.tps6586x_irq_data { i8 1, i8 -128 }, %struct.tps6586x_irq_data { i8 4, i8 16 }, %struct.tps6586x_irq_data { i8 4, i8 3 }, %struct.tps6586x_irq_data { i8 4, i8 4 }, %struct.tps6586x_irq_data { i8 4, i8 8 }, %struct.tps6586x_irq_data { i8 2, i8 1 }, %struct.tps6586x_irq_data { i8 3, i8 -4 }, %struct.tps6586x_irq_data { i8 2, i8 6 }, %struct.tps6586x_irq_data { i8 2, i8 -16 }, %struct.tps6586x_irq_data { i8 4, i8 32 }, %struct.tps6586x_irq_data { i8 4, i8 64 }, %struct.tps6586x_irq_data { i8 3, i8 2 }], align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"drivers/mfd/tps6586x.c\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"failed to read interrupt status\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"tps6586x-gpio\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"tps6586x-regulator\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tps6586x-rtc\00", align 1
@tps6586x_rtc_resources = internal constant [1 x %struct.resource] [%struct.resource { i32 16, i32 16, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }], align 4
@.str.23 = private unnamed_addr constant [15 x i8] c"tps6586x-onkey\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description248, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_tps6586x_exit, ptr @__initcall__kmod_tps6586x__247_637_tps6586x_init4, ptr @__ksymtab_tps6586x_clr_bits, ptr @__ksymtab_tps6586x_get_version, ptr @__ksymtab_tps6586x_irq_get_virq, ptr @__ksymtab_tps6586x_read, ptr @__ksymtab_tps6586x_reads, ptr @__ksymtab_tps6586x_set_bits, ptr @__ksymtab_tps6586x_update, ptr @__ksymtab_tps6586x_write, ptr @__ksymtab_tps6586x_writes, ptr @tps6586x_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_write(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tps6586x, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %1, i32 noundef %8) #9
  ret i32 %9
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_writes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tps6586x, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef %1, ptr noundef %3, i32 noundef %2) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_read(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.tps6586x, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = call i32 @regmap_read(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %4) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, ptr %4, align 4
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr %2, align 1
  br label %14

14:                                               ; preds = %11, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_reads(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tps6586x, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef %1, ptr noundef %3, i32 noundef %2) #9
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_set_bits(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tps6586x, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %1, i32 noundef %8, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_clr_bits(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 64
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tps6586x, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = zext i8 %2 to i32
  %9 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %1, i32 noundef %8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_update(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) #0 {
  %5 = getelementptr i8, ptr %0, i32 64
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tps6586x, ptr %6, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = zext i8 %3 to i32
  %10 = zext i8 %2 to i32
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %1, i32 noundef %9, i32 noundef %10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tps6586x_irq_get_virq(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 64
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.tps6586x, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @irq_create_mapping_affinity(ptr noundef %6, i32 noundef %1, ptr noundef null) #9
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @tps6586x_get_version(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  ret i32 %5
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @tps6586x_init() #4 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tps6586x_driver) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @tps6586x_exit() #4 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @tps6586x_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_i2c_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca [4 x i8], align 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %8
  %13 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 80, i32 noundef 3520) #9
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  store i32 0, ptr %13, align 4
  %16 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %13, i32 0, i32 1
  store ptr null, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %13, i32 0, i32 2
  store i32 -1, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %13, i32 0, i32 3
  store i32 -1, ptr %18, align 4
  %19 = tail call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.7, ptr noundef null) #9
  %20 = icmp ne ptr %19, null
  %21 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %13, i32 0, i32 4
  %22 = zext i1 %20 to i8
  store i8 %22, ptr %21, align 4
  br label %24

23:                                               ; preds = %12, %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #10
  br label %181

24:                                               ; preds = %15, %2
  %25 = phi ptr [ %6, %2 ], [ %13, %15 ]
  %26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %0, i8 noundef zeroext -51) #9
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef %26) #10
  br label %181

29:                                               ; preds = %24
  %30 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 196, i32 noundef 3520) #9
  %31 = icmp eq ptr %30, null
  br i1 %31, label %181, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 3
  store i32 %26, ptr %33, align 4
  switch i32 %26, label %38 [
    i32 21, label %39
    i32 44, label %34
    i32 27, label %35
    i32 1, label %36
    i32 2, label %36
    i32 3, label %37
  ]

34:                                               ; preds = %32
  br label %39

35:                                               ; preds = %32
  br label %39

36:                                               ; preds = %32, %32
  br label %39

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %37, %36, %35, %34, %32
  %40 = phi ptr [ @.str.13, %38 ], [ @.str.12, %37 ], [ @.str.11, %36 ], [ @.str.10, %35 ], [ @.str.9, %34 ], [ @.str.8, %32 ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %40, i32 noundef %26) #10
  %41 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 1
  store ptr %0, ptr %41, align 4
  store ptr %4, ptr %30, align 4
  %42 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %30, ptr %42, align 8
  %43 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull @tps6586x_regmap_config, ptr noundef null, ptr noundef null) #9
  %44 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 2
  store ptr %43, ptr %44, align 4
  %45 = icmp ugt ptr %43, inttoptr (i32 -4096 to ptr)
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = ptrtoint ptr %43 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %47) #10
  br label %181

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %125, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %25, i32 0, i32 3
  %54 = load i32, ptr %53, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %55 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 4
  store i32 %50, ptr %55, align 4
  %56 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %56, ptr noundef nonnull @.str.15, ptr noundef nonnull @tps6586x_irq_init.__key) #9
  %57 = getelementptr %struct.tps6586x, ptr %30, i32 0, i32 9, i32 0
  store i8 -1, ptr %57, align 1
  %58 = load ptr, ptr %30, align 4
  %59 = getelementptr i8, ptr %58, i32 64
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.tps6586x, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 176, i32 noundef 255) #9
  %64 = getelementptr %struct.tps6586x, ptr %30, i32 0, i32 9, i32 1
  store i8 -1, ptr %64, align 1
  %65 = load ptr, ptr %30, align 4
  %66 = getelementptr i8, ptr %65, i32 64
  %67 = load ptr, ptr %66, align 8
  %68 = getelementptr inbounds %struct.tps6586x, ptr %67, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 177, i32 noundef 255) #9
  %71 = getelementptr %struct.tps6586x, ptr %30, i32 0, i32 9, i32 2
  store i8 -1, ptr %71, align 1
  %72 = load ptr, ptr %30, align 4
  %73 = getelementptr i8, ptr %72, i32 64
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.tps6586x, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = tail call i32 @regmap_write(ptr noundef %76, i32 noundef 178, i32 noundef 255) #9
  %78 = getelementptr %struct.tps6586x, ptr %30, i32 0, i32 9, i32 3
  store i8 -1, ptr %78, align 1
  %79 = load ptr, ptr %30, align 4
  %80 = getelementptr i8, ptr %79, i32 64
  %81 = load ptr, ptr %80, align 8
  %82 = getelementptr inbounds %struct.tps6586x, ptr %81, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 179, i32 noundef 255) #9
  %85 = getelementptr %struct.tps6586x, ptr %30, i32 0, i32 9, i32 4
  store i8 -1, ptr %85, align 1
  %86 = load ptr, ptr %30, align 4
  %87 = getelementptr i8, ptr %86, i32 64
  %88 = load ptr, ptr %87, align 8
  %89 = getelementptr inbounds %struct.tps6586x, ptr %88, i32 0, i32 2
  %90 = load ptr, ptr %89, align 4
  %91 = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 180, i32 noundef 255) #9
  %92 = load ptr, ptr %30, align 4
  %93 = getelementptr i8, ptr %92, i32 64
  %94 = load ptr, ptr %93, align 8
  %95 = getelementptr inbounds %struct.tps6586x, ptr %94, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @regmap_bulk_read(ptr noundef %96, i32 noundef 181, ptr noundef nonnull %3, i32 noundef 4) #9
  %98 = icmp sgt i32 %54, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %52
  %100 = call i32 @__irq_alloc_descs(i32 noundef %54, i32 noundef 0, i32 noundef 27, i32 noundef -1, ptr noundef null, ptr noundef null) #9
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.16, i32 noundef %100) #10
  br label %123

104:                                              ; preds = %99, %52
  %105 = phi i32 [ %100, %99 ], [ 0, %52 ]
  %106 = load ptr, ptr %30, align 4
  %107 = getelementptr inbounds %struct.device, ptr %106, i32 0, i32 25
  %108 = load ptr, ptr %107, align 8
  %109 = icmp eq ptr %108, null
  %110 = getelementptr inbounds %struct.device_node, ptr %108, i32 0, i32 3
  %111 = select i1 %109, ptr null, ptr %110
  %112 = call ptr @irq_domain_create_simple(ptr noundef %111, i32 noundef 27, i32 noundef %105, ptr noundef nonnull @tps6586x_domain_ops, ptr noundef nonnull %30) #9
  %113 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 10
  store ptr %112, ptr %113, align 4
  %114 = icmp eq ptr %112, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %104
  %116 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.17) #10
  br label %123

117:                                              ; preds = %104
  %118 = call i32 @request_threaded_irq(i32 noundef %50, ptr noundef null, ptr noundef nonnull @tps6586x_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %30) #9
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load ptr, ptr %30, align 4
  %122 = call i32 @device_init_wakeup(ptr noundef %121, i1 noundef zeroext true) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  br label %125

123:                                              ; preds = %117, %115, %102
  %124 = phi i32 [ %118, %117 ], [ -12, %115 ], [ %100, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4, i32 noundef %124) #10
  br label %181

125:                                              ; preds = %120, %48
  %126 = load ptr, ptr %30, align 4
  %127 = getelementptr inbounds %struct.tps6586x, ptr %30, i32 0, i32 10
  %128 = load ptr, ptr %127, align 4
  %129 = call i32 @mfd_add_devices(ptr noundef %126, i32 noundef -1, ptr noundef nonnull @tps6586x_cell, i32 noundef 4, ptr noundef null, i32 noundef 0, ptr noundef %128) #9
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5, i32 noundef %129) #10
  br label %175

132:                                              ; preds = %125
  %133 = load i32, ptr %25, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %167

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %25, i32 0, i32 1
  br label %141

137:                                              ; preds = %150
  %138 = add nuw nsw i32 %142, 1
  %139 = load i32, ptr %25, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %137, %135
  %142 = phi i32 [ 0, %135 ], [ %138, %137 ]
  %143 = load ptr, ptr %136, align 4
  %144 = getelementptr %struct.tps6586x_subdev_info, ptr %143, i32 %142
  %145 = getelementptr %struct.tps6586x_subdev_info, ptr %143, i32 %142, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = load i32, ptr %144, align 4
  %148 = call ptr @platform_device_alloc(ptr noundef %146, i32 noundef %147) #9
  %149 = icmp eq ptr %148, null
  br i1 %149, label %162, label %150

150:                                              ; preds = %141
  %151 = load ptr, ptr %30, align 4
  %152 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 1
  store ptr %151, ptr %152, align 4
  %153 = getelementptr %struct.tps6586x_subdev_info, ptr %143, i32 %142, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 7
  store ptr %154, ptr %155, align 4
  %156 = getelementptr %struct.tps6586x_subdev_info, ptr %143, i32 %142, i32 3
  %157 = load ptr, ptr %156, align 4
  %158 = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3, i32 25
  store ptr %157, ptr %158, align 8
  %159 = call i32 @platform_device_add(ptr noundef nonnull %148) #9
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %137, label %161

161:                                              ; preds = %150
  call void @platform_device_put(ptr noundef nonnull %148) #9
  br label %162

162:                                              ; preds = %161, %141
  %163 = phi i32 [ %159, %161 ], [ -12, %141 ]
  %164 = load ptr, ptr %30, align 4
  %165 = call i32 @device_for_each_child(ptr noundef %164, ptr noundef null, ptr noundef nonnull @__remove_subdev) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %163) #10
  %166 = load ptr, ptr %30, align 4
  call void @mfd_remove_devices(ptr noundef %166) #9
  br label %175

167:                                              ; preds = %137, %132
  %168 = getelementptr inbounds %struct.tps6586x_platform_data, ptr %25, i32 0, i32 4
  %169 = load i8, ptr %168, align 4, !range !9
  %170 = icmp eq i8 %169, 0
  %171 = load ptr, ptr @pm_power_off, align 4
  %172 = icmp ne ptr %171, null
  %173 = select i1 %170, i1 true, i1 %172
  br i1 %173, label %181, label %174

174:                                              ; preds = %167
  store ptr %4, ptr @tps6586x_dev, align 4
  store ptr @tps6586x_power_off, ptr @pm_power_off, align 4
  br label %181

175:                                              ; preds = %162, %131
  %176 = phi i32 [ %129, %131 ], [ %163, %162 ]
  %177 = load i32, ptr %49, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = call ptr @free_irq(i32 noundef %177, ptr noundef nonnull %30) #9
  br label %181

181:                                              ; preds = %179, %175, %174, %167, %123, %46, %29, %28, %23
  %182 = phi i32 [ -5, %28 ], [ %47, %46 ], [ %124, %123 ], [ -524, %23 ], [ -12, %29 ], [ 0, %174 ], [ 0, %167 ], [ %176, %179 ], [ %176, %175 ]
  ret i32 %182
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_i2c_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @__remove_subdev) #9
  %6 = load ptr, ptr %3, align 4
  tail call void @mfd_remove_devices(ptr noundef %6) #9
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @free_irq(i32 noundef %8, ptr noundef %3) #9
  br label %12

12:                                               ; preds = %10, %1
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mfd_add_devices(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps6586x_power_off() #0 {
  %1 = load ptr, ptr @tps6586x_dev, align 4
  %2 = getelementptr i8, ptr %1, i32 64
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load ptr, ptr @tps6586x_dev, align 4
  %10 = getelementptr i8, ptr %9, i32 64
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.tps6586x, ptr %11, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 20, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %15

15:                                               ; preds = %8, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfd_remove_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  %3 = add i32 %1, -181
  %4 = icmp ult i32 %3, -5
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = load ptr, ptr %1, align 4
  %6 = getelementptr i8, ptr %5, i32 64
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.tps6586x, ptr %7, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 181, ptr noundef nonnull %4, i32 noundef 4) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19) #10
  br label %37

14:                                               ; preds = %2
  %15 = load i32, ptr %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tps6586x, ptr %1, i32 0, i32 8
  %19 = getelementptr inbounds %struct.tps6586x, ptr %1, i32 0, i32 10
  br label %20

20:                                               ; preds = %33, %17
  %21 = phi i32 [ %15, %17 ], [ %35, %33 ]
  %22 = call i32 @llvm.cttz.i32(i32 %21, i1 true) #9, !range !10
  %23 = load i32, ptr %18, align 4
  %24 = shl nuw i32 1, %22
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %19, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %29 = call ptr @__irq_resolve_mapping(ptr noundef %28, i32 noundef %22, ptr noundef nonnull %3) #9
  %30 = icmp eq ptr %29, null
  %31 = load i32, ptr %3, align 4
  %32 = select i1 %30, i32 0, i32 %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @handle_nested_irq(i32 noundef %32) #9
  br label %33

33:                                               ; preds = %27, %20
  %34 = xor i32 %24, -1
  %35 = and i32 %21, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %20

37:                                               ; preds = %33, %14, %12
  %38 = phi i32 [ 0, %12 ], [ 1, %14 ], [ 1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_irq_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @tps6586x_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 32768) #9
  tail call void @irq_modify_status(i32 noundef %1, i32 noundef 0, i32 noundef 1024) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tps6586x_irq_enable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [27 x %struct.tps6586x_irq_data], ptr @tps6586x_irqs, i32 0, i32 %5
  %7 = getelementptr [27 x %struct.tps6586x_irq_data], ptr @tps6586x_irqs, i32 0, i32 %5, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = xor i8 %8, -1
  %10 = load i8, ptr %6, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = and i8 %13, %9
  store i8 %14, ptr %12, align 1
  %15 = shl nuw i32 1, %5
  %16 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = or i32 %17, %15
  store i32 %18, ptr %16, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @tps6586x_irq_disable(ptr nocapture noundef readonly %0) #7 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [27 x %struct.tps6586x_irq_data], ptr @tps6586x_irqs, i32 0, i32 %5
  %7 = getelementptr [27 x %struct.tps6586x_irq_data], ptr @tps6586x_irqs, i32 0, i32 %5, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = or i8 %12, %8
  store i8 %13, ptr %11, align 1
  %14 = shl nuw i32 1, %5
  %15 = xor i32 %14, -1
  %16 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 8
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, %15
  store i32 %18, ptr %16, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_irq_set_wake(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tps6586x, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef %1) #9
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps6586x_irq_lock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 6
  tail call void @mutex_lock(ptr noundef %4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tps6586x_irq_sync_unlock(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 0
  %6 = load i8, ptr %5, align 1
  %7 = getelementptr i8, ptr %4, i32 64
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.tps6586x, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = zext i8 %6 to i32
  %12 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 176, i32 noundef %11) #9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !11

14:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %15

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr i8, ptr %16, i32 64
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.tps6586x, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = zext i8 %18 to i32
  %24 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 177, i32 noundef %23) #9
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26, !prof !11

26:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %27

27:                                               ; preds = %26, %15
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 2
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr i8, ptr %28, i32 64
  %32 = load ptr, ptr %31, align 8
  %33 = getelementptr inbounds %struct.tps6586x, ptr %32, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = zext i8 %30 to i32
  %36 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 178, i32 noundef %35) #9
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38, !prof !11

38:                                               ; preds = %27
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %39

39:                                               ; preds = %38, %27
  %40 = load ptr, ptr %3, align 4
  %41 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 3
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr i8, ptr %40, i32 64
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds %struct.tps6586x, ptr %44, i32 0, i32 2
  %46 = load ptr, ptr %45, align 4
  %47 = zext i8 %42 to i32
  %48 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 179, i32 noundef %47) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !11

50:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %51

51:                                               ; preds = %50, %39
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr %struct.tps6586x, ptr %3, i32 0, i32 9, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = getelementptr i8, ptr %52, i32 64
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.tps6586x, ptr %56, i32 0, i32 2
  %58 = load ptr, ptr %57, align 4
  %59 = zext i8 %54 to i32
  %60 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 180, i32 noundef %59) #9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %63, label %62, !prof !11

62:                                               ; preds = %51
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 266, i32 noundef 9, ptr noundef null) #9
  br label %63

63:                                               ; preds = %62, %51
  %64 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %64) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @__remove_subdev(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_i2c_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %7) #9
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tps6586x_i2c_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.tps6586x, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @enable_irq(i32 noundef %7) #9
  br label %10

10:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!10 = !{i32 0, i32 33}
!11 = !{!"branch_weights", i32 2000, i32 1}
