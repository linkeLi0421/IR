; ModuleID = '/llk/IR/drivers/mfd/twl-core.c_pt.bc'
source_filename = "../drivers/mfd/twl-core.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_rev\22\09\09\09\09\09"
module asm "__kstrtabns_twl_rev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_i2c_write:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_i2c_write\22\09\09\09\09\09"
module asm "__kstrtabns_twl_i2c_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_i2c_read:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_i2c_read\22\09\09\09\09\09"
module asm "__kstrtabns_twl_i2c_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_set_regcache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_set_regcache_bypass\22\09\09\09\09\09"
module asm "__kstrtabns_twl_set_regcache_bypass:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_get_type:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_get_type\22\09\09\09\09\09"
module asm "__kstrtabns_twl_get_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_get_version\22\09\09\09\09\09"
module asm "__kstrtabns_twl_get_version:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_twl_get_hfclk_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22twl_get_hfclk_rate\22\09\09\09\09\09"
module asm "__kstrtabns_twl_get_hfclk_rate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.twl_mapping = type { i8, i8 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.of_dev_auxdata = type { ptr, i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.twl_private = type { i8, i32, i32, ptr, ptr }
%struct.twl_client = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.twl4030_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.twl_regulator_driver_data = type { ptr, ptr, ptr, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@twl_priv = internal unnamed_addr global ptr null, align 4
@__kstrtab_twl_rev = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_rev = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_rev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_rev to i32), ptr @__kstrtab_twl_rev, ptr @__kstrtabns_twl_rev }, section "___ksymtab+twl_rev", align 4
@.str = private unnamed_addr constant [50 x i8] c"\013%s: Write failed (mod %d, reg 0x%02x count %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"twl\00", align 1
@__kstrtab_twl_i2c_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_i2c_write = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_i2c_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_i2c_write to i32), ptr @__kstrtab_twl_i2c_write, ptr @__kstrtabns_twl_i2c_write }, section "___ksymtab+twl_i2c_write", align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"\013%s: Read failed (mod %d, reg 0x%02x count %d)\0A\00", align 1
@__kstrtab_twl_i2c_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_i2c_read = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_i2c_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_i2c_read to i32), ptr @__kstrtab_twl_i2c_read, ptr @__kstrtabns_twl_i2c_read }, section "___ksymtab+twl_i2c_read", align 4
@__kstrtab_twl_set_regcache_bypass = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_set_regcache_bypass = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_set_regcache_bypass = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_set_regcache_bypass to i32), ptr @__kstrtab_twl_set_regcache_bypass, ptr @__kstrtabns_twl_set_regcache_bypass }, section "___ksymtab+twl_set_regcache_bypass", align 4
@__kstrtab_twl_get_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_get_type = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_get_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_get_type to i32), ptr @__kstrtab_twl_get_type, ptr @__kstrtabns_twl_get_type }, section "___ksymtab_gpl+twl_get_type", align 4
@__kstrtab_twl_get_version = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_get_version = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_get_version = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_get_version to i32), ptr @__kstrtab_twl_get_version, ptr @__kstrtabns_twl_get_version }, section "___ksymtab_gpl+twl_get_version", align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"\013TWL4030: HFCLK is not configured\0A\00", align 1
@__kstrtab_twl_get_hfclk_rate = external dso_local constant [0 x i8], align 1
@__kstrtabns_twl_get_hfclk_rate = external dso_local constant [0 x i8], align 1
@__ksymtab_twl_get_hfclk_rate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @twl_get_hfclk_rate to i32), ptr @__kstrtab_twl_get_hfclk_rate, ptr @__kstrtabns_twl_get_hfclk_rate }, section "___ksymtab_gpl+twl_get_hfclk_rate", align 4
@__initcall__kmod_twl_core__247_1279_twl_driver_init6 = internal global ptr @twl_driver_init, section ".initcall6.init", align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"\013%s: not initialized\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\013%s: invalid module number %d\0A\00", align 1
@twl_driver = internal global %struct.i2c_driver { i32 0, ptr @twl_probe, ptr @twl_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @twl_dev_pm_ops, ptr null, ptr null }, ptr @twl_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@twl_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @twl_suspend, ptr @twl_resume, ptr @twl_suspend, ptr @twl_resume, ptr @twl_suspend, ptr @twl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@twl_ids = internal constant [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"twl4030\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"twl5030\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"twl5031\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"tps65950\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tps65930\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps65920\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tps65921\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"twl6030\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"twl6032\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 24 }, %struct.i2c_device_id zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"can't alloc pdev\0A\00", align 1
@twl6030_map = internal global [14 x %struct.twl_mapping] [%struct.twl_mapping { i8 1, i8 0 }, %struct.twl_mapping { i8 1, i8 -48 }, %struct.twl_mapping { i8 1, i8 -32 }, %struct.twl_mapping { i8 0, i8 31 }, %struct.twl_mapping { i8 0, i8 48 }, %struct.twl_mapping zeroinitializer, %struct.twl_mapping { i8 1, i8 -70 }, %struct.twl_mapping { i8 1, i8 -12 }, %struct.twl_mapping { i8 0, i8 23 }, %struct.twl_mapping zeroinitializer, %struct.twl_mapping { i8 1, i8 0 }, %struct.twl_mapping { i8 2, i8 0 }, %struct.twl_mapping { i8 1, i8 46 }, %struct.twl_mapping { i8 1, i8 -64 }], align 1
@twl6030_regmap_config = internal constant [3 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], align 4
@twl4030_map = internal global [21 x %struct.twl_mapping] [%struct.twl_mapping zeroinitializer, %struct.twl_mapping { i8 1, i8 -128 }, %struct.twl_mapping { i8 2, i8 116 }, %struct.twl_mapping { i8 3, i8 54 }, %struct.twl_mapping { i8 3, i8 91 }, %struct.twl_mapping { i8 3, i8 28 }, %struct.twl_mapping { i8 2, i8 -8 }, %struct.twl_mapping { i8 2, i8 -18 }, %struct.twl_mapping { i8 3, i8 0 }, %struct.twl_mapping { i8 1, i8 0 }, %struct.twl_mapping { i8 1, i8 -104 }, %struct.twl_mapping { i8 1, i8 -123 }, %struct.twl_mapping { i8 1, i8 76 }, %struct.twl_mapping { i8 2, i8 -46 }, %struct.twl_mapping { i8 2, i8 0 }, %struct.twl_mapping { i8 2, i8 -71 }, %struct.twl_mapping { i8 2, i8 -86 }, %struct.twl_mapping { i8 3, i8 20 }, %struct.twl_mapping { i8 3, i8 46 }, %struct.twl_mapping { i8 2, i8 116 }, %struct.twl_mapping { i8 2, i8 -71 }], align 1
@twl4030_regmap_config = internal constant [4 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @twl4030_49_nop_reg, ptr @twl4030_49_nop_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr @twl4030_49_volatile_table, ptr null, ptr null, ptr null, ptr @twl4030_49_defaults, i32 69, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"can't attach client %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed to allocate regmap %d, err: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"drivers/mfd/twl-core.c\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"Error: reading twl_idcode register value\0A\00", align 1
@twl_auxdata_lookup = internal global [2 x %struct.of_dev_auxdata] [%struct.of_dev_auxdata { ptr @.str.18, i32 0, ptr @.str.19, ptr null }, %struct.of_dev_auxdata zeroinitializer], align 4
@twl4030_49_volatile_table = internal constant %struct.regmap_access_table { ptr @twl4030_49_volatile_ranges, i32 1, ptr null, i32 0 }, align 4
@twl4030_49_defaults = internal constant [69 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 15 }, %struct.reg_default { i32 11, i32 15 }, %struct.reg_default { i32 12, i32 15 }, %struct.reg_default { i32 13, i32 15 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 63 }, %struct.reg_default { i32 17, i32 63 }, %struct.reg_default { i32 18, i32 63 }, %struct.reg_default { i32 19, i32 63 }, %struct.reg_default { i32 20, i32 37 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 50 }, %struct.reg_default { i32 26, i32 50 }, %struct.reg_default { i32 27, i32 50 }, %struct.reg_default { i32 28, i32 50 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 85 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 5 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 45, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 19 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 121 }, %struct.reg_default { i32 54, i32 17 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 6 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 68 }, %struct.reg_default { i32 61, i32 105 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 0 }, %struct.reg_default { i32 67, i32 0 }, %struct.reg_default { i32 68, i32 50 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 70, i32 0 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 73, i32 0 }], align 4
@twl4030_49_volatile_ranges = internal constant [1 x %struct.regmap_range] [%struct.regmap_range { i32 76, i32 255 }], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.13 = private unnamed_addr constant [82 x i8] c"\014Skipping twl internal clock init and using bootloader value (unknown osc rate)\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"\013%s: clock init err [%d]\0A\00", align 1
@.str.15 = private unnamed_addr constant [49 x i8] c"\013TWL4030 Unable to unlock IDCODE registers -%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"\013TWL4030: unable to read IDCODE -%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [49 x i8] c"\013TWL4030 Unable to relock IDCODE registers -%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"ti,twl4030-gpio\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"twl4030-gpio\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"twl4030_gpio\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"twl_rtc\00", align 1
@add_children.usb1v5 = internal global %struct.regulator_consumer_supply { ptr null, ptr @.str.22 }, align 4
@.str.22 = private unnamed_addr constant [7 x i8] c"usb1v5\00", align 1
@add_children.usb1v8 = internal global %struct.regulator_consumer_supply { ptr null, ptr @.str.23 }, align 4
@.str.23 = private unnamed_addr constant [7 x i8] c"usb1v8\00", align 1
@add_children.usb3v1 = internal global %struct.regulator_consumer_supply { ptr null, ptr @.str.24 }, align 4
@.str.24 = private unnamed_addr constant [7 x i8] c"usb3v1\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"twl4030_usb\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"twl4030_power\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"failed to add device %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"twl_reg\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_twl_core__247_1279_twl_driver_init6, ptr @__ksymtab_twl_get_hfclk_rate, ptr @__ksymtab_twl_get_type, ptr @__ksymtab_twl_get_version, ptr @__ksymtab_twl_i2c_read, ptr @__ksymtab_twl_i2c_write, ptr @__ksymtab_twl_rev, ptr @__ksymtab_twl_set_regcache_bypass], section "llvm.metadata"
@switch.table.twl_get_hfclk_rate = private unnamed_addr constant [3 x i32] [i32 19200000, i32 26000000, i32 38400000], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @twl_rev() #0 {
  %1 = load ptr, ptr @twl_priv, align 4
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.twl_private, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  br label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl_i2c_write(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr @twl_priv, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !8

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %7, %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %42

12:                                               ; preds = %7
  %13 = zext i8 %0 to i32
  %14 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 16432
  %17 = select i1 %16, i32 21, i32 14
  %18 = icmp ugt i32 %17, %13
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %13) #9
  br label %42

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.twl_mapping, ptr %23, i32 %13
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr %struct.twl_client, ptr %28, i32 %26, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = getelementptr %struct.twl_mapping, ptr %23, i32 %13, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = zext i8 %2 to i32
  %37 = add nuw nsw i32 %35, %36
  %38 = tail call i32 @regmap_bulk_write(ptr noundef nonnull %30, i32 noundef %37, ptr noundef %1, i32 noundef %3) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %36, i32 noundef %3) #9
  br label %42

42:                                               ; preds = %40, %32, %21, %19, %10
  %43 = phi i32 [ -1, %21 ], [ %38, %40 ], [ 0, %32 ], [ -1, %10 ], [ -1, %19 ]
  ret i32 %43
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl_i2c_read(i8 noundef zeroext %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #1 {
  %5 = load ptr, ptr @twl_priv, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !8

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 4, !range !9
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12, !prof !8

10:                                               ; preds = %7, %4
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %42

12:                                               ; preds = %7
  %13 = zext i8 %0 to i32
  %14 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 16432
  %17 = select i1 %16, i32 21, i32 14
  %18 = icmp ugt i32 %17, %13
  br i1 %18, label %21, label %19, !prof !10

19:                                               ; preds = %12
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %13) #9
  br label %42

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr %struct.twl_mapping, ptr %23, i32 %13
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds %struct.twl_private, ptr %5, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr %struct.twl_client, ptr %28, i32 %26, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %21
  %33 = getelementptr %struct.twl_mapping, ptr %23, i32 %13, i32 1
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = zext i8 %2 to i32
  %37 = add nuw nsw i32 %35, %36
  %38 = tail call i32 @regmap_bulk_read(ptr noundef nonnull %30, i32 noundef %37, ptr noundef %1, i32 noundef %3) #10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef %36, i32 noundef %3) #9
  br label %42

42:                                               ; preds = %40, %32, %21, %19, %10
  %43 = phi i32 [ -1, %21 ], [ %38, %40 ], [ 0, %32 ], [ -1, %10 ], [ -1, %19 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl_set_regcache_bypass(i8 noundef zeroext %0, i1 noundef zeroext %1) #1 {
  %3 = load ptr, ptr @twl_priv, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !8

5:                                                ; preds = %2
  %6 = load i8, ptr %3, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10, !prof !8

8:                                                ; preds = %5, %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #9
  br label %31

10:                                               ; preds = %5
  %11 = zext i8 %0 to i32
  %12 = getelementptr inbounds %struct.twl_private, ptr %3, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 16432
  %15 = select i1 %14, i32 21, i32 14
  %16 = icmp ugt i32 %15, %11
  br i1 %16, label %19, label %17, !prof !10

17:                                               ; preds = %10
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef %11) #9
  br label %31

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.twl_private, ptr %3, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr %struct.twl_mapping, ptr %21, i32 %11
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.twl_private, ptr %3, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.twl_client, ptr %26, i32 %24, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  tail call void @regcache_cache_bypass(ptr noundef nonnull %28, i1 noundef zeroext %1) #10
  br label %31

31:                                               ; preds = %30, %19, %17, %8
  %32 = phi i32 [ 0, %30 ], [ -1, %19 ], [ -1, %8 ], [ -1, %17 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @twl_get_type() #0 {
  %1 = load ptr, ptr @twl_priv, align 4
  %2 = getelementptr inbounds %struct.twl_private, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 16777215
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @twl_get_version() #0 {
  %1 = load ptr, ptr @twl_priv, align 4
  %2 = getelementptr inbounds %struct.twl_private, ptr %1, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 24
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @twl_get_hfclk_rate() #1 {
  %1 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #10
  store i8 0, ptr %1, align 1, !annotation !11
  %2 = call i32 @twl_i2c_read(i8 noundef zeroext 3, ptr noundef nonnull %1, i8 noundef zeroext 5, i32 noundef 1) #10
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 3
  %5 = zext i8 %4 to i32
  %6 = add nsw i32 %5, -1
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %13

10:                                               ; preds = %0
  %11 = getelementptr inbounds [3 x i32], ptr @switch.table.twl_get_hfclk_rate, i32 0, i32 %6
  %12 = load i32, ptr %11, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi i32 [ -22, %8 ], [ %12, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #10
  ret i32 %14
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @twl_driver_init() #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @twl_driver) #10
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_probe(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp ne ptr %10, null
  %12 = icmp ne ptr %8, null
  %13 = select i1 %11, i1 true, i1 %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.6) #9
  br label %192

15:                                               ; preds = %2
  %16 = load ptr, ptr @twl_priv, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %192

18:                                               ; preds = %15
  %19 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -1) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7) #9
  br label %192

22:                                               ; preds = %18
  %23 = tail call i32 @platform_device_add(ptr noundef nonnull %19) #10
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @platform_device_put(ptr noundef nonnull %19) #10
  br label %192

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.i2c_algorithm, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 %32(ptr noundef %28) #10
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %190, label %36

36:                                               ; preds = %26
  %37 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 20, i32 noundef 3520) #10
  store ptr %37, ptr @twl_priv, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %190, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.i2c_device_id, ptr %1, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct.twl_private, ptr %37, i32 0, i32 2
  br i1 %43, label %50, label %45

45:                                               ; preds = %39
  store i32 24624, ptr %44, align 4
  %46 = getelementptr inbounds %struct.twl_private, ptr %37, i32 0, i32 3
  store ptr @twl6030_map, ptr %46, align 4
  %47 = and i32 %41, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  store i8 -38, ptr getelementptr inbounds ([14 x %struct.twl_mapping], ptr @twl6030_map, i32 0, i32 2, i32 1), align 1
  br label %52

50:                                               ; preds = %39
  store i32 16432, ptr %44, align 4
  %51 = getelementptr inbounds %struct.twl_private, ptr %37, i32 0, i32 3
  store ptr @twl4030_map, ptr %51, align 4
  br label %52

52:                                               ; preds = %50, %49, %45
  %53 = phi i32 [ 32, %50 ], [ 24, %49 ], [ 24, %45 ]
  %54 = phi ptr [ @twl4030_regmap_config, %50 ], [ @twl6030_regmap_config, %49 ], [ @twl6030_regmap_config, %45 ]
  %55 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef %53, i32 noundef 3520) #10
  %56 = load ptr, ptr @twl_priv, align 4
  %57 = getelementptr inbounds %struct.twl_private, ptr %56, i32 0, i32 4
  store ptr %55, ptr %57, align 4
  %58 = icmp eq ptr %55, null
  br i1 %58, label %190, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  store ptr %0, ptr %55, align 4
  %61 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %0, ptr noundef nonnull %54, ptr noundef null, ptr noundef null) #10
  %62 = getelementptr %struct.twl_client, ptr %55, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %69, label %73

64:                                               ; preds = %105, %88, %73
  %65 = phi i32 [ 1, %73 ], [ 2, %88 ], [ 3, %105 ]
  %66 = phi ptr [ %77, %73 ], [ %92, %88 ], [ %108, %105 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.8, i32 noundef %65) #9
  %67 = load ptr, ptr %66, align 4
  %68 = ptrtoint ptr %67 to i32
  br label %184

69:                                               ; preds = %114, %98, %83, %59
  %70 = phi ptr [ %61, %59 ], [ %85, %83 ], [ %100, %98 ], [ %116, %114 ]
  %71 = phi i32 [ 0, %59 ], [ 1, %83 ], [ 2, %98 ], [ 3, %114 ]
  %72 = ptrtoint ptr %70 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef %71, i32 noundef %72) #9
  br label %184

73:                                               ; preds = %59
  %74 = load ptr, ptr @twl_priv, align 4
  %75 = getelementptr inbounds %struct.twl_private, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr %struct.twl_client, ptr %76, i32 1
  %78 = load ptr, ptr %27, align 8
  %79 = load i16, ptr %60, align 2
  %80 = add i16 %79, 1
  %81 = tail call ptr @i2c_new_dummy_device(ptr noundef %78, i16 noundef zeroext %80) #10
  store ptr %81, ptr %77, align 4
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %64, label %83

83:                                               ; preds = %73
  %84 = getelementptr %struct.regmap_config, ptr %54, i32 1
  %85 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %81, ptr noundef %84, ptr noundef null, ptr noundef null) #10
  %86 = getelementptr %struct.twl_client, ptr %76, i32 1, i32 1
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %69, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr @twl_priv, align 4
  %90 = getelementptr inbounds %struct.twl_private, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr %struct.twl_client, ptr %91, i32 2
  %93 = load ptr, ptr %27, align 8
  %94 = load i16, ptr %60, align 2
  %95 = add i16 %94, 2
  %96 = tail call ptr @i2c_new_dummy_device(ptr noundef %93, i16 noundef zeroext %95) #10
  store ptr %96, ptr %92, align 4
  %97 = icmp ugt ptr %96, inttoptr (i32 -4096 to ptr)
  br i1 %97, label %64, label %98

98:                                               ; preds = %88
  %99 = getelementptr %struct.regmap_config, ptr %54, i32 2
  %100 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %96, ptr noundef %99, ptr noundef null, ptr noundef null) #10
  %101 = getelementptr %struct.twl_client, ptr %91, i32 2, i32 1
  store ptr %100, ptr %101, align 4
  %102 = icmp ugt ptr %100, inttoptr (i32 -4096 to ptr)
  br i1 %102, label %69, label %103

103:                                              ; preds = %98
  %104 = load ptr, ptr @twl_priv, align 4
  br i1 %43, label %105, label %121

105:                                              ; preds = %103
  %106 = getelementptr inbounds %struct.twl_private, ptr %104, i32 0, i32 4
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr %struct.twl_client, ptr %107, i32 3
  %109 = load ptr, ptr %27, align 8
  %110 = load i16, ptr %60, align 2
  %111 = add i16 %110, 3
  %112 = tail call ptr @i2c_new_dummy_device(ptr noundef %109, i16 noundef zeroext %111) #10
  store ptr %112, ptr %108, align 4
  %113 = icmp ugt ptr %112, inttoptr (i32 -4096 to ptr)
  br i1 %113, label %64, label %114

114:                                              ; preds = %105
  %115 = getelementptr %struct.regmap_config, ptr %54, i32 3
  %116 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %112, ptr noundef %115, ptr noundef null, ptr noundef null) #10
  %117 = getelementptr %struct.twl_client, ptr %107, i32 3, i32 1
  store ptr %116, ptr %117, align 4
  %118 = icmp ugt ptr %116, inttoptr (i32 -4096 to ptr)
  br i1 %118, label %69, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr @twl_priv, align 4
  call void @llvm.assume(i1 %43)
  br label %121

121:                                              ; preds = %119, %103
  %122 = phi ptr [ %104, %103 ], [ %120, %119 ]
  store i8 1, ptr %122, align 4
  br i1 %12, label %123, label %125

123:                                              ; preds = %121
  %124 = load ptr, ptr %8, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi ptr [ %124, %123 ], [ null, %121 ]
  tail call fastcc void @clocks_init(ptr noundef %6, ptr noundef %126)
  %127 = load ptr, ptr @twl_priv, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %137, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.twl_private, ptr %127, i32 0, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = icmp eq i32 %131, 16432
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  %134 = tail call fastcc i32 @twl_read_idcode_register()
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137, !prof !8

136:                                              ; preds = %133
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1173, i32 noundef 9, ptr noundef nonnull @.str.11) #10
  br label %137

137:                                              ; preds = %136, %133, %129, %125
  %138 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %157, label %141

141:                                              ; preds = %137
  %142 = load ptr, ptr @twl_priv, align 4
  %143 = icmp eq ptr %142, null
  br i1 %143, label %152, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.twl_private, ptr %142, i32 0, i32 2
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 16432
  br i1 %147, label %148, label %152

148:                                              ; preds = %144
  %149 = tail call i32 @twl4030_init_chip_irq(ptr noundef %1) #10
  %150 = load i32, ptr %138, align 4
  %151 = tail call i32 @twl4030_init_irq(ptr noundef %6, i32 noundef %150) #10
  br label %154

152:                                              ; preds = %144, %141
  %153 = tail call i32 @twl6030_init_irq(ptr noundef %6, i32 noundef %139) #10
  br label %154

154:                                              ; preds = %152, %148
  %155 = phi i32 [ %151, %148 ], [ %153, %152 ]
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %187, label %157

157:                                              ; preds = %154, %137
  %158 = phi i32 [ %155, %154 ], [ 0, %137 ]
  %159 = load ptr, ptr @twl_priv, align 4
  %160 = icmp eq ptr %159, null
  br i1 %160, label %174, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.twl_private, ptr %159, i32 0, i32 2
  %163 = load i32, ptr %162, align 4
  %164 = icmp eq i32 %163, 16432
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !11
  %166 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef nonnull %5, i8 noundef zeroext 15, i32 noundef 1) #10
  %167 = load i8, ptr %5, align 1
  %168 = and i8 %167, -86
  store i8 %168, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %168, ptr %4, align 1
  %169 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %4, i8 noundef zeroext 15, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %170 = call i32 @twl_i2c_read(i8 noundef zeroext 4, ptr noundef nonnull %5, i8 noundef zeroext 6, i32 noundef 1) #10
  %171 = load i8, ptr %5, align 1
  %172 = or i8 %171, 8
  store i8 %172, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3)
  store i8 %172, ptr %3, align 1
  %173 = call i32 @twl_i2c_write(i8 noundef zeroext 4, ptr noundef nonnull %3, i8 noundef zeroext 6, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %174

174:                                              ; preds = %165, %161, %157
  br i1 %11, label %175, label %181

175:                                              ; preds = %174
  br i1 %12, label %176, label %179

176:                                              ; preds = %175
  %177 = getelementptr inbounds %struct.twl4030_platform_data, ptr %8, i32 0, i32 2
  %178 = load ptr, ptr %177, align 4
  store ptr %178, ptr getelementptr inbounds ([2 x %struct.of_dev_auxdata], ptr @twl_auxdata_lookup, i32 0, i32 0, i32 3), align 4
  br label %179

179:                                              ; preds = %176, %175
  %180 = call i32 @of_platform_populate(ptr noundef nonnull %10, ptr noundef null, ptr noundef nonnull @twl_auxdata_lookup, ptr noundef %6) #10
  br label %184

181:                                              ; preds = %174
  %182 = load i32, ptr %40, align 4
  %183 = call fastcc i32 @add_children(ptr noundef %8, i32 noundef %158, i32 noundef %182)
  br label %184

184:                                              ; preds = %181, %179, %69, %64
  %185 = phi i32 [ %180, %179 ], [ %183, %181 ], [ %68, %64 ], [ %72, %69 ]
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184, %154
  %188 = phi i32 [ %185, %184 ], [ %155, %154 ]
  %189 = call i32 @twl_remove(ptr noundef %0)
  br label %190

190:                                              ; preds = %187, %52, %36, %26
  %191 = phi i32 [ -12, %52 ], [ -12, %36 ], [ -5, %26 ], [ %188, %187 ]
  call void @platform_device_unregister(ptr noundef nonnull %19) #10
  br label %192

192:                                              ; preds = %190, %184, %25, %21, %15, %14
  %193 = phi i32 [ %23, %25 ], [ -12, %21 ], [ -22, %14 ], [ -16, %15 ], [ %191, %190 ], [ %185, %184 ]
  ret i32 %193
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_remove(ptr noundef readnone %0) #1 {
  %2 = load ptr, ptr @twl_priv, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.twl_private, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 16432
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = tail call i32 @twl4030_exit_irq() #10
  br label %12

10:                                               ; preds = %4, %1
  %11 = tail call i32 @twl6030_exit_irq() #10
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %69, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @twl_priv, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.twl_private, ptr %16, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 16432
  br i1 %21, label %23, label %22

22:                                               ; preds = %18, %15
  br label %23

23:                                               ; preds = %22, %18
  %24 = phi i1 [ false, %18 ], [ true, %22 ]
  %25 = getelementptr inbounds %struct.twl_private, ptr %16, i32 0, i32 4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = icmp eq ptr %27, %0
  %30 = or i1 %28, %29
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  tail call void @i2c_unregister_device(ptr noundef nonnull %27) #10
  %32 = load ptr, ptr @twl_priv, align 4
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi ptr [ %32, %31 ], [ %16, %23 ]
  store ptr null, ptr %26, align 4
  %35 = getelementptr inbounds %struct.twl_private, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr %struct.twl_client, ptr %36, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  %40 = icmp eq ptr %38, %0
  %41 = or i1 %39, %40
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  tail call void @i2c_unregister_device(ptr noundef nonnull %38) #10
  %43 = load ptr, ptr @twl_priv, align 4
  br label %44

44:                                               ; preds = %42, %33
  %45 = phi ptr [ %43, %42 ], [ %34, %33 ]
  store ptr null, ptr %37, align 4
  %46 = getelementptr inbounds %struct.twl_private, ptr %45, i32 0, i32 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr %struct.twl_client, ptr %47, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  %51 = icmp eq ptr %49, %0
  %52 = or i1 %50, %51
  br i1 %52, label %55, label %53

53:                                               ; preds = %44
  tail call void @i2c_unregister_device(ptr noundef nonnull %49) #10
  %54 = load ptr, ptr @twl_priv, align 4
  br label %55

55:                                               ; preds = %53, %44
  %56 = phi ptr [ %54, %53 ], [ %45, %44 ]
  store ptr null, ptr %48, align 4
  br i1 %24, label %67, label %57

57:                                               ; preds = %55
  %58 = getelementptr inbounds %struct.twl_private, ptr %56, i32 0, i32 4
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.twl_client, ptr %59, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  %63 = icmp eq ptr %61, %0
  %64 = or i1 %62, %63
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  tail call void @i2c_unregister_device(ptr noundef nonnull %61) #10
  br label %66

66:                                               ; preds = %65, %57
  store ptr null, ptr %60, align 4
  br label %67

67:                                               ; preds = %66, %55
  %68 = load ptr, ptr @twl_priv, align 4
  store i8 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %12
  %70 = phi i32 [ 0, %67 ], [ %13, %12 ]
  ret i32 %70
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @clocks_init(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = tail call ptr @clk_get(ptr noundef %0, ptr noundef nonnull @.str.12) #10
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %35

11:                                               ; preds = %2
  %12 = tail call i32 @clk_get_rate(ptr noundef %7) #10
  tail call void @clk_put(ptr noundef %7) #10
  %13 = icmp eq i32 %12, 38400000
  %14 = select i1 %13, i8 11, i8 10
  %15 = icmp eq i32 %12, 19200000
  %16 = select i1 %15, i8 9, i8 %14
  %17 = icmp eq ptr %1, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load i8, ptr %1, align 1, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = or i8 %16, -128
  %22 = select i1 %20, i8 %16, i8 %21
  br label %23

23:                                               ; preds = %18, %11
  %24 = phi i8 [ %16, %11 ], [ %22, %18 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 -64, ptr %6, align 1
  %25 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %6, i8 noundef zeroext 14, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 12, ptr %5, align 1
  %26 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %5, i8 noundef zeroext 14, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %27 = or i32 %26, %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 %24, ptr %4, align 1
  %28 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %4, i8 noundef zeroext 5, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %29 = or i32 %27, %28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  %30 = call i32 @twl_i2c_write(i8 noundef zeroext 3, ptr noundef nonnull %3, i8 noundef zeroext 14, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %31 = or i32 %29, %30
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef %31) #9
  br label %35

35:                                               ; preds = %33, %23, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @twl_read_idcode_register() unnamed_addr #1 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2)
  store i8 73, ptr %2, align 1
  %3 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %2, i8 noundef zeroext 18, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  %6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %3) #9
  br label %19

7:                                                ; preds = %0
  %8 = load ptr, ptr @twl_priv, align 4
  %9 = getelementptr inbounds %struct.twl_private, ptr %8, i32 0, i32 1
  %10 = call i32 @twl_i2c_read(i8 noundef zeroext 11, ptr noundef %9, i8 noundef zeroext 0, i32 noundef 4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %10) #9
  br label %19

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1)
  store i8 0, ptr %1, align 1
  %15 = call i32 @twl_i2c_write(i8 noundef zeroext 11, ptr noundef nonnull %1, i8 noundef zeroext 18, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %15) #9
  br label %19

19:                                               ; preds = %17, %14, %12, %5
  %20 = phi i32 [ %3, %5 ], [ %10, %12 ], [ %15, %17 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_init_chip_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_init_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_init_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_children(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.twl_regulator_driver_data, align 4
  %5 = alloca %struct.twl_regulator_driver_data, align 4
  %6 = alloca %struct.twl_regulator_driver_data, align 4
  %7 = alloca %struct.twl_regulator_driver_data, align 4
  %8 = alloca %struct.twl_regulator_driver_data, align 4
  %9 = alloca %struct.twl_regulator_driver_data, align 4
  %10 = alloca %struct.twl_regulator_driver_data, align 4
  %11 = alloca %struct.regulator_init_data, align 4
  %12 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @add_numbered_child(i32 noundef 10, ptr noundef nonnull @.str.20, i32 noundef -1, ptr noundef nonnull %13, i32 noundef 24, i1 noundef zeroext false, i32 noundef %1, i32 noundef 0) #10
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = ptrtoint ptr %16 to i32
  br label %290

20:                                               ; preds = %15, %3
  %21 = add i32 %1, 11
  %22 = tail call fastcc ptr @add_numbered_child(i32 noundef 5, ptr noundef nonnull @.str.21, i32 noundef -1, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i32 noundef %21, i32 noundef 0) #10
  %23 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = ptrtoint ptr %22 to i32
  br label %290

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %98, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr @twl_priv, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %216, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.twl_private, ptr %31, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 16432
  br i1 %36, label %37, label %98

37:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %11) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(228) %11, i8 0, i32 224, i1 false)
  %38 = getelementptr inbounds { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, { i32, i32, i32, i32, i32, i8, [3 x i8] }, { i32, i32, i32, i32, i32, i8, [3 x i8] }, { i32, i32, i32, i32, i32, i8, [3 x i8] }, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, i32, ptr, ptr, ptr }, ptr %11, i32 0, i32 1, i32 10
  store i32 10, ptr %38, align 4
  %39 = getelementptr inbounds { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, { i32, i32, i32, i32, i32, i8, [3 x i8] }, { i32, i32, i32, i32, i32, i8, [3 x i8] }, { i32, i32, i32, i32, i32, i8, [3 x i8] }, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, i32, ptr, ptr, ptr }, ptr %11, i32 0, i32 1, i32 11
  store i32 12, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #10
  %40 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 3
  store ptr @add_children.usb1v5, ptr %40, align 4
  %41 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 2
  store i32 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.regulator_init_data, ptr %11, i32 0, i32 5
  %43 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %10, i32 0, i32 3
  store i32 %2, ptr %43, align 4
  store ptr null, ptr %10, align 4
  %44 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %10, i32 0, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %10, i32 0, i32 2
  store ptr null, ptr %45, align 4
  store ptr %10, ptr %42, align 4
  %46 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 17, ptr noundef nonnull %11, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #10
  %47 = icmp ugt ptr %46, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %74, label %48

48:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %9, i8 0, i32 16, i1 false) #10, !annotation !11
  store ptr @add_children.usb1v8, ptr %40, align 4
  store i32 1, ptr %41, align 4
  %49 = load ptr, ptr %42, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %49, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, %2
  store i32 %54, ptr %52, align 4
  br label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %9, i32 0, i32 3
  store i32 %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %9, i32 0, i32 1
  store ptr null, ptr %57, align 4
  store ptr %9, ptr %42, align 4
  br label %58

58:                                               ; preds = %55, %51
  %59 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 18, ptr noundef nonnull %11, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  %60 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %74, label %61

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %8, i8 0, i32 16, i1 false) #10, !annotation !11
  store ptr @add_children.usb3v1, ptr %40, align 4
  store i32 1, ptr %41, align 4
  %62 = load ptr, ptr %42, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %62, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = or i32 %66, %2
  store i32 %67, ptr %65, align 4
  br label %71

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %8, i32 0, i32 3
  store i32 %2, ptr %69, align 4
  %70 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %8, i32 0, i32 1
  store ptr null, ptr %70, align 4
  store ptr %8, ptr %42, align 4
  br label %71

71:                                               ; preds = %68, %64
  %72 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 19, ptr noundef nonnull %11, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  %73 = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %58, %37
  %75 = phi ptr [ %46, %37 ], [ %59, %58 ], [ %72, %71 ]
  %76 = ptrtoint ptr %75 to i32
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %11) #10
  br label %290

77:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %11) #10
  %78 = load ptr, ptr %27, align 4
  %79 = add i32 %1, 10
  %80 = add i32 %1, 4
  %81 = call fastcc ptr @add_numbered_child(i32 noundef 0, ptr noundef nonnull @.str.25, i32 noundef -1, ptr noundef %78, i32 noundef 28, i1 noundef zeroext true, i32 noundef %79, i32 noundef %80) #10
  %82 = icmp ugt ptr %81, inttoptr (i32 -4096 to ptr)
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = ptrtoint ptr %81 to i32
  br label %290

85:                                               ; preds = %77
  %86 = icmp eq ptr %81, null
  br i1 %86, label %98, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.device, ptr %81, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store ptr %89, ptr @add_children.usb1v5, align 4
  store ptr %89, ptr @add_children.usb1v8, align 4
  br label %96

92:                                               ; preds = %87
  %93 = load ptr, ptr %81, align 4
  store ptr %93, ptr @add_children.usb1v5, align 4
  %94 = load ptr, ptr %81, align 4
  store ptr %94, ptr @add_children.usb1v8, align 4
  %95 = load ptr, ptr %81, align 4
  br label %96

96:                                               ; preds = %92, %91
  %97 = phi ptr [ %95, %92 ], [ %89, %91 ]
  store ptr %97, ptr @add_children.usb3v1, align 4
  br label %98

98:                                               ; preds = %96, %85, %33, %26
  %99 = load ptr, ptr @twl_priv, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %216, label %101

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.twl_private, ptr %99, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, 16432
  br i1 %104, label %105, label %216

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 15
  %107 = load ptr, ptr %106, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %7, i8 0, i32 16, i1 false) #10, !annotation !11
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  br label %125

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.regulator_init_data, ptr %107, i32 0, i32 5
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %112, i32 0, i32 3
  %116 = load i32, ptr %115, align 4
  %117 = or i32 %116, %2
  store i32 %117, ptr %115, align 4
  br label %120

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %7, i32 0, i32 3
  store i32 %2, ptr %119, align 4
  store ptr %7, ptr %111, align 4
  br label %120

120:                                              ; preds = %118, %114
  %121 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 4, ptr noundef nonnull %107, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  %122 = icmp ugt ptr %121, inttoptr (i32 -4096 to ptr)
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = ptrtoint ptr %121 to i32
  br label %290

125:                                              ; preds = %120, %109
  %126 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 21
  %127 = load ptr, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i32 16, i1 false) #10, !annotation !11
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  br label %145

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.regulator_init_data, ptr %127, i32 0, i32 5
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %132, i32 0, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = or i32 %136, %2
  store i32 %137, ptr %135, align 4
  br label %140

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %6, i32 0, i32 3
  store i32 %2, ptr %139, align 4
  store ptr %6, ptr %131, align 4
  br label %140

140:                                              ; preds = %138, %134
  %141 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull %127, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %142 = icmp ugt ptr %141, inttoptr (i32 -4096 to ptr)
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = ptrtoint ptr %141 to i32
  br label %290

145:                                              ; preds = %140, %129
  %146 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 12
  %147 = load ptr, ptr %146, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %5, i8 0, i32 16, i1 false) #10, !annotation !11
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  br label %165

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.regulator_init_data, ptr %147, i32 0, i32 5
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %158, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %152, i32 0, i32 3
  %156 = load i32, ptr %155, align 4
  %157 = or i32 %156, %2
  store i32 %157, ptr %155, align 4
  br label %160

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %5, i32 0, i32 3
  store i32 %2, ptr %159, align 4
  store ptr %5, ptr %151, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef nonnull %147, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  %162 = icmp ugt ptr %161, inttoptr (i32 -4096 to ptr)
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = ptrtoint ptr %161 to i32
  br label %290

165:                                              ; preds = %160, %149
  %166 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 13
  %167 = load ptr, ptr %166, align 4
  %168 = call fastcc ptr @add_regulator(i32 noundef 1, ptr noundef %167, i32 noundef %2)
  %169 = icmp ugt ptr %168, inttoptr (i32 -4096 to ptr)
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = ptrtoint ptr %168 to i32
  br label %290

172:                                              ; preds = %165
  %173 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 17
  %174 = load ptr, ptr %173, align 4
  %175 = call fastcc ptr @add_regulator(i32 noundef 6, ptr noundef %174, i32 noundef %2)
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %177, label %179

177:                                              ; preds = %172
  %178 = ptrtoint ptr %175 to i32
  br label %290

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 8
  %181 = load ptr, ptr %180, align 4
  %182 = call fastcc ptr @add_regulator(i32 noundef 3, ptr noundef %181, i32 noundef %2)
  %183 = icmp ugt ptr %182, inttoptr (i32 -4096 to ptr)
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = ptrtoint ptr %182 to i32
  br label %290

186:                                              ; preds = %179
  %187 = and i32 %2, 1
  %188 = xor i32 %187, 11
  %189 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 10
  %190 = load ptr, ptr %189, align 4
  %191 = call fastcc ptr @add_regulator(i32 noundef %188, ptr noundef %190, i32 noundef %2)
  %192 = icmp ugt ptr %191, inttoptr (i32 -4096 to ptr)
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = ptrtoint ptr %191 to i32
  br label %290

195:                                              ; preds = %186
  %196 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 22
  %197 = load ptr, ptr %196, align 4
  %198 = call fastcc ptr @add_regulator(i32 noundef 14, ptr noundef %197, i32 noundef %2)
  %199 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = ptrtoint ptr %198 to i32
  br label %290

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 23
  %204 = load ptr, ptr %203, align 4
  %205 = call fastcc ptr @add_regulator(i32 noundef 15, ptr noundef %204, i32 noundef %2)
  %206 = icmp ugt ptr %205, inttoptr (i32 -4096 to ptr)
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = ptrtoint ptr %205 to i32
  br label %290

209:                                              ; preds = %202
  %210 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 24
  %211 = load ptr, ptr %210, align 4
  %212 = call fastcc ptr @add_regulator(i32 noundef 16, ptr noundef %211, i32 noundef %2)
  %213 = icmp ugt ptr %212, inttoptr (i32 -4096 to ptr)
  br i1 %213, label %214, label %216

214:                                              ; preds = %209
  %215 = ptrtoint ptr %212 to i32
  br label %290

216:                                              ; preds = %209, %101, %98, %30
  %217 = and i32 %2, 2
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %281

219:                                              ; preds = %216
  %220 = load ptr, ptr @twl_priv, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %281, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.twl_private, ptr %220, i32 0, i32 2
  %224 = load i32, ptr %223, align 4
  %225 = icmp eq i32 %224, 16432
  br i1 %225, label %226, label %281

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 16
  %228 = load ptr, ptr %227, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10, !annotation !11
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %226
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  br label %246

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.regulator_init_data, ptr %228, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = icmp eq ptr %233, null
  br i1 %234, label %239, label %235

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %233, i32 0, i32 3
  %237 = load i32, ptr %236, align 4
  %238 = or i32 %237, %2
  store i32 %238, ptr %236, align 4
  br label %241

239:                                              ; preds = %231
  %240 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %4, i32 0, i32 3
  store i32 %2, ptr %240, align 4
  store ptr %4, ptr %232, align 4
  br label %241

241:                                              ; preds = %239, %235
  %242 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef 5, ptr noundef nonnull %228, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  %243 = icmp ugt ptr %242, inttoptr (i32 -4096 to ptr)
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = ptrtoint ptr %242 to i32
  br label %290

246:                                              ; preds = %241, %230
  %247 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 18
  %248 = load ptr, ptr %247, align 4
  %249 = call fastcc ptr @add_regulator(i32 noundef 7, ptr noundef %248, i32 noundef %2)
  %250 = icmp ugt ptr %249, inttoptr (i32 -4096 to ptr)
  br i1 %250, label %251, label %253

251:                                              ; preds = %246
  %252 = ptrtoint ptr %249 to i32
  br label %290

253:                                              ; preds = %246
  %254 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 19
  %255 = load ptr, ptr %254, align 4
  %256 = call fastcc ptr @add_regulator(i32 noundef 8, ptr noundef %255, i32 noundef %2)
  %257 = icmp ugt ptr %256, inttoptr (i32 -4096 to ptr)
  br i1 %257, label %258, label %260

258:                                              ; preds = %253
  %259 = ptrtoint ptr %256 to i32
  br label %290

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 9
  %262 = load ptr, ptr %261, align 4
  %263 = call fastcc ptr @add_regulator(i32 noundef 9, ptr noundef %262, i32 noundef %2)
  %264 = icmp ugt ptr %263, inttoptr (i32 -4096 to ptr)
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = ptrtoint ptr %263 to i32
  br label %290

267:                                              ; preds = %260
  %268 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 11
  %269 = load ptr, ptr %268, align 4
  %270 = call fastcc ptr @add_regulator(i32 noundef 12, ptr noundef %269, i32 noundef %2)
  %271 = icmp ugt ptr %270, inttoptr (i32 -4096 to ptr)
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = ptrtoint ptr %270 to i32
  br label %290

274:                                              ; preds = %267
  %275 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 20
  %276 = load ptr, ptr %275, align 4
  %277 = call fastcc ptr @add_regulator(i32 noundef 13, ptr noundef %276, i32 noundef %2)
  %278 = icmp ugt ptr %277, inttoptr (i32 -4096 to ptr)
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = ptrtoint ptr %277 to i32
  br label %290

281:                                              ; preds = %274, %222, %219, %216
  %282 = getelementptr inbounds %struct.twl4030_platform_data, ptr %0, i32 0, i32 6
  %283 = load ptr, ptr %282, align 4
  %284 = icmp eq ptr %283, null
  br i1 %284, label %290, label %285

285:                                              ; preds = %281
  %286 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.26, i32 noundef -1, ptr noundef nonnull %283, i32 noundef 20, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  %287 = icmp ugt ptr %286, inttoptr (i32 -4096 to ptr)
  %288 = ptrtoint ptr %286 to i32
  %289 = select i1 %287, i32 %288, i32 0
  br label %290

290:                                              ; preds = %285, %281, %279, %272, %265, %258, %251, %244, %214, %207, %200, %193, %184, %177, %170, %163, %143, %123, %83, %74, %24, %18
  %291 = phi i32 [ %19, %18 ], [ %25, %24 ], [ %84, %83 ], [ %124, %123 ], [ %144, %143 ], [ %164, %163 ], [ %171, %170 ], [ %178, %177 ], [ %185, %184 ], [ %194, %193 ], [ %201, %200 ], [ %208, %207 ], [ %215, %214 ], [ %245, %244 ], [ %252, %251 ], [ %259, %258 ], [ %266, %265 ], [ %273, %272 ], [ %280, %279 ], [ 0, %281 ], [ %76, %74 ], [ %289, %285 ]
  ret i32 %291
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @twl4030_49_nop_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #6 {
  switch i32 %1, label %3 [
    i32 0, label %4
    i32 3, label %4
    i32 64, label %4
    i32 65, label %4
    i32 66, label %4
  ]

3:                                                ; preds = %2
  br label %4

4:                                                ; preds = %3, %2, %2, %2, %2, %2
  %5 = phi i1 [ true, %3 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ], [ false, %2 ]
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @add_regulator(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.twl_regulator_driver_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i32 16, i1 false) #10, !annotation !11
  %5 = icmp eq ptr %1, null
  br i1 %5, label %19, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.regulator_init_data, ptr %1, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %8, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = or i32 %12, %2
  store i32 %13, ptr %11, align 4
  br label %17

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %4, i32 0, i32 3
  store i32 %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.twl_regulator_driver_data, ptr %4, i32 0, i32 1
  store ptr null, ptr %16, align 4
  store ptr %4, ptr %7, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = call fastcc ptr @add_numbered_child(i32 noundef 3, ptr noundef nonnull @.str.28, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 228, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0) #10
  br label %19

19:                                               ; preds = %17, %3
  %20 = phi ptr [ %18, %17 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret ptr %20
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @add_numbered_child(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = alloca [2 x %struct.resource], align 4
  %10 = load ptr, ptr @twl_priv, align 4
  %11 = getelementptr inbounds %struct.twl_private, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr %struct.twl_mapping, ptr %12, i32 %0
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr inbounds %struct.twl_private, ptr %10, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.twl_client, ptr %17, i32 %15
  %19 = tail call ptr @platform_device_alloc(ptr noundef %1, i32 noundef %2) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %8
  %22 = load ptr, ptr %18, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3
  %25 = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 1
  store ptr %23, ptr %25, align 4
  %26 = icmp eq ptr %3, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @platform_device_add_data(ptr noundef nonnull %19, ptr noundef nonnull %3, i32 noundef %4) #10
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %27, %21
  %31 = icmp eq i32 %6, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #10
  %33 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(60) %33, i8 0, i64 60, i1 false)
  store i32 %6, ptr %9, align 4
  %34 = getelementptr inbounds %struct.resource, ptr %9, i32 0, i32 3
  store i32 1024, ptr %34, align 4
  %35 = getelementptr inbounds %struct.resource, ptr %9, i32 1
  store i32 %7, ptr %35, align 4
  %36 = getelementptr inbounds %struct.resource, ptr %9, i32 1, i32 3
  store i32 1024, ptr %36, align 4
  %37 = icmp eq i32 %7, 0
  %38 = select i1 %37, i32 1, i32 2
  %39 = call i32 @platform_device_add_resources(ptr noundef nonnull %19, ptr noundef nonnull %9, i32 noundef %38) #10
  %40 = icmp slt i32 %39, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #10
  br i1 %40, label %46, label %41

41:                                               ; preds = %32, %30
  %42 = call i32 @platform_device_add(ptr noundef nonnull %19) #10
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 @device_init_wakeup(ptr noundef %24, i1 noundef zeroext %5) #10
  br label %51

46:                                               ; preds = %41, %32, %27
  %47 = phi i32 [ %28, %27 ], [ %39, %32 ], [ %42, %41 ]
  call void @platform_device_put(ptr noundef nonnull %19) #10
  %48 = load ptr, ptr %18, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.27, ptr noundef %1) #9
  %50 = inttoptr i32 %47 to ptr
  br label %51

51:                                               ; preds = %46, %44, %8
  %52 = phi ptr [ %50, %46 ], [ %24, %44 ], [ inttoptr (i32 -12 to ptr), %8 ]
  ret ptr %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_exit_irq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl6030_exit_irq() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_suspend(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 476
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @disable_irq(i32 noundef %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @twl_resume(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr i8, ptr %0, i32 476
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @enable_irq(i32 noundef %3) #10
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }

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
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"auto-init"}
